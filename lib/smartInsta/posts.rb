class SmartInsta::Posts
  attr_accessor :post, :likes, :comments, :hashtags, :date

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
    quote_url = "https://www.instagram.com/#{username}/?hl=en"
    @quote_doc = Nokogiri::HTML(open(quote_url))
  end

  
