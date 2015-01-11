require 'spec_helper'

describe AreaDecorator do
  it{
    expect(create(:area)).to be_valid
  }

  describe 'scope' do
    before :each do
      create(:area)
      create(:area_child)
      @area = Area.find_by(id: 120006)
      @area_child = Area.find_by(id: 122076)
    end

    it {
      expect(@area.decorate.parent.name).to eq @area.name
    }

    it {
      expect(@area_child.decorate.parent.name).to eq @area.name
    }
  end
end
