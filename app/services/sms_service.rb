class SmsService
  def initialize(phone_number)
    @phone_number = phone_number
  end

  def send_msg(text = "")
    #.......
    puts "---" * 20
    puts "send #{text} to #{@phone_number}!!"
    puts "---" * 20
  end
end
