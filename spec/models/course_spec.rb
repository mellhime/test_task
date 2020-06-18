# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Course, type: :model do
  it 'has groups' do
    course = Course.create!
    group = course.groups.create!(title: 'test')
    expect(course.reload.groups).to eq([group])
  end
end
