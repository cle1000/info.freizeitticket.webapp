module ApplicationHelper
	def cmp (v, b = true)
		[v ? 0 : 1, (b ? v.to_i : -1 * v.to_i )]
	end

end
