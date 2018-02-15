class Tweet < ApplicationRecord
    belongs_to :user

    has_many :tweet_tags
    has_many :tags, through: :tweet_tags

    validates :message, presence: true
    validates :message, length: {maximum: 80, too_long: "A Tweet is only 80 chars Max."}

end
