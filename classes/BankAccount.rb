# Defines a basic class with instance methods
class BankAccount

  attr_reader :balance

  # class methods
  def self.create_for(first_name, last_name)
    # @accounts = @accounts || []
    @accounts ||= []
    @accounts << BankAccount.new(first_name, last_name)
  end

  def self.find_for(first_name, last_name)
    @accounts.find{|account| account.full_name == "#{@first_name} #{@last_name}"}
  end

  # constructor
  def initialize(first_name, last_name)
    @balance = balance
    @first_name = first_name
    @last_name = last_name
  end

  # instance methods
  def full_name
    "#{@first_name} #{@last_name}"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdram(amount)
    @balance -= amount
  end
end