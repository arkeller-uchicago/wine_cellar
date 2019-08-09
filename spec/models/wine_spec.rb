require 'rails_helper'

RSpec.describe Wine, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:type) }

    it { should belong_to(:bottle_size) }

    it { should have_many(:ratings) }

    it { should have_many(:cellars) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
