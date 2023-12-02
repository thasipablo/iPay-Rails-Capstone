require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = User.first
    @user ||= User.create(name: 'Pablo', email: 'pablo@ipay.cd', password: '432420923')
  end

  it 'User should be valid with a name' do
    expect(@user).to be_valid
  end

  it 'User name cannot be empty' do
    @user.name = ''
    expect(@user).to_not be_valid
  end
end
