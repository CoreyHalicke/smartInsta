class SmartInsta::Posts
  attr_accessor :posts, :likes, :comments, :hashtags, :dates, :username, :first_last_name, :post_links

  # @@all = []

  def initialize
    @posts = []
    @likes = []
    @comments = []
    @hashtags = []
    @dates = []
    @post_links = []
    # pull_data(@insta_username)
    # @@all << self
  end

  def pull_data(username)
    profile = "https://www.instagram.com/#{username}/?hl=en"
    @@profile_html = Nokogiri::HTML(open(profile))
  end

  def posts
    #find post url
    post_url = "https://www.instagram.com/p/B1VF9xepNVe/"
    @@post_html = Nokogiri::HTML(open(post_url))
    binding.pry
  end

end
