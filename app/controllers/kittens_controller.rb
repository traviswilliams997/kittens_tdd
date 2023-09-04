class KittensController < ApplicationController

    def index
        @kittens = Kitten.all

        render(json: {'kittens' => @kittens.map(&:name)})
    end

end