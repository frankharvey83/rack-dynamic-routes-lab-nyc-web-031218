
class Application

def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)

      if req.path.match(/items/)
         item_name = req.path.split("/items/").last

         if item = @@items.find {|i| i.name == item_name}
           resp.write item.price
         else
           resp.write "Item not found"
           resp.status = 400
         end

       else
         resp.write "Route not found"
         resp.status = 404
       end
       resp.finish
     end
#   if req.path.match(/items/)
#     item = req.path.split("/items/").last
#     resp.write item_price(item)
#   else
#     resp.write "Route not found"
#     resp.status = 404
#   end
#
#   resp.finish
# end
#
# def item_price(item)
#
if @@items.include?(item)
  x = @@items.find {|product| product.name == item}
  resp.write "#{x.price}"
  end
end


end
