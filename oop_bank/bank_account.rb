class BankAccount
  attr_accessor :balance,:transaction_log

  @@minimum_balance
  @@overdraft_fee = 10


  def initialize(balance,name)
    if balance < 200
      throw ArgumentError
    else
      @balance = balance
    end
    @name = name
    @transaction_log = [balance]
  end

  def deposit(amount)
    @transaction_log << amount
    @balance += amount
  end

  def withdraw(amount)
    @transaction_log << (-amount)
    if @balance < amount
      @balance -= amount - (-@@overdraft_fee)
    else
      @balance -= amount
    end
    @balance
  end

  def transfer(amount, recepient_account)
    @transaction_log << (-amount)
    recepient_account.transaction_log << amount
    @balance -= amount
    recepient_account.balance += amount
  end

  def self.minimum_balance
    @@minimum_balance
  end

  def self.minimum_balance=(new_min_bal)
    @@minimum_balance = new_min_bal
  end

  def self.overdraft_fee
    @@overdraft_fee
  end

  def self.overdraft_fee=(new_fee)
    @@overdraft_fee = new_fee
  end

end
