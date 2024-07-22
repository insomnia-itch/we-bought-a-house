# == Schema Information
#
# Table name: skills
#
#  id         :uuid             not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Skill < ApplicationRecord
end
