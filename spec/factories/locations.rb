# == Schema Information
#
# Table name: locations
#
#  id          :uuid             not null, primary key
#  planet_id   :uuid
#  cords_x     :string
#  cords_y     :string
#  entity_id   :uuid
#  entity_type :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_locations_on_entity_id_and_entity_type  (entity_id,entity_type) UNIQUE
#

FactoryGirl.define do
  factory :location do
    cords_x {Faker::Number.between(-10000, 10000)}
    cords_y {Faker::Number.between(-10000, 10000)}
    planet {Planet.all.sample}
  end
end
