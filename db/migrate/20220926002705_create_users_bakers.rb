# frozen_string_literal: true

class CreateUsersBakers < ActiveRecord::Migration[7.0]
  def change
    create_table :users_bakers do |t|
      t.references :user
      t.references :baker
      t.timestamps
    end
  end
end
