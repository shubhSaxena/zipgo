require 'rails_helper'

describe EquilibriumHelper do
  include EquilibriumHelper

  describe 'check_equilibrium' do
    it "expects to return the equilibrium of the array(example output 3, 6)" do
      expect(EquilibriumHelper.check_equilibrium("-7, 1, 5, 2, -4, 3, 0")).to eq([3,6])
    end
  end
end
