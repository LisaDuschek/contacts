class Phone
  attr_reader(:area_code, :number, :type)
  @@phone_number = []

  define_method(:initialize) do |attributes|
    @area_code = attributes.fetch(:area_code)
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
  end

  define_singleton_method(:all) do
    @@phone_number
  end

  define_method(:save) do
    @@phone_number.push(self)
  end

  define_singleton_method(:clear) do
    @@phone_number = []
  end

end
