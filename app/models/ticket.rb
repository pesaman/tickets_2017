class Ticket < ApplicationRecord
  belongs_to :departament
  has_one :assignment
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
