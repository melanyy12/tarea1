defmodule Main do
  @moduledoc """
  ## Ejercicio 1: Eco de mensaje
  Este módulo recibe un mensaje desde Java, lo procesa en Elixir
  convirtiéndolo a mayúsculas, y luego retorna el resultado a Java.
  Autores: Melanyn Yate, Mauricio Perdomo 
  """

  @doc """
  Función principal:
  - Llama a `Util.input_data/1` para obtener un mensaje desde Java.
  - Convierte el mensaje a mayúsculas.
  - Lo muestra nuevamente usando `Util.show_message/2`.
  """
  def main() do
    Util.input_data("Ingrese un mensaje:")
    |> String.upcase()
    |> Util.show_message(:string)
  end
end

Main.main()
