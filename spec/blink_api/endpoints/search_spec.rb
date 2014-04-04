require 'spec_helper'

describe BlinkApi::Endpoints::Search do

  let(:client) { BlinkApi::Client.create }
  let(:params) { {:lat => 33.83656, :long => -84.38846, :latd => 1, :lngd => 1} }

  describe '#query' do
    it 'gets a list of locations' do
      VCR.use_cassette('endpoints/search') do
        response = client.search.query('Atlanta Tech Village', params[:lat], params[:long], params)
        expect(response).to be_an_instance_of(Array)
        expect(response.first).to be_an_instance_of(Hash)
      end
    end      
    
    it 'fails without required params' do
      expect { client.search.query('test', params[:lat]) }.to raise_error(ArgumentError)
    end
  end

end
