class Assignment < ApplicationRecord
  belongs_to :user
  has_one :ticket
end
