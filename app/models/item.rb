class Item < ApplicationRecord
  belongs_to :list

  validates :priority, inclusion: ["high", "medium", "low", "none"]
  validates :name, presence: true

  composed_of :price,
    :class_name => 'Money',
    :mapping => %w(price cents),
    :converter => Proc.new { |value| Money.new(value) }
end
