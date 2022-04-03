require 'rails_helper'

RSpec.describe Group, type: :model do
  let!(:user) { create(:user) }
  let!(:log_record) { create_list(:log_record, 10, author_id: user.id) }
  let!(:groups) { create_list(:group, 10, author_id: user.id) }
  let!(:group) { groups.first }

  it 'is a valid group' do
    expect(group).to be_valid
  end

  it 'is has the correct attributes' do
    record = Group.find(group.id)
    expect(record.name).to eql(group.name)
    expect(record.image_data).to eql(group.image_data)
  end

  it 'is not valid when required attributes are nil' do
    group.name = nil
    expect(group).to_not be_valid
  end

  it 'you can add reports to it' do
    group.log_records << log_record
    record = Group.find(group.id)
    expect(record.log_records.first).to eql(log_record.first)
    expect(record.log_records.last).to eql(log_record.last)
  end
end
