class Candidate < ApplicationRecord
  validates :name, presence: true

  def info
    "#{name}(年紀：#{age}, 政黨：#{party})"
  end
end
