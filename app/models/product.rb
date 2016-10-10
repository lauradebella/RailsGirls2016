class Product < ActiveRecord::Base
  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
      where("tag LIKE ?", "%#{search}%")
    else
      Product.all
    end
  end
end

