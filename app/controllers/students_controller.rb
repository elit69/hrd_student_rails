class StudentsController < ApplicationController
    before_action :get_students, only: [:edit, :update, :destroy, :show]
    def index
        @students = Student.all
    end

    def destroy
        @student.destroy
        redirect_to action: :index
    end

    def show
        
    end

    def get_students
        @student = Student.find(params[:id])
    end
end
