class Article < ApplicationRecord
    validates :title, :text, :image, presence:true
end
