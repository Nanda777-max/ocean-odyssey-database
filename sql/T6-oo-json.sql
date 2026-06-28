/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-oo-json.sql

--Student ID: 36360856
--Student Name: Nanda Kishor Sajeev



-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
   SET PAGESIZE 100

select
    json_object(
        '_id' value p.passenger_id,
                'passenger_name' value trim(p.passenger_fname
                                            || ' ' || p.passenger_lname),
                'passenger_dob' value to_char(
            p.passenger_dob,
            'DD-Mon-YYYY'
        ),
                'passenger_contact' value nvl(
            p.passenger_contact,
            '-'
        ),
                'guardian_name' value nvl(
            (
                select trim(pg.passenger_fname
                            || ' ' || pg.passenger_lname)
                  from passenger pg
                 where pg.passenger_id = p.guardian_id
            ),
            '-'
        ),
                'address' value
            json_object(
                'street' value nvl(
                    a.address_street,
                    '-'
                ),
                        'town' value nvl(
                    a.address_town,
                    '-'
                ),
                        'postcode' value nvl(
                    a.address_pcode,
                    '-'
                ),
                        'country' value nvl(
                    cn.country_name,
                    '-'
                )
            ),
                'no_of_cruises' value count(m.cruise_id),
                'cruises' value json_arrayagg(
            json_object(
                'cruise_id' value m.cruise_id,
                        'cruise_name' value cr.cruise_name,
                        'board_datetime' value nvl(
                    to_char(
                        m.manifest_board_datetime,
                        'DD-Mon-YYYY HH24:MI'
                    ),
                    '-'
                ),
                        'cabin_no' value nvl(
                    m.cabin_no,
                    '-'
                ),
                        'cabin_class' value
                    case cb.cabin_class
                        when 'I' then
                            'Interior'
                        when 'O' then
                            'Ocean View'
                        when 'B' then
                            'Balcony'
                        when 'S' then
                            'Suite'
                        else
                            '-'
                    end
            )
         order by m.cruise_id)
    format json)
    || ',' as passenger_json
  from passenger p
  join address a
on p.address_id = a.address_id
  join country cn
on a.country_code = cn.country_code
  left join manifest m
on p.passenger_id = m.passenger_id
  left join cruise cr
on m.cruise_id = cr.cruise_id
  left join cabin cb
on m.cabin_no = cb.cabin_no
 group by p.passenger_id,
          p.passenger_fname,
          p.passenger_lname,
          p.passenger_dob,
          p.passenger_contact,
          p.guardian_id,
          a.address_street,
          a.address_town,
          a.address_pcode,
          cn.country_name
 order by p.passenger_id;