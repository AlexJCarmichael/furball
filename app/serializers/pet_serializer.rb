class PetSerializer < ActiveModel::Serializer
  atttributes :name, :desc, :type, :breed, :weight
  belongs_to :user
end
