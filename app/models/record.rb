class Record < ApplicationRecord
  belongs_to :user
  has_one :loss_place
  extend FriendlyId
  friendly_id :name, use: :slugged
end
