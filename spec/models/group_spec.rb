require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:all) do
    @user = User.first
    @user ||= User.create(name: 'Pablo', email: 'pablo@ipay.cd', password: '432420923')

    @group = Group.first
    @group ||= Group.create(name: 'Grouptest', icon: 'grouptesicon', author: @user)
  end

  it 'Group should be valid with a name' do
    expect(@group).to be_valid
  end

  it 'Group name cannot be empty' do
    @group.name = ''
    expect(@group).to_not be_valid
  end
end
