import { useState, useEffect } from 'react';
import { useTheme } from './contexts/ThemeContext';
import { supabase } from './lib/supabase';
import type { Category, MenuItem } from './lib/supabase';
import { Header } from './components/Header';
import { CategoryButton } from './components/CategoryButton';
import { CategoryButtonSkeleton } from './components/CategoryButtonSkeleton';
import { FoodCard } from './components/FoodCard';
import { FoodCardSkeleton } from './components/FoodCardSkeleton';
import { DrinkCard } from './components/DrinkCard';
import { DrinkCardSkeleton } from './components/DrinkCardSkeleton';
import { BottomNav } from './components/BottomNav';

function App() {
  const { isDark } = useTheme();
  const [categories, setCategories] = useState<Category[]>([]);
  const [menuItems, setMenuItems] = useState<MenuItem[]>([]);
  const [selectedCategory, setSelectedCategory] = useState<string>('');
  const [loading, setLoading] = useState(true);
  const [itemsLoading, setItemsLoading] = useState(false);

  useEffect(() => {
    fetchCategories();
  }, []);

  useEffect(() => {
    if (selectedCategory) {
      fetchMenuItems(selectedCategory);
    }
  }, [selectedCategory]);

  const fetchCategories = async () => {
    const { data, error } = await supabase
      .from('categories')
      .select('*')
      .order('sort_order');

    if (data && !error) {
      setCategories(data);
      if (data.length > 0) {
        const burgersCategory = data.find(c => c.name === 'Burgers');
        setSelectedCategory(burgersCategory?.id || data[0].id);
      }
    }
    setLoading(false);
  };

  const fetchMenuItems = async (categoryId: string) => {
    setItemsLoading(true);
    const { data, error } = await supabase
      .from('menu_items')
      .select('*')
      .eq('category_id', categoryId);

    if (data && !error) {
      setMenuItems(data);
    }
    setItemsLoading(false);
  };

  const selectedCategoryData = categories.find(c => c.id === selectedCategory);
  const isFoodCategory = selectedCategoryData && !['Cocktails', 'Beers', 'Wines', 'Shots', 'Coffee'].includes(selectedCategoryData.name);

  if (loading) {
    return (
      <div className={`min-h-screen flex items-center justify-center ${isDark ? 'bg-gray-900' : 'bg-gray-200'}`}>
        <div className="text-lg">Loading...</div>
      </div>
    );
  }

  return (
    <div
      className={`min-h-screen transition-colors duration-500 ${
        isDark ? 'bg-gray-900' : 'bg-gray-200'
      } pb-32`}
    >
      <div className="max-w-md mx-auto px-6 py-8">
        <Header />

        <div className="mb-8 overflow-x-auto scrollbar-hide">
          <div className="flex gap-4 pb-2">
            {loading ? (
              <>
                {[...Array(5)].map((_, i) => (
                  <CategoryButtonSkeleton key={i} />
                ))}
              </>
            ) : (
              categories.map((category) => (
                <CategoryButton
                  key={category.id}
                  category={category}
                  isActive={selectedCategory === category.id}
                  itemCount={menuItems.filter(item => item.category_id === category.id).length}
                  onClick={() => setSelectedCategory(category.id)}
                />
              ))
            )}
          </div>
        </div>

        <div className="space-y-6">
          {itemsLoading ? (
            <>
              {isFoodCategory ? (
                <>
                  {[...Array(2)].map((_, i) => (
                    <FoodCardSkeleton key={i} />
                  ))}
                </>
              ) : (
                <>
                  {[...Array(3)].map((_, i) => (
                    <DrinkCardSkeleton key={i} />
                  ))}
                </>
              )}
            </>
          ) : menuItems.length > 0 ? (
            menuItems.map((item) =>
              isFoodCategory ? (
                <FoodCard key={item.id} item={item} />
              ) : (
                <DrinkCard key={item.id} item={item} />
              )
            )
          ) : (
            <div className={`text-center py-12 ${isDark ? 'text-gray-400' : 'text-gray-600'}`}>
              No items available in this category
            </div>
          )}
        </div>
      </div>

      <BottomNav />
    </div>
  );
}

export default App;
