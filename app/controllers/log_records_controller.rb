class LogRecordsController < ApplicationController
  def new
    @log_record = LogRecord.new
  end

  def index
    @user = current_user
    @log_records = @user.log_records unless @user.nil?
  end

  def show
    @current_user = current_user
    @log_record = @current_user.log_record.find(params[:log_record_id])
  end

  def create
    @user = current_user
    @log_record = @user.log_records.new(log_record_params)
    if @group.save
      redirect_to groups_path, flash: { success: 'Transaction created successfully.' }
    else
      render :new, flash: { danger: @log_record.errors.messages }
    end
  end

  def destroy
    @user = current_user
    @group = @user.groups.new(group_params)
    if @group.save
      redirect_to groups_path, flash: { success: 'Group created successfully.' }
    else
      render :new, flash: { danger: @group.errors.messages }
    end
  end

  def group_params
    params.require(:group).permit(:name, :image)
  end
end
