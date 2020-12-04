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
  
  

  
  cart.dup.each do |item_hash|
    item_hash.each do

      if find_item_by_name_in_collection(item_hash[:item], consolidated_cart) == nil
        item_hash[:count] = 1

        consolidated_cart << item_hash

      elsif find_item_by_name_in_collection(item_hash[:item], consolidated_cart) == true
        consolidated_cart[item_hash][:count] += 1
        
      end  
    end
  end    
  consolidated_cart

end


  