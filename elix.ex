defmodule Elix do

  def somfun(a, b) do
    case a do
      1 -> "Whoa"
      _ -> b
    end
  end

  @doc """
  SNIPPETS: Call these from insert mode

  Leader + m = %{}
  Leader + io = IO.inspect(, label: "")
  Leader + t = <%=  %>

  """

end
