# Ruby Core

# Symbols
# treehouse = {"name"=>"Treehouse", "location"=>"Treehouse Island"}
# treehouse = {:name => 'Treehouse', :location=>'Treehouse Island'}
# treehouse2 = {:name => 'Treehouse', :location=>'Treehouse Island'}
# treehouse = {name: 'Treehouse', location: 'Treehouse Island'}

class BankAccount
  attr_accessor :transactions
  include Enumerable
  include Comparable

  # Enumerable
  def <=> (another_account)
    self.balance <=> other_account.balance
  end
  def each
    @transactions.each { |transaction| yield transaction }
  end

  def initialize(name)
    @name = name
    @transactions = []
  end

  def deposit(amount, options={})
    options[:memo] ||= 'Regular deposit.'
    @transactions.push(:aumont => amount, :memo => options[:memo])
  end

  def balance
    @transactions.inject(0) { |sum, iterator| sum += iterator }
  end

  def to_s
    "<#{self.class}:name: #{name}, balance: #{balance}"
  end
end

back_account = BankAccount.new("pazguille")
back_account.deposit(100)
back_account.deposit(100, {:memo => "This was a gift."})

puts back_account.inspect

# Dates and Times
require 'date'
require 'time'

date = Date.new
puts date.to_s

date = Date.new(2012, 4, 1)
puts date.strftime("%m/%d/%Y")
puts date.strftime("%b %d, %Y")

date.mday
date.day
date.friday?
date.sunday?
date.month
date.wday
date.yday
date.year
date.parse("2013/05/28")

time = Time.new