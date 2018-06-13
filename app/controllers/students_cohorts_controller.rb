class StudentsCohortsController < ApplicationController
    
    def index
        @students_cohorts = StudentsCohort.all
    end
    
    def create
        student = Student.find(params[:student_id])
         StudentsCohort.create(students_cohort_params)//??????????
        flash[:success] = 'New student has been added to ... cohort'
        redirect_to students_cohorts_path
    end
    
    def new
        @cohorts = Cohort.all.map{|cohort| [cohort.name, cohort.id]}
        @students = Student.all.map{|student| [student.last_name, student.id]}
        @student_cohort = StudentsCohort.new
    end
    
    def edit
        @student_cohort = StudentsCohort.find(params[:id])
    end
    
    def show
        @student_cohort = StudentsCohort.find(params[:id])
        @course = StudentsCohort.find(params[:id])
    end
    
    def update 
        student_cohort = StudentsCohort.find(params[:id])
        student_cohort.update(students_cohort_params)
        redirect_to students_cohort_path
    end
    
    def destroy
        StudentsCohort.destroy(params[:id])
        redirect_to students_cohorts_path
    end
    
    
    private
    def students_cohort_params
        params.require(:students_cohort).permit(:cohort_id, :student_id)
    end
    
    
    
end
