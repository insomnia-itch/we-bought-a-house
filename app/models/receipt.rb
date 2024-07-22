# == Schema Information
#
# Table name: receipts
#
#  id            :uuid             not null, primary key
#  price         :integer          default(0), not null
#  type_of_cost  :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  contractor_id :uuid             not null
#  project_id    :uuid             not null
#
# Indexes
#
#  index_receipts_on_contractor_id  (contractor_id)
#  index_receipts_on_project_id     (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (contractor_id => contractors.id)
#  fk_rails_...  (project_id => projects.id)
#
class Receipt < ApplicationRecord
  belongs_to :project
  belongs_to :contractor
end
