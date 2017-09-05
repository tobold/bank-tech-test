class Account
  attr_reader :balance

  def initialize(transaction_class = Transaction, statement_class = Statement)
    @statement = statement_class.new
    @transaction_class = transaction_class
    @balance = 0
    @transactions = []
  end

  def credit(amount)
    add(amount)
    @transactions << @transaction_class.new(amount, :credit, balance)
  end

  def debit(amount)
    subtract(amount)
    @transactions << @transaction_class.new(amount, :debit, balance)
  end

  def statement
    @statement.print_statement(transactions)
  end

  private

  attr_reader :transactions

  def subtract(amount)
    @balance -= amount
  end

  def add(amount)
    @balance += amount
  end
end
