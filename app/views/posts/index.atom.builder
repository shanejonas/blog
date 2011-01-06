
atom_feed do |feed|
  feed.title("the dev station")
  feed.updated(@posts.first.created_at)


  for post in @posts
    next if post.updated_at.blank?
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.content(post.body, :type => 'html')
      entry.updated(post.updated_at.strftime("%Y-%m-dT%H:%M:%SZ"))
      entry.autho do |author|
        author.name("Shane Jonas")
      end
    end
  end
end


