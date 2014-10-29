Rails.application.routes.draw do
  root 'pdf_merge#home'

 match '/upload', to: 'pdf_merge#upload', via: 'post'

end
