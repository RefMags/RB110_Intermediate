def arithmentic
	num1, num2 = %w[first second].map do |indx|
		puts "==> Enter the #{indx} number:"
		gets.chomp.to_i
	end

	%w(+ - * / % **).each do |op|
		puts equation = "#{num1} #{op} #{num2}"
    # puts "==> #{equation} = #{eval(equation) rescue 'Infinity'}"
  end
end

arithmentic
