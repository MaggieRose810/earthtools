FactoryGirl.define do
  factory :earthtools_query do
    session_id 1
    lat 41.881832
    lon -87.623177
    response '<?xml version="1.0" encoding="ISO-8859-1" ?>
              <timezone xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.earthtools.org/timezone.xsd">
                  <version>1.1</version>
                  <location>
                      <latitude>40.71417</latitude>
                      <longitude>-74.00639</longitude>
                  </location>
                  <offset>-5</offset>
                  <suffix>R</suffix>
                  <localtime>4 Dec 2005 12:06:56</localtime>
                  <isotime>2005-12-04 12:06:56 -0500</isotime>
                  <utctime>2005-12-04 17:06:56</utctime>
                  <dst>False</dst>
              </timezone>'
  end
end