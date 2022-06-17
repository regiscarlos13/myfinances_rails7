# frozen_string_literal: true

class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.integer :tipo
      t.string :banco
      t.string :name
      t.string :agencia
      t.string :conta
      t.integer :conta_tipo

      t.timestamps
    end
  end
end
