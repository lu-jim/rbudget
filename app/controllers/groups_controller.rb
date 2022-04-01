class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def index
    @user = current_user
    @groups = @user.groups unless @user.nil?
  end

  def show
    @group = Group.find_by_id(params[:id])
  end
end
