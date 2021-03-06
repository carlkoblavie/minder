# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  belongs_to :company
end
