module ApplicationHelper
  def convert_currency(amount, multiplier)
    return 'could not convert currency' if multiplier < 0
    "#{'%.5f' % (amount * multiplier)}"
  end

  def format_time(seconds)
    time_ago_in_words (Time.now - Time.at(seconds.to_i)).seconds.from_now
  end
end
