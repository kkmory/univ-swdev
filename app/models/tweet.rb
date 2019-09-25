class Tweet < ApplicationRecord
  before_save :set_tweeted_time, if: :new_record?
  validates :message, presence: true, length: { in: 1..140 }

  private

  def set_tweeted_time
    self.tdate = Time.current
  end
end
