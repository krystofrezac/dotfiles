local U = require'snippets.utils'

local elixir={
  req = [[local ${2:$1} = require '${1:ahoj}']];
  lc = 
[[
defmodule ${1}Web.${2} do
  use ${-1:$1}, :live_component

  ${0}
end
]];

  up = 
[[
  @impl true
  @spec update(%{}, Phoenix.LiveView.Socket.t()) :: {:ok, Phoenix.LiveView.Socket.t()}
  def update(assigns, socket) do
    {
      :ok,
      socket
      |> assign(assigns)
    }
  end

  ${0}
]]
}

return elixir
