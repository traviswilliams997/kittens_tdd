require 'rails_helper'

RSpec.describe Kitten do
    describe 'validation' do 
        describe 'name' do
            it 'must be present' do
                kitten = described_class.new
                expect(kitten).to_not be_valid 
                kitten.name = 'Tommy'
                expect(kitten).to be_valid
            end 
        end 
    end 
end