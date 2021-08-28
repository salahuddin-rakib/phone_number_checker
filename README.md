# PhoneNumberChecker

Phone Number Checker is a Ruby gem. It's used to check valid phone number and also return a valid phone number from a string.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'phone_number_checker'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install phone_number_checker

## Usage

Validate Bangladeshi Phone Number from a string:
```ruby
------------Input------------    ----------Output----------
'01912345678'.bd_phone?        |   true
'+8801912345678'.bd_phone?     |   true
'+8800912345678'.bd_phone?     |   false
'+880191234567812'.bd_phone?   |   false
```

Fetch Bangladeshi Phone Number from a string. It returns **nil** unless valid number:
```ruby
------------Input------------    ----------Output----------
'01912345678'.bd_phone        |   '01912345678'
'+8801912345678'.bd_phone     |   '01912345678'
'+8800912345678'.bd_phone     |   nil
'+880191234567812'.bd_phone   |   nil
```

Fetch Bangladeshi Phone Number with country code from a string. It returns **nil** unless valid number:
```ruby
---------------------Input---------------------    ----------Output----------
'01912345678'.bd_phone_with_country_code        |   '+8801912345678'
'+8801912345678'.bd_phone_with_country_code     |   '+8801912345678'
'+8800912345678'.bd_phone_with_country_code     |   nil
'+880191234567812'.bd_phone_with_country_code   |   nil
```

## Contributing


Bug reports and pull requests are welcome. You can also add other country's phone number validations.

**1. Fork it**

**2. Create your feature branch [git checkout -b feature_branch].**

**3. Commit your changes [git commit -m 'commit message'].**

**4. Push to the branch [git push origin feature_branch].**

**5. Create new Pull Request.**

**Reminder: Need to provide proper test code.**

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
