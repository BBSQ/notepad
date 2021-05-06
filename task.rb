require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "Укажите дату в формате ДД.ММ.ГГГГ, например 12.05.2003"
    input = STDIN.gets.chomp
    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = @created_at.strftime("%Y.%m.%d, %H:%M")

    deadline = "Кратчайший срок: #{@due_date}"

    [deadline, @text, time_string]
  end
  
end