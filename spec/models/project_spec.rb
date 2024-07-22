# == Schema Information
#
# Table name: projects
#
#  id                        :uuid             not null, primary key
#  budget                    :integer          default(0), not null
#  desired_completion_date   :date
#  estimated_completion_date :date
#  priority                  :integer          default(0), not null
#  running_cost              :integer          default(0), not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  house_id                  :uuid             not null
#
# Indexes
#
#  index_projects_on_house_id  (house_id)
#
# Foreign Keys
#
#  fk_rails_...  (house_id => houses.id)
#
require 'rails_helper'

RSpec.describe Project, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
