# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :event_type
  belongs_to :user
end
