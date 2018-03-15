require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { build :user }

    it { expect(subject).to validate_presence_of(:name) }
    it { expect(subject).to validate_presence_of(:username) }
    it { expect(subject).to validate_uniqueness_of(:username) }
    it { expect(subject).to validate_presence_of(:birthday) }
    it { expect(subject).to validate_presence_of(:sex) }
  end
end
