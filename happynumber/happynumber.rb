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
 	
 	it "Return 'Happy number!' if number is '1' 
 		and no matter number of iterations" do

 		Number.isHappy(1,1).should == "Happy number!"
 		Number.isHappy(5,1).should == "Happy number!"
 		Number.isHappy(50,1).should == "Happy number!"
 		Number.isHappy(500,1).should == "Happy number!"
 	end

 	it "Return 'Unhappy number!' if number have one digit, 
 		is not number '1' and no matter number of iterations" do

 		Number.isHappy(1,2).should == "Unhappy number!"
 		Number.isHappy(5,6).should == "Unhappy number!"
 		Number.isHappy(50,8).should == "Unhappy number!"
 		Number.isHappy(500,9).should == "Unhappy number!"
 	end

 	it "Return 'Happy number!'to the following examples" do

 		Number.isHappy(6,899).should == "Happy number!"
		Number.isHappy(7,888).should == "Happy number!"
		Number.isHappy(8,566).should == "Happy number!"
		Number.isHappy(9,478).should == "Happy number!"
		Number.isHappy(10,19).should == "Happy number!"
		Number.isHappy(15,23).should == "Happy number!"
		Number.isHappy(20,44).should == "Happy number!"
 	end

 	it "Return 'Happy number!' if number is '899' and number of 
 		iterations is greater than or equal to 6" do

 		Number.isHappy(6,899).should == "Happy number!"
 		Number.isHappy(8,899).should == "Happy number!"
 		Number.isHappy(50,899).should == "Happy number!"
 	end

 	it "Return 'I'm not sure!' if number is '899' and number of 
 		iterations is less than 6" do

 		Number.isHappy(5,899).should == "I'm not sure!"
 		Number.isHappy(4,899).should == "I'm not sure!"
 		Number.isHappy(3,899).should == "I'm not sure!"
 		Number.isHappy(2,899).should == "I'm not sure!"
 	end
 end