# frozen_string_literal: true

module Types
  class MenuType < Types::BaseObject
    field :id, ID, null: false
    field :identifier, String
    field :label, String
    field :state, String
    field :start_date, GraphQL::Types::ISO8601Date
    field :end_date, GraphQL::Types::ISO8601Date
    field :sections, [Types::SectionType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def sections
      object.menu_sections.order(display_order: :asc).map(&:section)
    end

  end
end
