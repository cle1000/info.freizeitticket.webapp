module SkiresortHelper
  def each_match(str)
    start = 0
    while matchdata = self.match(str, start)
      yield matchdata
      start = matchdata.end(0)
    end
  end
end
