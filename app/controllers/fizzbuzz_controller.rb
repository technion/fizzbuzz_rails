class FizzbuzzController < ApplicationController
  def run
    fbstring = []
    1.upto(100) do |n|
      case
        when (n % 3 == 0) && (n % 5 == 0)
          fbstring <<  { :fb => "Fizzbuzz" }
        when (n % 3 == 0)
          fbstring << { :fb => "Fizz" }
        when (n % 5 == 0)
          fbstring << { :fb => "Buzz"}
        else
          fbstring << { :fb => n.to_s } 
      end
    end

    render json: fbstring
  end

end
