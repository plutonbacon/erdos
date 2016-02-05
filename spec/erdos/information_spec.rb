require 'spec_helper'

describe Erdos::InfoTheory do
  let(:s) { String.new("Lorem ipsum dolor sit amet, consectetur adipisicing " +
                           "elit, sed do eiusmod tempor incididunt ut " +
                           " labore et dolore magna aliqua.") }

  it 'computes shannon entropy correctly considering case and with spaces' do
    expect(Erdos::InfoTheory.calculate_shannon_entropy(s)).to eq(4.012206049032528)
  end

  it 'computes shannon entropy correctly not considering case and with spaces' do
    expect(Erdos::InfoTheory.calculate_shannon_entropy(s, true)).to eq(3.981004972793407)
  end

  it 'computes shannon entropy correctly not considering case and without spaces' do
    expect(Erdos::InfoTheory.calculate_shannon_entropy(s, true, true)).to eq(3.969554499580588)
  end

  it 'computes shannon entropy correctly considering case and without spaces' do
    expect(Erdos::InfoTheory.calculate_shannon_entropy(s, false, true)).to eq(4.006348221560684)
  end
end