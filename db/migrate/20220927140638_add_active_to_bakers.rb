# frozen_string_literal: true

class AddActiveToBakers < ActiveRecord::Migration[7.0]
  def change
    add_column :bakers, :active, :boolean, default: true
    add_column :bakers, :age, :integer
  end
end
