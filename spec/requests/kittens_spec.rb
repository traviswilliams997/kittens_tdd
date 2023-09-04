require 'rails_helper'

RSpec.describe 'Kitten resquests' do
    before do 
        Kitten.create(name: 'Tommy', age: 2, cuteness: 10, softness: 9)
        Kitten.create(name: 'Jerry', age: 1, cuteness: 9, softness: 10)

    end

  describe 'Get /kittens' do
    it 'responds with 200' do
     get('/kittens')
     expect(response.status).to eql(200)
    end

    it 'contains all kittens' do
        get kittens_path
        json = JSON.parse(response.body) 
        expect(json['kittens']).to contain_exactly('Tommy', 'Jerry')
    end 
   end
end