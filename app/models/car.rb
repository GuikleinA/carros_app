class Car < ApplicationRecord
    scope :locados, -> { where(located: true) }
    scope :disponiveis, -> { where(located: false) }
end
