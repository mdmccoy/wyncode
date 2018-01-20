class BankAccount
  attr_accessor :balance,:transaction_log
  attr_reader :name

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
    BankAccount.write_to_log(self)
  end

  def deposit(amount)
    @transaction_log << amount
    BankAccount.write_to_log(self)
    @balance += amount
  end

  def withdraw(amount)
    @transaction_log << (-amount)
    @balance < amount ?  @balance -= amount - (-@@overdraft_fee) : @balance -= amount
    BankAccount.write_to_log(self)
    @balance
  end

  def transfer(amount, recepient_account)
    @transaction_log << (-amount)
    recepient_account.transaction_log << amount
    BankAccount.write_to_log(self)
    BankAccount.write_to_log(recepient_account)
    @balance -= amount
    recepient_account.balance += amount
  end

  def recover
    File.open(@name + "_history.txt","r").each_line {|line| @transaction_log << line.chomp.to_i}
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

  private
  def self.write_to_log(account)
    File.open(account.name + "_history.txt",'w') do |account_file|
      account_file.puts account.transaction_log
    end
    # File.close(account.name + "_history.txt")
  end

end
