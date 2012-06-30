require 'rspec'

class Number
	def self.isHappy it, num

		return "Happy number!" if num == 1
		return "I'm not sure!" if it == 0
		return "Unhappy number!" if num.to_s.length == 1

		happy = 0
		num.to_s.each_char { |n|  happy += n.to_i ** 2 }

		isHappy it-1, happy
	end
end

# Test
 describe "Number.isHappy" do
 	
 	it "Return 'Happy number' if number is '1' 
 		and no matter number of iterations" do

 		Number.isHappy(1,1).should == "Happy number!"
 		Number.isHappy(5,1).should == "Happy number!"
 		Number.isHappy(50,1).should == "Happy number!"
 		Number.isHappy(500,1).should == "Happy number!"
 	end

 	it "Return 'Unhappy number' if number have one digit, 
 		is not number '1' and no matter number of iterations" do

 		Number.isHappy(1,2).should == "Unhappy number!"
 		Number.isHappy(5,6).should == "Unhappy number!"
 		Number.isHappy(50,8).should == "Unhappy number!"
 		Number.isHappy(500,9).should == "Unhappy number!"
 	end
 end