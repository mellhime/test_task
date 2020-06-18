# frozen_string_literal: true

class CoursesController < ActionController::Base
  before_action :find_course, only: :show

  def index
    @courses = Course.includes(groups: :students).distinct.order('min(groups.start_dt)')
                     .group('courses.id')
                     .pluck('courses.id, courses.title, min(groups.start_dt), count(distinct students.id)')
  end

  def show; end

  private

  def find_course
    @course = Course.includes(:groups).find(params[:id])
  end
end
