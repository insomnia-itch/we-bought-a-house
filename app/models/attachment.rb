class Attachment < ApplicationRecord
  belongs_to :uploader
  belongs_to :attachable, polymorphic: true
end
