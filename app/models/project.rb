class Project < ApplicationRecord
  belongs_to :category

  validates :name, :objective, :why, :learn, presence: true
  validates :name, uniqueness: true
end
