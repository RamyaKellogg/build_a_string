class CouplingsController < ApplicationController
  def index
    @couplings = Coupling.all
  end

  def show
    @coupling = Coupling.find(params[:id])
  end

  def new
    @coupling = Coupling.new
  end

  def create
    @coupling = Coupling.new
    @coupling.category = params[:category]
    @coupling.pressure_rating = params[:pressure_rating]
    @coupling.size = params[:size]
    @coupling.description = params[:description]

    if @coupling.save
      redirect_to "/couplings", :notice => "Coupling created successfully."
    else
      render 'new'
    end
  end

  def edit
    @coupling = Coupling.find(params[:id])
  end

  def update
    @coupling = Coupling.find(params[:id])

    @coupling.category = params[:category]
    @coupling.pressure_rating = params[:pressure_rating]
    @coupling.size = params[:size]
    @coupling.description = params[:description]

    if @coupling.save
      redirect_to "/couplings", :notice => "Coupling updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @coupling = Coupling.find(params[:id])

    @coupling.destroy

    redirect_to "/couplings", :notice => "Coupling deleted."
  end
end
