require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'name field cannot be empty' do
    expect { Category.create!(name: "") }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'priority field cannot be empty' do
    expect { Category.create!(priority: nil) }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
