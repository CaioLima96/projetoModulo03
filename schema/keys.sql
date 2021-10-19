#Queries chaves primárias

ALTER TABLE colors
  ADD PRIMARY KEY (id);
  
ALTER TABLE inventories
  ADD PRIMARY KEY (id);
  
ALTER TABLE themes
  ADD PRIMARY KEY (id);
  
ALTER TABLE part_categories
  ADD PRIMARY KEY (id);part_cat_id
  SELECT * FROM PARTS;
ALTER TABLE parts
MODIFY part_num INT,
  ADD PRIMARY KEY (part_num);
  
#Queries chaves estrangeiras

ALTER TABLE inventory_sets ADD FOREIGN KEY (inventory_id) REFERENCES inventories(id);

ALTER TABLE inventory_parts ADD FOREIGN KEY (inventory_id) REFERENCES inventories(id);

ALTER TABLE parts ADD FOREIGN KEY (part_cat_id) REFERENCES part_categories(id);

ALTER TABLE sets ADD FOREIGN KEY (theme_id) REFERENCES themes(id);