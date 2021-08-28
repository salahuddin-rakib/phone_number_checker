# frozen_string_literal: true

RSpec.describe PhoneNumberChecker do
  it "has a version number" do
    expect(PhoneNumberChecker::VERSION).not_to be nil
  end

  # bd_phone? without Bangladeshi country code ----------------------------------
  # True
  it "bd_phone?: phone number check without country code" do
    expect("01967579586".bd_phone?).to eq(true)
  end

  # False
  # '00' in stead of '01'
  it "bd_phone?: wrong phone number check without country code example: 1" do
    expect("00967579586".bd_phone?).to eq(false)
  end

  # Extra 1 digit
  it "bd_phone?: wrong phone number check without country code example: 2" do
    expect("019675795861".bd_phone?).to eq(false)
  end

  # Alphabet between number
  it "bd_phone?: wrong phone number check without country code example: 3" do
    expect("01967a79586".bd_phone?).to eq(false)
  end

  # bd_phone? with Bangladeshi country code[+88] -------------------------------------
  # True
  it "bd_phone?: phone number check with country code" do
    expect("+8801967579586".bd_phone?).to eq(true)
  end

  # False
  # '00' in stead of '01'
  it "bd_phone?: wrong phone number check without country code example: 1" do
    expect("+8800967579586".bd_phone?).to eq(false)
  end

  # Extra 1 digit
  it "bd_phone?: wrong phone number check without country code example: 2" do
    expect("+88019675795861".bd_phone?).to eq(false)
  end

  # Alphabet between number
  it "bd_phone?: wrong phone number check without country code example: 3" do
    expect("+8801967a79586".bd_phone?).to eq(false)
  end

  # bd_phone? with Bangladeshi country code[0088] -------------------------------------
  # True
  it "bd_phone?: phone number check with country code" do
    expect("008801967579586".bd_phone?).to eq(true)
  end

  # False
  # '00' in stead of '01'
  it "bd_phone?: wrong phone number check without country code example: 1" do
    expect("008800967579586".bd_phone?).to eq(false)
  end

  # Extra 1 digit
  it "bd_phone?: wrong phone number check without country code example: 2" do
    expect("0088019675795861".bd_phone?).to eq(false)
  end

  # Alphabet between number
  it "bd_phone?: wrong phone number check without country code example: 3" do
    expect("008801967a79586".bd_phone?).to eq(false)
  end

  # -------------------------------------------------------------------------------------------------
  # ------------------------- bd_phone without Bangladeshi country code -----------------------------
  # -------------------------------------------------------------------------------------------------
  # True
  it "bd_phone: phone number check without country code" do
    expect("01967579586".bd_phone).to eq("01967579586")
  end

  # False
  # '00' in stead of '01'
  it "bd_phone: wrong phone number check without country code example: 1" do
    expect("00967579586".bd_phone).to eq(nil)
  end

  # Extra 1 digit
  it "bd_phone: wrong phone number check without country code example: 2" do
    expect("019675795861".bd_phone).to eq(nil)
  end

  # Alphabet between number
  it "bd_phone: wrong phone number check without country code example: 3" do
    expect("01967a79586".bd_phone).to eq(nil)
  end

  # bd_phone with Bangladeshi country code[+88] -------------------------------------
  # True
  it "bd_phone: phone number check with country code" do
    expect("+8801967579586".bd_phone).to eq("01967579586")
  end

  # False
  # '00' in stead of '01'
  it "bd_phone: wrong phone number check without country code example: 1" do
    expect("+8800967579586".bd_phone).to eq(nil)
  end

  # Extra 1 digit
  it "bd_phone: wrong phone number check without country code example: 2" do
    expect("+88019675795861".bd_phone).to eq(nil)
  end

  # Alphabet between number
  it "bd_phone: wrong phone number check without country code example: 3" do
    expect("+8801967a79586".bd_phone).to eq(nil)
  end

  # bd_phone with Bangladeshi country code[0088] -------------------------------------
  # True
  it "bd_phone: phone number check with country code" do
    expect("008801967579586".bd_phone).to eq("01967579586")
  end

  # False
  # '00' in stead of '01'
  it "bd_phone: wrong phone number check without country code example: 1" do
    expect("008800967579586".bd_phone).to eq(nil)
  end

  # Extra 1 digit
  it "bd_phone: wrong phone number check without country code example: 2" do
    expect("0088019675795861".bd_phone).to eq(nil)
  end

  # Alphabet between number
  it "bd_phone: wrong phone number check without country code example: 3" do
    expect("008801967a79586".bd_phone).to eq(nil)
  end

  # -------------------------------------------------------------------------------------------------
  # ------------------- bd_phone_with_country_code without Bangladeshi country code -----------------
  # -------------------------------------------------------------------------------------------------
  # True
  it "bd_phone_with_country_code: phone number check without country code" do
    expect("01967579586".bd_phone_with_country_code).to eq("+8801967579586")
  end

  # False
  # '00' in stead of '01'
  it "bd_phone_with_country_code: wrong phone number check without country code example: 1" do
    expect("00967579586".bd_phone_with_country_code).to eq(nil)
  end

  # Extra 1 digit
  it "bd_phone_with_country_code: wrong phone number check without country code example: 2" do
    expect("019675795861".bd_phone_with_country_code).to eq(nil)
  end

  # Alphabet between number
  it "bd_phone_with_country_code: wrong phone number check without country code example: 3" do
    expect("01967a79586".bd_phone_with_country_code).to eq(nil)
  end

  # bd_phone_with_country_code with Bangladeshi country code[+88] -----------------------------------
  # True
  it "bd_phone_with_country_code: phone number check with country code" do
    expect("+8801967579586".bd_phone_with_country_code).to eq("+8801967579586")
  end

  # False
  # '00' in stead of '01'
  it "bd_phone_with_country_code: wrong phone number check without country code example: 1" do
    expect("+8800967579586".bd_phone_with_country_code).to eq(nil)
  end

  # Extra 1 digit
  it "bd_phone_with_country_code: wrong phone number check without country code example: 2" do
    expect("+88019675795861".bd_phone_with_country_code).to eq(nil)
  end

  # Alphabet between number
  it "bd_phone_with_country_code: wrong phone number check without country code example: 3" do
    expect("+8801967a79586".bd_phone_with_country_code).to eq(nil)
  end

  # bd_phone_with_country_code with Bangladeshi country code[0088] -------------------------------------
  # True
  it "bd_phone_with_country_code: phone number check with country code" do
    expect("008801967579586".bd_phone_with_country_code).to eq("+8801967579586")
  end

  # False
  # '00' in stead of '01'
  it "bd_phone_with_country_code: wrong phone number check without country code example: 1" do
    expect("008800967579586".bd_phone_with_country_code).to eq(nil)
  end

  # Extra 1 digit
  it "bd_phone_with_country_code: wrong phone number check without country code example: 2" do
    expect("0088019675795861".bd_phone_with_country_code).to eq(nil)
  end

  # Alphabet between number
  it "bd_phone_with_country_code: wrong phone number check without country code example: 3" do
    expect("008801967a79586".bd_phone_with_country_code).to eq(nil)
  end
end
