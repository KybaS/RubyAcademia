module ModuleForExamples
  class InsideModuleClass

    def difference_price(price, new_price)
      diff = new_price - price
      diff
    end

    def product_data(attributes = {})
      attributes = default_attributes.merge(attributes)
      puts "id         = #{attributes[:id]}"
      puts "popularity = #{attributes[:popularity]}"
      puts "product    = #{attributes[:product]}"
      puts "price      = #{attributes[:price]}" + " #{attributes[:currency]}"

      if attributes[:new_price] > 0 || attributes[:new_price] < 0
        puts "new price  = #{attributes[:new_price]}" + " #{attributes[:currency]}"
        puts "difference = #{difference_price(attributes[:price],
                                              attributes[:new_price])}" + " #{attributes[:currency]}"
      end
    end

    def default_attributes
      {
          id: 0,
          product: '-',
          price: 0,
          new_price: 0,
          popularity: 0,
          currency: '$'
      }
    end

  end
end
