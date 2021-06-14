class Category < ApplicationRecord
    validates :name, :priority, presence: true
end
