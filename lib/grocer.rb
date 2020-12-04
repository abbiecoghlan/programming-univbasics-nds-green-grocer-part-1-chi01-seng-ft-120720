
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
    item_hash.dup.each do

      if find_item_by_name_in_collection(item_hash[:item], consolidated_cart) == nil
        item_hash[:count] = 1

        consolidated_cart << item_hash
     

      elsif find_item_by_name_in_collection(item_hash[:item], consolidated_cart) == !nil
        binding.pry
          consolidated_cart.each do |updated_item_hash|
            if updated_item_hash == item_hash
                updated_item_hash[:count] += 1
            end
          end
        
      end  
    end
  end    
  consolidated_cart

end


  