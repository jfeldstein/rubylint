Rubylint::Application.routes.draw do
  post '/' => 'linting#index'

  root 'linting#index'
end
