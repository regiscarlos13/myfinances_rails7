# frozen_string_literal: true

class CreatePeople < ActiveRecord::Migration[7.0] # :nodoc:
  def change
    create_table :people, id: :uuid do |t|
      t.string :name
      t.integer :tipo
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
