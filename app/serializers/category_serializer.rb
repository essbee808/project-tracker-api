class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :projects, include: :all
end
