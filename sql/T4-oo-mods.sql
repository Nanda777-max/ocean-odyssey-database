--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-oo-mods.sql

--Student ID: 36360856
--Student Name: Nanda Kishor Sajeev


--(a)
drop table ship_maintenance cascade constraints purge;
drop table maintenance_type cascade constraints purge;


-- MAINTENANCE TYPE LOOKUP TABLE
create table maintenance_type (
    maint_type_code varchar2(5) not null,
    maint_type_name varchar2(40) not null
);

alter table maintenance_type add constraint maintenance_type_pk primary key ( maint_type_code
);

comment on column maintenance_type.maint_type_code is
    'Maintenance type short code (e.g. PM, BM, CB, FUT for future types)';
comment on column maintenance_type.maint_type_name is
    'Full name of the maintenance type (expandable list)';

 
insert into maintenance_type values ( 'PM',
                                      'Preventive Maintenance' );
insert into maintenance_type values ( 'BM',
                                      'Breakdown Maintenance' );
insert into maintenance_type values ( 'CB',
                                      'Condition-Based Maintenance' );

 


-- SHIP MAINTENANCE TABLE 
create table ship_maintenance (
    maintenance_id  number(6) not null,
    ship_code       number(4) not null,
    maint_type_code varchar2(5) not null,
    sched_start_dt  date not null,
    sched_end_dt    date not null,
    actual_start_dt timestamp,
    actual_end_dt   timestamp
);

alter table ship_maintenance add constraint ship_maintenance_pk primary key ( maintenance_id
);

alter table ship_maintenance
    add constraint ship_shipmaint_fk foreign key ( ship_code )
        references ship ( ship_code );

alter table ship_maintenance
    add constraint mainttype_shipmaint_fk foreign key ( maint_type_code )
        references maintenance_type ( maint_type_code );

 
alter table ship_maintenance add constraint shipmaint_sched_range_chk check ( sched_end_dt > sched_start_dt
);

alter table ship_maintenance
    add constraint shipmaint_actual_range_chk
        check ( ( actual_start_dt is null
           and actual_end_dt is null )
            or ( actual_start_dt is not null
           and actual_end_dt is null )
            or ( actual_start_dt is not null
           and actual_end_dt is not null
           and actual_end_dt >= actual_start_dt ) );

--column comments 
comment on column ship_maintenance.maintenance_id is
    'Unique identifier for each maintenance record';
comment on column ship_maintenance.ship_code is
    'FK to SHIP table — identifies ship under maintenance';
comment on column ship_maintenance.maint_type_code is
    'FK to MAINTENANCE_TYPE (PM/BM/CB etc.)';
comment on column ship_maintenance.sched_start_dt is
    'Planned start date of maintenance';
comment on column ship_maintenance.sched_end_dt is
    'Planned end date of maintenance';
comment on column ship_maintenance.actual_start_dt is
    'Actual start datetime (nullable until begun)';
comment on column ship_maintenance.actual_end_dt is
    'Actual end datetime (nullable until completed)';

commit;


--desc
DESC maintenance_type;
DESC ship_maintenance;

--(b)
drop table need_category cascade constraints purge;
drop table passenger_need cascade constraints purge;

 
create table need_category (
    category_id   number(5) not null,
    category_name varchar2(40) not null
);
 
alter table need_category add constraint need_category_pk primary key ( category_id )
;

-- Column comments
comment on column need_category.category_id is
    'Unique numeric ID for each special-needs category';
comment on column need_category.category_name is
    'Display name of special-needs category';

 
insert into need_category values ( 1,
                                   'General' );
insert into need_category values ( 2,
                                   'Mobility' );
insert into need_category values ( 3,
                                   'Hearing' );
insert into need_category values ( 4,
                                   'Visual' );
insert into need_category values ( 5,
                                   'Other' );

commit;

-- Junction table 
create table passenger_need (
    passenger_id number(6) not null,
    category_id  number(5) not null,
    need_detail  varchar2(400)  -- optional text describing specific need
);

 
alter table passenger_need add constraint passenger_need_pk primary key ( passenger_id
,
                                                                          category_id
                                                                          );

 
alter table passenger_need
    add constraint passenger_passneed_fk foreign key ( passenger_id )
        references passenger ( passenger_id );

alter table passenger_need
    add constraint needcat_passneed_fk foreign key ( category_id )
        references need_category ( category_id );

-- Column comments
comment on column passenger_need.passenger_id is
    'FK to PASSENGER';
comment on column passenger_need.category_id is
    'FK to NEED_CATEGORY';
comment on column passenger_need.need_detail is
    'Optional detail describing specific need for this category';

-- special needs to "General"
insert into passenger_need
    select passenger_id,
           1,
           null
      from passenger
     where passenger_specialneed = 'Y';

commit;

--desc
DESC need_category;
DESC passenger_need;

-- Verify data
select *
  from need_category;
select *
  from passenger_need;
 