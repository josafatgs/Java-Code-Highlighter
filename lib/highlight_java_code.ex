defmodule HighlightJavaCode do

  def exec(fileName) do
    data = File.read!(fileName) |> to_charlist() |> :scan.string

    # Construir una cadena a partir de los datos
    string_data = for {type, _, value} <- elem(data, 1) do
      case type do
        :reservedKeyword ->
          value
        :contextualKeyword ->
          value
        :string ->
          value
        :separators ->
          value
        :inlineComment ->
          value
        :snippet ->
          value
        :bool ->
          value
        :blockComment ->
          value
        :+ ->
          value
        :- ->
          value
        :* ->
          value
        :/ ->
          value
        := ->
          value
        :identifier ->
          value
        :space ->
          value
        :float ->
          value
        :operators ->
          value
        _ ->
          value
      end
    end
    |> Enum.join

    # Escribir la cadena en un archivo
    File.write("Resultado.txt", string_data)
  end


  # def exec(str) do
  #     str
  #     |> to_charlist()
  #     |> :lexer.string()
  #     |> elem(1)
  #     |> Enum.map(fn {token, cl} ->
  #       case token do

  #         :integer -> "<code style =\"color:blue\">#{cl}</code>"
  #         :identifier -> "<code style =\"color:magenta\">#{cl}</code>"
  #         :keyword -> "<code style =\"color:green\">#{cl}</code>"
  #         :hexa -> "<code style =\"color:orange\">#{cl}</code>"
  #         _-> to_string(cl)
  #       end
  #       end)
  # end


end
