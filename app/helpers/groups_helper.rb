module GroupsHelper
  def total_transactions(log_records, amount = 0)
    log_records.each do |record|
      amount += record.amount
    end
    number_to_currency(amount)
  end
end
