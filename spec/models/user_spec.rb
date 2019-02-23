require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  it { expect(subject).to validate_presence_of(:username) }

  it "cannot add image larger or equal to 1 megabyte"

  describe "#join_group"
  describe "#group_member?"
  describe "#attend_event"
end
