
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
    

      if item_hash == find_item_by_name_in_collection(item_hash[:item], consolidated_cart) 
        consolidated_cart[item_hash][:count] += 1

      else

        consolidated_cart << item_hash
     
     end
  
    end
  end    

end


  