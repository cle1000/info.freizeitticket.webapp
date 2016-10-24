module ApplicationHelper
	def cmp (v, b = true)
		[v ? 0 : 1, (b ? v.to_i : -1 * v.to_i )]
	end

	def each_match(str)
	  	start = 0
	    while matchdata = self.match(str, start)
	    	yield matchdata
	      	start = matchdata.end(0)
	    end
	end

  	def strip_tags(text)
  		text.gsub(/<[^>]*>/ui,'')
  	end
end
