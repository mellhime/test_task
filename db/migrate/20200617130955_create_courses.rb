# frozen_string_literal: true

class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.timestamps
    end

    create_table :courses_groups do |t|
      t.integer :course_id
      t.integer :group_id
    end

    create_table :groups do |t|
      t.string :title
      t.timestamps
    end
  end
end
