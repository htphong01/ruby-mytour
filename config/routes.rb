Rails.application.routes.draw do

  # user routes
  get '/', to: 'home#index'
  get '/category', to: 'home#category'
  get '/hotels', to: 'home#hotels'
  get '/rooms', to: 'home#rooms'

  # blog
  get '/blog', to: 'home#blog'
  get '/blog/new', to: 'home#blogNew'
  post '/blog/store', to: 'home#blogStore'
  get '/blog/:id', to: 'home#blogView'

  get '/like/:id', to: 'home#like'

  get '/contact', to: 'home#contact'
  post '/contact/send', to: 'home#sendContact'
  get '/about-us', to: 'home#aboutUs'

  # login/register
  get '/login', to: 'home#login'
  post '/verifyLogin', to: 'home#verifyLogin'
  get '/register', to: 'home#register'
  get '/logout', to: 'home#logout'
  get '/profile', to: 'home#profile'
  post '/profile/update', to: 'home#updateProfile'

  get '/search', to: 'home#search'

  # booking
  get '/booking/:id', to: 'home#book'
  post '/order/:id', to: 'home#order'
  get '/cart', to: 'home#cart'
  post '/rate', to: 'home#rate'
  get '/order/cancel/:id', to: 'home#cancelOrder'

  # admin routes
  get '/admin/profile', to: 'admin#profile'
  post '/admin/profile/update', to: 'admin#profileUpdate'
  get '/admin/dashboard', to: 'admin#dashboard'

  get '/admin/category', to: 'admin#category'
  get '/admin/category/edit/:id', to: 'admin#categoryEdit'
  post '/admin/category/update/:id', to: 'admin#categoryUpdate'
  get '/admin/category/new', to: 'admin#categoryNew'
  post '/admin/category/store', to: 'admin#categoryStore'

  get '/admin/hotel', to: 'admin#hotel'
  get '/admin/hotel/new', to: 'admin#hotelNew'
  post '/admin/hotel/store', to: 'admin#hotelStore'
  get '/admin/edit/hotel/:id', to: 'admin#hotelEdit'
  post '/admin/hotel/update/:id', to: 'admin#hotelUpdate'

  get '/admin/user', to: 'admin#user'
  get '/admin/user/new', to: 'admin#userNew'
  post '/admin/user/active/:id', to: 'admin#userActive'
  post '/admin/user/store', to: 'admin#userStore'

  get '/admin/room', to: 'admin#room'

  get '/admin/orders', to: 'admin#orders'
  get '/admin/order/status/:id', to: 'admin#orderStatus'

  get '/admin/contact', to: 'admin#contact'
  get '/admin/contact/:id', to: 'admin#contactResponse'
  post '/admin/reply/contact/:id',to: 'admin#contactReply'
  get '/admin/comment', to: 'admin#comment'

  get '/admin/posts', to: 'admin#posts'
  get '/admin/post/:id', to: 'admin#postView'
  post '/admin/post/active/:id', to: 'admin#postActive'
  get '/admin/post/:id/check', to: 'admin#postCheck'

  get '/admin/chart', to: 'admin#chart'


  # hotel routes
  get '/hotel/dashboard', to: 'hotel#dashboard'
  get '/hotel/review', to: 'hotel#review'
  post '/hotel/update', to: 'hotel#update'

  get '/hotel/rooms', to: 'hotel#rooms'
  get '/hotel/room/:id/edit', to: 'hotel#roomEdit'
  post '/hotel/room/:id/update', to: 'hotel#roomUpdate'
  get '/hotel/room/new', to: 'hotel#roomNew'
  post '/hotel/room/store', to: 'hotel#roomStore'

  get '/hotel/order', to: 'hotel#order'
  get '/hotel/order/status/:id', to: 'hotel#orderStatus'
  get '/hotel/order/confirm', to: 'hotel#orderConfirm'
  post '/hotel/order/confirm/:id', to: 'hotel#orderConfirmActive'
  get '/hotel/order/update/:status', to: 'hotel#orderUpdate'
  post '/hotel/order/updateStatus/:id', to: 'hotel#orderUpdateStatus'

  
end
