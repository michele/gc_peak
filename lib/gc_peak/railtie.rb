module GcPeak
  class Railtie < Rails::Railtie
    initializer 'gc_peak.insert_middleware' do |app|
      app.config.middleware.use ::GcPeak::GcPeak
    end
  end
end
