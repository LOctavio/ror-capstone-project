require 'rails_helper'

RSpec.describe Article, type: :model do
    it 'title field cannot be empty' do
        expect { Article.create!(title: "") }.to raise_error(ActiveRecord::RecordInvalid)
    end
    
    it 'text field cannot be empty' do
        expect { Article.create!(text: "") }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'image field cannot be empty' do
        expect { Article.create!(image: "") }.to raise_error(ActiveRecord::RecordInvalid)
    end
end
