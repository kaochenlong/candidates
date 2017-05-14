class Candidate < ApplicationRecord
  validates :name, presence: true
  has_many :vote_logs

  def info
    "#{name}(年紀：#{age}, 政黨：#{party})"
  end
end

