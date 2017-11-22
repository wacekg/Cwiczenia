CREATE DATABASE computer_store
--drop DATABASE computer_store
use computer_store
CREATE TABLE manufacturers (
  id int PRIMARY KEY IDENTITY(1,1),
  name TEXT NOT NULL
)
CREATE TABLE products (
  id int PRIMARY KEY IDENTITY(1,1),
  name TEXT NOT NULL ,
  price REAL NOT NULL ,
  manufacturer_id INTEGER NOT NULL,
FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id)
)
use computer_store
INSERT INTO manufacturers (name) VALUES 
('Sony'),
('Creative Labs'),
('Hewlett-Packard'),
('Iomega'),
('Fujitsu'),
('Winchester'),
('Apple')

INSERT INTO products (name, price, manufacturer_id) VALUES 
('Hard drive', 240, 5),
('Memory', 120, 6),
('ZIP drive', 150, 4),
('Floppy disk', 5, 6),
('Monitor', 240, 1),
('DVD drive', 180, 2),
('CD drive', 90, 2),
('Printer', 270, 3),
('Toner cartridge', 66, 3),
('DVD burner', 180, 2)
