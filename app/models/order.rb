class Order < ActiveRecord::Base
  has_one :customer
  has_one :worker
  has_one :chore
end
