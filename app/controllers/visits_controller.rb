class VisitsController < ApplicationController
  def index
    @pet = Pet.find(params[:pet_id])
    @visits = @pet.visits
  end

  def new
    @pet = Pet.find(params[:pet_id])
    @visit = @pet.visits.build
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @visit = @pet.visits.build(visit_params)

    if @visit.save
      redirect_to pet_visits_path(@pet), notice: "Visit Created Successfully!"
    else
      render 'new'
    end
  end

  private

  def visit_params
    params.require(:visit).permit(:name, :description, :appointment)
  end
end