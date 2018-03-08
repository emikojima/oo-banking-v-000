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
   sender.balance -= amount 
   receiver.deposit(amount)
   status = "complete"
  else
   
    
    end
  end 
 
end
