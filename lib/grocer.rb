
def find_item_by_name_in_collection(name, collection)
  collection.each do |item_hash|
    if item_hash[:item] == name
      return item_hash
    end
  end 
  return nil
end

def consolidate_cart(cart)

  consolidated_cart = []
  
  

  
  cart.each do |item_hash|
    item_hash[:count] = 1
    item_hash.dup.each do |key, value|
   

      if consolidated_cart.include?(item_hash)
        binding.pry
        consolidated_cart.each do |cart_hash|
          cart_hash[:count] += 1
        end
      elsif !consolidated_cart.include?(item_hash)
       
        consolidated_cart << item_hash
      end
  
    end
  end    

end


  