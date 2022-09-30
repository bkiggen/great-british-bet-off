# frozen_string_literal: true

class CreateEventTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :event_types do |t|
      t.string :name
      t.string :abbreviation
      t.integer :value
      t.string :description

      t.timestamps
    end
  end
end
