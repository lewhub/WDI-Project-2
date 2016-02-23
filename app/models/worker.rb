class Worker < ActiveRecord::Base
  has_secure_password
  belongs_to :order
  has_many :chores, through: :order
  has_many :customers, through: :order
end
