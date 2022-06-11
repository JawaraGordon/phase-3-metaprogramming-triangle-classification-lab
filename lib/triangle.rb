class Triangle
  # write code here
    attr_reader :a, :b, :c

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end


    def kind
      if !self.a.positive? || !self.b.positive? || !self.c.positive? 
          raise TriangleError
      end

      if a + b <= c || a + c <= b || b + c <= a 
        raise TriangleError
      end

      if a == b && b == c
        :equilateral
       elsif a == b || b == c || a == c
         :isosceles
       else
         :scalene
        end
       end
       class TriangleError < StandardError
       end
      end
  
    
   