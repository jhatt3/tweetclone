class Tweet < ApplicationRecord
    belongs_to :user

    validates :message, presence: true
    validates :message, length: {maximum: 80, too_long: "A Tweet is only 80 chars Max."}

end
