class Notifier < ActionMailer::Base
  default from: "colinsmix@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.appointment_notification.subject
  #
  def appointment_notification(visit)
    mail( :to => visit.pet.user.email,
    :subject => "Appointment for #{visit.pet.name} on #{visit.appointment.to_formatted_s(:long_ordinal)}" )
  end
end
