class Note < ApplicationRecord
  belongs_to :notable, polymorphic: true
  belongs_to :author
end
