/*
  # Create Menu Database Schema

  1. New Tables
    - `categories`
      - `id` (uuid, primary key)
      - `name` (text) - Category name (e.g., "Burgers", "Pizza")
      - `icon` (text) - Icon identifier for the category
      - `sort_order` (integer) - Display order
      - `created_at` (timestamptz)
    
    - `menu_items`
      - `id` (uuid, primary key)
      - `category_id` (uuid, foreign key to categories)
      - `name` (text) - Item name
      - `description` (text) - Item description/ingredients
      - `price` (numeric) - Item price
      - `image_url` (text) - Image URL
      - `rating` (numeric) - Average rating (0-5)
      - `comments_count` (integer) - Number of comments
      - `type` (text) - 'food' or 'drink' for layout variation
      - `created_at` (timestamptz)

  2. Security
    - Enable RLS on all tables
    - Add policies for public read access (menu is public)
*/

-- Create categories table
CREATE TABLE IF NOT EXISTS categories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  icon text NOT NULL,
  sort_order integer NOT NULL DEFAULT 0,
  created_at timestamptz DEFAULT now()
);

-- Create menu_items table
CREATE TABLE IF NOT EXISTS menu_items (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  category_id uuid REFERENCES categories(id) ON DELETE CASCADE,
  name text NOT NULL,
  description text NOT NULL,
  price numeric(10,2) NOT NULL,
  image_url text NOT NULL,
  rating numeric(2,1) DEFAULT 4.0,
  comments_count integer DEFAULT 0,
  type text NOT NULL DEFAULT 'food',
  created_at timestamptz DEFAULT now()
);

-- Enable RLS
ALTER TABLE categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE menu_items ENABLE ROW LEVEL SECURITY;

-- Create policies for public read access
CREATE POLICY "Categories are publicly readable"
  ON categories
  FOR SELECT
  TO anon, authenticated
  USING (true);

CREATE POLICY "Menu items are publicly readable"
  ON menu_items
  FOR SELECT
  TO anon, authenticated
  USING (true);

-- Insert sample categories
INSERT INTO categories (name, icon, sort_order) VALUES
  ('Pizza', 'pizza', 1),
  ('Burgers', 'burger', 2),
  ('Salads', 'salad', 3),
  ('Pasta', 'pasta', 4),
  ('Soups', 'soup', 5),
  ('Cocktails', 'cocktail', 6),
  ('Beers', 'beer', 7),
  ('Wines', 'wine', 8),
  ('Shots', 'shot', 9),
  ('Coffee', 'coffee', 10)
ON CONFLICT DO NOTHING;

-- Insert sample menu items (burgers and cocktails)
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT 
  c.id,
  'Cheeseburger',
  'Bun, 100% beef, cheese, mustard, pickles, ketchup, onions',
  12.00,
  'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=800',
  4.7,
  10,
  'food'
FROM categories c WHERE c.name = 'Burgers'
ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT 
  c.id,
  'Double Burger',
  'Double beef patty, cheese, lettuce, tomato, special sauce',
  15.00,
  'https://images.pexels.com/photos/1251198/pexels-photo-1251198.jpeg?auto=compress&cs=tinysrgb&w=800',
  4.8,
  15,
  'food'
FROM categories c WHERE c.name = 'Burgers'
ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT 
  c.id,
  'Margarita',
  'Tequila, Cointreau, Lime, Salt, Cubed ice',
  6.00,
  'https://images.pexels.com/photos/2789328/pexels-photo-2789328.jpeg?auto=compress&cs=tinysrgb&w=800',
  4.2,
  4,
  'drink'
FROM categories c WHERE c.name = 'Cocktails'
ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT 
  c.id,
  'Cuba Libre',
  'Dark Rum, Fresh Lime, Coke',
  5.50,
  'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800',
  4.0,
  3,
  'drink'
FROM categories c WHERE c.name = 'Cocktails'
ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT 
  c.id,
  'Mai Tai',
  'White Rum, Dark Rum, Orange Curacao, Lime, Orgeat',
  7.00,
  'https://images.pexels.com/photos/1438672/pexels-photo-1438672.jpeg?auto=compress&cs=tinysrgb&w=800',
  4.5,
  8,
  'drink'
FROM categories c WHERE c.name = 'Cocktails'
ON CONFLICT DO NOTHING;