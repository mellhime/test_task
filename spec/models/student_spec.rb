# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'create' do
    context 'with invalid email' do
      it 'should be invalid' do
        student = Student.new(email: '12345')
        expect(student).not_to be_valid
        expect { student.save }.not_to(change { Student.count })
      end
    end
  end
end
