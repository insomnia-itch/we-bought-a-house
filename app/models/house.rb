# == Schema Information
#
# Table name: houses
#
#  id         :uuid             not null, primary key
#  address    :string           default(""), not null
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lister_id  :uuid             not null
#
# Indexes
#
#  index_houses_on_lister_id  (lister_id)
#
# Foreign Keys
#
#  fk_rails_...  (lister_id => users.id)
#
class House < ApplicationRecord
  belongs_to :lister
end
