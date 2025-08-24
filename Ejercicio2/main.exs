defmodule Main do
  @moduledoc """
  ## Ejercicio 2: Longitud de una palabra
  Este módulo recibe una palabra desde Java, calcula la cantidad de letras
  usando Elixir y retorna el número a Java.
   Autores: Melanyn Yate, Mauricio Perdomo 
  """

  @doc """
  Función principal:
  - Pide una palabra al usuario mediante `Util.input_data/1`.
  - Calcula la longitud con `String.length/1`.
  - Envía el resultado de vuelta a Java con `Util.show_message/2`.
  """
  def main() do
    Util.input_data("Ingrese una palabra:")
    |> String.length()
    |> Integer.to_string()
    |> Util.show_message(:string)
  end
end

Main.main()
