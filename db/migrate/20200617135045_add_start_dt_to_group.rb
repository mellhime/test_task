# frozen_string_literal: true

class AddStartDtToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :start_dt, :date
  end
end
