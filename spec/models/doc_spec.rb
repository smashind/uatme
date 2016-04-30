require 'rails_helper'

RSpec.describe Doc, type: :model do
  
  subject(:doc) { FactoryGirl.build(:doc) }

  it { is_expected.to be_valid }
  it { is_expected.to respond_to(:title) }
  it { is_expected.to respond_to(:description) }

  context "when title is not present" do
    before { doc.title = nil }
    it { is_expected.to_not be_valid }
  end

  describe "when description is not present" do
    before { doc.description = nil }
    it { is_expected.to_not be_valid }
  end

  describe "when user is not present" do
    before { doc.user_id = nil }
    it { is_expected.to_not be_valid }
  end
end