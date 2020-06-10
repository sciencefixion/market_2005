class Vendor

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

end
