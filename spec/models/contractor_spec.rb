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
require 'rails_helper'

RSpec.describe Contractor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
