# frozen_string_literal: true

class CreateEpisodesBakers < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes_bakers do |t|
      t.references :user
      t.references :baker
      t.timestamps
    end
  end
end
