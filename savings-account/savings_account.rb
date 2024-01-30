module SavingsAccount
  # - 0.5% for a non-negative balance less than `1000` dollars.
  # - 1.621% for a positive balance greater than or equal to `1000` dollars and less than `5000` dollars.
  # - 2.475% for a positive balance greater than or equal to `5000` dollars.
  # - 3.213% for a negative balance (results in negative interest).
  def self.interest_rate(balance)
    case balance
    when 0...1000
      0.5
    when 1000...5000
      1.621
    when 5000..Float::INFINITY
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    balance * (1 + interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    if current_balance.negative?
      Float::INFINITY
    else
      years = 0
      while current_balance < desired_balance
        current_balance = annual_balance_update(current_balance)
        years += 1
      end
      years
    end
  end
end
