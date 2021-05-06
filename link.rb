class Link < Post

  def initialize
    super
    @url = ""
  end

  def read_from_console
    puts "Адрес ссылки:"
    @url = STDIN.gets.chomp

    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = @created_at.strftime("%Y.%m.%d, %H:%M")

    [@url, @text, time_string]
  end

end