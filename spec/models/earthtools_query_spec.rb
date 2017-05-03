require 'rails_helper'

RSpec.describe EarthtoolsQuery, type: :model do
  it { is_expected.to validate_presence_of(:session_id) }
  it { is_expected.to validate_presence_of(:lat) }
  it { is_expected.to validate_presence_of(:lon) }
  it { is_expected.to validate_presence_of(:response) }
end
