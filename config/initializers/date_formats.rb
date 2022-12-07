# Custom Date & Time format string helpers
#
# If your custom format only displays date info, it belongs in `Date`
# If you need time, use `Time` instead. Do not exclude time information in the `Time` module
# Please check rails defaults before adding custom formats
#
# Example usage:
# Date::DATE_FORMATS[:imperial] = '%m/%d/%Y'
# Time::DATE_FORMATS[:imperial] = '%m/%d/%Y%l:%M'
# string = '1990-01-01 2:30PM'
# string.to_date.to_s(:imperial) #=> "01/01/1990"
# string.to_time.to_s(:imperial) #=> "01/01/1990 2:30"

# -------------------------
# TIME
#
# RAILS DEFAULTS: :db, :number, :nsec, :usec, :time, :short, :long, :long_ordinal, :rfc822, :iso8601
# https://api.rubyonrails.org/classes/Time.html
# -------------------------

# 11/20/2019 9:50pm
Time::DATE_FORMATS[:imperial] = '%m/%d/%Y at %l:%M %p'
# 11/20/2019 9:50pm - CST
Time::DATE_FORMATS[:imperial_zone] = '%m/%d/%Y at %l:%M %p - %Z'

# -------------------------
# DATE
#
# RAILS DEFAULTS: :short, :long, :db, :number, :long_ordinal, :rfc822, :iso8601
# https://api.rubyonrails.org/classes/Date.html
# -------------------------

# 01/02/2006
Date::DATE_FORMATS[:imperial_short] = '%m/%d'
Date::DATE_FORMATS[:imperial] = '%m/%d/%Y'
