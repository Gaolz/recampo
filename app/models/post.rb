class Post < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user

  after_create :get_post_number

  def get_post_number
    update_column :post_number, topic.posts.where("id < ?", id).count + 1
  end
end
