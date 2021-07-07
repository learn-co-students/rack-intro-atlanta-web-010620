require 'rack' 

class MyServer 
    def call(env) 
        return [ 200, {'Content-Type' => 'text/html'}, introduce ]
    end

    def pretty_response 
        (Time.now.to_i % 2).zero? ? ["<em>hello</em>"] : ["<strong>hello</strong>"]
    end

    def introduce 
        return ["Hello, my name is"]
    end 
end

