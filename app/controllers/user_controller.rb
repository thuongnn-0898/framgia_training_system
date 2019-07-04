class UserController < ApplicationController
  before_action :logged_in_user
  before_action :load_user, only: :show
  def index;end

  def new

  end

  def show
    @list_user = User.by_role.paginate(per_page: 12, page: params[:page])
  end

  private

  def load_user
    @user = User.find_by(id: current_user.id)
  end
end
