class User < ApplicationRecord
    has_many :hands
    validates :name, uniqueness: true
end
