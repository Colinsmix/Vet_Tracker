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
      redirect_to root_path, notice: "Visit Created Successfully!"
    else
      render 'new'
    end
  end

  def edit
    @pet = Pet.find(params[:pet_id])
    @visit = @pet.visits.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:pet_id])
    @visit = @pet.visits.find(params[:id])
    if @visit.update(visit_params)
      redirect_to root_path(@pet), notice: "Visit Edited Successfully!"
    else
      render 'new'
    end
  end

  def show
    @pet = Pet.find(params[:pet_id])
    @visit = @pet.visits.find(params[:id])
  end

  private

  def visit_params
    params.require(:visit).permit(:name, :description, :appointment)
  end
end