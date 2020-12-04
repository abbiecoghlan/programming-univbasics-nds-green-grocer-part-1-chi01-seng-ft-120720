
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
  
    item_hash.dup.each do |key, value|
   

      if consolidated_cart.include?(item_hash[:item])
        binding.pry
          consolidated_cart[consolidated_cart.length-1][item_hash][:count] += 1
      
      binding.pry
      
      elsif !consolidated_cart.include?(item_hash[:item])
      binding.pry
        item_hash[:count] = 1
        consolidated_cart << item_hash
      end
  
    end
  end    

end


  