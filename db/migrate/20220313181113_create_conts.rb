# frozen_string_literal: true

class CreateConts < ActiveRecord::Migration[7.0]
  def change
    create_table :conts, id: :uuid do |t|
      t.string :name
      t.boolean :active
      t.references :group_cont, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
