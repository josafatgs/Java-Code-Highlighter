defmodule HighlightJavaCode do


def exec(str) do
      str
      |> to_charlist()
      |> :scan.string()
      |> elem(1)
      |> Enum.map(fn {token, cl} ->
        case token do

          :integer -> "<code style =\"color:blue\">#{cl}</code>"
          :identifier -> "<code style =\"color:magenta\">#{cl}</code>"
          :keyword -> "<code style =\"color:green\">#{cl}</code>"
          :hexa -> "<code style =\"color:orange\">#{cl}</code>"
          _-> to_string(cl)
        end
        end)
  end

  def read(file) do
     File.read!(file) |> to_charlist() |> :scan.string
  end

end
