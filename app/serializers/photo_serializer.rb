class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :taken_at, :image_path, :tag_labels
end
