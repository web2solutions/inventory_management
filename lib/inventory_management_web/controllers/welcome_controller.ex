defmodule InventoryManagementWeb.WelcomeController do
  use InventoryManagementWeb, :controller

  alias InventoryManagement.Welcomer

  # action
  # actions always receive conn and params
  def index(conn, params) do
    params
    |> Welcomer.welcome()
    |> handle_response(conn)
  end


  #defp handle_response({:ok, message}, conn) do
  #  conn
  #  |> put_status(:ok) # 200
  #  |> json(%{message: message})
  #end
  defp handle_response({:ok, message}, conn), do: render_response(conn, message, :ok)

  #defp handle_response({:error, message}, conn) do
  #  conn
  #  |> put_status(:bad_request) # 400
  #  |> json(%{message: message})
  #end

  defp handle_response({:error, message}, conn), do: render_response(conn, message, :bad_request)

  defp render_response(conn, message, status) do
    conn
    |> put_status(status)
    |> json(%{message: message})
  end

end
