require 'rails_helper'

RSpec.describe Clinic, :type => :model do
  describe 'create' do
    it {
      expect(create(:clinic)).to be_valid
    }
  end
end
