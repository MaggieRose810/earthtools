require 'rails_helper'

describe EarthtoolLocaltime, type: :model do
  describe :localtime do

    subject { EarthtoolLocaltime.new(xml) }

    context 'without localtime' do
      let(:xml){}
      it 'returns nil' do
        expect(subject.localtime).to eql(nil)
      end
    end

    context 'with localtime' do
      let(:xml) do
        '<timezone xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.earthtools.org/timezone.xsd">
        <version>1.0</version>
        <location>
        <latitude>40.71417</latitude>
        <longitude>-74.00639</longitude>
        </location>
        <offset>-5</offset>
        <suffix>R</suffix>
        <localtime>14 May 2017 11:04:07</localtime>
        <isotime>2017-05-14 11:04:07 -0500</isotime>
        <utctime>2017-05-14 16:04:07</utctime>
        <dst>Unknown</dst>
        </timezone>'
      end
      it 'returns local time' do
        expect(subject.localtime).to eql(Time.parse("2017-05-14 11:04:07 -0700"))
      end
    end
  end
end