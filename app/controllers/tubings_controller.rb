class TubingsController < ApplicationController
  def index
    @tubings = Tubing.all
  end

  def show
    @tubing = Tubing.find(params[:id])
  end

  def new
    @tubing = Tubing.new
  end

  def create
    @tubing = Tubing.new
    @tubing.coupling_id = params[:coupling_id]
    @tubing.packer_id = params[:packer_id]
    @tubing.safety_valve_id = params[:safety_valve_id]
    @tubing.name = params[:name]
    @tubing.user_id = params[:user_id]

    if @tubing.save
      redirect_to "/tubings", :notice => "Tubing created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tubing = Tubing.find(params[:id])
  end

  def update
    @tubing = Tubing.find(params[:id])

    @tubing.coupling_id = params[:coupling_id]
    @tubing.packer_id = params[:packer_id]
    @tubing.safety_valve_id = params[:safety_valve_id]
    @tubing.name = params[:name]
    @tubing.user_id = params[:user_id]

    if @tubing.save
      redirect_to "/tubings", :notice => "Tubing updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tubing = Tubing.find(params[:id])

    @tubing.destroy

    redirect_to "/tubings", :notice => "Tubing deleted."
  end
end
