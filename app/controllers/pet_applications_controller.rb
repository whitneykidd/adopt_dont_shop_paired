class PetApplicationsController < ApplicationController
  def index
    @pet = Pet.find(params[:id])
  
  end

  def create
  
  end
end
