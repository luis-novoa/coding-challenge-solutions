class MedianFinder

  =begin
      initialize your data structure here.
  =end
      attr_accessor :array
      def initialize()
          @array = []
      end
  
  
  =begin
      :type num: Integer
      :rtype: Void
  =end
      def add_num(num)
          
          return @array.push(num) if @array.empty?
          
          p @array
          @array.each_with_index do |e, i|
              p i
              @array = [*@array[0..i], num, *@array[i+1...@array.size] ] if @array[i+1].nil? || num > @array[i+1] 
          end
          p @array
          p '-----'
      end
  
  
  =begin
      :rtype: Float
  =end
      def find_median()
          
      end
  
  
  end
  
  # Your MedianFinder object will be instantiated and called as such:
  # obj = MedianFinder.new()
  # obj.add_num(num)
  # param_2 = obj.find_median()