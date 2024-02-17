class ModifierGroup < ApplicationRecord
    has_many :modifiers
	has_many :items, through: :modifier
end
