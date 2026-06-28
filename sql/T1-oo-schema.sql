/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T1-oo-schema.sql

--Student ID: 36360856
--Student Name: Nanda Kishor Sajeev

/* drop table statements - do not remove*/

drop table address cascade constraints purge;

drop table manifest cascade constraints purge;

drop table passenger cascade constraints purge;

/* end of drop table statements*/

-- Task 1 Add Create table statements for the Missing TABLES below.
-- The columns/attributes must be in the same order as shown in the model.
-- Ensure all column comments, and constraints (other than FK's)are included.
-- FK constraints are to be added at the end of this script.

-- ADDRESS

create table address (
    address_id     number(6) not null,
    address_street varchar2(50) not null,
    address_town   varchar2(30) not null,
    address_pcode  varchar2(10) not null,
    country_code   char(3) not null
);

alter table address add constraint address_pk primary key ( address_id );


alter table address
    add constraint address_uk unique ( address_street,
                                       address_town,
                                       address_pcode,
                                       country_code );

comment on column address.address_id is
    'Address unique identifier';
comment on column address.address_street is
    'Address street (e.g. 4 Rose St)';
comment on column address.address_town is
    'Address town (e.g. Melbourne)';
comment on column address.address_pcode is
    'Address post code';
comment on column address.country_code is
    'Country code (ISO alpha-3)';


-- MANIFEST

create table manifest (
    manifest_id             number(8) not null,
    passenger_id            number(6) not null,
    cruise_id               number(6) not null,
    manifest_board_datetime date,
    ship_code               number(4) not null,
    cabin_no                varchar2(5) not null
);

alter table manifest add constraint manifest_pk primary key ( manifest_id );


alter table manifest add constraint manifest_passenger_cruise_uk unique ( passenger_id

,
                                                                          cruise_id )
                                                                          ;

comment on column manifest.manifest_id is
    'Manifest unique identifier';
comment on column manifest.passenger_id is
    'Booked passenger';
comment on column manifest.cruise_id is
    'Cruise booked';
comment on column manifest.manifest_board_datetime is
    'Date/time passenger boarded';
comment on column manifest.ship_code is
    'Ship for allocated cabin';
comment on column manifest.cabin_no is
    'Allocated cabin number';


-- PASSENGER

create table passenger (
    passenger_id          number(6) not null,
    passenger_fname       varchar2(25),
    passenger_lname       varchar2(25),
    passenger_dob         date not null,
    passenger_gender      char(1) not null,
    passenger_contact     varchar2(15),
    passenger_specialneed char(1) not null,
    address_id            number(6) not null,
    guardian_id           number(6)
);

alter table passenger add constraint passenger_pk primary key ( passenger_id );

alter table passenger
    add constraint passenger_gender_chk
        check ( passenger_gender in ( 'M',
                                      'F',
                                      'X' ) );

alter table passenger
    add constraint passenger_specialneed_chk check ( passenger_specialneed in ( 'Y',
                                                                                'N' )
                                                                                );

comment on column passenger.passenger_id is
    'Passenger unique identifier';
comment on column passenger.passenger_fname is
    'Passenger first name';
comment on column passenger.passenger_lname is
    'Passenger last name';
comment on column passenger.passenger_dob is
    'Passenger date of birth';
comment on column passenger.passenger_gender is
    'Passenger gender (M/F/X)';
comment on column passenger.passenger_contact is
    'Passenger contact phone number';
comment on column passenger.passenger_specialneed is
    'Requires special arrangements (Y/N)';
comment on column passenger.address_id is
    'FK to ADDRESS';
comment on column passenger.guardian_id is
    'Guardian is another PASSENGER';


-- Add all missing FK Constraints below here
-- You must use the default delete rule (i.e. no action/restrict) 
-- for all foreign keys.

alter table address
    add constraint country_address_fk foreign key ( country_code )
        references country ( country_code );


alter table passenger
    add constraint address_passenger_fk foreign key ( address_id )
        references address ( address_id );

alter table passenger
    add constraint guardian_passenger_fk foreign key ( guardian_id )
        references passenger ( passenger_id );


alter table manifest
    add constraint passenger_manifest_fk foreign key ( passenger_id )
        references passenger ( passenger_id );

alter table manifest
    add constraint cruise_manifest_fk foreign key ( cruise_id )
        references cruise ( cruise_id );

alter table manifest
    add constraint cabin_manifest_fk
        foreign key ( ship_code,
                      cabin_no )
            references cabin ( ship_code,
                               cabin_no );