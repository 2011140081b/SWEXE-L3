class Tweet < ApplicationRecord
    validates :message, length: {maximum:140}
    validates :message, presence: true
end
