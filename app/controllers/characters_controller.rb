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
        @characters = current_user.characters.create(
            user_id: params[:id],
            cname: params[:cname],
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
            wit: params[:wits],
        ) 
        render json: @characters
    end

    def update
        @characters = Character.find(params[:id])
        @characters.update(
            # name: params[:name],
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
