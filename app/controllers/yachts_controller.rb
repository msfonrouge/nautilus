class YachtsController < ApplicationController
  before_action :set_yachts, only: [:show, :edit, :update, :destroy]

  def index
    @yachts = Yacht.all
  end

  def new
    @yacht = Yacht.new
  end

  def show
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user_id = current_user.id
    if @yacht.save
      redirect_to yacht_path(@yacht)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @yacht.update(yacht_params)
    @yacht.user_id = current_user.id
    if @yacht.save
      redirect_to yacht_path(@yacht.id),
                  notice: "El yacht se ha actualizado perfectamente"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @yacht.destroy
    redirect_to yachts_path, status: :see_other
  end

  private

  def set_yachts
    @yacht = Yacht.find(params[:id])
  end

  def yacht_params
    params.require(:yacht).permit(:name, :price, :capacity, :user_id)
  end
end
