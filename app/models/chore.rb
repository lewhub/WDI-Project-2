class Chore < ActiveRecord::Base
  belongs_to :order
  has_one :worker, through: :order

end
