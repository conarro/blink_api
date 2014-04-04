require 'spec_helper'

describe BlinkApi::Endpoints::Status do

  let(:client) { BlinkApi::Client.create }

  describe '#for_location' do
    it 'gets the status of a location' do
      VCR.use_cassette('endpoints/status') do
        response = client.status.for_location(132742)
        expect(response).to be_an_instance_of(Hash)
      end
    end      
    
    it 'fails without required params' do
      expect { client.status.for_location }.to raise_error(ArgumentError)
    end
  end

end
