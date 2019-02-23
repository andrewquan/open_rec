require 'rails_helper'

RSpec.describe Membership, type: :model do
  it { expect(subject).to validate_uniqueness_of(:user_id).scoped_to([:group_id]) }
end
