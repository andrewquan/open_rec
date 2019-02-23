require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event) { FactoryBot.build(:event) }

  it { expect(subject).to validate_presence_of :start_datetime }

  describe "#same_day_event?" do
    context "same day event" do
      let(:event) { FactoryBot.build(:event, :same_day_event) }
      it { expect(event.same_day_event?).to eq true }
    end

    context "different day event" do
      it { expect(event.same_day_event?).to eq false }
    end
  end
end
