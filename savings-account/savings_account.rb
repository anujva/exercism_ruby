module SavingsAccount

  # interest_rate: 0.5% for balance < 1000
  # interest_rate: 1.621% for 1000 <= balance < 5000
  # interest_rate: 2.475% for balance >= 5000
  # interest_rate: 3.213% for balance < 0
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
    raise 'Please implement the SavingsAccount.annual_balance_update method'
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise 'Please implement the SavingsAccount.years_before_desired_balance method'
  end
end

s = SavingsAccount.interest_rate(1000)
puts "s: #{s}"
