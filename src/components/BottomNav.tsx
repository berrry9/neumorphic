import { Heart, Utensils, Coffee } from 'lucide-react';
import { motion } from 'framer-motion';
import { useTheme } from '../contexts/ThemeContext';

export const BottomNav = () => {
  const { isDark } = useTheme();

  return (
    <nav
      className={`fixed bottom-6 left-1/2 -translate-x-1/2 rounded-full px-8 py-4 flex items-center gap-12 ${
        isDark
          ? 'bg-gray-800 shadow-[10px_10px_30px_#0a0a0a,-10px_-10px_30px_#1e1e1e]'
          : 'bg-gray-100 shadow-[10px_10px_30px_#bebebe,-10px_-10px_30px_#ffffff]'
      }`}
    >
      <motion.button
        whileTap={{ scale: 0.9 }}
        className={`w-12 h-12 rounded-full flex items-center justify-center ${
          isDark
            ? 'bg-gray-800 shadow-[5px_5px_10px_#0a0a0a,-5px_-5px_10px_#1e1e1e] hover:shadow-[inset_5px_5px_10px_#0a0a0a,inset_-5px_-5px_10px_#1e1e1e]'
            : 'bg-gray-100 shadow-[5px_5px_10px_#bebebe,-5px_-5px_10px_#ffffff] hover:shadow-[inset_5px_5px_10px_#bebebe,inset_-5px_-5px_10px_#ffffff]'
        } transition-all duration-200`}
      >
        <Heart size={20} className={isDark ? 'text-gray-300' : 'text-gray-700'} />
      </motion.button>

      <motion.button
        whileTap={{ scale: 0.9 }}
        className={`w-12 h-12 rounded-full flex items-center justify-center ${
          isDark
            ? 'bg-gray-800 shadow-[5px_5px_10px_#0a0a0a,-5px_-5px_10px_#1e1e1e] hover:shadow-[inset_5px_5px_10px_#0a0a0a,inset_-5px_-5px_10px_#1e1e1e]'
            : 'bg-gray-100 shadow-[5px_5px_10px_#bebebe,-5px_-5px_10px_#ffffff] hover:shadow-[inset_5px_5px_10px_#bebebe,inset_-5px_-5px_10px_#ffffff]'
        } transition-all duration-200`}
      >
        <Utensils size={20} className={isDark ? 'text-gray-300' : 'text-gray-700'} />
      </motion.button>

      <motion.button
        whileTap={{ scale: 0.9 }}
        className={`w-12 h-12 rounded-full flex items-center justify-center ${
          isDark
            ? 'bg-gray-800 shadow-[5px_5px_10px_#0a0a0a,-5px_-5px_10px_#1e1e1e] hover:shadow-[inset_5px_5px_10px_#0a0a0a,inset_-5px_-5px_10px_#1e1e1e]'
            : 'bg-gray-100 shadow-[5px_5px_10px_#bebebe,-5px_-5px_10px_#ffffff] hover:shadow-[inset_5px_5px_10px_#bebebe,inset_-5px_-5px_10px_#ffffff]'
        } transition-all duration-200`}
      >
        <Coffee size={20} className={isDark ? 'text-gray-300' : 'text-gray-700'} />
      </motion.button>
    </nav>
  );
};
