class Modifier < ApplicationRecord
    belongs_to :item
    belongs_to :modifier_group

	scope :ordered, -> { order(display_order: :asc) }
end
