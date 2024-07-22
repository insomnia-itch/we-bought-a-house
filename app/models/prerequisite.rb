class Prerequisite < ApplicationRecord
  belongs_to :required_project
  belongs_to :locked_project
end
