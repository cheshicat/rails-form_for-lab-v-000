class StudentsController < ApplicationController
  def new
    @students = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  private

  def school_class_params
    params.require(:school_class).permit!
  end

end
