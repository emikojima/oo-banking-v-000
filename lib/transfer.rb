require 'pry'
class Transfer
 attr_accessor :sender, :receiver, :status, :amount
 def initialize(sender, receiver, amount)
   @sender = sender
   @receiver = receiver 
   @status = "pending"
   @amount = amount 
 end 
 
 def valid? 
   @receiver.valid? && @sender.valid?
    #binding.pry
 end 
 
 def execute_transaction
   binding.pry 
     else
    if !@sender.valid?
      @status = "Transaction rejected. Please check your account balance."
     
    receiver.deposit(@amount)
    sender.balance -= @amount 
    @status = "complete"
   
    
    end
  end 
 
end
