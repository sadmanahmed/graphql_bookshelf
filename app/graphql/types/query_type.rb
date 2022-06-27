module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField


    field :author, Types::AuthorType, null: true , description: "Returns one Author instance" do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.where(id: id).first
    end

    field :all_author, [AuthorType], null: true , description: "Returns all Authors instance"
    def all_author
      Author.all
    end
  end
end
