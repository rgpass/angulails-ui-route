Rails.application.routes.draw do
  # Creating a controller action inside ApplicationController is a bit confusing
  # and wouldn't be done in a normal app. Since this tutorial focuses solely
  # on Angular, it's fine here.
  root 'application#index'

  # This takes any path the user types in and sends them to a default page
  # Note: If your application has multiple routes/resources, put this last
  get "*path.html" => "application#index", :layout => 0
  get "*path" => "application#index"
end
