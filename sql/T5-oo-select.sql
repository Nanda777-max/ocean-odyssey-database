/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-oo-select.sql

--Student ID: 36360856
--Student Name: Nanda Kishor Sajeev


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

select t.country_code as country_code,
       t.country_name as country_name,
       t.no_passengers as no_passengers,
       lpad(
           to_char(
               t.no_passengers * 100.0 /(
                   select count(*)
                     from passenger
               ),
               '990.9'
           )
           || '%',
           18,
           ' '
       ) as percent_passengers
  from (
    select c.country_code,
           c.country_name,
           count(*) as no_passengers
      from passenger p
      join address a
    on p.address_id = a.address_id
      join country c
    on a.country_code = c.country_code
     group by c.country_code,
              c.country_name
) t
 where t.no_passengers = (
    select max(cnt)
      from (
        select count(*) as cnt
          from passenger p
          join address a
        on p.address_id = a.address_id
          join country c
        on a.country_code = c.country_code
         group by c.country_code
    )
)
 order by t.country_code;




/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

select c.cruise_id as cruise_id,
       c.cruise_name as cruise_name,
       to_char(
           c.cruise_depart_dt,
           'Dy DD '
       )
       || rtrim(to_char(
           c.cruise_depart_dt,
           'Month'
       ))
       || to_char(
           c.cruise_depart_dt,
           ' YYYY HH:MI AM'
       ) as departure_date_time,
       ( s.ship_code
         || ' ' || s.ship_name ) as ship_details,
       cat as category,
       cnt as passenger_count
  from (
    select m.cruise_id,
           case p.passenger_gender
               when 'F' then
                   'Female'
               when 'M' then
                   'Male'
               else
                   'Other'
           end as cat,
           count(*) as cnt
      from manifest m
      join passenger p
    on p.passenger_id = m.passenger_id
     group by m.cruise_id,
              case p.passenger_gender
                  when 'F' then
                      'Female'
                  when 'M' then
                      'Male'
                  else
                      'Other'
              end
    union all
    select m.cruise_id,
           'Total Count' as cat,
           count(*) as cnt
      from manifest m
     group by m.cruise_id
) x
  join cruise c
on c.cruise_id = x.cruise_id
  join ship s
on s.ship_code = c.ship_code
 order by c.cruise_id,
          case x.cat
              when 'Female'      then
                  1
              when 'Male'        then
                  2
              when 'Other'       then
                  3
              when 'Total Count' then
                  4
          end;



/* (c) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

select u.cruise_id
       || ' : '
       || u.cruise_name as cruise,
       ( trunc(u.duration_days)
         || ' days '
         || trunc(mod(
           u.duration_hours_total,
           24
       )) || ' hours' ) as cruise_duration,
       u.total_passengers as total_passengers,
       u.minors as minors,
       round(
           u.avg_age_years,
           1
       ) as avg_age,
       u.countries as countries,
       to_char(
           u.cruise_cost_pp,
           'FM$9,999,990.00'
       ) as cruisecost,
       u.ship_name as ship_name,
       u.oper_comp_name as oper_comp_name,
       u.ship_country as ship_country
  from (
    select c.cruise_id,
           c.cruise_name,
           c.cruise_depart_dt,
           c.cruise_arrive_dt,
           ( c.cruise_arrive_dt - c.cruise_depart_dt ) as duration_days,
           ( c.cruise_arrive_dt - c.cruise_depart_dt ) * 24 as duration_hours_total,
           c.cruise_cost_pp,
           s.ship_name,
           o.oper_comp_name,
           co.country_name as ship_country,
           count(m.passenger_id) as total_passengers,
           sum(
               case
                   when p.guardian_id is not null then
                       1
                   else
                       0
               end
           ) as minors,
           avg((months_between(
               c.cruise_depart_dt,
               p.passenger_dob
           )) / 12) as avg_age_years,
           count(distinct a.country_code) as countries
      from cruise c
      join ship s
    on s.ship_code = c.ship_code
      join operator o
    on o.oper_id = s.oper_id
      join country co
    on co.country_code = s.country_code
      join manifest m
    on m.cruise_id = c.cruise_id
      join passenger p
    on p.passenger_id = m.passenger_id
      join address a
    on a.address_id = p.address_id
     group by c.cruise_id,
              c.cruise_name,
              c.cruise_depart_dt,
              c.cruise_arrive_dt,
              c.cruise_cost_pp,
              s.ship_name,
              o.oper_comp_name,
              co.country_name
) u
 where u.total_passengers > (
    select avg(cnt)
      from (
        select count(*) as cnt
          from manifest
         group by cruise_id
    )
)
 order by u.total_passengers desc,
          u.cruise_id;

 