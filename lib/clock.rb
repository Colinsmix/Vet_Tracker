require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork
  handler do |job|
    puts "Running #{job}"
  end

  # handler receives the time when job is prepared to run in the 2nd argument
  # handler do |job, time|
  #   puts "Running #{job}, at #{time}"
  # end
  every(1.hour, 'hourly.job'){
    visits = Visit.where("appointment > ? AND confirmation_sent = ?", Time.now-1.days, false)
    visits.each do |visit|
      NotifierMailer.appointment_notification(visit)
      visit.confirmation_sent = true
      visit.save
    end
  }
end
