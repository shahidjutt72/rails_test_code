# frozen_string_literal: true

class Campaign < ApplicationRecord
  enum status: {
    enabled: 0,
    disabled: 1,
    deleted: 2
  }
end
