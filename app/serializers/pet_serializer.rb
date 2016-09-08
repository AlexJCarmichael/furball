class PetSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :desc,
             :category,
             :breed,
             :weight,
             :lost_at
             
  belongs_to :user
end
