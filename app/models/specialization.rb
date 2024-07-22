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
class Specialization < ApplicationRecord
  belongs_to :contractor
  belongs_to :skill
end
