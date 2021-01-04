class StatsController < ApplicationController

    def index
        @stats = Stat.all
        render json: @stats
    end

    def show
        @stats = Stat.find(params[:id])
        render json: @stats
    end

    def create
        @stats = Stat.create(
            strength: params[:strength],
            charisma: params[:charisma],
            perception: params[:perception],
            dexterity: params[:dexterity],
            manipulation: params[:manipulation],
            intelligence: params[:intelligence],
            stamina: params[:stamina],
            appearance: params[:appearance],
            wit: params[:wit]
        )
        render json: @stats
    end
end
