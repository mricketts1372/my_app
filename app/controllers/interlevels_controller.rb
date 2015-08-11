class InterlevelsController < ApplicationController
  def index
    @interlevels = Interlevel.all
  end

  def show
    @interlevel = Interlevel.find(params[:id])
  end

  def new
    @interlevel = Interlevel.new
  end

  def create
    @interlevel = Interlevel.new
    @interlevel.question = params[:question]
    @interlevel.answer = params[:answer]
    @interlevel.point = params[:point]

    if @interlevel.save
      redirect_to "/interlevels", :notice => "Interlevel created successfully."
    else
      render 'new'
    end
  end

  def edit
    @interlevel = Interlevel.find(params[:id])
  end

  def update
    @interlevel = Interlevel.find(params[:id])

    @interlevel.question = params[:question]
    @interlevel.answer = params[:answer]
    @interlevel.point = params[:point]

    if @interlevel.save
      redirect_to "/interlevels", :notice => "Interlevel updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @interlevel = Interlevel.find(params[:id])

    @interlevel.destroy

    redirect_to "/interlevels", :notice => "Interlevel deleted."
  end
end
