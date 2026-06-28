// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T6-oo-mongo.mongodb.js

// Student ID: 36360856
// Student Name: Nanda Kishor Sajeev
// ====================================================================================
// DO NOT modify or relocate any of the comments below (items marked with //)
// You are required to add additional comments as described on page five of this brief.
// ====================================================================================

// Use (connect to) your database - you MUST update xyz001
// with your authcate username

use("nsaj0004");

// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your statement is formatted and has a semicolon
// (;) at the end of each MongoDB statement

// Drop collection
db.oo_passengers.drop();

// Create collection and insert documents
db.oo_passengers.insertMany([
  {
    "_id": 10,
    "passenger_name": "Liam Jones",
    "passenger_dob": "12-Feb-1988",
    "passenger_contact": "0412345678",
    "guardian_name": "-",
    "address": {
      "street": "12 Rose St",
      "town": "Melbourne",
      "postcode": "3000",
      "country": "Australia"
    },
    "no_of_cruises": 4,
    "cruises": [
      {
        "cruise_id": 1,
        "cruise_name": "Australian Circumnavigation",
        "board_datetime": "02-Jun-2025 08:00",
        "cabin_no": "1001",
        "cabin_class": "Interior"
      },
      {
        "cruise_id": 2,
        "cruise_name": "Melbourne to Sydney",
        "board_datetime": "16-Jun-2025 07:30",
        "cabin_no": "2001",
        "cabin_class": "Interior"
      },
      {
        "cruise_id": 2,
        "cruise_name": "Melbourne to Sydney",
        "board_datetime": "16-Jun-2025 07:30",
        "cabin_no": "2001",
        "cabin_class": "Ocean View"
      },
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 13:00",
        "cabin_no": "2023",
        "cabin_class": "Balcony"
      }
    ]
  },
  {
    "_id": 11,
    "passenger_name": "Emma Brown",
    "passenger_dob": "23-May-1990",
    "passenger_contact": "0412555888",
    "guardian_name": "-",
    "address": {
      "street": "5 King Ave",
      "town": "Sydney",
      "postcode": "2000",
      "country": "Australia"
    },
    "no_of_cruises": 4,
    "cruises": [
      {
        "cruise_id": 1,
        "cruise_name": "Australian Circumnavigation",
        "board_datetime": "02-Jun-2025 08:15",
        "cabin_no": "1002",
        "cabin_class": "Ocean View"
      },
      {
        "cruise_id": 2,
        "cruise_name": "Melbourne to Sydney",
        "board_datetime": "16-Jun-2025 07:40",
        "cabin_no": "2002",
        "cabin_class": "Interior"
      },
      {
        "cruise_id": 2,
        "cruise_name": "Melbourne to Sydney",
        "board_datetime": "16-Jun-2025 07:40",
        "cabin_no": "2002",
        "cabin_class": "Ocean View"
      },
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 13:15",
        "cabin_no": "3001",
        "cabin_class": "Suite"
      }
    ]
  },
  {
    "_id": 12,
    "passenger_name": "Ethan Taylor",
    "passenger_dob": "05-Nov-1975",
    "passenger_contact": "0412777888",
    "guardian_name": "-",
    "address": {
      "street": "23 Harbour Way",
      "town": "Wellington",
      "postcode": "6011",
      "country": "New Zealand"
    },
    "no_of_cruises": 2,
    "cruises": [
      {
        "cruise_id": 1,
        "cruise_name": "Australian Circumnavigation",
        "board_datetime": "02-Jun-2025 08:30",
        "cabin_no": "1003",
        "cabin_class": "Interior"
      },
      {
        "cruise_id": 3,
        "cruise_name": "New Zealand Delight",
        "board_datetime": "16-Jun-2025 07:30",
        "cabin_no": "110",
        "cabin_class": "Ocean View"
      }
    ]
  },
  {
    "_id": 13,
    "passenger_name": "Ava Wilson",
    "passenger_dob": "22-Mar-1985",
    "passenger_contact": "0412999000",
    "guardian_name": "-",
    "address": {
      "street": "45 Main St",
      "town": "London",
      "postcode": "SW1A 1AA",
      "country": "United Kingdom of Great Britain and Northern Ireland"
    },
    "no_of_cruises": 2,
    "cruises": [
      {
        "cruise_id": 1,
        "cruise_name": "Australian Circumnavigation",
        "board_datetime": "02-Jun-2025 08:45",
        "cabin_no": "1004",
        "cabin_class": "Ocean View"
      },
      {
        "cruise_id": 5,
        "cruise_name": "Brisbane to Hobart",
        "board_datetime": "08-Jul-2025 09:00",
        "cabin_no": "4002",
        "cabin_class": "Suite"
      }
    ]
  },
  {
    "_id": 14,
    "passenger_name": "William Hall",
    "passenger_dob": "30-Oct-1982",
    "passenger_contact": "0413333444",
    "guardian_name": "-",
    "address": {
      "street": "2 Ocean Blvd",
      "town": "Perth",
      "postcode": "6000",
      "country": "Australia"
    },
    "no_of_cruises": 3,
    "cruises": [
      {
        "cruise_id": 2,
        "cruise_name": "Melbourne to Sydney",
        "board_datetime": "16-Jun-2025 07:50",
        "cabin_no": "2003",
        "cabin_class": "Interior"
      },
      {
        "cruise_id": 2,
        "cruise_name": "Melbourne to Sydney",
        "board_datetime": "16-Jun-2025 07:50",
        "cabin_no": "2003",
        "cabin_class": "Ocean View"
      },
      {
        "cruise_id": 5,
        "cruise_name": "Brisbane to Hobart",
        "board_datetime": "08-Jul-2025 09:10",
        "cabin_no": "4004",
        "cabin_class": "Suite"
      }
    ]
  },
  {
    "_id": 15,
    "passenger_name": "Sophia Allen",
    "passenger_dob": "11-Apr-1995",
    "passenger_contact": "0413444555",
    "guardian_name": "-",
    "address": {
      "street": "6 Hilltop Ln",
      "town": "Christchurch",
      "postcode": "8022",
      "country": "New Zealand"
    },
    "no_of_cruises": 1,
    "cruises": [
      {
        "cruise_id": 2,
        "cruise_name": "Melbourne to Sydney",
        "board_datetime": "16-Jun-2025 08:00",
        "cabin_no": "2004",
        "cabin_class": "Ocean View"
      }
    ]
  },
  {
    "_id": 16,
    "passenger_name": "Benjamin Scott",
    "passenger_dob": "14-Jul-1978",
    "passenger_contact": "0413777888",
    "guardian_name": "-",
    "address": {
      "street": "45 Main St",
      "town": "London",
      "postcode": "SW1A 1AA",
      "country": "United Kingdom of Great Britain and Northern Ireland"
    },
    "no_of_cruises": 1,
    "cruises": [
      {
        "cruise_id": 2,
        "cruise_name": "Melbourne to Sydney",
        "board_datetime": "16-Jun-2025 08:10",
        "cabin_no": "2011",
        "cabin_class": "Interior"
      }
    ]
  },
  {
    "_id": 17,
    "passenger_name": "Amelia Adams",
    "passenger_dob": "19-Aug-1992",
    "passenger_contact": "0413888999",
    "guardian_name": "-",
    "address": {
      "street": "9 Maple Ct",
      "town": "Manchester",
      "postcode": "M1 4BT",
      "country": "United Kingdom of Great Britain and Northern Ireland"
    },
    "no_of_cruises": 1,
    "cruises": [
      {
        "cruise_id": 2,
        "cruise_name": "Melbourne to Sydney",
        "board_datetime": "16-Jun-2025 08:20",
        "cabin_no": "2012",
        "cabin_class": "Interior"
      }
    ]
  },
  {
    "_id": 18,
    "passenger_name": "Jacob Walker",
    "passenger_dob": "02-Oct-1984",
    "passenger_contact": "0413111223",
    "guardian_name": "-",
    "address": {
      "street": "89 Willow Rd",
      "town": "Brisbane",
      "postcode": "4000",
      "country": "Australia"
    },
    "no_of_cruises": 2,
    "cruises": [
      {
        "cruise_id": 3,
        "cruise_name": "New Zealand Delight",
        "board_datetime": "16-Jun-2025 07:50",
        "cabin_no": "114",
        "cabin_class": "Ocean View"
      },
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 13:30",
        "cabin_no": "3002",
        "cabin_class": "Suite"
      }
    ]
  },
  {
    "_id": 19,
    "passenger_name": "Grace Thompson",
    "passenger_dob": "21-Jun-1979",
    "passenger_contact": "0413222334",
    "guardian_name": "-",
    "address": {
      "street": "14 River Dr",
      "town": "Auckland",
      "postcode": "1010",
      "country": "New Zealand"
    },
    "no_of_cruises": 2,
    "cruises": [
      {
        "cruise_id": 3,
        "cruise_name": "New Zealand Delight",
        "board_datetime": "16-Jun-2025 08:00",
        "cabin_no": "210",
        "cabin_class": "Balcony"
      },
      {
        "cruise_id": 9,
        "cruise_name": "Queensland Islands",
        "board_datetime": "-",
        "cabin_no": "2023",
        "cabin_class": "Balcony"
      }
    ]
  },
  {
    "_id": 20,
    "passenger_name": "Noah Jones",
    "passenger_dob": "01-Jul-2010",
    "passenger_contact": "-",
    "guardian_name": "Liam Jones",
    "address": {
      "street": "12 Rose St",
      "town": "Melbourne",
      "postcode": "3000",
      "country": "Australia"
    },
    "no_of_cruises": 2,
    "cruises": [
      {
        "cruise_id": 1,
        "cruise_name": "Australian Circumnavigation",
        "board_datetime": "02-Jun-2025 09:00",
        "cabin_no": "1011",
        "cabin_class": "Interior"
      },
      {
        "cruise_id": 10,
        "cruise_name": "New Zealand Christmas Sail",
        "board_datetime": "-",
        "cabin_no": "4031",
        "cabin_class": "Balcony"
      }
    ]
  },
  {
    "_id": 21,
    "passenger_name": "Olivia Brown",
    "passenger_dob": "15-Sep-2012",
    "passenger_contact": "-",
    "guardian_name": "Emma Brown",
    "address": {
      "street": "5 King Ave",
      "town": "Sydney",
      "postcode": "2000",
      "country": "Australia"
    },
    "no_of_cruises": 1,
    "cruises": [
      {
        "cruise_id": 1,
        "cruise_name": "Australian Circumnavigation",
        "board_datetime": "02-Jun-2025 09:15",
        "cabin_no": "1012",
        "cabin_class": "Ocean View"
      }
    ]
  },
  {
    "_id": 22,
    "passenger_name": "Lucas Taylor",
    "passenger_dob": "18-Jun-2008",
    "passenger_contact": "-",
    "guardian_name": "Ethan Taylor",
    "address": {
      "street": "23 Harbour Way",
      "town": "Wellington",
      "postcode": "6011",
      "country": "New Zealand"
    },
    "no_of_cruises": 1,
    "cruises": [
      {
        "cruise_id": 3,
        "cruise_name": "New Zealand Delight",
        "board_datetime": "-",
        "cabin_no": "111",
        "cabin_class": "Ocean View"
      }
    ]
  },
  {
    "_id": 23,
    "passenger_name": "Mia Wilson",
    "passenger_dob": "09-Jan-2009",
    "passenger_contact": "-",
    "guardian_name": "Ava Wilson",
    "address": {
      "street": "45 Main St",
      "town": "London",
      "postcode": "SW1A 1AA",
      "country": "United Kingdom of Great Britain and Northern Ireland"
    },
    "no_of_cruises": 1,
    "cruises": [
      {
        "cruise_id": 3,
        "cruise_name": "New Zealand Delight",
        "board_datetime": "-",
        "cabin_no": "112",
        "cabin_class": "Ocean View"
      }
    ]
  },
  {
    "_id": 24,
    "passenger_name": "James Hall",
    "passenger_dob": "25-Dec-2011",
    "passenger_contact": "-",
    "guardian_name": "William Hall",
    "address": {
      "street": "2 Ocean Blvd",
      "town": "Perth",
      "postcode": "6000",
      "country": "Australia"
    },
    "no_of_cruises": 1,
    "cruises": [
      {
        "cruise_id": 3,
        "cruise_name": "New Zealand Delight",
        "board_datetime": "16-Jun-2025 07:40",
        "cabin_no": "113",
        "cabin_class": "Ocean View"
      }
    ]
  },
  {
    "_id": 25,
    "passenger_name": "Charlotte King",
    "passenger_dob": "07-Feb-1987",
    "passenger_contact": "0413666777",
    "guardian_name": "-",
    "address": {
      "street": "18 Baker St",
      "town": "Birmingham",
      "postcode": "B1 1AA",
      "country": "United Kingdom of Great Britain and Northern Ireland"
    },
    "no_of_cruises": 2,
    "cruises": [
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 12:00",
        "cabin_no": "2001",
        "cabin_class": "Interior"
      },
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 12:00",
        "cabin_no": "2001",
        "cabin_class": "Ocean View"
      }
    ]
  },
  {
    "_id": 26,
    "passenger_name": "Henry Evans",
    "passenger_dob": "09-Mar-2006",
    "passenger_contact": "0413999000",
    "guardian_name": "-",
    "address": {
      "street": "2 Ocean Blvd",
      "town": "Perth",
      "postcode": "6000",
      "country": "Australia"
    },
    "no_of_cruises": 2,
    "cruises": [
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 12:15",
        "cabin_no": "2002",
        "cabin_class": "Interior"
      },
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 12:15",
        "cabin_no": "2002",
        "cabin_class": "Ocean View"
      }
    ]
  },
  {
    "_id": 27,
    "passenger_name": "Isla Roberts",
    "passenger_dob": "28-Nov-2009",
    "passenger_contact": "-",
    "guardian_name": "Charlotte King",
    "address": {
      "street": "6 Hilltop Ln",
      "town": "Christchurch",
      "postcode": "8022",
      "country": "New Zealand"
    },
    "no_of_cruises": 2,
    "cruises": [
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 12:30",
        "cabin_no": "2003",
        "cabin_class": "Interior"
      },
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 12:30",
        "cabin_no": "2003",
        "cabin_class": "Ocean View"
      }
    ]
  },
  {
    "_id": 28,
    "passenger_name": "Evelyn Mitchell",
    "passenger_dob": "05-Sep-2007",
    "passenger_contact": "-",
    "guardian_name": "Jacob Walker",
    "address": {
      "street": "5 King Ave",
      "town": "Sydney",
      "postcode": "2000",
      "country": "Australia"
    },
    "no_of_cruises": 1,
    "cruises": [
      {
        "cruise_id": 4,
        "cruise_name": "Queensland Islands",
        "board_datetime": "07-Jul-2025 12:45",
        "cabin_no": "2022",
        "cabin_class": "Balcony"
      }
    ]
  },
  {
    "_id": 29,
    "passenger_name": "Alexander Carter",
    "passenger_dob": "30-May-1998",
    "passenger_contact": "0413444556",
    "guardian_name": "-",
    "address": {
      "street": "18 Baker St",
      "town": "Birmingham",
      "postcode": "B1 1AA",
      "country": "United Kingdom of Great Britain and Northern Ireland"
    },
    "no_of_cruises": 1,
    "cruises": [
      {
        "cruise_id": 5,
        "cruise_name": "Brisbane to Hobart",
        "board_datetime": "08-Jul-2025 09:20",
        "cabin_no": "4006",
        "cabin_class": "Suite"
      }
    ]
  },
  {
    "_id": 500,
    "passenger_name": "Dominik Kohl",
    "passenger_dob": "15-Mar-1982",
    "passenger_contact": "+61493336312",
    "guardian_name": "-",
    "address": {
      "street": "23 Banksia Avenue",
      "town": "Melbourne",
      "postcode": "3000",
      "country": "Australia"
    },
    "no_of_cruises": 0,
    "cruises": [
      {
        "cruise_id": null,
        "cruise_name": null,
        "board_datetime": "-",
        "cabin_no": "-",
        "cabin_class": "-"
      }
    ]
  },
  {
    "_id": 505,
    "passenger_name": "Stella Kohl",
    "passenger_dob": "01-Sep-2011",
    "passenger_contact": "-",
    "guardian_name": "Dominik Kohl",
    "address": {
      "street": "23 Banksia Avenue",
      "town": "Melbourne",
      "postcode": "3000",
      "country": "Australia"
    },
    "no_of_cruises": 0,
    "cruises": [
      {
        "cruise_id": null,
        "cruise_name": null,
        "board_datetime": "-",
        "cabin_no": "-",
        "cabin_class": "-"
      }
    ]
  },
  {
    "_id": 510,
    "passenger_name": "Poppy Kohl",
    "passenger_dob": "20-Feb-2014",
    "passenger_contact": "-",
    "guardian_name": "Dominik Kohl",
    "address": {
      "street": "23 Banksia Avenue",
      "town": "Melbourne",
      "postcode": "3000",
      "country": "Australia"
    },
    "no_of_cruises": 0,
    "cruises": [
      {
        "cruise_id": null,
        "cruise_name": null,
        "board_datetime": "-",
        "cabin_no": "-",
        "cabin_class": "-"
      }
    ]
  }
]);
db.oo_passengers.countDocuments();
// List all documents you added

db.oo_passengers.find();

// (c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

db.oo_passengers
  .find(
    {
      "$and": [
        { "address.country": { "$in": ["Australia", "New Zealand"] } },
        { "no_of_cruises": { "$gt": 2 } }
      ]
    },
    {
      "_id": 1,
      "passenger_name": 1,
      "passenger_contact": 1,
      "address": 1
    }
  )
  .sort({ _id: 1 });

// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your statement is formatted and has a semicolon
// (;) at the end of each MongoDB statement

// (i) Add new passenger and first booking
db.oo_passengers.insertOne({
  _id: 1000,
  passenger_name: "Kiera Meier",
  passenger_dob: "14-May-1993",  
  passenger_contact: "0412000000",  
  guardian_name: "-",
  address: {
    street: "10 Queen St",
    town: "Brisbane",
    postcode: "4000",
    country: "Australia"
  },
  no_of_cruises: 1,
  cruises: [
    {
      cruise_id: 9,
      cruise_name: "Queensland Islands",
      board_datetime: "06-Dec-2025 12:30",
      cabin_no: "2022",
      cabin_class: "Balcony"  
    }
  ]
});

// Illustrate/confirm changes made
db.oo_passengers.find({ _id: 1000 });

// (ii) Add second booking

db.oo_passengers.updateOne(
  { "_id": 1000 },
  {
    "$push": {
      "cruises": {
        "cruise_id": 10,
        "cruise_name": "New Zealand Christmas Sail",
        "board_datetime": "20-Dec-2025 07:45",
        "cabin_no": "4004",
        "cabin_class": "Suite"
      }
    }
  }
);

// Illustrate/confirm changes made

db.oo_passengers.find({ _id: 1000 });

/* (iii) Write a reflection of the difference
between inserting the passenger and booking data
into the Oracle versus MongoDB.

<<write your reflection here>>
In Oracle, we normalized across multiple tables (ADDRESS, PASSENGER, MANIFEST, CRUISE),
generated keys with sequences, and enforced integrity via FKs and CHECKs. Inserts required:
(1) address row, (2) passenger row(s) that reference address_id/guardian_id, and (3) manifest
rows that reference passenger_id + cruise_id + (ship_code, cabin_no). Each step must be in
a transaction for atomicity, and lookups are done with subqueries (e.g., resolve the cruise by
name/date) because hard-coding IDs is disallowed.

In MongoDB, we denormalize into one “passenger” document that embeds an array of bookings.
Adding a booking is just pushing a new object into the “cruises” array; atomicity at document
level makes the update simple. There are no FKs or sequences; we pick the _id and rely on
application logic to keep consistency. Recomputing derived fields like no_of_cruises can be
done with a pipeline update ($size). MongoDB is faster to evolve and concise for read patterns
that need the passenger + all bookings together, but it trades off relational constraints and may
duplicate data like cruise names. Oracle provides stronger integrity guarantees and complex
joins, while Mongo offers flexible schema and simpler write paths for hierarchical data.


*/
