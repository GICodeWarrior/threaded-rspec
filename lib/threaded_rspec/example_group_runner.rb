module ThreadedRspec
  class ExampleGroupRunner < Spec::Runner::ExampleGroupRunner
    def initialize(options, thread_count)
      super(options)
      @options = options
      @thread_count = thread_count.to_i
    end

    def run
      prepare
      queue = Queue.new
      example_groups.each{|g| queue << g}

      success = true
      threads = []
      @thread_count.times do
        threads << Thread.new do
          success &= queue.pop.run(@options) while !queue.empty?
        end
      end
      threads.each{|t| t.join}

      success
    ensure
      finish
    end
  end
end
