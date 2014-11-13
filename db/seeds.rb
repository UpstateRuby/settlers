# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


Theme.delete_all
Theme.create(
  name: 'Original',
  lumber_name: 'lumber',
  brick_name: 'brick',
  ore_name: 'ore',
  grain_name: 'grain',
  wool_name: 'wool',
  desert_name: 'desert'
)

Theme.create(name: 'Star Trek')