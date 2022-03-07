class HardWorker
    include Sidekiq::Worker
    queue_as :queue_name_2
  
    def perform(*args)
      # Do something
      puts "AMAR -- New QUeue"
      User.create
      puts "AMAR"
      Rails.logger.info 'It works!'
    end
  end