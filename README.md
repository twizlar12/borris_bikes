First Makers pairing exercise
Adding a new line to the README

User story 1:
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

Nouns (objects):
- person
- bike
- docking_station

Verbs (messages):
- release_a_bike

person -release_a_bike-> docking_station

DockingStation <-- release_bike --> a Bike


User story 2:
As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Nouns (objects):
- person
- bike

Verbs (messages):
- bike_is_working

bike -is_bike_working-> person

Bike <-- working? --> true/false
