# frozen_string_literal: true

class EpisodesBaker < ApplicationRecord
  belongs_to :episodes
  belongs_to :baker
end
