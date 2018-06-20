class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_recipes
  has_many :recipes, through: :order_recipes
  # validates :has_pizzas_ordered

  validates :phone, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }

  def has_pizzas_ordered

  end
end
