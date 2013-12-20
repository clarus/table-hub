class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :summary, :creationDate

  def creationDate
    object.created_at
  end
end
