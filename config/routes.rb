Rails.application.routes.draw do
  root 'pdf_merge#home'

  match '/merge', to: 'pdf_merge#merge', via: 'get'

end
