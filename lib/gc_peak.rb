require 'gc_peak/version'
require 'json'

module GcPeak
  class GcPeak
    def initialize(app)
      @app = app

      @path = ENV['GC_PEAK_PATH'] || '/utils/gc_peak'
      end

    def call(env)
      if env['PATH_INFO'] == @path
        [200, { 'Content-Type' => 'application/json' }, [JSON.dump(GC.stat)]]
      else
        @app.call(env)
      end
    end
  end
end
require 'gc_peak/railtie' if defined? Rails
