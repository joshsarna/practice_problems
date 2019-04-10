=begin

You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

=end

sunday_count = 0
month = 1
year = 1901

day = 366 # one non-leap year after 1/1/1900

100.times do
  12.times do
    if day % 7 == 0
      sunday_count += 1
    end
    if month == 2
      if year % 4 == 0 && year % 100 != 0 || year % 400 == 0  # leap year
        day += 29
      else
        day += 28 
      end
    elsif month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
      day += 31
    else
      day += 30
    end
    if month < 12
      month += 1
    else
      month = 1
    end
  end
  year += 1
end

p sunday_count # => 170