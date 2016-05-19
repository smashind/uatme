class Section < ApplicationRecord
  belongs_to :doc, inverse_of: :sections
  has_many :items, inverse_of: :section
  accepts_nested_attributes_for :items, reject_if: lambda { |attributes| attributes['content'].blank? }
end
