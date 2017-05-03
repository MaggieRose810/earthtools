require 'rails_helper'

describe EarthtoolsQueriesController, type: :request do
  describe 'POST /earthtools_queries' do
    it "creates a query" do
      expect do
        post('/earthtools_queries',
          params: {
            earthtools_query: { lat: 1, lon: 3 }
          })
      end.to change { EarthtoolsQuery.count}.by(1)
    end
    it "does not create a query" do
      expect do
        post('/earthtools_queries',
          params: {
            earthtools_query: { lat: 1 }
          })
      end.not_to change { EarthtoolsQuery.count}
    end
  end
end