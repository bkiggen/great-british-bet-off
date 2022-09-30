# frozen_string_literal: true

class CreateBakers < ActiveRecord::Migration[7.0]
  def change
    create_table :bakers do |t|
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
