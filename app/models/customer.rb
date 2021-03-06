class Customer < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :orders
  has_many :workers, through: :order
  validates :name, uniqueness: true

  # accepts_nested_attributes_for :orders
end
