require('rspec')
require('contacts')

describe('Contact') do

 #  before()do
 #   Contact.clear()
 # end

describe('.all')do
  it('creates an empty array')do
    expect(Contact.all()).to(eq([]))
  end
end

describe('#save') do
  it('takes user input saves into array') do
    test_contact = Contact.new({:first_name=>"Lisa",:last_name=> "VanHausen", :job_title=>"Pet Groomer",:company=> "ACME"})
    test_contact.save()
    expect(Contact.all()).to(eq([test_contact]))
  end
end








 end
