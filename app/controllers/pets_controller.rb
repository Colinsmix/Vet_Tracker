class PetsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @pets = Pet.where(user_id: current_user.id)
    @upcomingvisits = current_user.visits.where('appointment > ?',Time.now).order('appointment DESC') if user_signed_in?

  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to root_path, notice: 'Pet Created Successfully'
    else
      render 'new'
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to root_path, notice: "Pet Removed!"
  end

  private

  def pet_params
    params.require(:pet).permit(:name)
  end

end
