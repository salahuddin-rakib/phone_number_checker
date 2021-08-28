# frozen_string_literal: true

require_relative "phone_number_checker/version"

# PhoneNumberChecker
module PhoneNumberChecker
  class Error < StandardError; end

  def bd_phone_regex
    /(^(\+88|0088)?(01)[3456789](\d){8})$/
  end

  def white_space?
    !!match(/\s/)
  end

  def bd_phone?
    !!match(bd_phone_regex)
  end

  def bd_phone
    phone = nil
    length = self.length
    if length == 11 && bd_phone?
      phone = self
    elsif length == 14 && bd_phone?
      phone = slice(3, length)
    elsif length == 15 && bd_phone?
      phone = slice(4, length)
    end
    phone
  end

  def bd_phone_with_country_code
    phone = nil
    length = self.length
    if length == 11 && bd_phone?
      phone = "+88#{self}"
    elsif length == 14 && bd_phone?
      phone = "+88#{slice(3, length)}"
    elsif length == 15 && bd_phone?
      phone = "+88#{slice(4, length)}"
    end
    phone
  end
end

class String
  include PhoneNumberChecker
end
