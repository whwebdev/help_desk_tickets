get '/tickets/:id' do
  @ticket = Ticket.find(params[:id])
  erb :"tickets/show"
end
