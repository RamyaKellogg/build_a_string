class SafetyValvesController < ApplicationController
  def index
    @safety_valves = SafetyValve.all
  end

  def show
    @safety_valve = SafetyValve.find(params[:id])
  end

  def new
    @safety_valve = SafetyValve.new
  end

  def create
    @safety_valve = SafetyValve.new
    @safety_valve.size = params[:size]
    @safety_valve.category = params[:category]
    @safety_valve.pressure_rating = params[:pressure_rating]
    @safety_valve.description = params[:description]

    if @safety_valve.save
      redirect_to "/safety_valves", :notice => "Safety valve created successfully."
    else
      render 'new'
    end
  end

  def edit
    @safety_valve = SafetyValve.find(params[:id])
  end

  def update
    @safety_valve = SafetyValve.find(params[:id])

    @safety_valve.size = params[:size]
    @safety_valve.category = params[:category]
    @safety_valve.pressure_rating = params[:pressure_rating]
    @safety_valve.description = params[:description]

    if @safety_valve.save
      redirect_to "/safety_valves", :notice => "Safety valve updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @safety_valve = SafetyValve.find(params[:id])

    @safety_valve.destroy

    redirect_to "/safety_valves", :notice => "Safety valve deleted."
  end
end
