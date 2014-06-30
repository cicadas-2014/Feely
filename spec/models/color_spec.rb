require 'spec_helper'

describe Color do
  it "is valid with a name and hex code" do
    expect(build(:color)).to be_valid
  end
  it "is invalid without a name" do
    expect(build(:color, name: nil)).to have(1).errors_on(:name)
  end
  it "is invalid without a hex code" do
    expect(build(:color, hex_code: nil)).to have(1).errors_on(:hex_code)
  end
end
