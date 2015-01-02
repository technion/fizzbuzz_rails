class FizzbuzzController < ApplicationController
  def run
    fbstring = []
    1.upto(100) do |n|
      case
        when (n % 3 == 0) && (n % 5 == 0)
          fbstring <<  { :key => n, :fb => "Fizzbuzz" }
        when (n % 3 == 0)
          fbstring << { :key => n, :fb => "Fizz" }
        when (n % 5 == 0)
          fbstring << { :key => n, :fb => "Buzz"}
        else
          fbstring << { :key => n, :fb => n.to_s } 
      end
    end

    render json: fbstring
  end

end
