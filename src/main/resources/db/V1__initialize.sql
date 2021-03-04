drop table if exists advertise, location, photo, us_state;

create table advertise
(
    id          int           not null primary key AUTO_INCREMENT,
    title       varchar(25)   not null,
    created_at  datetime      not null default NOW(),
    main_photo  varchar(200)  not null,
    price       decimal(6, 2) not null,
    description varchar(500)  not null,
    key_id      char(36)      not null
);

create table photo
(
    ad_id int          not null,
    path  varchar(200) not null,
    constraint photo_advertise__fk foreign key (ad_id) references advertise (id)
        on update cascade
        on delete cascade
);

create table us_state
(
    state_code char(2) primary key,
    name       varchar(20) not null
);

create table location
(
    ad_id int         not null,
    state char(2)     not null,
    city  varchar(20) not null,
    zip   char(5)     not null,
    constraint location_advertise__fk foreign key (ad_id) references advertise (id)
        on update cascade
        on delete cascade,
    constraint location_us_state__fk foreign key (state) references us_state (state_code)
        on update cascade
);
