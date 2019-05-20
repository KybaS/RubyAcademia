require '../../com/examples/examples'
require '../../com/examples/module_for_examples'
require 'ffaker'

class CheckExamples
  @product = FFaker::Product.product_name

  data = ModuleForExamples::InsideModuleClass.new
  check_array = Examples.new

  puts 'default product data'
  data.product_data

  puts 'without new price product data'
  data.product_data(id: rand(1...10000),
                    product: @product,
                    currency: '€',
                    price: rand(50...1000),
                    popularity: rand(1...100))

  puts 'with new price data'
  data.product_data(id: rand(1...10000),
                    product: @product,
                    currency: '₴',
                    price: rand(50...1000),
                    popularity: rand(1...100),
                    new_price: rand(500...2000))

  puts 'sum of two numbers'
  res = check_array.sum_eq_n?([], 4)
  puts "result - #{res}"
end