class SmartInsta::Posts
  attr_accessor :post_description, :likes, :comments, :hashtags, :date, :username, :first_last_name, :post_url

  # @@all = []

  def initialize
    @post_description = []
    @likes = []
    @comments = []
    @hashtags = []
    @date = []
    @post_url = []
    # pull_data(@insta_username)
    # @@all << self
  end

  def pull_data(username)
    profile = "https://www.instagram.com/#{username}"
    @@profile_html = Nokogiri::HTML(open(profile))
    binding.pry
    @@profile_html.css("meta").each do |x|

    end
  end

  def post
    #find post url
    post_link = "https://www.instagram.com/p/B1VF9xepNVe/"
    # @post_url << post_link
    post_hashtags = []
    @@post_html = Nokogiri::HTML(open(post_link))


    #find post description (nokogiri doesnt grab all of post)
    # post_description = p @@post_html.at_css('meta[property="og:title"]')['content']
    # @post_description << post_description

    # find post hashtags
    @@post_html.css('meta[property="instapp:hashtags"]').each do |x|
      post_hashtags << "##{x.attributes['content'].value}"
    end
    @hashtags << post_hashtags

    # binding.pry
  end

# p @@post_html.at_css('meta[property="og:image"]')['content']
# p @@post_html.at_css('meta[property="og:title"]')['content']
# p @@post_html.at_css('meta[property="og:description"]')['content']
# p @@post_html.at_css('meta[property="instapp:hashtags"]')['content']
# p @@post_html.css('meta[property="instapp:hashtags"]')
# p x.at_css('attributes[property="instapp:hashtags"]')['content']


end
