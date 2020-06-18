# frozen_string_literal: true

class Course < ActiveRecord::Base
  has_and_belongs_to_many :groups
end
