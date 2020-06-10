class Item
  attr_reader :name,
              :price

  def initialize(item_params)
    @name = item_params[:name]

    @price = item_params[:price].gsub!(/[$]/,'').to_f

  end
end
