class ConvertersController < ApplicationController
    
    def index
    end
    
    def convert
        @sentence = params[:sentence]
        @sentence_array = @sentence.split
        
        puts @sentence_array.to_s
        
        translator = Translator.new
        @output = translator.translate(@sentence_array)
        puts @output
        
        #redirect_to converters_convert_path
        
    end


end