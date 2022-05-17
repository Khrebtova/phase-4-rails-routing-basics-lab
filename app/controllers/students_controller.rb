class StudentsController < ApplicationController
    def index
        @students = Student.all
        render json: @students
    end

    def grades
        @by_grade = Student.order(:grade).reverse
        render json: @by_grade
    end

    def highest_grade
        @highest_grade = Student.order(:grade).reverse.first
        render json: @highest_grade
    end

end
