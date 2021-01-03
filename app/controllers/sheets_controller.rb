class SheetsController < ApplicationController

    def index
        sheets = Sheet.all
        render json: sheets, include: [:character, :stat]
    end

end
