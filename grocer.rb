def find_item_by_name_in_collection(name, collection)
  i = 0 
  while i < collection.length do 
    return collection[i] if name === collection[i][:item]
    i -= -1 
  end 
  nil
  # Implement me first!
  #
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  i = 0 
  result = []
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  while i < cart.length do
    item_name = find_item_by_name_in_collection(cart[i][:item],result)
    if item_name
      item_name[:count] -= -1
    else 
      item_name = {
        :item => cart[i][:item],
        :price => cart[i][:price],
        :clearance => cart[i][:clearance],
        :count => 1 
      }
      result << item_name 
    end 
    i -= -1 
  end 
  result
end
  #Create a first order method once we finish and redo the apply_coupons. 
  
def first_order(coupon) #we have to pass an arg and then take the item and round it out 
  rounding = (coupon[:cost].to_f * 1.0 / coupon[:num].round(2)
  { 
    :item => "#{coupon[:item]} W/COUPON",
  :price => rounding,
  :count => coupon[:num]
  }
end

def apply_coupons(cart, coupons)
  

  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  counter = 0 
  while counter < coupons.length
  cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
  coupon 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
