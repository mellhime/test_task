# frozen_string_literal: true

class Group < ActiveRecord::Base
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :students
end
