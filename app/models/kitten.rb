class Kitten < ApplicationRecord
    validates :name, presence: true

    def cat_info
        "#{name} is #{age} years old, has cuteness #{cuteness} and softness #{softness}"

    end
end