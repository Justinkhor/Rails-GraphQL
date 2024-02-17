# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :menus, [Types::MenuType], null: false do
      description "Return a list of menus"
    end

    field :menu, MenuType, null: true do
      description "Find menu by id"
      argument :id, ID, required: true
    end

    field :sections, [Types::SectionType], null: false do
      description "Return a list of sections"
    end

    field :section, SectionType, null: true do
      description "Find section by id"
      argument :id, ID, required: true
    end

    field :items, [Types::ItemType], null: false do
      description "Return a list of items"
    end

    field :item, ItemType, null: true do
      description "Find item by id"
      argument :id, ID, required: true
    end

    field :modifier_groups, [Types::ModifierGroupType], null: false do
      description "Return a list of modifier groups"
    end

    field :modifier_group, ModifierGroupType, null: true do
      description "Find modifier group by id"
      argument :id, ID, required: true
    end

    def menus
      Menu.all
    end 

    def menu(id:)
      Menu.find(id)
    end

    def sections
      Section.all
    end 

    def section(id:)
      Section.find(id)
    end

    def items
      Item.all
    end 

    def item(id:)
      Item.find(id)
    end

    def modifier_groups
      ModifierGroup.all
    end 

    def modifier_group(id:)
      ModifierGroup.find(id)
    end

  end
end
