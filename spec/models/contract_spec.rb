# == Schema Information
#
# Table name: contracts
#
#  id             :uuid             not null, primary key
#  accepted       :boolean          default(FALSE), not null
#  price_estimate :integer          default(0), not null
#  running_cost   :integer          default(0), not null
#  time_estimate  :integer          default(0), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  contractor_id  :uuid             not null
#  project_id     :uuid             not null
#
# Indexes
#
#  index_contracts_on_contractor_id  (contractor_id)
#  index_contracts_on_project_id     (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (contractor_id => contractors.id)
#  fk_rails_...  (project_id => projects.id)
#
require 'rails_helper'

RSpec.describe Contract, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
