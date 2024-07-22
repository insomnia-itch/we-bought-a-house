# == Schema Information
#
# Table name: contractors
#
#  id           :uuid             not null, primary key
#  email        :string           default(""), not null
#  name         :string           default(""), not null
#  phone_number :string           default(""), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Contractor < ApplicationRecord
end
