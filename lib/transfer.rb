class Transfer
 attr_accessor :sender, :receiver, :pending
 def initialize(sender, receiver, amount)
   @sender = sender
   @receiver = receiver 
   @status = pending 
 end 
end
