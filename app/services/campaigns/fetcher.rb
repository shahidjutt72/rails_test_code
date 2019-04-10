# frozen_string_literal: true

require 'open-uri'

class Campaigns::Fetcher
  class << self
    def fetch!
      fetch_campaigns
      @campaigns
    end

    private

    def fetch_campaigns
      @campaigns = JSON.load(open(campaigns_url))['ads']
    end

    def campaigns_url
      @campaigns_url ||= 'https://mockbin.org/bin/fcb30500-7b98-476f-810d-463a0b8fc3df'
    end
  end
end
