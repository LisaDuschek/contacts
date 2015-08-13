require('rspec')
require('contacts')

describe('Phone') do

  describe('.all') do
    it('creates an empty array')do
    expect(Phone.all()).to(eq([]))
  end
end

describe('#save') do
  it('takes user input saves into array') do
    test_number = Phone.new({:area_code=>503,:number=>1234567 , :type=>"office"})
    test_number.save()
    expect(Phone.all()).to(eq([test_number]))
  end
end

describe('.clear') do
  it('will clear the number array') do
    expect(Phone.all()).to(eq([]))
  end
end

describe('#area_code') do
  it('returns the number area code') do
    test_number = Phone.new({:area_code=>503,:number=>1234567 , :type=>"office"})
    test_number.save()
    expect(test_number.area_code).to(eq([503]))
  end
end

describe('#number') do
  it('returns the number area code') do
    test_number = Phone.new({:area_code=>503,:number=>1234567 , :type=>"office"})
    test_number.save()
    expect(test_number.number).to(eq([1234567]))
  end
end

describe('#type') do
  it('returns the number type') do
    test_number = Phone.new({:area_code=>503,:number=>1234567 , :type=>"office"})
    test_number.save()
    expect(test_number.type).to(eq(["office"]))
  end
end


end
