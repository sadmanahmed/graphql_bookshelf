class Types::AuthorType < Types::BaseObject
  description "Author queries"

  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :yob, Int, null: false
  field :is_alive, Boolean, null: true
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :full_name, String, null: false
  field :coordinates, Types::CoordinatesType, null: false
  field :publications_years, [Int], null: false




end