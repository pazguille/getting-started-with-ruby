require "observer"

class BankAccount
  attr_accessor :transactions
  include Observable

  def initialize(name)
    @name = name
    @transactions = []
  end

  def deposit(amount)
    changed
    notify_observers(Time.now, 'deposit', aumont)
    @transactions.push(aumont)
  end

  def withdraw(aumont)
    changed
    notify_observers(Time.now, 'withdraw', aumont)
    @transactions.push(-aumont)
  end
end

class AccountObserver
  def initialize(account)
    @account = account
    @account.add_observer(self)
  end

  def update(time, kind, aumont)
    puts "#{time} #{kind} #{aumont}"
  end
end

account = BankAccount.new("pazguille")
AccountObserver.new(account)

account.deposit(100)
account.withdraw(50)
account.withdraw(25)