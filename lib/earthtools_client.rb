require 'net/http'

class EarthtoolsClient
  HOSTNAME = 'new.earthtools.org'
  def self.timezone_localtime(lat:, lon:)
    response = Net::HTTP.get(HOSTNAME, "/timezone/#{lat}/#{lon}")
  end
end