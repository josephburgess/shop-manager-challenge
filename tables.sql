CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  name text,
  price money,
  quantity int
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  date date,
  customer_name text,
  item_id
);

CREATE TABLE items_orders (
  item_id int,
  order_id int
  constraint fk_item foreign key(item_id) references items(id) on delete cascade,
  constraint fk_order foreign key(order_id) references orders(id) on delete cascade,
  PRIMARY KEY (item_id, order_id)
);