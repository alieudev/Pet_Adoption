class SheltersController < ApplicationController
     #Show all pets
     def index
        shelters = Shelter.all
        render json: shelters, except:[:created_at, :updated_at]
    end

    #Show one pet
    def show
        shelter = Shelter.find_by(id: params[:id])
        render json: shelter, except:[:created_at, :updated_at]
    end
end
