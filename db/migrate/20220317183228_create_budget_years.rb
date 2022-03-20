# frozen_string_literal: true

class CreateBudgetYears < ActiveRecord::Migration[7.0] # :nodoc:
  def change
    create_table :budget_years, id: :uuid do |t|
      t.references :budget, null: false, foreign_key: true, type: :uuid
      t.references :cont, null: false, foreign_key: true, type: :uuid
      t.decimal :january, precision: 9, scale: 2
      t.decimal :february, precision: 9, scale: 2
      t.decimal :march, precision: 9, scale: 2
      t.decimal :april, precision: 9, scale: 2
      t.decimal :may, precision: 9, scale: 2
      t.decimal :june, precision: 9, scale: 2
      t.decimal :july, precision: 9, scale: 2
      t.decimal :august, precision: 9, scale: 2
      t.decimal :september, precision: 9, scale: 2
      t.decimal :october, precision: 9, scale: 2
      t.decimal :november, precision: 9, scale: 2
      t.decimal :december, precision: 9, scale: 2
      t.decimal :total, precision: 9, scale: 2

      t.timestamps
    end
  end
end
