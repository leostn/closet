
drop table if exists users;
create table users (
  username text primary key,
  password text not null
);
insert into users values('admin', 'Default123');

drop table if exists user_watchlists;
create table user_watchlists(
watchlist_id integer primary key AUTOINCREMENT,
  username text,
  email TEXT,
  gender text,
  firstName TEXT,
  lastName TEXT,
  address1 TEXT,
		postcode TEXT,
		city TEXT,
		phone TEXT,
  foreign key(username) references users(username)
);
drop table if exists categories;
CREATE TABLE categories
		(categoryId INTEGER PRIMARY KEY,
		type TEXT
		);
drop table if exists kart;
CREATE TABLE kart
		(watchlist_id integer,
		items_id integer PRIMARY KEY AUTOINCREMENT,
		username TEXT,
		productId INTEGER,
		FOREIGN KEY(watchlist_id) REFERENCES user_watchlists(watchlist_id),
		FOREIGN KEY(username) REFERENCES users(username),
		FOREIGN KEY(productId) REFERENCES products(productId)
		);
drop table if exists products;
CREATE TABLE products
		(productId INTEGER PRIMARY KEY,
		name TEXT,
		price REAL,
		description TEXT,
		image TEXT,
		stock INTEGER,
		categoryId INTEGER,
		FOREIGN KEY(categoryId) REFERENCES categories(categoryId)
		);

drop table if exists ordernum;
CREATE TABLE ordernum(
                watchlist_id integer,
                order_id integer PRIMARY KEY AUTOINCREMENT,
                username TEXT,
                status text,
                FOREIGN KEY(watchlist_id) REFERENCES user_watchlists(watchlist_id),
                FOREIGN KEY(username) REFERENCES users(username)
		);

drop table if exists state;
CREATE TABLE state
		(watchlist_id integer,
		username TEXT,
		order_id integer,
		productId INTEGER,
		FOREIGN KEY(watchlist_id) REFERENCES user_watchlists(watchlist_id),
		FOREIGN KEY(username) REFERENCES users(username),
		FOREIGN KEY(productId) REFERENCES products(productId),
		FOREIGN KEY(order_id) REFERENCES ordernum(order_id)
		);
insert into users (username,password) values('stn131415','Stn131415~');
insert into products values(1, 'T1', '2.0','beautiful','1','2','1');
insert into products values(2, 'T2', '2.0','beautiful','1','2','1');
insert into products values(3, 'T3', '2.0','beautiful','1','2','2');
insert into products values(4, 'T4', '2.0','beautiful','1','2','3');
insert into products values(5, 'T5', '2.0','beautiful','1','2','4');
insert into categories values(1, 'T-shart');
insert into categories values(2, 'shart');
insert into categories values(3, 'jacket');
insert into categories values(4, 'pants');




