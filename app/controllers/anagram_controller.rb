class AnagramController < ApplicationController
  def check
  	@first_word = params[:first]
    @second_word = params[:second]
        
      if @first_word.to_s.length.eql? @second_word.to_s.length
        @result="Not Anagram"
      elsif @first_word.to_s.downcase.chars.sort.join.eql? @second_word.to_s.downcase.chars.sort.join
      	@result= "Anagram";
      else
          @result= "Not Anagram";
      end
      if @first_word.nil?
          @result="No Entry";
      end
  end
end


  