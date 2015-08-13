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










 end
