def current_user
  Customer.find(session[:user_id])
end

def all_categories
  Ticket.all.map(&:category).uniq
end
