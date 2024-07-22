# == Schema Information
#
# Table name: attachments
#
#  id              :uuid             not null, primary key
#  attachable_type :string           not null
#  file_extension  :string           default(""), not null
#  url             :string           default(""), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  attachable_id   :uuid             not null
#  uploader_id     :uuid             not null
#
# Indexes
#
#  index_attachments_on_attachable   (attachable_type,attachable_id)
#  index_attachments_on_uploader_id  (uploader_id)
#
# Foreign Keys
#
#  fk_rails_...  (uploader_id => users.id)
#
require 'rails_helper'

RSpec.describe Attachment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
