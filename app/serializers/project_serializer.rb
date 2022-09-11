class ProjectSerializer < ActiveModel::Serializer
  belongs_to :category
  attributes :id, :name, :objective, :why, :learn
end
