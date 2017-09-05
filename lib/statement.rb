class Statement
  def print_statement(transactions)
    statement_header + statement_entries(transactions)
  end

  private

  def methods
    %w[date credit debit balance]
  end

  def statement_header
    methods.join(' || ') + "\n"
  end

  def statement_entries(transactions)
    statement_entries = []
    transactions.each do |t|
      statement_entry = methods.map { |m| t.send(m) }
      statement_entries << statement_entry.join(' || ')
    end
    statement_entries.join("\n")
  end
end
