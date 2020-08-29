# frozen_string_literal: true

class AddSexToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :sex, :string, null: false
  end
end
