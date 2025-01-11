class HomeController < ApplicationController
  def index
  end

  def about
  end

  def my_data
    @crud_models = CrudModel.where(user_id: current_user.id)
  end
end
