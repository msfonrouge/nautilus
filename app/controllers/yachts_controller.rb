class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_yachts, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :new, :create, :show, :edit, :my_yachts]

  def index
    @yachts = Yacht.all
    if params[:query].present?
      @yachts = @yachts.search_yacht(params[:query])
    end
  end

  def my_yachts
    @yachts = @user.yachts
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
    redirect_to my_yachts_path, status: :see_other
  end

  private

  def set_yachts
    @yacht = Yacht.find(params[:id])
  end

  def yacht_params
    params.require(:yacht).permit(:name, :price, :capacity, :photo)
  end

  def set_user
    @user = current_user if current_user
  end
end
