class KptsController < ApplicationController
  def index
    @kpts = Kpt.all
  end

  def new
    @kpt = Kpt.new
  end

  def create
    @kpt = Kpt.new(kpt_params)
    if @kpt.save
      redirect_to kpts_path, notice: "Success to create new KPT project"
    else
      flash[:alert] = "Failed to create new KPT project"
      render :new
    end
  end

  private
  def kpt_params
    params.require(:kpt).permit(:title)
  end
end