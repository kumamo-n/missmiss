class YjController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @yj =Yj.new
    render :action => 'index'
  end

  def new
  end

  def create
    Yj.create(yj_params)
  end

  private
  def yj_params
    params.permit(:name, :text, :image)
  end
  def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
end
