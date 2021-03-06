require 'rails_helper'

RSpec.describe Area, :type => :model do
  it{
    expect(create(:area)).to be_valid
  }

  describe 'decorate' do
    before :each do
      create(:area)
      create(:area_child)
      @area = Area.find_by(id: 130001)
      @area_child = Area.find_by(id: 131016)
    end

    it {
      expect(@area.is_top?).to be_truthy
    }

    it {
      expect(@area_child.is_top?).to be_falsey
    }

    it {
      expect(Area.top.first.name).to eq '東京都'
    }
  end
end
