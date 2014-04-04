require 'spec_helper'

describe BlinkApi::Endpoints::Locations do

  let(:client) { BlinkApi::Client.create }
  let(:params) { {:lat => 33.83656, :long => -84.38846, :latd => 1, :lngd => 1} }

  describe '#find' do
    it 'gets a list of locations' do
      VCR.use_cassette('endpoints/locations') do
        response = client.locations.find(params[:lat], params[:long], params[:latd], params[:lngd])
        expect(response).to be_an_instance_of(Array)
        expect(response.first).to be_an_instance_of(Hash)
      end
    end      
    
    it 'fails without required params' do
      expect { client.locations.find(params[:lat], params[:long]) }.to raise_error(ArgumentError)
    end
  end

end
