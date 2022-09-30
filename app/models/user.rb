# frozen_string_literal: true

class User < ApplicationRecord
  has_many :users_bakers
  has_many :bakers, through: :users_bakers
  has_many :episodes_bakers
  has_many :episodes, through: :episodes_bakers
  has_many :events
  has_many :rankings
end
