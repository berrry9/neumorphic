import { useTheme } from '../contexts/ThemeContext';
import { motion } from 'framer-motion';

export const FoodCardSkeleton = () => {
  const { isDark } = useTheme();

  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      className={`rounded-3xl p-5 ${
        isDark
          ? 'bg-gray-800 shadow-[10px_10px_20px_#0a0a0a,-10px_-10px_20px_#1e1e1e]'
          : 'bg-gray-100 shadow-[10px_10px_20px_#bebebe,-10px_-10px_20px_#ffffff]'
      }`}
    >
      <div
        className={`relative rounded-2xl overflow-hidden mb-4 h-56 ${
          isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'
        }`}
      />

      <div className={`h-6 rounded-lg mb-3 ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />

      <div className="space-y-2 mb-4">
        <div className={`h-4 rounded-lg w-4/5 ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
        <div className={`h-4 rounded-lg w-3/5 ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
      </div>

      <div className="flex items-center justify-between">
        <div className={`w-24 h-10 rounded-full ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
        <div className="space-y-2">
          <div className={`w-20 h-4 rounded-lg ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
          <div className={`w-24 h-3 rounded-lg ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
        </div>
      </div>
    </motion.div>
  );
};
