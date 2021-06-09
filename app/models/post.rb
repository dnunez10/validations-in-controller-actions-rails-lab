class Post < ActiveRecord::Base
    #title can't be blank
    #category either "Fiction" or "Non-Fiction"
    #content min 100 chars
    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category" }
end
