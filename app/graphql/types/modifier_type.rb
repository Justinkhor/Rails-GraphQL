# frozen_string_literal: true

module Types
  class ModifierType < Types::BaseObject
    field :id, ID, null: false
    field :item_id, Integer, null: false
    field :modifier_group_id, Integer, null: false
    field :display_order, Integer, default: 0
    field :default_quantity, Integer, default: 0
    field :price_override, Float
    field :items, [Types::ItemType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
