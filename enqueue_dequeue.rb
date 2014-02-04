@stack1 = []
@stack2 = []

def enqueue(item)
  @stack1.push(item)
end

def dequeue()
  if @stack2.empty?
    @stack1.size.times { @stack2 << @stack1.pop }
    @stack2.pop
  else
    @stack2.pop
  end
end