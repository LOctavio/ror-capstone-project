require 'rails_helper'

RSpec.describe User, type: :model do
  it 'name field cannot be empty' do
    expect { User.create!(name: "") }.to raise_error(ActiveRecord::RecordInvalid)
  end
  it 'each name is unique' do
    User.create!(name: "luis")
    expect { User.create!(name: "luis") }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
