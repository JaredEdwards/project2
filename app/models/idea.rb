class Idea < ApplicationRecord
  has_many :endorsements, dependent: :destroy
end
