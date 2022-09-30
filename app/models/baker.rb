# frozen_string_literal: true

class Baker < ApplicationRecord
  has_many :users_bakers
  has_many :users, through: :users_bakers
  has_many :rankings
end
