class NotificationsWorker
  include Sidekiq::Worker

  def perform(visit_id)
    visit = Visit.find(visit_id)
    NotifierMailer.appointment_notification(visit)
  end
end



Visit.where("appointment > ? AND confirmation_sent = ?", Time.now-1.days, false)
