class UsersController < ApplicationController

  before_action :load_user, only: %i(edit update destroy)

  def index
    @users = User.newest.paginate page: params[:page], per_page: Settings.per_page_default
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "messages.save_success"
      redirect_to root_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @user.update_attributes user_params
      flash[:success] = t "messages.update_success"
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @user.destroy
      # flash[:success] = t "messages.destroy_success"
      render json: {msg: t("messages.destroy_success"), cls: "success"}
    else
      # flash[:danger] = t "messages.destroy_error"
      render json: {msg: t("messages.destroy_error"), cls: "danger"}
    end
  end

  private

  def user_params
    params.require(:user).permit :email, :password, :password_confirmation,
      :role, :fullname, :birthday, :gender, :avatar
  end

  def load_user
    @user = User.find_by id: params[:id]
    unless @user
      redirect_to root_path
    end
  end

end
