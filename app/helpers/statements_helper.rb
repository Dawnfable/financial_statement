module StatementsHelper

  def statement_toggler statement
    if statement.pending? 
     link_to 'Pending', toggle_status_statement_path(statement) 
    elsif statement.completed? 
     link_to 'Completed', toggle_status_statement_path(statement) 
   end 
 end
end
