class SayHello
  include Hyperstack::Component
  param :name
  render(DIV) do
    "Hello there #{@name}"
  end
end
