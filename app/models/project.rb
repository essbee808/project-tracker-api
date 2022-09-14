class Project < ApplicationRecord
  belongs_to :category

  validates :name, :objective, :why, :learn, presence: true
end
