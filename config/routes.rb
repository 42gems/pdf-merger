Rails.application.routes.draw do
  root 'pdf_merge#home'
  post '/upload', to: 'pdf_merge#upload'
end
