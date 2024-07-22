# == Schema Information
#
# Table name: prerequisites
#
#  id                  :uuid             not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  locked_project_id   :uuid             not null
#  required_project_id :uuid             not null
#
# Indexes
#
#  index_prerequisites_on_locked_project_id    (locked_project_id)
#  index_prerequisites_on_required_project_id  (required_project_id)
#
# Foreign Keys
#
#  fk_rails_...  (locked_project_id => projects.id)
#  fk_rails_...  (required_project_id => projects.id)
#
class Prerequisite < ApplicationRecord
  belongs_to :required_project
  belongs_to :locked_project
end
