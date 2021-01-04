class SheetsController < ApplicationController

    def index
        @sheets = Sheet.all
        render json: @sheets, include: [:character, :stat]
    end

    def show
        @sheets = Sheet.find(params[:id])
        render json: @sheets, include: [:character, :stat]
    end

end
