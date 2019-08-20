class SmartInsta::CLI

  def call
    puts "Smart Insta Program"
    get_first_last_name
    get_username
    main_menu_options
    main_menu

  end

  def get_first_last_name
    puts "Enter your first name."
    @first_name = gets.strip.downcase
    puts "Enter your last name."
    @last_name =  gets.strip.downcase
  end

  def get_username
    puts "Welcome #{@first_name} #{@last_name}. Enter your instagram username."
    @insta_username = gets.strip.downcase
  end

  def main_menu_options
    puts <<-DOC
    Choose an option:
      [1] Likes
      [2] Comments
      [3] My Hashtags
      [4] My Keywords
      [5] Settings

    DOC
  end

  def main_menu
    @posts = SmartInsta::Posts.new
    binding.pry
    # @menu_input = gets.strip.downcase
    # until @menu_input == 'x'
    #   case @menu_input
    #   when 'x'
    #   when '1'
    #   when '2'
    #   when '3'
    #   when '4'
    #   when '5'
    #
    #   end
    # end

  end
end
