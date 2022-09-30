# frozen_string_literal: true

class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :number

      t.timestamps
    end
  end
end
