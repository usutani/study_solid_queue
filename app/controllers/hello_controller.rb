class HelloController < ApplicationController
  def index
    HelloJob.set(wait_until: Time.current + 3.seconds).perform_later
    head :ok
  end
end
