class List < ApplicationRecord
    has_many :items
    belongs_to :user

    validates :type, inclusion: ["want", "wish", "wait"]
end
