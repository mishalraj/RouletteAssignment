create table bet (bet_id bigint not null, amount bigint not null, bet_number integer not null, bet_status bigint not null, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null, end_time datetime(6) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null, balance_amount varchar(255) not null, current_casino bigint not null, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255), primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, casino_id bigint, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
alter table dealer add constraint FKktemf9qa08ghv6ny3cgoys7k0 foreign key (casino_id) references casino (casino_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, casino_id bigint not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, casino_id bigint not null, dealer_id bigint not null, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, casino_id bigint not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, casino_id bigint not null, dealer_id bigint not null, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, casino_id bigint not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, casino_id bigint not null, dealer_id bigint not null, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, casino_id bigint not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, casino_id bigint not null, dealer_id bigint not null, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, casino_id bigint not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, casino_id bigint not null, dealer_id bigint not null, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, casino_id bigint not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, casino_id bigint not null, dealer_id bigint not null, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, casino_id bigint not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, casino_id bigint not null, dealer_id bigint not null, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, casino_id bigint not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, casino_id bigint not null, dealer_id bigint not null, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
create table bet (bet_id bigint not null auto_increment, amount bigint not null, bet_number integer not null, bet_status bit, betting_time datetime(6) not null, casino_id bigint not null, game bigint not null, user bigint not null, primary key (bet_id)) engine=InnoDB
create table casino (casino_id bigint not null auto_increment, balance_amount double precision not null, casino_name varchar(255) not null, primary key (casino_id)) engine=InnoDB
create table casino_dealer_relation_ship (relationship_id bigint not null auto_increment, casino_id bigint, dealer_id bigint, primary key (relationship_id)) engine=InnoDB
create table dealer (dealer_id bigint not null auto_increment, dealer_name varchar(255) not null, primary key (dealer_id)) engine=InnoDB
create table game (game_id bigint not null auto_increment, casino_id bigint not null, dealer_id bigint not null, end_time datetime(6) not null, game_name varchar(255) not null, start_time datetime(6) not null, status bit not null, thrown_number integer not null, primary key (game_id)) engine=InnoDB
create table user (user_id bigint not null auto_increment, balance_amount double precision, current_casino bigint, user_name varchar(255) not null, primary key (user_id)) engine=InnoDB
alter table game add constraint UK_hhawa5vil8q4tffvlf5djpulo unique (game_name)
alter table casino_dealer_relation_ship add constraint FKb4xqbjf5jjjuqvhruep21kicc foreign key (casino_id) references casino (casino_id)
alter table casino_dealer_relation_ship add constraint FK1pnanwv4fp5aye986y91y9ipk foreign key (dealer_id) references dealer (dealer_id)
