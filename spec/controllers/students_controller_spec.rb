# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  describe 'POST #create' do
    let(:group) { FactoryBot.create :group }

    let(:params) do
      { email: 'test@test.com', group_id: group.id }
    end

    let(:invalid_params) do
      { email: '123456', group_id: group.id }
    end

    it 'creates student if valid' do
      post :create, params: params
      expect(Student.find_by(email: 'test@test.com')).to be_present
    end

    it 'do not creates student if valid' do
      post :create, params: params
      expect(Student.find_by(email: '123456')).not_to be_present
    end
  end
end
