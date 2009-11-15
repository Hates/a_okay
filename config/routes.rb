ActionController::Routing::Routes.draw do |map|
  map.resource :a_okay, :only => [:show], :controller => "a_okay"
end

