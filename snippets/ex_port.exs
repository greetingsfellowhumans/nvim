_defname_status = :wip
@contract defname(spec(fn _ -> true end)) :: spec(is_nil())
@doc """
[] - Write doctests
[] - Write docs
[] - Write types
[] - Fix warnings

## Examples

    iex> Name.defname(123)
    nil
"""
def defname(_), do: nil
