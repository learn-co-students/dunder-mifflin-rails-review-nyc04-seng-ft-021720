class DogsController < ApplicationController
    def index
        @dogs = Dog.all.sort_by { |dog| dog.employees.count * -1}
        # byebug
        #@dogs[1].employees.count
        # @dogs.sort_by { |dog| dog.employees.count }
    end
    
    def show
        @dog = Dog.find(params[:id])
    end

 
end
