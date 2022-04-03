class LogRecordsController < ApplicationController
  def new
    @groups = current_user.groups
    @log_record = LogRecord.new
  end

  def index
    @log_records = current_user.log_records unless current_user.nil?
  end

  def show
    @log_record = current_user.log_record.find(params[:log_record_id])
  end

  def create
    @group = Group.find_by_id(params[:group_id])

    log_record_params.each do |param|
      if param.nil?
        flash[:fail] = 'This field is mandatory'
        return redirect_to new_log_record_path(group_id: @group)
      end
    end
    @log_record = current_user.log_records.new(log_record_params)
    if @log_record.save
      sanitized_groups = params['groups']
      sanitized_groups.each do |g|
        @log_record.groups << Group.find(g)
      end
      redirect_to group_path(@group), flash: { success: 'Transaction created successfully.' }
    else
      redirect_to new_group_path(group_id: @group), flash: { fail: @log_record.errors.messages }
    end
  end

  def destroy
    @log_record = current_user.groups.new(group_params)
    if @log_record.save
      redirect_to groups_path, flash: { success: 'Group created successfully.' }
    else
      render :new, flash: { fail: @group.errors.messages }
    end
  end

  private

  def log_record_params
    params.require(:log_record).permit(:name, :amount)
  end
end
