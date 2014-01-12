class PetsController < ApplicationController

  def index
    @pets = Pet.where(user_id: current_user.id)
    @upcomingvisits = current_user.visits.where('appointment > ?',Time.now)
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pets_path, notice: 'Pet Created Successfully'
    else
      render 'new'
    end
  end


  private

  def pet_params
    params.require(:pet).permit(:name)
  end

end