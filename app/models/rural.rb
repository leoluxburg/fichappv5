class Rural < ApplicationRecord
  belongs_to :user

  has_many :neighbors, dependent: :destroy
  has_many :owners, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
