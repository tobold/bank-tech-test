require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(50, :credit, 50) }

  describe 'initialisation' do
    before do
      Timecop.freeze(Time.local(2017, 9, 4))
    end

    context 'credit' do
      let(:transaction) { described_class.new(50, :credit, 50) }

      it 'returns the type passed on initialisation' do
        expect(transaction.type).to eq(:credit)
      end

      it 'returns the amount passed on initialisation' do
        expect(transaction.credit).to eq('50.00')
      end
    end

    context 'debit' do
      let(:transaction) { described_class.new(50, :debit, 50) }

      it 'returns the type passed on initialisation' do
        expect(transaction.type).to eq(:debit)
      end

      it 'returns the amount passed on initialisation' do
        expect(transaction.debit).to eq('50.00')
      end
    end

    it 'returns the date passed on initialisation' do
      expect(transaction.date).to eq('04/09/17')
    end

    it 'returns the balance passed on initialisation' do
      expect(transaction.balance).to eq('50.00')
    end
  end
end
