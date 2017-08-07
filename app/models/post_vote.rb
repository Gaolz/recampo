class PostVote < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
    enum value: { down: 1, up: 2 }

    validates :value, presence: true

    after_create do
        post.increment! :votes, PostVote.values[value]
    end

    after_update do
        if value_changed?
            # TODO value and value_was type is different, maybe change later.
            post.increment! :votes, (PostVote.values[value] - value.was)
        end
    end

    after_destroy do
        post.increment! :votes, PostVote.values[value]
    end
end
