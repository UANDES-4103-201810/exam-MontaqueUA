class Order < ApplicationRecord
  belongs_to :customer
  # validates :has_pizzas_ordered
  validates :phone, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }

  def has_pizzas_ordered

  end
end
