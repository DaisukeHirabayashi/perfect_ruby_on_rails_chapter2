# json.extract! @book, :id, :name, :price
# json.name_with_id "#{@book.id} - #{@book.name}"
# json.publisher do
#     json.extract! @book.publisher, :name, :address
# end
# unless @book.high_price?
#     json.low_price true
# end

json.books Book.all do |book|
    json.extract! book, :id, :name, :price
end