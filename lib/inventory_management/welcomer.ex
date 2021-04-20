defmodule InventoryManagement.Welcomer do

  # receber um nome e idade do usuario
  # se o usuario chamar banana e tiver idade 42 ele recebe uma msg especial
  # se o usuario for maior de idade ele recebe uma mensagem normal
  # se o usuario for menor de idade retornamos um erro
  # temos que tratar o nome do usuario para entrada erradas como BaNaNa, "BaNaNa  \n"



   # recompile ....

    # map = %{a: 1, b: 2}
    # map.a AND map[a]
    # map = %{"a" => 1, "b" => 2}
    # map["a"]
    # Map.get(map, "a") usando modulo built in Map

    # name  = params["name"]
    # name = String.trim(name)
    # name = String.downcase(name)

  #def welcome(params) do
  def welcome(%{"name" => name, "age" => age}) do


    # age = params["age"] |> String.to_integer()
    age = String.to_integer(age)
    # name =
    #   params["name"]
    #   |> String.trim()
    #   |> String.downcase()

    # if name == "banana" and age == "42" do
    #   IO.puts("You are very especial banana")
    # else
    #   IO.puts("You are not especial")
    # end

    # IO.inspect(name)
    # IO.inspect(age)



    #params["name"]
    name
      |> String.trim()
      |> String.downcase()
      |> evaluate(age)

    # retorna pro terminal
  end

  # private
  # if there is match it will be executed, if  not, goes to next
  defp evaluate("banana", 42) do
    {:ok, "You are very especial banana"}
  end


  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}"}
  end

  defp evaluate(name, _age) do
    {:error, "You shall not pass #{name}"}
  end
end
