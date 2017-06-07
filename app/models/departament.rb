class Departament < ApplicationRecord
  has_many :tickets, dependent: :delete_all
  validates :name, presence: true
  has_many :users, dependent: :delete_all
end
