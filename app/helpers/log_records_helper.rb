module LogRecordsHelper
  def group_validator(groups)
    return unless groups.nil?

    flash[:fail] = 'Please select at least 1 category'
    redirect_to new_log_record_path(group_id: @group)
  end

  def log_record_validator(param)
    return unless param.nil?

    flash[:fail] = 'This field is mandatory'
    redirect_to new_log_record_path(group_id: @group)
  end
end
