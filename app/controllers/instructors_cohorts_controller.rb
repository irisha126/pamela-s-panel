class InstructorsCohortsController < ApplicationController
     before_action :authenticate_admin!
     def create
        instructor = Instructor.find(instructors_cohort_params[:instructor_id])
        cohort = Cohort.find(instructors_cohort_params[:cohort_id])
        InstructorsCohort.create(instructors_cohort_params)
#        student.students_cohorts.create(studens_cohort_params)
        
        flash[:success] = 'New instructor has been added to ... cohort'
        redirect_to instructors_path
    end
    
    def new
        @cohorts = Cohort.all.map{|cohort| [cohort.name, cohort.id]}
        @instructors = Instructor.all.map{|instructor| [instructor.last_name, instructor.id]}
        @instructors_cohort = InstructorsCohort.new
    end
    
    private
    def instructors_cohort_params
        params.require(:instructors_cohort).permit(:instructor_id, :cohort_id)
    end
    
end
