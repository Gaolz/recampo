module PostsHelper
    def post_votes(posts, user)
        usr.post_votes.where(post_id: posts.pluck(:id)).map { |post_vote| 
            { post_id: post_vote.post_id, value: post_vote.value }
        }
    end
end