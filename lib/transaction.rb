class Transaction
  attr_reader :type

  def initialize(amount, type, balance)
    @type = type
    @date = Time.now
    @amount = amount
    @balance = balance
  end

  def date
    @date.strftime('%d/%m/%y')
  end

  def balance
    format('%.2f', @balance)
  end

  def credit
    format('%.2f', amount) if @type == :credit
  end

  def debit
    format('%.2f', amount) if @type == :debit
  end

  private

  attr_reader :amount
end
