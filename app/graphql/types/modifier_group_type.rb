# frozen_string_literal: true

module Types
  class ModifierGroupType < Types::BaseObject
    field :id, ID, null: false
    field :identifier, String
    field :label, String
    field :selection_required_min, Integer
    field :selection_required_max, Integer
    field :items, [Types::ItemType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def items
      object.modifiers.order(display_order: :asc).map(&:item)
    end

  end
end
