# frozen_string_literal: true

class Student < ActiveRecord::Base
  has_and_belongs_to_many :groups

  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
end
