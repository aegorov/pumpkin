# encoding: UTF-8
module TransactionsHelper
	def show_status(status)
		case status
			when "send" 
				"<span class='label'>Отправлено</span>".html_safe
			when "received"
				"<span class='label success'>Получено</span>".html_safe
			when "use"
				"<span class='label warning'>Расходуется</span>".html_safe
			when "finish"
				"<span class='label important'>Израсходовано</span>".html_safe	
		end
	end
end
