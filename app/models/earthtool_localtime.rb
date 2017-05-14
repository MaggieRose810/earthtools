class EarthtoolLocaltime
  def initialize(response)
    @response = response
  end

  def localtime
    Time.parse(localtime_tag.content) if localtime_tag
  end

  private

  def parsed_response
    @parsed_response ||= Nokogiri::XML(@response) if @response
  end

  def localtime_tag
    parsed_response.xpath("//localtime").first if parsed_response
  end
end