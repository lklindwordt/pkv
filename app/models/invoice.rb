class Invoice < ApplicationRecord
  include AASM

  aasm :column => 'state' do
    state :unpaid, initial: true
    state :paid
    state :submitted
    state :cleared

    event :pay do
      transitions from: :unpaid, to: :paid
    end
    event :submit do
      transitions from: :paid, to: :submitted
    end
    event :clear do
      transitions from: :submitted, to: :cleared
    end
  end
end
