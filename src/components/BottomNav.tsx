import { Heart, Utensils, Coffee } from 'lucide-react';
import { motion } from 'framer-motion';
import { useTheme } from '../contexts/ThemeContext';

export const BottomNav = () => {
  const { isDark } = useTheme();

  return (
    <nav
      className={`fixed bottom-6 left-1/2 -translate-x-1/2 rounded-full px-8 py-4 flex items-center gap-12 ${
        isDark ? 'glassmorphism-dark' : 'glassmorphism'
      } shadow-[0_8px_32px_rgba(0,0,0,0.1)]`}
    >
      <motion.button
        whileTap={{ scale: 0.9 }}
        whileHover={{ scale: 1.05 }}
        className={`w-12 h-12 rounded-full flex items-center justify-center transition-all duration-300 ${
          isDark
            ? 'bg-gray-800 shadow-[5px_5px_10px_#0a0a0a,-5px_-5px_10px_#1e1e1e] hover:shadow-[inset_5px_5px_10px_#0a0a0a,inset_-5px_-5px_10px_#1e1e1e]'
            : 'bg-gray-100 shadow-[5px_5px_10px_#bebebe,-5px_-5px_10px_#ffffff] hover:shadow-[inset_5px_5px_10px_#bebebe,inset_-5px_-5px_10px_#ffffff]'
        }`}
      >
        <Heart size={20} className={isDark ? 'text-gray-300' : 'text-gray-700'} />
      </motion.button>

      <motion.button
        whileTap={{ scale: 0.9 }}
        whileHover={{ scale: 1.05 }}
        className={`w-12 h-12 rounded-full flex items-center justify-center transition-all duration-300 ${
          isDark
            ? 'bg-gray-800 shadow-[5px_5px_10px_#0a0a0a,-5px_-5px_10px_#1e1e1e] hover:shadow-[inset_5px_5px_10px_#0a0a0a,inset_-5px_-5px_10px_#1e1e1e]'
            : 'bg-gray-100 shadow-[5px_5px_10px_#bebebe,-5px_-5px_10px_#ffffff] hover:shadow-[inset_5px_5px_10px_#bebebe,inset_-5px_-5px_10px_#ffffff]'
        }`}
      >
        <Utensils size={20} className={isDark ? 'text-gray-300' : 'text-gray-700'} />
      </motion.button>

      <motion.button
        whileTap={{ scale: 0.9 }}
        whileHover={{ scale: 1.05 }}
        className={`w-12 h-12 rounded-full flex items-center justify-center transition-all duration-300 ${
          isDark
            ? 'bg-gray-800 shadow-[5px_5px_10px_#0a0a0a,-5px_-5px_10px_#1e1e1e] hover:shadow-[inset_5px_5px_10px_#0a0a0a,inset_-5px_-5px_10px_#1e1e1e]'
            : 'bg-gray-100 shadow-[5px_5px_10px_#bebebe,-5px_-5px_10px_#ffffff] hover:shadow-[inset_5px_5px_10px_#bebebe,inset_-5px_-5px_10px_#ffffff]'
        }`}
      >
        <Coffee size={20} className={isDark ? 'text-gray-300' : 'text-gray-700'} />
      </motion.button>
    </nav>
  );
};
