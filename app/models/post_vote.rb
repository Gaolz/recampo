class PostVote < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
    enum value: { down: 1, up: 2 }

    validates :value, presence: true
end
