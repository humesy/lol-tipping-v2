# == Schema Information
#
# Table name: leagues
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :league do
    name { "MyString" }
  end
end
