class Article < ApplicationRecord
    validates :title, :text, :image, presence:true

    has_many :votes
    belongs_to :user
end
