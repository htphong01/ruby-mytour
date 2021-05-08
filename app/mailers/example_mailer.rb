class ExampleMailer < ApplicationMailer
    default from: 'greenbook.vku@gmail.com'

    def sample_email bill
    @bill = Bill.last
    @room = Room.find(@bill.room)
    @hotel = Hotel.find(@bill.hotel)
    mail(:to => 'phonghopro2001@gmail.com', :subject => "Thông báo đơn đặt phòng tại MyTour.vn")
  end
end
