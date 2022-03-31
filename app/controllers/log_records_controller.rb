class LogRecordsController < ApplicationController
  load_and_authorize_resource

  def new
    @log_record = LogRecord.new
  end

  def index
    @current_user = current_user
    @log_records = @current_user.log_records.includes([:author])
  end

  def show
    @current_user = current_user
    @log_record = @current_user.log_record.find(params[:log_record_id])
  end
end
