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
  if self.valid?
    reciever.deposit(@amount)
  else
   
   "Transaction rejected. Please check your account balance."
 end 
 
end
