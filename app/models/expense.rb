class Expense < ApplicationRecord
  has_one :property
  #belongs_to :property
end