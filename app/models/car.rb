class Car < ApplicationRecord
    scope :locados, -> { where(located: true) }
    scope :disponiveis, -> { where(located: false) }

    before_save :set_located_at

    private

    def set_located_at
        if located_changed?(from: false, to: true) && located_at.blank?
            self.located_at = Time.current
        elsif located_changed?(from: true, to: false)
            self.located_at = nil
        end
    end
end
