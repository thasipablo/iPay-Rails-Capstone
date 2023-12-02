require 'rails_helper'

RSpec.describe Entity, type: :model do
  before(:each) do
    @group = Group.first
    @group ||= Group.create(name: 'Grouptest', icon: 'grouptesicon', author: @user)

    @entity = Entity.first
    @entity ||= Entity.create(name: 'Entitytest', amount: 10, group: @group, author: @user)
  end

  it 'Entity should be valid with a name and amount' do
    author = User.create(name: 'Pablo', email: 'pablo@ipay.cd', password: '432420923')
    group = Group.create(author:, name: 'Grouptest')
    entity = Entity.new(author:, amount: 180, group:)
    expect(entity).not_to be_valid
  end

  it 'Entity name cannot be empty' do
    @entity.name = ''
    expect(@entity).to_not be_valid
  end

  it 'Entity amount should be greater than or equal to 1' do
    @entity.amount = 0
    expect(@entity).to_not be_valid
  end
end
