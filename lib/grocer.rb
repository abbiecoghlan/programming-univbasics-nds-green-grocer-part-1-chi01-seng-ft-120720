require "pry"

def find_item_by_name_in_collection(name, collection)
  collection.each do |item_hash|
    if item_hash[:item] == name
      return item_hash
    end
  end 
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  #iterate through iterate through each item in the unconsolidated cart 
    # if it is not in the consolidated cart, add it to the consolidated cart 
    # if it 

  consolidated_cart = []
  

  
  cart.each do |item_hash|
    item_hash.each do

      if find_item_by_name_in_collection(item_hash[:item], consolidated_cart) == nil
        item_hash[:count] = 1

        consolidated_cart << item_hash

      elsif find_item_by_name_in_collection(item_hash[:item], consolidated_cart) == true
        consolidated_cart[item_hash][:count] += 1
        
      end 
    end
  end    
      

end


  