
-- Schritt 2: Datenbankverbindung erstellen
CREATE DATABASE IF NOT EXISTS `full-stack-ecommerce`;

-- Schritt 3: Datenbankschema auswählen
USE `full-stack-ecommerce`;

-- Schritt 4: Tabellen erstellen und mit Dummy-Daten füllen
CREATE TABLE IF NOT EXISTS `product_category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255),
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `product` (
  `category_id` INT,
  `comfort_duration` INT,
  `id` INT NOT NULL AUTO_INCREMENT,
  `price` DECIMAL(38, 2),
  `weight` INT NOT NULL,
  `description` VARCHAR(255),
  `image_url` VARCHAR(255),
  `material` VARCHAR(255),
  `name` VARCHAR(255),
  `usage_area` VARCHAR(255),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
);

-- Füllen der product_category-Tabelle mit Dummy-Daten
INSERT INTO `product_category` (`category_name`) VALUES
  ('Möbel'),
  ('Elektronik'),
  ('Kleidung'),
  ('Haushalt'),
  ('Schmuck');

-- Füllen der product-Tabelle mit Dummy-Daten
INSERT INTO `product` (`category_id`, `comfort_duration`, `price`, `weight`, `description`, `image_url`, `material`, `name`, `usage_area`) VALUES
  (1, 30, 19.99, 500, 'Bequemer Stuhl', 'https://images.example.com/stuhl.jpg', 'Holz', 'Gemütlicher Stuhl', 'Wohnzimmer'),
  (2, 60, 49.99, 800, 'Weiches Sofa', 'https://images.example.com/sofa.jpg', 'Stoff', 'Bequemes Sofa', 'Wohnzimmer'),
  (3, 15, 9.99, 200, 'Kleiner Tisch', 'https://images.example.com/tisch.jpg', 'Holz', 'Kleiner Beistelltisch', 'Wohnzimmer'),
  (4, 45, 39.99, 700, 'Großer Esstisch', 'https://images.example.com/esstisch.jpg', 'Holz', 'Esstisch', 'Esszimmer'),
  (5, 20, 29.99, 600, 'Komfortables Bett', 'https://images.example.com/bett.jpg', 'Holz', 'Bequemes Bett', 'Schlafzimmer');
