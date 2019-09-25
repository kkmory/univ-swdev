class Tweet < ApplicationRecord
  validates :message, presence: true, length: { in: 1..140 }
end
