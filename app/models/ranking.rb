class Ranking < ApplicationRecord
  has_one :user
  has_one :baker
end
