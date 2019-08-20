class SmartInsta::Posts
  attr_accessor :post, :likes, :comments, :hashtags, :date, :username, :first_last_name

  # @@all = []

  def initialize
    @post = []
    @likes = []
    @comments = []
    @hashtags = []
    @date = []
    # pull_data(@insta_username)
    # @@all << self
  end

  def pull_data(username)
    profile = "https://www.instagram.com/#{username}/?hl=en"
    @@profile_html = Nokogiri::HTML(open(profile))
  end

  def grab_posts
    post_url = "https://www.instagram.com/p/B1VF9xepNVe/"
  end

end
