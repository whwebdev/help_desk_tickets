get '/customers' do
  session[:user_id] = 4
  @tickets = current_user.tickets.sort_by { |ticket| ticket.updated_at }

  erb :customer_panel
end

