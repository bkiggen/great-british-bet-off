# frozen_string_literal: true

class UsersBaker < ApplicationRecord
  belongs_to :user
  belongs_to :baker
end
