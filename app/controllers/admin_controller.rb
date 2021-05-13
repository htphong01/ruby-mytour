class AdminController < ApplicationController
    layout "admin"

    def profile
        @user = Account.find(session[:user]['id'])
        render 'admin/profile'
    end

    def profileUpdate
        user = Account.find(session[:user]['id'])
        user.name = params[:name]
        user.address = params[:address]
        user.email = params[:email]
        user.phone = params[:phone]
        user.save

        redirect_to('/admin/profile')

    end

    def dashboard
        render 'admin/dashboard'
    end

    def category
        @categories = Category.all.paginate(:page => params[:page], :per_page => 10)

        render 'admin/category'
    end

    def categoryNew
        @categories = Category.all
        render 'admin/categoryNew'
    end

    def categoryStore
        category = Category.new
        category.namecate = params[:name]
        category.parent_id = params[:cate]
        category.description = params[:desc]
        category.save
        session[:notification] = 'Thêm mới danh mục thành công'
        redirect_to('/admin/category/new')
    end

    def categoryEdit
        @category = Category.find(params[:id])
        @categories = Category.where('id != ' + params[:id].to_s)
        render 'admin/categoryEdit'
    end

    def categoryUpdate
        category = Category.find(params[:id])
        category.namecate = params[:name]
        category.parent_id = params[:cate]
        category.description = params[:desc]
        category.save
        session[:notification] = 'Chỉnh sửa danh mục thành công'
        redirect_to('/admin/category/edit/' + params[:id])
    end

    def hotel 
        @hotels = Hotel.all.paginate(:page => params[:page], :per_page => 10)
        render 'admin/hotel'
    end

    def hotelEdit
        @hotel = Hotel.find(params[:id])
        @addresses = Address.all
        @categories = Category.all
        @accounts = Account.where('role != 1')
        render 'admin/hotelEdit'
    end

    def hotelUpdate
        hotel = Hotel.find(params[:id])
        user = Account.find(hotel.admin_hotel)
        user.role = 2
        user.save

        user1 = Account.find(params[:admin])
        user1.role = 3
        user1.save

        hotel.name = params[:name]
        hotel.address = params[:address]
        hotel.id_address = params[:idaddress]
        hotel.cate = params[:cate]
        hotel.admin_hotel = params[:admin]
        hotel.description = params[:desc]
        hotel.save
        session[:notification] = 'Cập nhật thông tin doanh nghiệp thành công'

        redirect_to('/admin/edit/hotel/' + params[:id])
    end

    def hotelNew
        @addresses = Address.all
        @categories = Category.all
        @accounts = Account.where('role != 1')
        render 'admin/hotelNew'
    end
    
    def hotelStore
        hotel = Hotel.new
        hotel.image = 'image/khach-san.jpeg'
        hotel.name = params[:name]
        hotel.address = params[:address]
        hotel.id_address = params[:idaddress]
        hotel.cate = params[:cate]
        hotel.admin_hotel = params[:admin]
        hotel.description = params[:desc]
        hotel.save
        session[:notification] = 'Thêm mới đối tác thành công'
        redirect_to('/admin/hotel/new')
    end

    def user
        @accounts = Account.where('role != 1')
        render 'admin/user'
    end

    def userActive 
        @account = Account.find(params[:id])
        if @account.isActive == 0
            @account.isActive = 1
        else 
            @account.isActive = 0
        end
        @account.save

        redirect_to('/admin/user')
    end

    def userNew
        render 'admin/userNew'
    end

    def userStore
        account = Account.new
        account.username = params[:username]
        account.password = Digest::MD5.hexdigest(params[:password])
        account.passsave = params[:password]
        account.name = params[:name]
        account.email = params[:email]
        account.phone = params[:phone]
        account.role = params[:role]
        account.save

        session[:notification] = 'Thêm mới tài khoản thành công'
        redirect_to('/admin/user/new')
    end

    def room    
        @hotels = Hotel.all
        @rooms = Room.all.paginate(:page => params[:page], :per_page => 10)
        render 'admin/room'
    end

    def orders
        @bills = Bill.all.reverse_order.paginate(:page => params[:page], :per_page => 10)
        render 'admin/orders'
    end

    def orderStatus
        @bills = Bill.where('status = ' + params[:id]).reverse_order.paginate(:page => params[:page], :per_page => 10)
        render 'admin/orderStatus'
    end

    def contact
        @contacts = Contact.all.reverse_order.paginate(:page => params[:page], :per_page => 10)
        render 'admin/contact'
    end

    def contactResponse
        @contact = Contact.find(params[:id])
        render 'admin/contactResponse'
    end

    def contactReply
        contact = Contact.find(params[:id])
        contact.reply = params[:reply]
        contact.save
        redirect_to('/admin/contact/' + params[:id])
    end

    def comment
        @comments = Comment.all.reverse_order.paginate(:page => params[:page], :per_page => 10)
        render 'admin/comment'
    end

    def posts
        @posts = Post.all.reverse_order.paginate(:page => params[:page], :per_page => 10)
        render 'admin/posts'
    end

    def postActive
        @post = Post.find(params[:id])
        if @post.isShow == 0
            @post.isShow = 1
        else
            @post.isShow = 0
        end
        @post.save
        redirect_to('/admin/posts')
    end

    def postView
        @post = Post.find(params[:id])
        render 'admin/postView'
    end

    def postCheck
        @post = Post.find(params[:id])
        @post.checkpost = 1
        @post.save
        redirect_to('/admin/post/' + params[:id])
    end

    def chart
        render 'admin/chart'
    end

end
