local elixir={
  req = [[local ${2:$1} = require '${1:ahoj}']];

  -- component
  co = 
[[
defmodule ${1}Web.Live.${2}do
  use Phoenix.Component
end
]];

  -- live component
  lc = 
[[
defmodule ${1}Web.Live.${2} do
  use ${-1:$1}, :live_component

  ${0}
end
]];

  -- update
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
]];

  -- handle event
  he=
[[
  @impl true
  def handle_event(${1:event}, ${2:params}, socket) do
    ${0}
  end
]];
}

return elixir
