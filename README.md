# ZOO

## species
has_many animals

## animals
belongs_to species

## staff_members
 has_many roles, through staff_member_roles

## staff_member_roles
belongs_to staff_members
belongs_to role

## roles
has_many staff_members, through staff_member_roles

I should be able to see a list of all the animals in the zoo returned as JSON
'/api/v1/animals'


## rack-cors

+

## active-model-serializer
