require 'spec_helper'

describe BlinkApi do

  after do
    BlinkApi.configuration = BlinkApi::Configuration.new # to reset api key
  end

  describe '#configure' do
    it "configures the api key" do
      BlinkApi.configure do |config|
        config.api_key = 'mykey'
      end
      expect(BlinkApi::Client.api_key).to eql('mykey')
    end
  end

end
