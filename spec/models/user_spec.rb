require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { create(:user) }
  let!(:name) { user.name }
  let!(:email) { user.email }
  let!(:password) { user.password }
  let!(:password_confirmation) { user.password_confirmation }

  it 'is a valid user' do
    expect(user).to be_valid
  end

  it 'is has the correct attributes' do
    record = User.find(user.id)
    expect(record.name).to eql(name)
    expect(record.email).to eql(email)
  end

  it 'is not valid when required attributes are nil' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'is not valid when required attributes are nil' do
    user.email = nil
    expect(user).to_not be_valid
  end

  it 'is not valid when required attributes are nil' do
    user.password = nil
    expect(user).to_not be_valid
  end
end
