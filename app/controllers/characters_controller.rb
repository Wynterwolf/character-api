class CharactersController < ApplicationController

    def index
        @characters = Character.all
        render json: @characters
    end

    def show
        @characters = Character.find(params[:id])
        render json: @characters
    end

    def create 
        @characters = Character.create(
            name: params[:name],
            breed: params[:breed],
            auspice: params[:auspice],
            tribe: params[:tribe],
            concept: params[:concept]
        )
        render json: @characters
    end

    def update
        @characters = Character.find(params[:id])
        @characters.update(
            name: params[:name],
            breed: params[:breed],
            auspice: params[:auspice],
            tribe: params[:tribe],
            concept: params[:concept]
        )
        render json: @characters
    end

    def destroy
        @characters = Character.all
        @character = Character.find(params[:id])
        @character.destroy
        render json: @characters
    end
    
end
