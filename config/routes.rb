Rails.application.routes.draw do
  get '/lint', to: 'lint#exam'
  post '/lint', to: 'lint#validate'

  root to: 'lint#exam'
end
