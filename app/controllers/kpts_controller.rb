class KptsController < ApplicationController
  def index
    @kpts = Kpt.all
  end

  def show
    @kpt = Kpt.find(params[:id])
  end

  def new
    @kpt = Kpt.new
  end

  def create
    kpt = Kpt.new(kpt_params)
    if kpt.save
      redirect_to kpts_path, notice: "Success to create new KPT project"
    else
      flash[:alert] = "Failed to create new KPT project"
      render :new
    end
  end

  def edit
    @kpt = Kpt.find(params[:id])
  end

  def update
    kpt = Kpt.find(params[:id])
    if kpt.update(kpt_params)
      redirect_to kpts_path, notice: "Success to update KPT project"
    else
      flash[:alert] = "Failed to update KPT project"
      render :new
    end
  end

  def destroy
    kpt = Kpt.find(params[:id])
    if kpt.destroy
      redirect_to kpts_path, notice: "Success delete KPT Project"
    else
      flash[:alert] = "Failed to delete KPT project"
      render :index
    end
  end

  private
  def kpt_params
    params.require(:kpt).permit(:title)
  end
end