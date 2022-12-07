class Ticket < ApplicationRecord
  include AASM

  validates :name, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false

  aasm column: :status

  aasm do
    state :new, initial: true
    state :open, :closed

    event :open do
      transitions from: :new, to: :open
    end

    event :close do
      transitions from: :open, to: :closed
    end
  end
end
