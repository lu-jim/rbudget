require 'rails_helper'

RSpec.describe LogRecord, type: :model do
  let!(:user) { create(:user) }
  let!(:log_records) { create_list(:log_record, 10, author_id: user.id) }
  let!(:groups) { create_list(:group, 10, author_id: user.id) }
  let!(:log_record) { log_records.first }

  it 'is a valid log_record' do
    expect(log_record).to be_valid
  end

  it 'is has the correct attributes' do
    record = LogRecord.find(log_record.id)
    expect(record.name).to eql(log_record.name)
    expect(record.amount).to eql(log_record.amount)
  end

  it 'is not valid when required attributes are nil' do
    log_record.name = nil
    expect(log_record).to_not be_valid
  end

  it 'is not valid when required attributes are nil' do
    log_record.amount = nil
    expect(log_record).to_not be_valid
  end

  it 'it is valid up to infinity' do
    log_record.amount = Float::INFINITY
    expect(log_record).to be_valid
  end

  it 'it is not valid if amount is not a number' do
    log_record.amount = 'asdasda'
    expect(log_record).to_not be_valid
  end
end
