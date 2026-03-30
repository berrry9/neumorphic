import { Star, MessageCircle } from 'lucide-react';
import { motion } from 'framer-motion';
import { useTheme } from '../contexts/ThemeContext';
import { MenuItem } from '../lib/supabase';

interface FoodCardProps {
  item: MenuItem;
}

export const FoodCard = ({ item }: FoodCardProps) => {
  const { isDark } = useTheme();

  const renderStars = (rating: number) => {
    const stars = [];
    const fullStars = Math.floor(rating);
    const hasHalfStar = rating % 1 >= 0.5;

    for (let i = 0; i < fullStars; i++) {
      stars.push(
        <Star key={i} size={14} className="fill-amber-500 text-amber-500" />
      );
    }
    if (hasHalfStar) {
      stars.push(
        <Star key="half" size={14} className="fill-amber-500 text-amber-500 opacity-50" />
      );
    }
    const remaining = 5 - Math.ceil(rating);
    for (let i = 0; i < remaining; i++) {
      stars.push(
        <Star key={`empty-${i}`} size={14} className={isDark ? 'text-gray-600' : 'text-gray-300'} />
      );
    }
    return stars;
  };

  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      whileHover={{ y: -5 }}
      transition={{ duration: 0.3 }}
      className={`rounded-3xl p-5 ${
        isDark
          ? 'bg-gray-800 shadow-[10px_10px_20px_#0a0a0a,-10px_-10px_20px_#1e1e1e]'
          : 'bg-gray-100 shadow-[10px_10px_20px_#bebebe,-10px_-10px_20px_#ffffff]'
      }`}
    >
      <div className="relative rounded-2xl overflow-hidden mb-4 h-56">
        <img
          src={item.image_url}
          alt={item.name}
          className="w-full h-full object-cover"
        />
      </div>

      <h3 className={`text-xl font-bold mb-2 ${isDark ? 'text-gray-100' : 'text-gray-800'}`}>
        {item.name}
      </h3>

      <p className={`text-sm mb-4 ${isDark ? 'text-gray-400' : 'text-gray-600'}`}>
        {item.description}
      </p>

      <div className="flex items-center justify-between">
        <motion.div
          whileTap={{ scale: 0.95 }}
          className={`px-6 py-2 rounded-full font-bold ${
            isDark
              ? 'bg-gray-800 text-gray-100 shadow-[5px_5px_10px_#0a0a0a,-5px_-5px_10px_#1e1e1e]'
              : 'bg-gray-100 text-gray-800 shadow-[5px_5px_10px_#bebebe,-5px_-5px_10px_#ffffff]'
          }`}
        >
          €{item.price.toFixed(2)}
        </motion.div>

        <div className="flex flex-col items-end gap-1">
          <div className="flex items-center gap-2">
            <div className="flex gap-0.5">{renderStars(item.rating)}</div>
            <span className={`text-sm font-semibold ${isDark ? 'text-gray-300' : 'text-gray-700'}`}>
              {item.rating.toFixed(1)}
            </span>
          </div>
          <div className="flex items-center gap-1">
            <MessageCircle size={14} className={isDark ? 'text-gray-400' : 'text-gray-600'} />
            <span className={`text-xs ${isDark ? 'text-gray-400' : 'text-gray-600'}`}>
              {item.comments_count} COMMENTS
            </span>
          </div>
        </div>
      </div>
    </motion.div>
  );
};
