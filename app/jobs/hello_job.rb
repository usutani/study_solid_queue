class HelloJob < ApplicationJob
  queue_as :default

  def perform(*args)
    logger.info "*" * 100
  end
end
