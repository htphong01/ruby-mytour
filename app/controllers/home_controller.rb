class HomeController < ApplicationController
    layout "index", except: :login
    def index
        @hotels = Hotel.limit(8)
        @rooms = Room.find_by_sql("SELECT * FROM rooms
            INNER JOIN typerooms ON rooms.typeroom = typerooms.id LIMIT 6")
        @categories = Category.all
        @addresses = Address.all
        render "home/index"
    end

    def category
        @categories = Category.all
        @category_id = params[:id]
        if (params[:id] <=> '0') == 0
            @hotels = Hotel.where("cate != " + params[:id]).paginate(:page => params[:page], :per_page => 5)
        else
            @hotels = Hotel.where("cate = " + params[:id]).paginate(:page => params[:page], :per_page => 5)
        end
        render "home/category"
    end

    def hotels
        id = params[:id]
        @hotel = Hotel.find(id)
        @images = Imageshotel.where('idhotel = ' + id)
        @cate = Category.find(@hotel.cate)
        @categories = Category.all
        @rooms = Room.find_by_sql("SELECT * FROM rooms
            INNER JOIN typerooms ON rooms.typeroom = typerooms.id where rooms.hotel = " + id)
        @rates = Bill.where("hotel = " +id).where("rating > 0")
        @users = Account.all
        render "home/hotel"
    end

    def rooms
        roomID = params[:id]
        @categories = Category.all
        @room = Room.find(roomID)
        @hotel = Hotel.find(@room.hotel)
        @images = Imagesroom.where('idroom = ' + roomID)
        @type = Typeroom.find(@room.typeroom)
        render "home/room"
    end

    def blog 
        @categories = Category.all
        @blogs = Post.where('checkpost = 1').where('isShow = 0').order(:id).paginate(:page => params[:page], :per_page => 5)
        @users = Account.all
        @populars = Post.order(:view).reverse_order.limit(5)
        @recents = Post.order(:id).reverse_order.limit(5)
        render "home/blog"
    end

    def blogView
        @likes = Likecomment.all
        @comments = Comment.where('idpost = ' + params[:id]).reverse_order
        @users = Account.all
        @categories = Category.all
        @post = Post.find(params[:id])
        @post.view += 1
        @post.save
        @populars = Post.order(:view).reverse_order.limit(5)
        @recents = Post.order(:id).reverse_order.limit(5)
        render "home/blogView"
    end

    def blogStore
        post = Post.new
        post.title = params[:title]
        post.content = params[:desc]
        post.image = 'image/post/bai-viet.jpg'
        post.user = session[:user]['id']
        post.datepost = Time.now.strftime("%Y-%m-%d %H:%M:%S")
        post.checkpost = 0
        post.view = 0
        post.isShow = 0
        post.save
        session[:notification] = 'Đăng tải bài viết thành công. Bài viết của bạn đang được duyệt'
        redirect_to('/blog/new')
    end

    def like
        like = Likecomment.where('user = ' + session[:user]['id'].to_s).where('idcmt = ' + params[:id].to_s).first
        comment = Comment.find(params[:id])
        if like.present?
            if like.isShow.to_i == 1
                comment.likecmt -= 1
                like.isShow = 0
            else
                comment.likecmt += 1
                like.isShow = 1
            end
            comment.save
            like.save
        else
            like = Likecomment.new
            like.user = session[:user]['id']
            like.idcmt = params[:id]
            like.isShow = 1
            comment.likecmt += 1
            like.save
            comment.save
        end
        render json: like
        
    end

    def contact
        @categories = Category.all
        render "home/contact"
    end

    def sendContact
        contact = Contact.new
        contact.user = session[:user]['id']
        contact.name = params[:name]
        contact.content = params[:content]
        contact.email = params[:email]
        contact.date_send = Time.now.strftime("%Y-%m-%d %H:%M:%S")
        contact.save
        session[:notification] = 'Gửi hỗ trợ thành công'
        redirect_to('/contact')

    end

    def aboutUs
        @categories = Category.all
        @hotels = Hotel.all.size
        @users = Account.all.size
        @posts = Post.all.size
        @bills = Bill.all.size
        render "home/aboutUs"
    end

    def login 
        @categories = Category.all
        render "home/login"
    end

    def register
        redirect_to('/login')
    end

    def verifyLogin
        username = params[:username]
        password = Digest::MD5.hexdigest(params[:password])
        @user = Account.where('username = "' + params[:username] + '"').where('password = "' + password + '"').first
        if @user.present?
            session[:user] = @user
            if @user.role == 2
                redirect_to('/')
            elsif @user.role == 1
                redirect_to('/admin/dashboard')
            else
                redirect_to('/hotel/dashboard')
            end
        else
            session[:notification] = 'Thông tin đăng nhập không đúng'
            redirect_to('/login')
        end
    end

    def logout
        session.delete(:user)
        redirect_to('/')
    end

    def profile
        @categories = Category.all
        @user = session[:user]
        if @user.present?
            render "home/profile"
        else
            redirect_to('/login')
        end
    end

    def updateProfile
        user = Account.find(session[:user]['id'])
        user.name = params[:name]
        user.email = params[:email]
        user.phone = params[:phone]
        user.address = params[:address]
        user.save
        session[:user] = user
        redirect_to('/profile')
    end

    def search
        @categories = Category.all
        @today = DateTime.current.to_date
        @daycome = params[:checkin]
        @dayleave = params[:checkout]
        address = params[:address]
        @amount = params[:amount]
        
        # lấy hotel có địa chỉ area
        @hotels = Hotel.where("id_address = " + address)
        # lấy các room có thuộc hotel

        render 'home/search'
    end

    def book
        @room = Room.find(params[:id])
        @hotel = Hotel.find(@room.hotel)
        @categories = Category.all
        render 'home/book'
    end

    def order
        id = params[:id]
        room = Room.find(id)
        hotel = Hotel.find(room.hotel)
        bill = Bill.new
        bill.user = session[:user]['id']
        bill.name = params[:name]
        bill.email = params[:email]
        bill.phone = params[:phone]
        bill.address = params[:address]
        bill.set_date = DateTime.current.to_time
        bill.room = id
        bill.hotel = hotel.id
        bill.price = room.final_price
        bill.checkin_date = params[:checkin] + " 14:00:00"
        bill.checkout_date = params[:checkout] + " 11:00:00"
        bill.amount = params[:amount]
        bill.sum_price = params[:sum]
        bill.pay = params[:pay]
        bill.status = 1
        bill.save
        ExampleMailer.sample_email(bill).deliver_now
        redirect_to('/cart')
    end

    def cart

        if !session[:user].present?
            redirect_to('/login')
            return

            
        end
        @bills = Bill.where('user = ' + session['user']['id'].to_s).order(:id).reverse_order.paginate(:page => params[:page], :per_page => 5)
            @categories = Category.all
            render 'home/cart'        
    end

    def rate
        bill = Bill.find(params[:id])
        bill.rating = params[:rate]
        bill.comment = params[:content]
        bill.showname = params[:username]
        bill.save
        redirect_to('/cart')

    end

    def cancelOrder
        bill = Bill.find(params[:id])
        bill.status = 5
        bill.save
        redirect_to('/cart')
    end

    def blogNew
        @categories = Category.all
        @blogs = Post.where('user = ' + session['user']['id'].to_s).order(:id).reverse_order
        render 'home/blogNew'
    end
end
