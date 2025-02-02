class MyQueue
  def initialize()
    @que = []
  end

=begin
  :type x: Integer
  :rtype: Void
=end
  def push(x)
    @que << x
  end

=begin
  :rtype: Integer
=end
  def pop()
    @que.shift
  end

=begin
  :rtype: Integer
=end
  def peek()
    @que[0]
  end

=begin
  :rtype: Boolean
=end
  def empty()
    @que.empty?
  end
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
