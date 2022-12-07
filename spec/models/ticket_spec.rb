require 'rails_helper'

RSpec.describe Ticket, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end

  describe 'aasm' do
    it 'has a new state' do
      ticket = create(:ticket, status: 'new')
      expect(ticket.new?).to be true
    end

    it 'has an open state' do
      ticket = create(:ticket, status: 'open')
      expect(ticket.open?).to be true
    end

    it 'has a closed state' do
      ticket = create(:ticket, status: 'closed')
      expect(ticket.closed?).to be true
    end

    it 'can transition from new to open' do
      ticket = create(:ticket, status: 'new')
      ticket.open!
      expect(ticket.open?).to be true
    end

    it 'can transition from open to closed' do
      ticket = create(:ticket, status: 'open')
      ticket.close!
      expect(ticket.closed?).to be true
    end
  end
end
