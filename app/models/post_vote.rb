class PostVote < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
    enum value: { down: 1, up: 2 }

    validates :value, presence: true

    after_save :update_post_votes

    def update_post_votes
        if value_changed?
            post.increment! :votes, PostVote.values[value]
        end
    end
end
