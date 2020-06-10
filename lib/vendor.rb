class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, amnt)
    @inventory[item] += amnt
  end

  def potential_revenue
    revenue = 0.0
    @inventory.each do |item|
      revenue += item[0].price * item[1]
    end
    revenue
  end
end
