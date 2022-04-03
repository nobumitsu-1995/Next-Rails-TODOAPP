class Post < ApplicationRecord
    validates :text, presence: true, length: { maximum: 75 }
    validates :notes, length: { maximum: 200 }
end
