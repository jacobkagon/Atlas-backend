class Api::V1::CountriesController < ApplicationController
    before_action :set_country, only: [:show, :update]

    def index
        countries = Country.all

        render json: countries.to_json(country_serializer_options)
    end 

    def show_exceptions
        country = Country.find(params[:id])
        render json: countries.to_json(country_serializer_options)
    end

    def create
        @country = Country.new(country_params)
        # if Country.find_by(country_code: params[:country_code])
        #   render json: { error: 'failed to create country' }, status: :not_acceptable
        # else
          @country.save
          render json: @country
        # end
    end


    private

    def set_country
        @country = Country.find(params[:id])
    end

    def country_params
        params.require(:country).permit(:country_code)
    end

    def country_serializer_options() { 
        :include => { 
            :reviews => { 
                :except => [:created_at, :update_at]
             }, 
            :favorites => { 
                :except => [:created_at, :update_at]
             }
         },
         :except => [:created_at, :updated_at]
     }
    end
    
end
