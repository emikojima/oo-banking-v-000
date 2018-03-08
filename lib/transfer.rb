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
 end 
 
 def execute_transaction
   if self.valid? && status == "pending"
    @sender.balance -= amount 
    @receiver.deposit(amount)
    @status = "complete"
    else
    @status = "Transaction rejected. Please check your account balance."
    end 
  end 
 
 def reverse_transfer
   
 end 
end
