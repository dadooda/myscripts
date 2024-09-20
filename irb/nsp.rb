
#
# Provide `obj.nsp` and `obj.nsp!` for precise method inspection.
#

module Nsp
  # @param [Symbol | String | nil] meth Method to be called on M-method result.
  def nsp(meth = nil, *args, &block)
    _nsp(true, meth, *args, &block)
  end

  # @param [Symbol | String | nil] meth Method to be called on M-method result.
  def nsp!(meth = nil, *args, &block)
    _nsp(false, meth, *args, &block)
  end

  private

  # @param [Boolean] tf Argument of each M-method call.
  # @param [Symbol | String | nil] meth Method to be called on M-method result.
  def _nsp(tf, meth = nil, *args, &block)
    ### Colors. ###

    c = -> (code) { "\e[#{code}m" }
    ch = c.("1;33")   # Heading.
    cm = c.("33")     # Method.
    cre = c.("31")    # Result, error.
    cro = c.("32")    # Result, ok.
    z = c.("0")       # Reset. Same for all.

    # Incorrect call? Show help.
    if !meth
      puts <<-EOT
#{ch}USAGE: <obj>.nsp(<meth>, [...args])#{z}

#{ch}EXAMPLES:#{z}

* Class.nsp :grep, /inst/
* "".nsp! :grep, //
* {}.nsp! :grep, //

EOT
      return nil
    end

    mmeths = methods.grep(/methods$/).sort

    mmeths.each_with_index do |mm, i|
      puts "#{cm}#{i + 1}. #{mm}#{z}"

      # Call M-method, get an array of method names as Symbol.
      ar = case mm
      when :undefined_instance_methods
        # У этого нет аргумента.
        public_send(mm)
      else
        public_send(mm, tf)
      end.sort

      # Process the array, print informative result.
      begin
        res = ar.public_send(meth, *args, &block)
        puts "#{cro}#{res.inspect}#{z}"
      rescue => e
        puts "#{cre}#{e.inspect}#{z}"
      end

      # Separate report lines, separate entire output.
      puts
    end # mmeths.each

    nil
  end
end

class Object
  include Nsp
end
