class TicketMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.new_ticket.subject
  #
  def new_ticket(ticket)
    @ticket = ticket


    mail to: "jameschuang13@gmail.com", subject: 'New Ticket: #' + ticket.id.to_s
  end
end
