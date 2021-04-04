class List < ApplicationRecord
    has_many :items

    validates :type, inclusion: ["want", "wish", "wait"]
end
