class SectionItem < ApplicationRecord
	belongs_to :section
	belongs_to :item

	scope :ordered, -> { order(display_order: :asc) }
end
