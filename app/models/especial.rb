class Especial < ApplicationRecord
  belongs_to :user
  has_many :special_neighbors, dependent: :destroy
  has_many :special_owners, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.search(search)
    if search
      where(["n_predio LIKE ? ", "%#{search}%"])
    else
      all
    end
  end

end
