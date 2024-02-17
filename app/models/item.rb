class Item < ApplicationRecord
    self.inheritance_column = nil
    validates :type, inclusion: { in: ["Product", "Component"], message: "%{value} is invalid" }
	
    has_many :item_modifier_groups
	has_many :modifier_groups, through: :item_modifier_groups
end
