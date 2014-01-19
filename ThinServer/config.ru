require 'rack'
class Hash
  def to_a
    str_arr = []
    self.each_pair { |key,value|
      str_arr << "#{key} => #{value}</br>"
    }
    str_arr.sort
  end
end
response = ->(env){
  [200, {'Content-Type'=>'text/html'},env.to_a]
}

run response

