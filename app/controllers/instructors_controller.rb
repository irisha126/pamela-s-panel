class InstructorsController < ApplicationController
    
       
    def index
        @instructors = Instructor.all
    end
    
    def create
        Instructor.create(instructor_params)
        flash[:success] = ' New instructor has been added'
        redirect_to instructors_path
    end
    
    def new
        @instructor = Instructor.new
    end
    
    
    def edit
        @instructor = Instructor.find(params[:id])
    end
    
    def show
        @instructor = Instructor.find(params[:id])
    end
    
    def update
        instructor = Instructor.find(params[:id])
        instructor.update(instructor_params)
        redirect_to instructor_path
    end
    
    def destroy
       Instructor.destroy(params[:id])
        redirect_to instructors_path
        
    end
    
    
    private
    def instructor_params
        params.require(:instructor).permit(:first_name, :last_name, :date_of_birth, :salary, :highest_completed_education)
                                                                                             
    end
    
    
end
