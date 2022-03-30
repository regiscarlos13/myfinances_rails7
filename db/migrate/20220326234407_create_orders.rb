# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.0] # :nodoc:
  def change
    create_table :orders, id: :uuid do |t|
      t.references :cont, null: false, foreign_key: true, type: :uuid
      t.references :person, null: false, foreign_key: true, type: :uuid
      t.date :data
      t.decimal :total, precision: 9, scale: 2
      t.integer :parcela, default: 1

      t.timestamps
    end
  end
end
