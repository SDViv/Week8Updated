DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS project;

CREATE TABLE project(
project_id INT AUTO_INCREMENT NOT NULL,
project_name VARCHAR(128) NOT NULL,
estimated_hours DECIMAL(7,2),
actual_hours DECIMAL (7,2),
difficulty INT,
notes TEXT, 
PRIMARY key (project_id)
);

CREATE TABLE material(
material_id INT AUTO_INCREMENT NOT NULL, 
project_id INT NOT NULL,
material_name VARCHAR(128) NOT NULL,
num_required INT NOT NULL,
cost DECIMAL(7,2),
PRIMARY key (material_id)
);
 
CREATE TABLE step(
step_id INT AUTO_INCREMENT NOT NULL,
project_id INT NOT NULL,
step_text TEXT NOT NULL, 
step_order INT NOT null,
PRIMARY key (step_id)
);

CREATE TABLE category(
category_id INT AUTO_INCREMENT NOT NULL,
category_name VARCHAR(128) NOT null,
PRIMARY key (category_id)
);

CREATE TABLE project_category(
project_id INT NOT NULL,
category_id INT NOT NULL 
);









