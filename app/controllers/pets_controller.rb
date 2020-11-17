class PetsController < ApplicationController


  before_action :find_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
    # @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pets_params)
    @pet.save


    redirect_to pet_path(@pet)
  end

  def edit
    # @pet = Pet.find(params[:id])
  end

  def update
    # @pet = Pet.find(params[:id])
    @pet.update(pets_params)

    redirect_to pet_path(@pet)
  end

  def destroy
    # @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to pets_path
  end


  private

  def pets_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end
end
