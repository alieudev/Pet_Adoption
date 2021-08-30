class PetsController < ApplicationController
    #Show all pets
    def index
        pets = Pet.all
        render json: pets, except:[:created_at, :updated_at]
    end

    #Show one pet
    def show
        pet = Pet.find_by(id: params[:id])
        render json: pet, except:[:created_at, :updated_at]
    end
end
