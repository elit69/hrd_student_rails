class StudentsController < ApplicationController
    before_action :get_student, only: [:edit, :update, :destroy, :show]
    def index
        @students = Student.all
    end

    def new 
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)        
        redirect_to action: :index
    end

    def update
        @student.update(student_params)
        redirect_to action: :index
    end

    def destroy
        @student.destroy
        redirect_to action: :index
    end

####################################################

    def get_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit([:first_name, :last_name, :classroom])
    end  
end
