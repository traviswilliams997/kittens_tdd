require 'rails_helper'

RSpec.describe Kitten, type: :model do
    subject{described_class.new(name: 'Tommy', age: 2, cuteness: 10, softness: 9)
    }
    describe 'validation' do 
        describe 'name' do
            it 'must be present' do
                expect(subject).to be_valid 
                subject.name = nil
                expect(subject).to_not be_valid
            end 
        end 
    end 

    describe '#cat_info' do 
        it 'returns the cat information' do 
          expect(subject.cat_info).to eql('Tommy is 2 years old, has cuteness 10 and softness 9')
        end
    end
end