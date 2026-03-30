import { useTheme } from '../contexts/ThemeContext';
import { motion } from 'framer-motion';

export const DrinkCardSkeleton = () => {
  const { isDark } = useTheme();

  return (
    <motion.div
      initial={{ opacity: 0, x: -20 }}
      animate={{ opacity: 1, x: 0 }}
      className={`rounded-3xl p-4 flex gap-4 ${
        isDark
          ? 'bg-gray-800 shadow-[8px_8px_16px_#0a0a0a,-8px_-8px_16px_#1e1e1e]'
          : 'bg-gray-100 shadow-[8px_8px_16px_#bebebe,-8px_-8px_16px_#ffffff]'
      }`}
    >
      <div
        className={`relative rounded-2xl overflow-hidden w-32 h-32 flex-shrink-0 ${
          isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'
        }`}
      />

      <div className="flex-1 flex flex-col justify-between">
        <div className="space-y-2">
          <div className={`h-5 rounded-lg w-2/3 ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
          <div className={`h-3 rounded-lg w-full ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
          <div className={`h-3 rounded-lg w-4/5 ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
        </div>

        <div className="flex items-center justify-between">
          <div className={`w-16 h-8 rounded-full ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
          <div className="space-y-1">
            <div className={`w-16 h-3 rounded-lg ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
            <div className={`w-20 h-3 rounded-lg ${isDark ? 'bg-gray-700 animate-shimmer-dark' : 'bg-gray-200 animate-shimmer'}`} />
          </div>
        </div>
      </div>
    </motion.div>
  );
};
