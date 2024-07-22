# == Schema Information
#
# Table name: ownerships
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  house_id   :uuid             not null
#  owner_id   :uuid             not null
#
# Indexes
#
#  index_ownerships_on_house_id  (house_id)
#  index_ownerships_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (house_id => houses.id)
#  fk_rails_...  (owner_id => users.id)
#
require 'rails_helper'

RSpec.describe Ownership, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
