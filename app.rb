require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/contacts")


get("/") do  # goes to URL
  erb(:index)   # home page file name
end

post('/saved_contacts') do
  first_name = params.fetch("first_name")
  last_name = params.fetch("last_name")
  job_title = params.fetch("job_title")
  company = params.fetch("company")
  contact = Contact.new({:first_name=>first_name,:last_name=> last_name, :job_title=>job_title,:company=> company})
  contact.save()
  erb(:success)
end

get('/saved_contacts') do
  @saved_contacts = Contact.all()
  erb(:saved_contacts)
end

get('/contact_details/:id') do

  # "contact id: " + params.fetch('id')

  @contact = Contact.find(params.fetch("id").to_i())
  # area_code = params.fetch("area_code")
  # number = params.fetch("number")
  # type = params.fetch("type")
  # phone = Phone.new({:area_code=>area_code,:number=> number, :type=>type})
  # phone.save()
  erb(:contact_details)
end

post('/contact_details') do
  first_name = params.fetch("first_name")
  last_name = params.fetch("last_name")
  job_title = params.fetch("job_title")
  company = params.fetch("company")
  contact = Contact.new({:first_name=>first_name,:last_name=> last_name, :job_title=>job_title,:company=> company})
  contact.save()

  erb(:contact_details)
end
