class DogsController < ApplicationController
    def index
        @dogs = Dog.all.sort_by { |dog| dog.employees.count * -1}
    end
    
    def show
        @dog = Dog.find(params[:id])
    end

 
end