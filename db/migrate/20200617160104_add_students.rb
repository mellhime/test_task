# frozen_string_literal: true

class AddStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :lastname
      t.timestamps
    end

    create_table :groups_students do |t|
      t.integer :group_id
      t.integer :student_id
    end
  end
end
