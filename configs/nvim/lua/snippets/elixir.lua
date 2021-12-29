local elixir={
  -- component
  co = 
[[
defmodule ${1}Web.${2}Live.${3} do
  @moduledoc false

  use ${1}Web, :component 

  ${0}
end
]];

  -- live view
  lv =
[[
defmodule ${1}Web.${2}Live.${3} do
  @moduledoc false

  use ${-1:$1}Web, :live_view
  
  ${0}
end
]];

  -- live component
  lc = 
[[
defmodule ${1}Web.${2}Live.${3} do
  @moduledoc false

  use ${-1:$1}Web, :live_component

  ${0}
end
]];

  -- mount
  mo = 
[[
  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    ${0}

    {:ok, socket}
  end
]];

  -- update
  up = 
[[
  @impl Phoenix.LiveView
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
  @impl Phoenix.LiveView
  def handle_event(${1:":event"}, ${2:params}, socket) do
    ${0}
    
    {:noreply, socket}
  end
]];
}

return elixir
