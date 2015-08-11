class PointsController < ApplicationController
  def index
    @points = Point.all
  end

  def show
    @point = Point.find(params[:id])
  end

  def new
    @point = Point.new
  end

  def create
    @point = Point.new

    if @point.save
      redirect_to "/points", :notice => "Point created successfully."
    else
      render 'new'
    end
  end

  def edit
    @point = Point.find(params[:id])
  end

  def update
    @point = Point.find(params[:id])


    if @point.save
      redirect_to "/points", :notice => "Point updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @point = Point.find(params[:id])

    @point.destroy

    redirect_to "/points", :notice => "Point deleted."
  end
end
