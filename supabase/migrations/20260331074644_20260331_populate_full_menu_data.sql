/*
  # Populate Complete Menu Data

  This migration populates all 10 categories with 10 realistic items each.
  
  Categories:
  - Pizza (10 items)
  - Burgers (10 items)
  - Salads (10 items)
  - Pasta (10 items)
  - Soups (10 items)
  - Cocktails (10 items)
  - Beers (10 items)
  - Wines (10 items)
  - Shots (10 items)
  - Coffee (10 items)
  
  Each item includes name, description, price, image URL, rating, and comment count.
*/

-- Pizza Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Margherita', 'Fresh mozzarella, basil, tomato sauce, olive oil', 12.00, 'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 45, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Pepperoni', 'Mozzarella, pepperoni slices, tomato sauce', 13.50, 'https://images.pexels.com/photos/3440682/pexels-photo-3440682.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 52, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'BBQ Chicken', 'Chicken breast, BBQ sauce, cheddar, red onion, cilantro', 14.50, 'https://images.pexels.com/photos/2338407/pexels-photo-2338407.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 38, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Hawaiian', 'Ham, pineapple, mozzarella, tomato sauce', 13.00, 'https://images.pexels.com/photos/5737391/pexels-photo-5737391.jpeg?auto=compress&cs=tinysrgb&w=800', 4.2, 28, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Veggie Pizza', 'Bell peppers, mushrooms, olives, spinach, mozzarella', 12.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 32, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Meat Lovers', 'Pepperoni, sausage, bacon, ham, mozzarella', 15.50, 'https://images.pexels.com/photos/3555857/pexels-photo-3555857.jpeg?auto=compress&cs=tinysrgb&w=800', 4.8, 61, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Four Cheese', 'Mozzarella, parmesan, gorgonzola, ricotta', 14.00, 'https://images.pexels.com/photos/2747449/pexels-photo-2747449.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 42, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Spicy Italian', 'Pepperoni, jalapeños, red chili, mozzarella, hot sauce', 14.50, 'https://images.pexels.com/photos/3618606/pexels-photo-3618606.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 48, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Seafood Pizza', 'Shrimp, mussels, calamari, garlic, white sauce', 17.00, 'https://images.pexels.com/photos/1998920/pexels-photo-1998920.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 35, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Mushroom Deluxe', 'Portobello, shiitake, oyster mushrooms, truffle oil, mozzarella', 15.00, 'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 39, 'food' FROM categories c WHERE c.name = 'Pizza' ON CONFLICT DO NOTHING;

-- Burgers Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Cheeseburger', 'Beef patty, cheddar cheese, lettuce, tomato, pickles, onion', 11.50, 'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 50, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Double Beef Burger', 'Two beef patties, double cheese, bacon, special sauce', 15.00, 'https://images.pexels.com/photos/1251198/pexels-photo-1251198.jpeg?auto=compress&cs=tinysrgb&w=800', 4.8, 62, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Chicken Burger', 'Crispy chicken breast, coleslaw, mayo, lettuce', 12.50, 'https://images.pexels.com/photos/2338407/pexels-photo-2338407.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 38, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'BBQ Bacon Burger', 'Beef patty, bacon, BBQ sauce, cheddar, crispy onions', 13.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 44, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Veggie Burger', 'Plant-based patty, avocado, spinach, tomato, hummus', 11.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.3, 22, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Spicy Burger', 'Beef patty, jalapeños, hot sauce, pepper jack cheese, onion', 12.50, 'https://images.pexels.com/photos/1608487/pexels-photo-1608487.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 41, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Classic Hamburger', 'Simple beef patty, ketchup, mustard, pickles', 9.50, 'https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 35, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Mushroom Swiss Burger', 'Beef patty, sautéed mushrooms, Swiss cheese, garlic aioli', 13.00, 'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 46, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Crispy Chicken Burger', 'Golden fried chicken, coleslaw, spicy mayo, lettuce', 12.00, 'https://images.pexels.com/photos/2338407/pexels-photo-2338407.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 39, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Deluxe Burger', 'Premium beef, truffle mayo, caramelized onions, gruyere', 16.00, 'https://images.pexels.com/photos/1998920/pexels-photo-1998920.jpeg?auto=compress&cs=tinysrgb&w=800', 4.8, 55, 'food' FROM categories c WHERE c.name = 'Burgers' ON CONFLICT DO NOTHING;

-- Salads Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Caesar Salad', 'Romaine lettuce, parmesan, croutons, Caesar dressing', 10.00, 'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 32, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Greek Salad', 'Tomatoes, cucumbers, olives, feta cheese, red onion, olive oil', 11.00, 'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 38, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Caprese Salad', 'Fresh mozzarella, tomatoes, basil, balsamic, olive oil', 11.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 41, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Grilled Chicken Salad', 'Mixed greens, grilled chicken, vegetables, ranch dressing', 12.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 36, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Quinoa Salad', 'Quinoa, chickpeas, bell peppers, cucumber, lemon vinaigrette', 11.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 29, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Arugula Salad', 'Arugula, prosciutto, parmesan shavings, balsamic glaze', 12.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 43, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Spinach Salad', 'Fresh spinach, strawberries, candied pecans, goat cheese', 11.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 34, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Tuna Salad', 'Mixed greens, fresh tuna, tomatoes, cucumber, sesame dressing', 13.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 31, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Beet Salad', 'Roasted beets, goat cheese, walnuts, arugula, balsamic', 12.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 37, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Kale Salad', 'Massaged kale, dried cranberries, almonds, parmesan, citrus', 11.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 28, 'food' FROM categories c WHERE c.name = 'Salads' ON CONFLICT DO NOTHING;

-- Pasta Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Spaghetti Carbonara', 'Spaghetti, guanciale, parmesan, black pepper, egg yolk', 13.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 48, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Fettuccine Alfredo', 'Fettuccine, butter, cream, parmesan, black pepper', 12.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 42, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Penne Arrabbiata', 'Penne, tomatoes, garlic, red chili, parsley, olive oil', 12.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 35, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Lasagna Bolognese', 'Layers of pasta, beef ragù, béchamel, parmesan', 14.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 51, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Ravioli Ricotta Spinach', 'Ricotta and spinach filled ravioli, sage butter, parmesan', 13.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 40, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Tagliatelle al Ragù', 'Tagliatelle, meat sauce, herbs, parmesan', 13.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 44, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Linguine Aglio e Olio', 'Linguine, garlic, red chili, parsley, olive oil', 11.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 32, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Seafood Pasta', 'Mixed seafood, white wine, garlic, fresh herbs', 15.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 38, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Pesto Pasta', 'Pasta, homemade pesto, pine nuts, parmesan', 12.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 45, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Tortellini Mushroom', 'Mushroom tortellini, cream sauce, truffle oil, herbs', 13.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 39, 'food' FROM categories c WHERE c.name = 'Pasta' ON CONFLICT DO NOTHING;

-- Soups Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Tomato Soup', 'Roasted tomatoes, cream, basil, croutons', 8.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 28, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Minestrone', 'Mixed vegetables, beans, pasta, vegetable broth', 9.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 22, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'French Onion Soup', 'Caramelized onions, beef broth, crusty bread, melted cheese', 10.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 36, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Chicken Noodle Soup', 'Chicken, noodles, vegetables, warm broth', 8.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.3, 19, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Cream of Mushroom', 'Mushrooms, cream, thyme, croutons, herbs', 9.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 31, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Clam Chowder', 'Clams, potatoes, celery, bacon, cream', 11.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 42, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Lentil Soup', 'Red lentils, vegetables, spices, vegetable broth', 8.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 24, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Butternut Squash', 'Roasted squash, cream, sage, toasted seeds', 9.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 29, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Miso Soup', 'Miso broth, tofu, seaweed, green onions, mushrooms', 7.50, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 26, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Thai Coconut Curry', 'Coconut milk, curry paste, vegetables, tofu, lime', 10.00, 'https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 38, 'food' FROM categories c WHERE c.name = 'Soups' ON CONFLICT DO NOTHING;

-- Cocktails Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Margarita', 'Tequila, Cointreau, lime juice, salt rim', 8.50, 'https://images.pexels.com/photos/2789328/pexels-photo-2789328.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 44, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Mojito', 'White rum, mint, lime, sugar, soda water', 7.50, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 38, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Daiquiri', 'White rum, lime juice, simple syrup', 7.00, 'https://images.pexels.com/photos/1438672/pexels-photo-1438672.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 32, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Cuba Libre', 'Dark rum, coke, lime, ice', 6.50, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.3, 28, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Mai Tai', 'White rum, dark rum, orange curacao, lime, orgeat', 9.00, 'https://images.pexels.com/photos/1438672/pexels-photo-1438672.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 51, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Piña Colada', 'Light rum, coconut cream, pineapple juice', 8.50, 'https://images.pexels.com/photos/1438672/pexels-photo-1438672.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 42, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Cosmopolitan', 'Vodka, Cointreau, cranberry, lime juice', 8.00, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 36, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Old Fashioned', 'Whiskey, sugar, bitters, orange twist', 9.50, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 48, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Manhattan', 'Whiskey, sweet vermouth, bitters, cherry', 9.00, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 40, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Midori Sour', 'Midori melon liqueur, vodka, lemon juice, lime', 7.50, 'https://images.pexels.com/photos/1438672/pexels-photo-1438672.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 29, 'drink' FROM categories c WHERE c.name = 'Cocktails' ON CONFLICT DO NOTHING;

-- Beers Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Stella Artois', 'Golden Pilsner lager, Belgium, 5.0% ABV', 5.50, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 32, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Guinness', 'Irish Dry Stout, Ireland, 4.2% ABV', 6.00, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 48, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Corona Light', 'Mexican Pale Lager, Mexico, 4.0% ABV', 5.00, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.3, 26, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'IPA Craft', 'Indian Pale Ale, USA, 6.8% ABV', 6.50, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 40, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Heineken', 'Dutch Pilsner, Netherlands, 5.0% ABV', 5.50, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 35, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Budweiser', 'American Pale Lager, USA, 5.0% ABV', 4.50, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.2, 28, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Guinness Draught', 'Irish Stout on tap, Ireland, 4.2% ABV', 6.50, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.8, 52, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Hoegaarden', 'Belgian Wheat Beer, Belgium, 4.9% ABV', 6.00, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 31, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'San Miguel', 'Philippine Pale Lager, Philippines, 5.0% ABV', 4.50, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.3, 22, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Bass Ale', 'English Pale Ale, UK, 4.4% ABV', 5.50, 'https://images.pexels.com/photos/2797325/pexels-photo-2797325.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 27, 'drink' FROM categories c WHERE c.name = 'Beers' ON CONFLICT DO NOTHING;

-- Wines Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Cabernet Sauvignon', 'French red wine, full-bodied, 14% ABV', 18.00, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 38, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Sauvignon Blanc', 'French white wine, crisp and dry, 12.5% ABV', 16.00, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 32, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Pinot Noir', 'California red wine, smooth and elegant, 13.5% ABV', 17.00, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 44, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Merlot', 'Italian red wine, soft tannins, 13% ABV', 15.00, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 28, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Chardonnay', 'California white wine, buttery notes, 13.5% ABV', 16.50, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 35, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Riesling', 'German white wine, slightly sweet, 11% ABV', 14.00, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 26, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Prosecco', 'Italian sparkling wine, fruity and light, 11.5% ABV', 13.00, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 42, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Syrah', 'Australian red wine, bold and spicy, 14% ABV', 19.00, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 48, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Moscato', 'Italian white wine, sweet and fizzy, 5.5% ABV', 12.00, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 31, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Grüner Veltliner', 'Austrian white wine, herbaceous, 12% ABV', 15.50, 'https://images.pexels.com/photos/3407881/pexels-photo-3407881.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 34, 'drink' FROM categories c WHERE c.name = 'Wines' ON CONFLICT DO NOTHING;

-- Shots Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Tequila Shot', 'Premium tequila, lime, salt', 4.00, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.3, 22, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Vodka Shot', 'Pure vodka, chilled', 3.50, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.2, 18, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Whiskey Shot', 'Aged whiskey, neat', 5.00, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 28, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Jägermeister', 'German herbal liqueur, ice-cold', 4.50, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.1, 16, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Fireball', 'Cinnamon whiskey, 42.6 proof', 3.50, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 24, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'B-52', 'Kahlúa, Baileys, Grand Marnier', 5.50, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 32, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Lemon Drop', 'Vodka, Cointreau, lemon juice, sugar', 4.50, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.3, 20, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Kamikaze', 'Vodka, Cointreau, lime juice', 4.00, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.2, 19, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Irish Coffee Shot', 'Whiskey, coffee liqueur, cream', 5.00, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 35, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Slippery Nipple', 'Butterscotch Schnapps, Bailey Irish Cream', 4.50, 'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=800', 4.4, 26, 'drink' FROM categories c WHERE c.name = 'Shots' ON CONFLICT DO NOTHING;

-- Coffee Category
INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Espresso', 'Strong black coffee, double shot', 3.00, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 32, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Cappuccino', 'Espresso with steamed milk and foam', 4.50, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 42, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Latte', 'Espresso with steamed milk, light foam', 4.50, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 38, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Americano', 'Espresso shots with hot water', 3.50, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 28, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Macchiato', 'Espresso with a touch of milk foam', 4.00, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.6, 31, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Mocha', 'Espresso with chocolate and steamed milk', 5.00, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 45, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Cortado', 'Espresso and warm milk in equal parts', 3.50, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.5, 24, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Flat White', 'Espresso with microfoam steamed milk', 4.50, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.7, 40, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Irish Coffee', 'Hot coffee, Irish whiskey, sugar, whipped cream', 6.50, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.8, 52, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;

INSERT INTO menu_items (category_id, name, description, price, image_url, rating, comments_count, type)
SELECT c.id, 'Affogato', 'Vanilla ice cream with hot espresso shot', 5.50, 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=800', 4.8, 48, 'drink' FROM categories c WHERE c.name = 'Coffee' ON CONFLICT DO NOTHING;
