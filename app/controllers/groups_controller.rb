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

  def create
    @user = current_user
    @group = @user.groups.new(group_params)
    if @group.save
      redirect_to groups_path, flash: { success: 'Group created successfully.' }
    else
      render :new, flash: { danger: @group.errors.messages }
    end
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
