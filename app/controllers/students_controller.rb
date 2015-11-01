class StudentsController < ApplicationController
    before_action :get_student, only: [:edit, :update, :destroy, :show]
    def index
        @students = Student.all
    end

    def destroy
        @student.destroy
        redirect_to action: :index
    end

    def show
        
    end

    def get_student
        @student = Student.find(params[:id])
    end
end
