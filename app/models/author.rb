class Author < ActiveRecord::Base
    #name can't be blank
    #e-mail is unique
    validates :name, presence: true
    validates :email, uniqueness: true
end
