class EmployeesController < ApplicationController
    before_action :get_employee_by_id, only: [:show, :edit, :update]
    
    def index
        @employees = Employee.all
    end
   
    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to @employee
        else
            render :new
        end
    end

    # def show
    # end

    # def edit
    # end

    def update
        if @employee.update(employee_params)
            redirect_to @employee
        else
            render :edit
        end
    end

    def destroy
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

    def get_employee_by_id
        @employee = Employee.find(params[:id])
    end
end
