class Book
  attr_accessor :title, :price
　#ゲッター、外側からセットする場合

  def initialize(title, price)
    @title = title
    @price = price
  end

  def rename_title(title)
    @title = title
  end

  def price_increase
  	@price = @price * 2
  end

end

class Comic < Book

	def price_increase
  	@price = (@price * 1.5).to_i
	end

end


class Magazine < Book

	def price_increase
  	@price = @price * 3
	end

end

#bookクラス
book = Book.new("book", 2000)
 @reprice_book = book.price_increase
 @book_title = book.rename_title("Ruby_book")
 puts "#{@book_title}は#{@reprice_book}円です。"

#comicクラス
comic = Comic.new("comic", 2000)
 @reprice_comic = comic.price_increase
 @comic_title = comic.rename_title("Ruby_comic")
 puts "#{@comic_title}は#{@reprice_comic}円です。"

#magazineクラス
magazine = Magazine.new("magazine", 2000)
 @reprice_magazine = magazine.price_increase
 @magazine_title = magazine.rename_title("Ruby_magazine")
 puts "#{@magazine_title}は#{@reprice_magazine}円です。"





