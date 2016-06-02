class PackersController < ApplicationController
  def index
    @packers = Packer.all
  end

  def show
    @packer = Packer.find(params[:id])
  end

  def new
    @packer = Packer.new
  end

  def create
    @packer = Packer.new
    @packer.size = params[:size]
    @packer.category = params[:category]
    @packer.pressure_rating = params[:pressure_rating]
    @packer.description = params[:description]

    if @packer.save
      redirect_to "/packers", :notice => "Packer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @packer = Packer.find(params[:id])
  end

  def update
    @packer = Packer.find(params[:id])

    @packer.size = params[:size]
    @packer.category = params[:category]
    @packer.pressure_rating = params[:pressure_rating]
    @packer.description = params[:description]

    if @packer.save
      redirect_to "/packers", :notice => "Packer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @packer = Packer.find(params[:id])

    @packer.destroy

    redirect_to "/packers", :notice => "Packer deleted."
  end
end
