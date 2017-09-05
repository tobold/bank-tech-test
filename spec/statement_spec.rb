require 'statement'

describe Statement do
  subject(:statementer) { described_class.new }
  let(:transaction) { double(:transaction, credit: '500.00', debit: '', type: :credit, date: '14/01/2012', balance: '500.00') }
  let(:transaction2) { double(:transaction, credit: '', debit: '300.00', type: :credit, date: '15/01/2012', balance: '200.00') }
  let(:transactions) { [transaction, transaction2] }

  describe '#print_statement' do
    it 'prints a statement of all the passed transactions' do
      expect(statementer.print_statement(transactions)).to eq(
        [
          'date || credit || debit || balance',
          '14/01/2012 || 500.00 ||  || 500.00',
          '15/01/2012 ||  || 300.00 || 200.00'
        ].join("\n")
      )
    end
  end
end
