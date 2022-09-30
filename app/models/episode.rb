# frozen_string_literal: true

class Episode < ApplicationRecord
  has_many :episodes_bakers
  has_many :bakers, through: :episodes_bakers
end
