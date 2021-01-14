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
            user_id: params[:id],
            name: params[:name],
            breed: params[:breed],
            auspice: params[:auspice],
            tribe: params[:tribe],
            concept: params[:concept],
            strength: params[:strength],
            charisma: params[:charisma],
            perception: params[:perception],
            dexterity: params[:dexterity],
            manipulation: params[:manipulation],
            intelligence: params[:intelligence],
            stamina: params[:stamina],
            appearance: params[:appearance],
            wit: params[:wit],
        )
        render json: @characters
    end

    def update
        @characters = Character.find(params[:id])
        @characters.update(
            user_id: params[:id],
            name: params[:name],
            breed: params[:breed],
            auspice: params[:auspice],
            tribe: params[:tribe],
            concept: params[:concept],
            strength: params[:strength],
            charisma: params[:charisma],
            perception: params[:perception],
            dexterity: params[:dexterity],
            manipulation: params[:manipulation],
            intelligence: params[:intelligence],
            stamina: params[:stamina],
            appearance: params[:appearance],
            wit: params[:wit],
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
