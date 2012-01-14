module TinymceFm
  class Engine < Rails::Engine
    #isolate_namespace TinymceFm
    initializer "add assets directories from pipeline" do |app|
     app.config.assets.paths << "../../vendor/assets/javascripts"
   end
  end
end
