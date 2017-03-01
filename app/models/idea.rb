class Idea < ApplicationRecord
  has_many :endorsements, dependent: :destroy
  belongs_to :user
end
