class SmartInsta::Posts
  attr_accessor :post, :likes, :comments, :hashtags, :date, :username, :first_last_name

  # @@all = []

  def initialize
    @post = []
    @likes = []
    @comments = []
    @hashtags = []
    @date = []


    # @@all << self
  end

  def pull_data(username)
    profile = "https://www.instagram.com/#{username}/?hl=en"
    @profile = Nokogiri::HTML(open(profile))
  end

end
