import { Pizza, Beef, Salad, UtensilsCrossed, Soup, Wine, Beer, GlassWater, Flame, Coffee } from 'lucide-react';
import { motion } from 'framer-motion';
import { useTheme } from '../contexts/ThemeContext';
import { Category } from '../lib/supabase';

const iconMap: Record<string, any> = {
  pizza: Pizza,
  burger: Beef,
  salad: Salad,
  pasta: UtensilsCrossed,
  soup: Soup,
  cocktail: GlassWater,
  beer: Beer,
  wine: Wine,
  shot: Flame,
  coffee: Coffee,
};

interface CategoryButtonProps {
  category: Category;
  isActive: boolean;
  itemCount: number;
  onClick: () => void;
}

export const CategoryButton = ({ category, isActive, itemCount, onClick }: CategoryButtonProps) => {
  const { isDark } = useTheme();
  const Icon = iconMap[category.icon] || Pizza;

  return (
    <motion.button
      whileTap={{ scale: 0.95 }}
      onClick={onClick}
      className={`flex-shrink-0 w-24 h-28 rounded-3xl flex flex-col items-center justify-center gap-2 transition-all duration-300 ${
        isActive
          ? isDark
            ? 'bg-amber-600 shadow-[5px_5px_15px_#0a0a0a,-5px_-5px_15px_#1e1e1e]'
            : 'bg-amber-100 shadow-[5px_5px_15px_#bebebe,-5px_-5px_15px_#ffffff]'
          : isDark
          ? 'bg-gray-800 shadow-[5px_5px_15px_#0a0a0a,-5px_-5px_15px_#1e1e1e]'
          : 'bg-gray-100 shadow-[5px_5px_15px_#bebebe,-5px_-5px_15px_#ffffff]'
      }`}
    >
      <Icon
        size={28}
        className={
          isActive
            ? isDark
              ? 'text-gray-900'
              : 'text-amber-700'
            : isDark
            ? 'text-gray-300'
            : 'text-gray-700'
        }
      />
      <span
        className={`text-xs font-semibold uppercase tracking-wide ${
          isActive
            ? isDark
              ? 'text-gray-900'
              : 'text-amber-700'
            : isDark
            ? 'text-gray-300'
            : 'text-gray-700'
        }`}
      >
        {category.name}
      </span>
      <span
        className={`text-xs font-bold ${
          isActive
            ? isDark
              ? 'text-gray-800'
              : 'text-amber-600'
            : isDark
            ? 'text-gray-400'
            : 'text-gray-500'
        }`}
      >
        {itemCount}
      </span>
    </motion.button>
  );
};
