module ThreadedRspec
  class ExampleGroupRunner < Spec::Runner::ExampleGroupRunner
    def initialize(options, thread_count)
      super(options)
      @options = options
      @thread_count = thread_count.to_i

#      parser = OptionParser.new do |p|
#        p.on('--thread-count N', Integer,
#             'Number of concurrent threads.') do |n|
#          @thread_count = n
#        end
#      end
#      parser.parse!(options.argv)
    end

    def run
      prepare
      queue = Queue.new
      example_groups.each{|b| queue << b}

      success = true
      threads = []
      @thread_count.times do
        threads << Thread.new(queue, @options) do |q, opts|
          while !q.empty?
            success &= q.pop.run(opts)
          end
        end
      end
      threads.each{|t| t.join}

      success
    ensure
      finish
    end
  end
end
