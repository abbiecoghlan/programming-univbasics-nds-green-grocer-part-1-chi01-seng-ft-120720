
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
      if consolidated_cart.include? item_hash == false
        item_hash[:count] = 1

        consolidated_cart << item_hash
     end

      if consolidated_cart.include? item_hash == true
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


  