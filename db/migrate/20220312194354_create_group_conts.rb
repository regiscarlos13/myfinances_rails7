# frozen_string_literal: true

class CreateGroupConts < ActiveRecord::Migration[7.0] # :nodoc:
  def change
    create_table :group_conts, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.integer :tipo
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
