# frozen_string_literal: true

class EventType < ApplicationRecord
  has_many :events
end
