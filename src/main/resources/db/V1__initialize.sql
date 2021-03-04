create table advertise
(
    id          int             not null primary key,
    title       varchar(25)     not null,
    created_at  datetime        not null, -- ADD DEFAULT VALUE IF NOT PROVIDED
    mainphoto   varchar(100)    not null, -- MAKE at least 100 chars
    price       decimal(6,2)    not null, -- DECIMAL !!!
    description varchar(500)    not null
);

create table us_state
(
    code char(2) primary key,
    name varchar(20) not null
        insert into us_state values
    ('AK', 'Alaska'),
    ('AL', 'Alabama'),
    ('AZ', 'Arizona'),
    ('AR', 'Arkansas'),
    ('CA', 'California'),
    ('CO', 'Colorado'),
    ('CT', 'Connecticut'),
    ('DE', 'Delaware'),
    ('FL', 'Florida'),
    ('GA', 'Georgia'),
    ('HI', 'Hawaii'),
    ('ID', 'Idaho'),
    ('IL', 'Illinois'),
    ('IN', 'Indiana'),
    ('IA', 'Iowa'),
    ('KS', 'Kansas'),
    ('KY', 'Kentucky'),
    ('LA', 'Louisiana'),
    ('ME', 'Maine'),
    ('MD', 'Maryland'),
    ('MA', 'Massachusetts'),
    ('MI', 'Michigan'),
    ('MN', 'Minnesota'),
    ('MS', 'Mississippi'),
    ('MO', 'Missouri'),
    ('MT', 'Montana'),
    ('NE', 'Nebraska'),
    ('NV', 'Nevada'),
    ('NH', 'New Hampshire'),
    ('NJ', 'New Jersey'),
    ('NM', 'New Mexico'),
    ('NY', 'New York'),
    ('NC', 'North Carolina'),
    ('ND', 'North Dakota'),
    ('OH', 'Ohio'),
    ('OK', 'Oklahoma'),
    ('OR', 'Oregon'),
    ('PA', 'Pennsylvania'),
    ('PR', 'Puerto Rico'),
    ('RI', 'Rhode Island'),
    ('SC', 'South Carolina'),
    ('SD', 'South Dakota'),
    ('TN', 'Tennessee'),
    ('TX', 'Texas'),
    ('UT', 'Utah'),
    ('VT', 'Vermont'),
    ('VA', 'Virginia'),
    ('WA', 'Washington'),
    ('WV', 'West Virginia'),
    ('WI', 'Wisconsin'),
    ('WY', 'Wyoming');

);



create table photo
(
    id    int          not null primary key,
    path  varchar(100) not null,
    ad_id int null, -- make not null
    constraint photo_ad_id_uindex (ad_id), -- FK can't be unique, since you can have multiple photos pointing to one ad
    constraint photo_id_uindex (id),       -- No need to specify uniqe, since PK is unique
    constraint photo_ibfk_1 foreign key (ad_id) references advertise (id)
        on update cascade
        on delete cascade

);
create table location
(
    id    int         not null primary key,
    zip   int         not null,
    state char(2)     not null, -- Add new table with all states, see github
    city  varchar(20) not null,
    ad_id int not null,             -- make NotNull, add FK constraint with CASCADE
    constraint location_ad_id_uindex (ad_id)-- if ad_id will be a FK, no need to add unique index
    constraint location_id_uindex (id),
    constraint location_ibfk1 foreign key (ad_id) references advertise (id)
        on update cascade
        on delete cascade
);
-- Add some data

