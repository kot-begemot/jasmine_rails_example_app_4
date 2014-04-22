JasminriseExampleApp4::Application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  resources :people

  root 'people#index'
end
