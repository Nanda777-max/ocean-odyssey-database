--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-oo-dm.sql

--Student ID: 36360856
--Student Name: Nanda Kishor Sajeev

--(a)
drop sequence address_seq;
drop sequence passenger_seq;
drop sequence manifest_seq;

-- Create sequences
create sequence address_seq start with 500 increment by 5;

create sequence passenger_seq start with 500 increment by 5;

create sequence manifest_seq start with 500 increment by 5;

--(b)
--  Insert address 
insert into address values ( address_seq.nextval,
                             '23 Banksia Avenue',
                             'Melbourne',
                             '3000',
                             'AUS' );

-- Insert passengers: 
 -- Dominik Kohl
insert into passenger values ( passenger_seq.nextval,
                               'Dominik',
                               'Kohl',
                               date '1982-03-15',
                               'M',
                               '+61493336312',
                               'N',
                               (
                                   select address_id
                                     from address
                                    where address_street = '23 Banksia Avenue'
                                      and address_town = 'Melbourne'
                                      and address_pcode = '3000'
                                      and country_code = 'AUS'
                               ),
                               null );

-- Stella Kohl 
insert into passenger values ( passenger_seq.nextval,
                               'Stella',
                               'Kohl',
                               date '2011-09-01',
                               'F',
                               null,
                               'N',
                               (
                                   select address_id
                                     from address
                                    where address_street = '23 Banksia Avenue'
                                      and address_town = 'Melbourne'
                                      and address_pcode = '3000'
                                      and country_code = 'AUS'
                               ),
                               (
                                   select passenger_id
                                     from passenger
                                    where passenger_fname = 'Dominik'
                                      and passenger_lname = 'Kohl'
                               ) );

-- Poppy Kohl 
insert into passenger values ( passenger_seq.nextval,
                               'Poppy',
                               'Kohl',
                               date '2014-02-20',
                               'F',
                               null,
                               'N',
                               (
                                   select address_id
                                     from address
                                    where address_street = '23 Banksia Avenue'
                                      and address_town = 'Melbourne'
                                      and address_pcode = '3000'
                                      and country_code = 'AUS'
                               ),
                               (
                                   select passenger_id
                                     from passenger
                                    where passenger_fname = 'Dominik'
                                      and passenger_lname = 'Kohl'
                               ) );

-- Insert MANIFEST rows for the three passengers, same cruise & cabin
 
insert into manifest
    select manifest_seq.nextval,
           p.passenger_id,
           c.cruise_id,
           to_date('30-Nov-2025 08:30','DD-Mon-YYYY HH24:MI'),
           c.ship_code,
           '8035'
      from passenger p
      join cruise c
    on upper(c.cruise_name) = 'MELBOURNE TO SINGAPORE'
       and c.cruise_depart_dt = to_date('30-Nov-2025 09:30','DD-Mon-YYYY HH24:MI')
     where p.passenger_lname = 'Kohl'
       and p.passenger_fname in ( 'Dominik',
                                  'Stella',
                                  'Poppy' );

commit;

--(c)
-- Delete Stella’s booking for exactly that cruise
delete from manifest
 where passenger_id = (
        select passenger_id
          from passenger
         where passenger_fname = 'Stella'
           and passenger_lname = 'Kohl'
    )
   and cruise_id = (
    select cruise_id
      from cruise
     where upper(cruise_name) = 'MELBOURNE TO SINGAPORE'
       and cruise_depart_dt = to_date('30-Nov-2025 09:30','DD-Mon-YYYY HH24:MI')
);

-- Update Dominik and Poppy to cabin 9015  
update manifest
   set
    cabin_no = '9015'
 where passenger_id in (
    select passenger_id
      from passenger
     where passenger_lname = 'Kohl'
       and passenger_fname in ( 'Dominik',
                                'Poppy' )
)
   and cruise_id = (
    select cruise_id
      from cruise
     where upper(cruise_name) = 'MELBOURNE TO SINGAPORE'
       and cruise_depart_dt = to_date('30-Nov-2025 09:30','DD-Mon-YYYY HH24:MI')
);

commit;

--(d)
delete from manifest
 where passenger_id in (
    select passenger_id
      from passenger
     where passenger_lname = 'Kohl'
       and passenger_fname in ( 'Dominik',
                                'Poppy' )
)
   and cruise_id = (
    select cruise_id
      from cruise
     where upper(cruise_name) = 'MELBOURNE TO SINGAPORE'
       and cruise_depart_dt = to_date('30-Nov-2025 09:30','DD-Mon-YYYY HH24:MI')
);

commit;

 