class EarthtoolsQuery < ApplicationRecord
  validates :session_id, :lon, :lat, :response, presence: true
end
