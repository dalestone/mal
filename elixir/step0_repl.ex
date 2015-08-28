defmodule Step0Repl do
  def main do
    IO.write(:stdio, "user> ")
    IO.read(:stdio, :line)
      |> handle_line
      
    main
  end

  defp handle_line(:eof), do: exit(0)
  defp handle_line(line) do
    IO.write(:stdio, read_eval_print(line))
  end

  def read(input) do
    input
  end

  def eval(input) do
    input
  end

  def print(input) do
    input
  end

  def read_eval_print(line) do
    read(line)
      |> eval
      |> print
  end
end

Step0Repl.main
