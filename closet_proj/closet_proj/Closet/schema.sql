
drop table if exists users;
create table users (
  username text primary key,
  password text not null,
);

insert into users values('admin', 'default', 'admin@uni.sydney.edu.au');

drop table if exists user_watchlists;
create table user_watchlists(
  watchlist_id integer AUTO_INCREMENT,
  username text,
  watchlist_name text,
  foreign key(username) references users(username));

drop table if exists watchlist_items;
create table watchlist_items(
 watchlist_id integer,
  cryptocurrency text,
  currency text,
  current_value real not null,
  current_time timestamp not null,
  foreign key(watchlist_id) references user_watchlists(watchlist_id),
  primary key(watchlist_id,cryptocurrency,currency)
);

drop table if exists historical_watchlist_data;
create table historical_watchlist_data(
  watchlist_id integer,
  username text,
  watchlist_name text,
  cryptocurrency text,
  currency text,
  old_value real not null,
  old_time timestamp not null,
  foreign key(watchlist_id) references user_watchlists(watchlist_id),
 primary key(watchlist_id,cryptocurrency,currency)
);




