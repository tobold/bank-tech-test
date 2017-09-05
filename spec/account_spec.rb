require 'account'

describe Account do
  let(:transaction_class_mock) { double(:transaction, new: nil) }
  let(:statement_class_mock) { class_double('statement') }
  subject(:account) { described_class.new(transaction_class_mock, statement_class_mock) }

  before do
    allow(statement_class_mock).to receive(:new).and_return(@statement = spy('statement'))
  end

  describe '#credit' do
    it 'credits an amount to the account balance' do
      expect { account.credit(50) }.to change { account.balance }.by(50)
    end
  end

  describe '#debit' do
    it 'debits an amount to the account balance' do
      account.credit(50)
      expect { account.debit(50) }.to change { account.balance }.by(-50)
    end
  end

  describe '#statement' do
    it 'delegates to the Statement class' do
      expect(@statement).to receive(:print_statement)
      account.statement
    end
  end
end
