/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-oo-insert.sql

--Student ID: 36360856
--Student Name: Nanda Kishor Sajeev

/* GenAI Acknowledgement and Prompts:   The sample data below was generated with assistance from ChatGPT
   (OpenAI, 2025) to ensure data completeness and referential integrity.
   Prompts used: “Create realistic insert data for Address, Passenger,
   Manifest tables for FIT9132 Ocean Odyssey Assignment 2 Task 2.”
   All data was reviewed and verified by the author for accuracy.


*/

-- Task 2 Load the ADDRESS, PASSENGER and MANIFEST tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- ADDRESS
-- =======================================
insert into address values ( 10,
                             '12 Rose St',
                             'Melbourne',
                             '3000',
                             'AUS' );
insert into address values ( 11,
                             '5 King Ave',
                             'Sydney',
                             '2000',
                             'AUS' );
insert into address values ( 12,
                             '89 Willow Rd',
                             'Brisbane',
                             '4000',
                             'AUS' );
insert into address values ( 13,
                             '14 River Dr',
                             'Auckland',
                             '1010',
                             'NZL' );
insert into address values ( 14,
                             '23 Harbour Way',
                             'Wellington',
                             '6011',
                             'NZL' );
insert into address values ( 15,
                             '45 Main St',
                             'London',
                             'SW1A 1AA',
                             'GBR' );
insert into address values ( 16,
                             '9 Maple Ct',
                             'Manchester',
                             'M1 4BT',
                             'GBR' );
insert into address values ( 17,
                             '2 Ocean Blvd',
                             'Perth',
                             '6000',
                             'AUS' );
insert into address values ( 18,
                             '6 Hilltop Ln',
                             'Christchurch',
                             '8022',
                             'NZL' );
insert into address values ( 19,
                             '18 Baker St',
                             'Birmingham',
                             'B1 1AA',
                             'GBR' );

-- =======================================
-- PASSENGER
-- =======================================

insert into passenger values ( 10,
                               'Liam',
                               'Jones',
                               date '1988-02-12',
                               'M',
                               '0412345678',
                               'N',
                               10,
                               null );
insert into passenger values ( 11,
                               'Emma',
                               'Brown',
                               date '1990-05-23',
                               'F',
                               '0412555888',
                               'N',
                               11,
                               null );
insert into passenger values ( 12,
                               'Ethan',
                               'Taylor',
                               date '1975-11-05',
                               'M',
                               '0412777888',
                               'Y',
                               14,
                               null );
insert into passenger values ( 13,
                               'Ava',
                               'Wilson',
                               date '1985-03-22',
                               'F',
                               '0412999000',
                               'N',
                               15,
                               null );
insert into passenger values ( 14,
                               'William',
                               'Hall',
                               date '1982-10-30',
                               'M',
                               '0413333444',
                               'Y',
                               17,
                               null );
insert into passenger values ( 15,
                               'Sophia',
                               'Allen',
                               date '1995-04-11',
                               'F',
                               '0413444555',
                               'N',
                               18,
                               null );
insert into passenger values ( 16,
                               'Benjamin',
                               'Scott',
                               date '1978-07-14',
                               'M',
                               '0413777888',
                               'N',
                               15,
                               null );
insert into passenger values ( 17,
                               'Amelia',
                               'Adams',
                               date '1992-08-19',
                               'F',
                               '0413888999',
                               'N',
                               16,
                               null );
insert into passenger values ( 18,
                               'Jacob',
                               'Walker',
                               date '1984-10-02',
                               'M',
                               '0413111223',
                               'N',
                               12,
                               null );
insert into passenger values ( 19,
                               'Grace',
                               'Thompson',
                               date '1979-06-21',
                               'F',
                               '0413222334',
                               'N',
                               13,
                               null );

-- Minors (≥5)
insert into passenger values ( 20,
                               'Noah',
                               'Jones',
                               date '2010-07-01',
                               'M',
                               null,
                               'N',
                               10,
                               10 );
insert into passenger values ( 21,
                               'Olivia',
                               'Brown',
                               date '2012-09-15',
                               'F',
                               null,
                               'N',
                               11,
                               11 );
insert into passenger values ( 22,
                               'Lucas',
                               'Taylor',
                               date '2008-06-18',
                               'M',
                               null,
                               'N',
                               14,
                               12 );
insert into passenger values ( 23,
                               'Mia',
                               'Wilson',
                               date '2009-01-09',
                               'F',
                               null,
                               'N',
                               15,
                               13 );
insert into passenger values ( 24,
                               'James',
                               'Hall',
                               date '2011-12-25',
                               'M',
                               null,
                               'N',
                               17,
                               14 );
-- more to reach 20 passengers
insert into passenger values ( 25,
                               'Charlotte',
                               'King',
                               date '1987-02-07',
                               'F',
                               '0413666777',
                               'N',
                               19,
                               null );
insert into passenger values ( 26,
                               'Henry',
                               'Evans',
                               date '2006-03-09',
                               'M',
                               '0413999000',
                               'N',
                               17,
                               null );
insert into passenger values ( 27,
                               'Isla',
                               'Roberts',
                               date '2009-11-28',
                               'F',
                               null,
                               'N',
                               18,
                               25 ); -- minor
insert into passenger values ( 28,
                               'Evelyn',
                               'Mitchell',
                               date '2007-09-05',
                               'F',
                               null,
                               'N',
                               11,
                               18 ); -- minor
insert into passenger values ( 29,
                               'Alexander',
                               'Carter',
                               date '1998-05-30',
                               'M',
                               '0413444556',
                               'N',
                               19,
                               null );

-- Minors in this set: 20,21,22,23,24,27,28 (≥5 ✔)
-- =======================================
-- MANIFEST
-- =======================================

-- Cruise 1  (cruise_id=1, ship_code=101, depart 02-Jun-2025 10:00)
insert into manifest values ( 10,
                              10,
                              1,
                              to_date('2025-06-02 08:00','YYYY-MM-DD HH24:MI'),
                              101,
                              '1001' );
insert into manifest values ( 11,
                              11,
                              1,
                              to_date('2025-06-02 08:15','YYYY-MM-DD HH24:MI'),
                              101,
                              '1002' );
insert into manifest values ( 12,
                              12,
                              1,
                              to_date('2025-06-02 08:30','YYYY-MM-DD HH24:MI'),
                              101,
                              '1003' );
insert into manifest values ( 13,
                              13,
                              1,
                              to_date('2025-06-02 08:45','YYYY-MM-DD HH24:MI'),
                              101,
                              '1004' );
insert into manifest values ( 14,
                              20,
                              1,
                              to_date('2025-06-02 09:00','YYYY-MM-DD HH24:MI'),
                              101,
                              '1011' );
insert into manifest values ( 15,
                              21,
                              1,
                              to_date('2025-06-02 09:15','YYYY-MM-DD HH24:MI'),
                              101,
                              '1012' );

-- Cruise 2  (cruise_id=2, ship_code=102, depart 16-Jun-2025 09:00)
insert into manifest values ( 16,
                              10,
                              2,
                              to_date('2025-06-16 07:30','YYYY-MM-DD HH24:MI'),
                              102,
                              '2001' ); -- multi-cruise (10)
insert into manifest values ( 17,
                              11,
                              2,
                              to_date('2025-06-16 07:40','YYYY-MM-DD HH24:MI'),
                              102,
                              '2002' ); -- multi-cruise (11)
insert into manifest values ( 18,
                              14,
                              2,
                              to_date('2025-06-16 07:50','YYYY-MM-DD HH24:MI'),
                              102,
                              '2003' );
insert into manifest values ( 19,
                              15,
                              2,
                              to_date('2025-06-16 08:00','YYYY-MM-DD HH24:MI'),
                              102,
                              '2004' );
insert into manifest values ( 20,
                              16,
                              2,
                              to_date('2025-06-16 08:10','YYYY-MM-DD HH24:MI'),
                              102,
                              '2011' );
insert into manifest values ( 21,
                              17,
                              2,
                              to_date('2025-06-16 08:20','YYYY-MM-DD HH24:MI'),
                              102,
                              '2012' );

-- Cruise 3  (cruise_id=3, ship_code=103, depart 16-Jun-2025 09:00)
insert into manifest values ( 22,
                              12,
                              3,
                              to_date('2025-06-16 07:30','YYYY-MM-DD HH24:MI'),
                              103,
                              '110' );  -- multi-cruise (12)
insert into manifest values ( 23,
                              22,
                              3,
                              null,
                              103,
                              '111' );  -- no-show
insert into manifest values ( 24,
                              23,
                              3,
                              null,
                              103,
                              '112' );  -- no-show
insert into manifest values ( 25,
                              24,
                              3,
                              to_date('2025-06-16 07:40','YYYY-MM-DD HH24:MI'),
                              103,
                              '113' );
insert into manifest values ( 26,
                              18,
                              3,
                              to_date('2025-06-16 07:50','YYYY-MM-DD HH24:MI'),
                              103,
                              '114' );
insert into manifest values ( 27,
                              19,
                              3,
                              to_date('2025-06-16 08:00','YYYY-MM-DD HH24:MI'),
                              103,
                              '210' );

-- Cruise 4  (cruise_id=4, ship_code=101, depart 07-Jul-2025 14:00)
insert into manifest values ( 28,
                              25,
                              4,
                              to_date('2025-07-07 12:00','YYYY-MM-DD HH24:MI'),
                              101,
                              '2001' );
insert into manifest values ( 29,
                              26,
                              4,
                              to_date('2025-07-07 12:15','YYYY-MM-DD HH24:MI'),
                              101,
                              '2002' );
insert into manifest values ( 30,
                              27,
                              4,
                              to_date('2025-07-07 12:30','YYYY-MM-DD HH24:MI'),
                              101,
                              '2003' );
insert into manifest values ( 31,
                              28,
                              4,
                              to_date('2025-07-07 12:45','YYYY-MM-DD HH24:MI'),
                              101,
                              '2022' );

-- Cruise 5  (cruise_id=5, ship_code=102, depart 08-Jul-2025 10:30)
insert into manifest values ( 32,
                              13,
                              5,
                              to_date('2025-07-08 09:00','YYYY-MM-DD HH24:MI'),
                              102,
                              '4002' );
insert into manifest values ( 33,
                              14,
                              5,
                              to_date('2025-07-08 09:10','YYYY-MM-DD HH24:MI'),
                              102,
                              '4004' );
insert into manifest values ( 34,
                              29,
                              5,
                              to_date('2025-07-08 09:20','YYYY-MM-DD HH24:MI'),
                              102,
                              '4006' );

-- Future bookings (depart > today) — leave board datetime NULL
-- Cruise 9 (ship_code=101, depart 06-Dec-2025 14:00)
insert into manifest values ( 35,
                              19,
                              9,
                              null,
                              101,
                              '2023' );   -- future booking #1
-- Cruise 10 (ship_code=102, depart 20-Dec-2025 09:00)
insert into manifest values ( 36,
                              20,
                              10,
                              null,
                              102,
                              '4031' );  -- future booking #2

-- Extra multi-cruise examples on Cruise 4 to reach 30 rows
insert into manifest values ( 37,
                              10,
                              4,
                              to_date('2025-07-07 13:00','YYYY-MM-DD HH24:MI'),
                              101,
                              '2023' ); -- (10) sails 1,2,4
insert into manifest values ( 38,
                              11,
                              4,
                              to_date('2025-07-07 13:15','YYYY-MM-DD HH24:MI'),
                              101,
                              '3001' ); -- (11) sails 1,2,4
insert into manifest values ( 39,
                              18,
                              4,
                              to_date('2025-07-07 13:30','YYYY-MM-DD HH24:MI'),
                              101,
                              '3002' );


commit;