module PostsHelper
  def not_printed?(year)
    @year ||= Array.new
    if @year.include?(year)
      return false
    else
      @year.push(year)
      return true
    end
  end
end
