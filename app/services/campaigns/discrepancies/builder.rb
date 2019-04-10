# frozen_string_literal: true

class Campaigns::Discrepancies::Builder
  def initialize(local_campaign, remote_campaign)
    @local_campaign = local_campaign
    @remote_campaign = remote_campaign
    @discrepancies_attrs = []
  end

  def build!
    build_discrepancies_attrs
    @discrepancies
  end

  private

  def build_discrepancies_attrs
    discrepancies_fields.each do |field|
      next if @local_campaign[field].to_s == @remote_campaign[field].to_s

      @discrepancies_attrs << {
        "#{field}": {
          remote: @remote_campaign[field],
          local: @local_campaign[field]
        }
      }
    end
    @discrepancies = {
      'remote_reference': @remote_campaign['reference'], 'discrepancies': @discrepancies_attrs
    }
  end

  def discrepancies_fields
    @discrepancies_fields ||= %w[status description]
  end
end
