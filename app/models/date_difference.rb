class DateDifference < ApplicationRecord

    validates :date1, presence: true
    validates :date2, presence: true

    before_create :set_diff
    before_update :set_diff

    protected
    def set_diff
        self.diff = (Date.parse(self.date1) - Date.parse(self.date2)).to_i.abs
    end

end
