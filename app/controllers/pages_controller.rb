
class PagesController < ApplicationController
    def home
      100.times {HardWorker.perform_async}
    end
  end
  