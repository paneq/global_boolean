module GlobalBoolean

  def self.Boolean(b)
    return b if b.nil? || b == true || b == false
    case b
    when /^1$/, /^true$/i , /^yes$/i then true
    when /^0$/, /^false$/i , /^no$/i then false
    else
      raise ArgumentError, "Unknown conversion to boolean type from: #{b.class}, Inspect: #{b.inspect}"
    end
  end

  def self.kernel!
    Kernel.module_eval do
      def Boolean(v)
        ::GlobalBoolean.Boolean(v)
      end
    end
  end

end
