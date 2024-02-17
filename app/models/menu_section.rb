class MenuSection < ApplicationRecord
	belongs_to :menu
	belongs_to :section

	scope :ordered, -> { order(display_order: :asc) }
end
