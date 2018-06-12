class CohortsController < ApplicationController
 
    def index
        
        @cohorts = Cohort.all
    end
    
    def create
        course = Course.find(params[:course_id])
        course.cohorts.create(cohort_params)
        redirect_to course_cohorts_path
    end
    
    def new
        @course = Course.find(params[:course_id])
        @cohort = Cohort.new
    end
    

    def enrolled
        @cohort = Cohort.find(params[:id])
    end
    
    private
    def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date)
    end
    
    
end
