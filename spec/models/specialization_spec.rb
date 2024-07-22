# == Schema Information
#
# Table name: specializations
#
#  id            :uuid             not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  contractor_id :uuid             not null
#  skill_id      :uuid             not null
#
# Indexes
#
#  index_specializations_on_contractor_id  (contractor_id)
#  index_specializations_on_skill_id       (skill_id)
#
# Foreign Keys
#
#  fk_rails_...  (contractor_id => contractors.id)
#  fk_rails_...  (skill_id => skills.id)
#
require 'rails_helper'

RSpec.describe Specialization, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
