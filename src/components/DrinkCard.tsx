import { Star, MessageCircle } from 'lucide-react';
import { motion } from 'framer-motion';
import { useTheme } from '../contexts/ThemeContext';
import type { MenuItem } from '../lib/supabase';

interface DrinkCardProps {
  item: MenuItem;
}

export const DrinkCard = ({ item }: DrinkCardProps) => {
  const { isDark } = useTheme();

  const renderStars = (rating: number) => {
    const stars = [];
    const fullStars = Math.floor(rating);
    const hasHalfStar = rating % 1 >= 0.5;

    for (let i = 0; i < fullStars; i++) {
      stars.push(
        <Star key={i} size={12} className="fill-amber-500 text-amber-500" />
      );
    }
    if (hasHalfStar) {
      stars.push(
        <Star key="half" size={12} className="fill-amber-500 text-amber-500 opacity-50" />
      );
    }
    const remaining = 5 - Math.ceil(rating);
    for (let i = 0; i < remaining; i++) {
      stars.push(
        <Star key={`empty-${i}`} size={12} className={isDark ? 'text-gray-600' : 'text-gray-300'} />
      );
    }
    return stars;
  };

  return (
    <motion.div
      initial={{ opacity: 0, x: -20 }}
      animate={{ opacity: 1, x: 0 }}
      whileHover={{ x: 5 }}
      transition={{ duration: 0.3 }}
      className={`rounded-3xl p-4 flex gap-4 ${
        isDark
          ? 'bg-gray-800 shadow-[8px_8px_16px_#0a0a0a,-8px_-8px_16px_#1e1e1e]'
          : 'bg-gray-100 shadow-[8px_8px_16px_#bebebe,-8px_-8px_16px_#ffffff]'
      }`}
    >
      <div className="relative rounded-2xl overflow-hidden w-32 h-32 flex-shrink-0">
        <img
          src={item.image_url}
          alt={item.name}
          className="w-full h-full object-cover"
        />
      </div>

      <div className="flex-1 flex flex-col justify-between">
        <div>
          <h3 className={`text-lg font-bold mb-1 ${isDark ? 'text-gray-100' : 'text-gray-800'}`}>
            {item.name}
          </h3>
          <p className={`text-xs mb-3 ${isDark ? 'text-gray-400' : 'text-gray-600'}`}>
            {item.description}
          </p>
        </div>

        <div className="flex items-center justify-between">
          <motion.div
            whileTap={{ scale: 0.95 }}
            className={`px-4 py-1.5 rounded-full text-sm font-bold transition-all ${
              isDark
                ? 'bg-gray-800 text-gray-100 shadow-[4px_4px_8px_#0a0a0a,-4px_-4px_8px_#1e1e1e]'
                : 'bg-gray-100 text-gray-800 shadow-[4px_4px_8px_#bebebe,-4px_-4px_8px_#ffffff]'
            }`}
          >
            €{item.price.toFixed(2)}
          </motion.div>

          <div className="flex flex-col items-end gap-1">
            <div className="flex items-center gap-1">
              <div className="flex gap-0.5">{renderStars(item.rating)}</div>
              <span className={`text-xs font-semibold ${isDark ? 'text-gray-300' : 'text-gray-700'}`}>
                {item.rating.toFixed(1)}
              </span>
              <span className={`text-xs ${isDark ? 'text-gray-500' : 'text-gray-500'}`}>
                ({item.comments_count})
              </span>
            </div>
            <div className="flex items-center gap-1">
              <MessageCircle size={12} className={isDark ? 'text-gray-400' : 'text-gray-600'} />
              <span className={`text-xs ${isDark ? 'text-gray-400' : 'text-gray-600'}`}>
                {item.comments_count} COMMENTS
              </span>
            </div>
          </div>
        </div>
      </div>
    </motion.div>
  );
};
