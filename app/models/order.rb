class Order < ActiveRecord::Base
  has_one :customer, dependent: :destroy
  has_one :worker, dependent: :destroy
  has_one :chore, dependent: :destroy

  amoeba do
    enable
    # clone [:customer, :worker]
  end


end
