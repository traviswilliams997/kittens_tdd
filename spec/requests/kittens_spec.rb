require 'rails_helper'

RSpec.describe KittensController, type: :controller do
    before do 
        Kitten.create(name: 'Tommy', age: 2, cuteness: 10, softness: 9)
        Kitten.create(name: 'Jerry', age: 1, cuteness: 9, softness: 10)
    end

  describe 'Get Index' do
    it 'responds with 200' do
     get('index')
     expect(response.status).to eql(200)
    end

    it 'contains names of all kittens' do
        get('index')
        json = JSON.parse(response.body) 
        expect(json['kittens']).to contain_exactly('Tommy', 'Jerry')
    end 
   end
end