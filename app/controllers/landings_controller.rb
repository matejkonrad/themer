class LandingsController < ApplicationController
  def index
    @landings = Landing.all
  end

  def create
    @landing = Landing.new(landing_params)

    if @landing.save
      redirect_to landings_path, notice: "Success"
    else
      flas[:error] =  "Error"
      render 'new'
    end
  end
  
  def show
    @landing = Landing.find_by(params[:domain_name])
  end

  def update
    @landing = Landing.find params[:id]
    
    if @landing.update(landing_params)
      redirect_to landings_path, notice: "Success"
    else
      render 'edit'
    end
  end

  def destroy
    @landing = Landing.find params[:id]
    @landing.destroy
  end

  def new
    @landing = Landing.new
  end

  def edit
    @landing = Landing.find params[:id]
  end

  private

  def landing_params
    params.require(:landing).permit(:user_id, :name, :landing_code, :domain_name )
  end
end
