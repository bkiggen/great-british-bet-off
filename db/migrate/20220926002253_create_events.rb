# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :event_type
      t.references :user
      t.integer :multiplier
      t.integer :total

      t.timestamps
    end
  end
end
