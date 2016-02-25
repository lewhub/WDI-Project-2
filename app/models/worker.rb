class Worker < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :orders
  has_many :chores, through: :order
  has_many :customers, through: :order
end
