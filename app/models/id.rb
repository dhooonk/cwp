class Id < ApplicationRecord
  mount_base64_uploader :image, IdImageUploader
end
