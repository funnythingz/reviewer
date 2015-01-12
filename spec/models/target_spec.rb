require 'rails_helper'

RSpec.describe Target, :type => :model do
  describe 'create' do
    it {
      expect(create(:target)).to be_valid
    }
  end
end
