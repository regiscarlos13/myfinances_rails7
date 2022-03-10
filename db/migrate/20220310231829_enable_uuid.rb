# frozen_string_literal: true

class EnableUuid < ActiveRecord::Migration[7.0] # :nodoc:
  def change
    enable_extension 'pgcrypto'
  end
end
