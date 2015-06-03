module PostsHelper

  def truncate_post post
    truncate(post, :length => 100)
  end

end
