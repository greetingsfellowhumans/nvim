defmodule NameTest do
  _status = :wip

  use ExUnit.Case
  use ExUnitProperties
  import StreamData
  alias Name
  doctest Name

  def defname(x) do
    if x < 50 do
      "Nope!"
    end
  end

  property "" do
    check all list <- list_of(integer()), # Generate a list. integer/1 comes from ExUnitProperties via StreamData
              list != [],                 # Apply filters to the list like so
              elem <- member_of(list) do  # Assign with <-
      assert defname(elem) == nil
    end
  end

end
