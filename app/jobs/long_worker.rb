class LongWorker
  include Sidekiq::Worker
  queue_as :long

  def perform(*_args)
    # Do something
    puts 'AMAR - Long - New QUeue'
    # User.create
    sleep(200)
    puts 'AMAR Long Queue'
    Rails.logger.info 'It works!'
  end
end
