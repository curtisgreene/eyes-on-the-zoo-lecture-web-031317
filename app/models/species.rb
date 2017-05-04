class Species < ApplicationRecord
  has_many :animals

  ENDANGED_STATUSES = [1]

  def endangered?
    ENDANGED_STATUSES.include?(endangered_status)
  end
end
