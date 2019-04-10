# frozen_string_literal: true

class Campaigns::Discrepancies::Fetcher
  class << self
    def fetch!
      fetch_discrepancies
      @discrepancies
    end

    private

    def fetch_discrepancies
      @discrepancies = []
      remote_campaigns.each do |remote_campaign|
        local_campaign = Campaign.find_by(reference: remote_campaign['reference'])
        next if local_campaign.nil?

        @discrepancies << Campaigns::Discrepancies::Builder.new(local_campaign, remote_campaign).build!
      end
    end

    def remote_campaigns
      @remote_campaigns ||= Campaigns::Fetcher.fetch!
    end
  end
end
