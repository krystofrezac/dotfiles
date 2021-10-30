local elixir={
  req = [[local ${2:$1} = require '${1:ahoj}']];

  -- component
  co = 
[[
defmodule ${1}Web.Live.${2}do
  use Phoenix.Component

  ${0}
end
]];

  -- live view
  lv =
[[
defmodule ${1}Web.Live.${2} do
  use ${-1:$1}Web, :live_view
  
  ${0}
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

  -- mount
  mo = 
[[
  @impl true
  def mount(_params, _session, socket) do
    ${0}

    {:ok, socket}
  end
]];

  -- update
  up = 
[[
  @impl true
  @spec update(%{}, Phoenix.LiveView.Socket.t()) :: {:ok, Phoenix.LiveView.Socket.t()}
  def update(assigns, socket) do
    ${0}

    {
      :ok,
      socket
      |> assign(assigns)
    }
  end

]];

  -- handle event
  he =
[[
  @impl true
  def handle_event(${1:":event"}, ${2:params}, socket) do
    ${0}
    
    {:noreply, socket}
  end
]];
}

return elixir
