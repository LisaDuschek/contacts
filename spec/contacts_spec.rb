require('rspec')
require('contacts')
require('phone')

describe('Contact') do

  before() do
   Contact.clear()
 end

describe('.all') do
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

describe('.clear') do
  it('will clear the contacts array') do
    expect(Contact.all()).to(eq([]))
  end
end

 describe('#first_name') do
   it('reurns the contact first name') do
   test_contact = Contact.new({:first_name=>"Lisa",:last_name=> "VanHausen", :job_title=>"Pet Groomer", :company=> "ACME"})
   test_contact.save()
   expect(test_contact.first_name).to(eq("Lisa"))
  end
 end

 describe('#last_name') do
   it('returns the contact last name') do
    test_contact = Contact.new({:first_name=>"Lisa",:last_name=> "VanHausen", :job_title=>"Pet Groomer", :company=> "ACME"})
    test_contact.save()
    expect(test_contact.last_name).to(eq("VanHausen"))
   end
 end

 describe('#job_title') do
   it('returns the contact job title') do
     test_contact = Contact.new({:first_name=>"Lisa",:last_name=> "VanHausen", :job_title=>"Pet Groomer", :company=> "ACME"})
     test_contact.save()
     expect(test_contact.job_title).to(eq("Pet Groomer"))
   end
 end

 describe('#company') do
   it('returns the contact company') do
     test_contact = Contact.new({:first_name=>"Lisa",:last_name=> "VanHausen", :job_title=>"Pet Groomer", :company=> "ACME"})
     test_contact.save()
     expect(test_contact.company).to(eq("ACME"))
   end
 end

describe('#id') do
  it('returns the id of the contact') do
  test_contact = Contact.new({:first_name=>"Lisa",:last_name=> "VanHausen", :job_title=>"Pet Groomer", :company=> "ACME", :id=>1})
  test_contact.save()
  expect(test_contact.id()).to(eq(1))
  end
end

describe('.find') do
  it('returns contact by id number') do
    test_contact = Contact.new({:first_name=>"Lisa",:last_name=> "VanHausen", :job_title=>"Pet Groomer", :company=> "ACME", :id=>1})
    test_contact.save()
    test_contact2 = Contact.new({:first_name=>"Bob",:last_name=> "VanHausen", :job_title=>"Pet Groomer", :company=> "ACME", :id=>2})
    test_contact2.save()
    expect(Contact.find(test_contact.id())).to(eq(test_contact))
end
end



 end
