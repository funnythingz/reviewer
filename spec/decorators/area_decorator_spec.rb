require 'spec_helper'

describe AreaDecorator do
  describe 'decorate' do
    before :each do
      create(:area)
      create(:area_child)
      @area = Area.find_by(id: 130001)
      @area_child = Area.find_by(id: 131016)
    end

    it {
      expect(@area.decorate.top.name).to eq @area.name
    }

    it {
      expect(@area_child.decorate.top.name).to eq @area.name
    }
  end
end
