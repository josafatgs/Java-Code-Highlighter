defmodule HighlightJavaCode do

  def time(funtionName,argument) do
    {tiempo, resultado} = :timer.tc(__MODULE__,String.to_atom(funtionName), [argument])
    IO.puts "La función exec tardó #{tiempo} microsegundos en ejecutarse y devolvió #{resultado}."
  end

  #HighlightJavaCode.exec("Hola.java")

  def exec(fileName) do
    data = File.read!(fileName) |> to_charlist() |> :scan.string

    # Construir una cadena a partir de los datos
    string_data = for {type, _, value} <- elem(data, 1) do
      case type do
        :reservedKeyword ->
          "<code style =\"color:#0baaa2\">#{value}</code>"
        :contextualKeyword ->
          "<code style =\"color:blue\">#{value}</code>"
        :string ->
          "<code style =\"color:#3bbc00\">#{value}</code>"
        :separators ->
          "<code style =\"color:white\">#{value}</code>"
        :inlineComment ->
          "<code style =\"color:#006c43\">#{value}</code>"
        :bool ->
          "<code style =\"color:#b58912\">#{value}</code>"
        :null ->
          "<code style =\"color:#b58912\">#{value}</code>"
        :multiLineComment ->
          "<code style =\"color:#006c43\">#{value}</code>"
        :+ ->
          "<code style =\"color:#759900\">#{value}</code>"
        :- ->
          "<code style =\"color:#759900\">#{value}</code>"
        :* ->
          "<code style =\"color:#759900\">#{value}</code>"
        :/ ->
          "<code style =\"color:#759900\">#{value}</code>"
        := ->
          "<code style =\"color:#759900\">#{value}</code>"
        :% ->
          "<code style =\"color:#759900\">#{value}</code>"
        :< ->
          "<code style =\"color:#759900\">#{value}</code>"
        :> ->
          "<code style =\"color:#759900\">#{value}</code>"
        :! ->
          "<code style =\"color:#759900\">#{value}</code>"
        :& ->
          "<code style =\"color:#759900\">#{value}</code>"
        :| ->
          "<code style =\"color:#759900\">#{value}</code>"
        :^ ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'?' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'+=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'++' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'--' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'-=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'*=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'/=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'%=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'&=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'|=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'^=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'==' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'<<' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'~' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'>>' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'>>>' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'<<=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'>>=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'>>>=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'->' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'>=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'<=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'!=' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'&&' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :'||' ->
          "<code style =\"color:#759900\">#{value}</code>"
        :identifier ->
          "<code style =\"color:#7c8c92\">#{value}</code>"
        :space ->
          "<code>#{value}</code>"
        :float ->
          "<code style =\"color:#3affff\">#{value}</code>"
        :integer ->
          "<code style =\"color:#3affff\">#{value}</code>"
        :character ->
          "<code style =\"color:#3affff\">#{value}</code>"
        _ ->
          "<code style =\"color:red\">#{value}</code>"
      end
    end
    |> Enum.join

    result = "<html><head><title>#{fileName}</title></head><body style=\"background-color:#081420;\"><pre>#{string_data}</pre></body></html>"

    # Escribir la cadena en un archivo
    File.write("Resultado.html", result)
  end



end
