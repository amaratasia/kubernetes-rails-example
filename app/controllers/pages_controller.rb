class PagesController < ApplicationController
  def home
    HardWorker.perform_async
    LongWorker.set(queue: "long#{((rand(200)+1) % 2)}").perform_async
  end
end
