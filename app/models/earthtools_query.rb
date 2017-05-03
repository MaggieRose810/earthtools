class EarthtoolsQuery < ApplicationRecord
  validates :session_id, :lon, :lat, :response, presence: true

  def localtime
    Time.now
  end
end
