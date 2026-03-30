import { useTheme } from '../contexts/ThemeContext';
import { motion } from 'framer-motion';

export const CategoryButtonSkeleton = () => {
  const { isDark } = useTheme();

  return (
    <motion.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      className={`flex-shrink-0 w-24 h-28 rounded-3xl flex flex-col items-center justify-center gap-2 ${
        isDark
          ? 'bg-gray-800 shadow-[5px_5px_15px_#0a0a0a,-5px_-5px_15px_#1e1e1e]'
          : 'bg-gray-100 shadow-[5px_5px_15px_#bebebe,-5px_-5px_15px_#ffffff]'
      }`}
    >
      <div className={`w-8 h-8 rounded-lg ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
      <div className={`w-16 h-3 rounded-lg ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
      <div className={`w-6 h-3 rounded-lg ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
    </motion.div>
  );
};
