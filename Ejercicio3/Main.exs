defmodule Main do
  @moduledoc """
  ## Ejercicio 3: Cálculo de salario neto
  Este módulo recibe los datos de un empleado desde Java (nombre, horas trabajadas,
  valor por hora), calcula el salario neto con las reglas dadas y retorna el resultado
  como mensaje a Java.
   Autores: Melanyn Yate, Mauricio Perdomo 
  """

  @doc """
  Función principal:
  - Solicita al usuario nombre, horas trabajadas y valor por hora mediante `Util.input_data/1`.
  - Calcula el salario neto (considerando horas extra al 125%).
  - Devuelve el resultado como mensaje a Java.
  """
  def main() do
    nombre = Util.input_data("Ingrese el nombre del empleado:")
    horas_trabajadas = Util.input_data("Ingrese las horas trabajadas:") |> String.to_integer()
    valor_hora = Util.input_data("Ingrese el valor por hora:") |> String.to_integer()

    salario_base =
      if horas_trabajadas > 160 do
        # Salario base (160 horas normales)
        160 * valor_hora
      else
        horas_trabajadas * valor_hora
      end

    horas_extra =
      if horas_trabajadas > 160 do
        (horas_trabajadas - 160) * valor_hora * 1.25
      else
        0
      end

    salario_neto = salario_base + horas_extra

    mensaje = "El salario neto de #{nombre} es: $#{salario_neto}"

    Util.show_message(mensaje, :string)
  end
end

Main.main()
