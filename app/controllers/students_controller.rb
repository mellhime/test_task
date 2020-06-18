# frozen_string_literal: true

class StudentsController < ActionController::Base
  def create
    @student = Student.new(email: student_params[:email])
    @student.group_ids = @student.group_ids << student_params[:group_id]

    if @student.save
      flash[:notice] = 'Successful join the group'
    else
      flash[:alert] = 'Could not join the group'
    end

    redirect_to courses_path
  end

  private

  def student_params
    params.permit(:email, :group_id)
  end
end
