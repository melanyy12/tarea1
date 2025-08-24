defmodule Util do
  @moduledoc """
  ## Módulo Util
  Este módulo se encarga de la comunicación entre Elixir y Java
  para mostrar mensajes y solicitar datos al usuario.
  """

  @doc """
  Muestra un mensaje usando una ventana emergente de Java.
  """
  def show_message(message, :string) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  @doc """
  Solicita un dato al usuario usando una ventana emergente de Java
  y retorna el resultado como cadena.

  """
  def input_data(data) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end
end
