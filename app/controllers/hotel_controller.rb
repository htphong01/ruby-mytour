class HotelController < ApplicationController
    layout "hotel"

    def dashboard
        @hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        @rooms = Room.where('hotel = ' + @hotel.id.to_s).paginate(:page => params[:page], :per_page => 5)
        render 'hotel/dashboard'
    end

    def review
        @hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        @areas = Address.all
        render 'hotel/review'
    end

    def update
        hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        hotel.name = params[:name]
        hotel.address = params[:address]
        hotel.id_address = params[:idaddress]
        hotel.description = params[:desc]
        hotel.save
        redirect_to('/hotel/review')
    end

    def rooms
        @hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        @rooms = Room.where('hotel = ' + @hotel.id.to_s).paginate(:page => params[:page], :per_page => 5)
        render 'hotel/rooms'
    end

    def roomNew
        @hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        render 'hotel/roomNew'
    end

    def roomStore
        room = Room.new
        room.image = 'image/phong-khach-san.jpg'
        room.nameroom = params[:name]
        room.amount = params[:amount]
        room.price = params[:price]
        room.area = params[:area]
        room.discount = params[:discount]
        room.policy = params[:policy]
        room.breakfast = params[:breakfast]
        room.maximun = params[:maxium]
        room.typeroom = params[:type]
        room.direction = params[:direction]
        room.beds = params[:beds]
        room.description = params[:desc]
        room.status = params[:amount]
        room.hotel = session[:user]['id']

        if params[:discount].to_i <= 100
            room.final_price = params[:price].to_i - params[:price].to_i*params[:discount].to_i/100
        else
            room.final_price = params[:price].to_i - params[:discount].to_i
        end
        room.save

        session[:notification] = 'Thêm mới phòng thành công'
        redirect_to('/hotel/room/new')
    end

    def roomEdit
        @hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        @room = Room.find(params[:id])
        render 'hotel/roomEdit'
    end

    def roomUpdate
        room = Room.find(params[:id])
        room.nameroom = params[:name]
        room.amount = params[:amount]
        room.price = params[:price]
        room.image = 'image/Superiorking_beach.jpg'
        room.area = params[:area]
        room.discount = params[:discount]
        room.policy = params[:policy]
        room.breakfast = params[:breakfast]
        room.maximun = params[:maxium]
        room.typeroom = params[:type]
        room.direction = params[:direction]
        room.beds = params[:beds]
        room.description = params[:desc]
        room.status = params[:amount]

        if params[:discount].to_i <= 100
            room.final_price = params[:price].to_i - params[:price].to_i*params[:discount].to_i/100
        else
            room.final_price = params[:price].to_i - params[:discount].to_i
        end
        room.save

        session[:notification] = 'Chỉnh sửa thông tin phòng thành công'
        redirect_to('/hotel/room/' + params[:id] + '/edit')

    end

    def order
        @hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        @bills = Bill.where('hotel = ' + @hotel.id.to_s).reverse_order.paginate(:page => params[:page], :per_page => 10)
        render 'hotel/orders'
    end

    def orderStatus
        @hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        @bills = Bill.where('hotel = ' + @hotel.id.to_s).where('status = ' + params[:id]).reverse_order.paginate(:page => params[:page], :per_page => 10)
        render 'hotel/orderStatus'
    end

    def orderConfirm
        @hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        @bills = Bill.where('hotel = ' + @hotel.id.to_s).where('status = 1 or status = 5').reverse_order.paginate(:page => params[:page], :per_page => 10)

        render 'hotel/orderConfirm'
    end

    def orderConfirmActive
        bill = Bill.where('id = ' + params[:id]).first
        if bill.status.to_i == 1
            bill.status = 2
        else
            bill.status = 6
        end
        bill.save
        redirect_to('/hotel/order/confirm')
    end

    def orderUpdate
        @hotel = Hotel.where('admin_hotel = ' + session[:user]['id'].to_s).first
        if params[:status].to_i == 1
            @bills = Bill.where('hotel = ' + @hotel.id.to_s).where('status > 1 and status < 5').reverse_order.paginate(:page => params[:page], :per_page => 10)
        else
            @bills = Bill.where('hotel = ' + @hotel.id.to_s).where('status = ' + params[:status].to_s).reverse_order.paginate(:page => params[:page], :per_page => 10)
        end
        @statuses = Status.where('id >= ? and id < 5', params[:status].to_s)
        render 'hotel/orderUpdate'
    end

    def orderUpdateStatus
        bill = Bill.find(params[:id])
        bill.status = params[:status]
        bill.save
        redirect_to('/hotel/order')
    end
end
