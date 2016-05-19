class Doc < ApplicationRecord
  belongs_to :user
  validates_presence_of [:title, :description]
  has_many :sections, inverse_of: :doc
  accepts_nested_attributes_for :sections, reject_if: lambda { |attributes| attributes['heading'].blank? }
end
