Rails.application.routes.draw do
  get("/dice/2/6", { :controller => "dice", :action => "2d6" })
  
  get("/dice/2/10", { :controller => "dice", :action => "2d10" })

  get("/dice/1/20", { :controller => "dice", :action => "1d20" })

  get("dice/5/4", { :controller => "dice", :action => "5d4" })

  get("/dice/number/sides", { :controller => "dice", :action => "dynamic" })

  get("/", { :controller => "dice", :action => "home" })
end
