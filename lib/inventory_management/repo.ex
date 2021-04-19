defmodule InventoryManagement.Repo do
  use Ecto.Repo,
    otp_app: :inventory_management,
    adapter: Ecto.Adapters.Postgres
end
