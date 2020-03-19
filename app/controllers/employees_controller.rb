class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        @employee = get_instance
    end

    def new
        @employee = Employee.new
        @form_text_fields = form_text_fields
        @dogs = Dog.all
    end

    def create
        @employee = Employee.new(strong_params)
        if @employee.save
            redirect_to @employee
        else
            render :new
        end
    end

    def edit
        @employee = get_instance
        @form_text_fields = form_text_fields
        @dogs = Dog.all
    end

    def update
        @employee = get_instance
        if @employee.update(strong_params)
            redirect_to @employee
        else
            @form_text_fields = form_text_fields
            @dogs = Dog.all
            render :edit
        end
    end

    private

    def get_instance
        Employee.find(params[:id])
    end

    def strong_params
        params.require(:employee).permit(
            :first_name, :last_name, :alias,
            :title, :office, :img_url, :dog_id
        )
    end

    def form_text_fields
        [
            :first_name, :last_name, :alias,
            :title, :office, :img_url
        ]
    end
end

