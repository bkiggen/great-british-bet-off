# frozen_string_literal: true

class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.references :proposer
      t.references :acceptor
      t.string :details
      t.float :odds

      t.timestamps
    end
  end
end
