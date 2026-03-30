import { Sun, Moon, LayoutGrid } from 'lucide-react';
import { useTheme } from '../contexts/ThemeContext';
import { motion } from 'framer-motion';

export const Header = () => {
  const { isDark, toggleTheme } = useTheme();

  return (
    <header className="flex items-center justify-between mb-8">
      <div className="flex items-center gap-3">
        <div
          className={`w-10 h-10 rounded-xl flex items-center justify-center ${
            isDark
              ? 'bg-gray-800 shadow-[5px_5px_10px_#0a0a0a,-5px_-5px_10px_#1e1e1e]'
              : 'bg-gray-100 shadow-[5px_5px_10px_#bebebe,-5px_-5px_10px_#ffffff]'
          }`}
        >
          <LayoutGrid size={20} className={isDark ? 'text-amber-500' : 'text-amber-600'} />
        </div>
        <h1
          className={`text-2xl font-bold tracking-wide ${
            isDark ? 'text-gray-100' : 'text-gray-800'
          }`}
        >
          QTECH
        </h1>
      </div>

      <motion.button
        whileTap={{ scale: 0.95 }}
        onClick={toggleTheme}
        className={`w-16 h-8 rounded-full p-1 flex items-center transition-colors duration-300 ${
          isDark
            ? 'bg-gray-800 shadow-[inset_3px_3px_6px_#0a0a0a,inset_-3px_-3px_6px_#1e1e1e]'
            : 'bg-gray-100 shadow-[inset_3px_3px_6px_#bebebe,inset_-3px_-3px_6px_#ffffff]'
        }`}
      >
        <motion.div
          animate={{ x: isDark ? 32 : 0 }}
          transition={{ type: 'spring', stiffness: 500, damping: 30 }}
          className={`w-6 h-6 rounded-full flex items-center justify-center ${
            isDark
              ? 'bg-amber-500 shadow-[2px_2px_5px_#0a0a0a,-2px_-2px_5px_#1e1e1e]'
              : 'bg-amber-400 shadow-[2px_2px_5px_#bebebe,-2px_-2px_5px_#ffffff]'
          }`}
        >
          {isDark ? <Moon size={14} className="text-gray-800" /> : <Sun size={14} className="text-white" />}
        </motion.div>
      </motion.button>
    </header>
  );
};
