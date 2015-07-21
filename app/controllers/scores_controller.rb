class ScoresController < ApplicationController
  def index
    @scores = Score.all
  end

  def show
    @score = Score.find(params[:id])
  end

  def new
    @score = Score.new
  end

  def create
    @score = Score.new

    if @score.save
      redirect_to "/scores", :notice => "Score created successfully."
    else
      render 'new'
    end
  end

  def edit
    @score = Score.find(params[:id])
  end

  def update
    @score = Score.find(params[:id])


    if @score.save
      redirect_to "/scores", :notice => "Score updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @score = Score.find(params[:id])

    @score.destroy

    redirect_to "/scores", :notice => "Score deleted."
  end
end
