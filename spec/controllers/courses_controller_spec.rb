# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    let(:course) { FactoryBot.create :course }

    it 'returns http success' do
      get :show, params: { id: course.id }
      expect(response).to have_http_status(:success)
    end
  end
end
