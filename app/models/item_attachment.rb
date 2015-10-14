class ItemAttachment < ActiveRecord::Base

  # Created by.
  belongs_to :created_by, class_name: 'User'

  # Item.
  belongs_to :item

  # Attached file.
  mount_uploader :file, ItemUploader

end
