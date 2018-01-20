require './bank_account'

describe BankAccount do
  context "has a balance" do
    let(:account) {account = BankAccount.new(500, "Sarah")}

    it "is created with an opening balance and the name of the client" do
      expect(account).to be_a(BankAccount)
    end

    it "can report it's balance" do
      expect(account.balance).to eq(500)
    end
  end

  context "making a deposit" do
    let(:account) do
      account = BankAccount.new(500,"Sarah")
      account.deposit(500)
      account
    end

    it "balance is increased" do
      expect(account.balance).to eq(1000)
    end
  end

  context "making a withdrawal" do
    let(:account) do
      account = BankAccount.new(500,"Sarah")
      account.withdraw(200)
      account
    end

    it "balance is decreased" do
      expect(account.balance).to eq(300)
    end
  end

  context "transfering funds" do
    let(:account1) do
      account1 = BankAccount.new(500,"Sarah")
    end

    let(:account2) do
      account2 = BankAccount.new(500,"Matt")
    end

    before :each do
      account1.transfer(200,account2)
    end

    it "account balance is decreased" do
      expect(account1.balance).to eq(300)
    end

    it "other account balance is increased" do
      expect(account2.balance).to eq(700)
    end
  end

  context "minimum balance" do
    it "raises an error if opening balance is too low" do
      expect {BankAccount.new(100, "Sarah")}.to raise_error(ArgumentError)
    end

    it "does NOT raise an error if opening balance is over minimum balance" do
      expect {BankAccount.new(300, "Sarah")}.not_to raise_error
    end

    it "allows the bank owner to change the minimum balance" do
      BankAccount.minimum_balance = 100
      expect(BankAccount.minimum_balance).to eq(100)
    end
  end

  context "overdraft" do
    let(:account) do
      account = BankAccount.new(200,"Matt")
      account.withdraw(300)
      account
    end

    it "charges the client a fee if they overdraft" do
      expect(account.balance).to eq(-110)
    end

    it "allows the bank manager to change the overdraft fee" do
      BankAccount.overdraft_fee = 20
      expect(BankAccount.overdraft_fee).to eq(20)
    end
  end

  context "transaction history" do
    let(:account) {BankAccount.new(500,"Matt")}

    let(:account2) {BankAccount.new(500,"Steve")}

    it "log account creation" do
      expect(account.transaction_log).to eq([500])
    end

    it "log withdraw" do
      account.withdraw(100)
      expect(account.transaction_log).to eq([500,-100])
    end

    it "log deposit" do
      account.deposit(100)
      expect(account.transaction_log).to eq([500,100])
    end

    it "log transfers" do
      account.transfer(100,account2)
      expect(account.transaction_log).to eq([500,-100])
    end

    it "allows us to view the transaction history" do
      expect(account.transaction_log).to eq([500])
    end
  end

  context "store and recover accounts" do
    let(:account) {BankAccount.new(500,"Matt")}
    let(:account2) {BankAccount.new(500,"Steve")}

    let(:history) do
      trans_log = []
      File.open(account.name + "_history.txt","r").each_line {|line| trans_log << line.chomp.to_i}
      trans_log
    end

    let(:history2) do
      trans_log = []
      File.open(account2.name + "_history.txt","r").each_line {|line| trans_log << line.chomp.to_i}
      trans_log
    end

    context "write transaction history to file" do
      it "write transaction history to file on creation" do
        expect(history).to eq([500])
      end

      it "write transaction history to file on withdraw" do
        account.withdraw(100)
        expect(history).to eq([500,-100])
      end

      it "write transaction history to file on deposit" do
        account.deposit(250)
        expect(history).to eq([500,250])
      end

      it "write transaction history to relevant files on transfer" do
        account.transfer(250,account2)
        expect(history).to eq([500,-250])
      end

      it "recover a bank account from file"
    end
  end


end
