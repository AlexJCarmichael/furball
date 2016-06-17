class PetSerializer < ActiveModel::Serializer
  atttributes :name, :desc, :category, :breed, :weight
  belongs_to :user
end
