if defined?(JasmineRails)
  JasmineRails::Engine.routes.draw do
    resources :spec, :controller => 'spec', :only => [:index] do
      get "fixtures/*filename", :action => :fixtures
    end
    get "fixtures/*filename", :to => "spec#fixtures"
  end
end

JasminriseExampleApp4::Application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  resources :people

  root 'people#index'
end
