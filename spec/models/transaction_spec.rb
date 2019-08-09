require 'rails_helper'

RSpec.describe Transaction, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:cellars) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
