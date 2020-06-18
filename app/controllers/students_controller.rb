# frozen_string_literal: true

class StudentsController < ActionController::Base
  def create
    @student = Student.new(email: params[:email])
    @student.group_ids = @student.group_ids << params[:group_id]

    if @student.save
      flash[:notice] = 'success'
    else
      flash[:alert] = 'error'
    end

    redirect_to courses_path
  end

  def student_params
    params.permit(:email, :group_id)
  end
end
