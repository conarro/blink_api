require 'spec_helper'

describe BlinkApi::Client do

  describe '.host' do
    it "returns the blink api host" do
      expect(BlinkApi::Client.host).to eql('api.blinknetwork.com')
    end
  end

  describe '.path_prefix' do
    it "returns the blink api prefix" do
      expect(BlinkApi::Client.path_prefix).to eql('map/v1')
    end
  end

  describe '.use_ssl' do
    it "uses ssl" do
      expect(BlinkApi::Client.use_ssl).to be_true
    end
  end

  describe '.api_key' do
    after { BlinkApi.configuration = BlinkApi::Configuration.new } # to reset api key
    
    it "returns the " do
      BlinkApi.configuration.api_key = 'mykey'
      expect(BlinkApi::Client.api_key).to eql('mykey')
    end
  end

end
