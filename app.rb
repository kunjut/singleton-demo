class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = Logger.new

  def self.instance
    return @@x
  end

  # class method
  def self.say_something
    puts "hahaha" 
  end

  #instance method
  def log_something what
    @f.puts what
  end

  private_class_method :new
end

Logger.say_something

Logger.instance.log_something 'yohoho1'
Logger.instance.log_something 'yohoho2'
