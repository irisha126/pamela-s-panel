class StudentsController < ApplicationController
    def index
        @students = Student.all
    end
    
    def create
        Student.create(student_params)
        flash[:success] = ' New student has been added'
        redirect_to students_path
    end
    
    def new
        @student = Student.new
    end
    
    def edit
        @student = Student.find(params[:id])
    end
    
    def show
        @student = Student.find(params[:id])
    end
    
    def update
        student = Student.find(params[:id])
        student.update(student_params)
        redirect_to student_path
    end
    
    def destroy
        Student.destroy(params[:id])
        redirect_to students_path
    end
    
    private
    def student_params
        params.require(:student).permit(:first_name, :last_name, :date_of_birth, :highest_completed_education)
    end
    
    
end