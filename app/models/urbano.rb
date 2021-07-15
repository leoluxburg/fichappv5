class Urbano < ApplicationRecord
  belongs_to :user
  has_many :urban_owners, dependent: :destroy
  has_many :urban_neighbors, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
