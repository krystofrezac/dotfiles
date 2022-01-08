local U = require'snippets.utils'

local eelixir={
  req = [[local ${2:$1} = require '${1:ahoj}']];

  -- for
  fo = U.match_indentation
[[
<%= for ${1:item} <- ${2:@items} do %>
  ${0}    
<% end  %>
]];

  -- forms
  form = U.match_indentation
[[

<.form 
  let={f} 
  for={@${1:changeset}}  
  phx-submit="${2:submit}" 
  phx-change="${3:change}"
>
  ${0}
</.form>
]];

  su = U.match_indentation
[[
<%= submit "${1}" %>
${0}
]];

  la = U.match_indentation
[[
<%= label f, :${1} %>
${0}
]];

  et = U.match_indentation
[[
<%= error_tag f, :${1} %>
${0}
]];

  ni = U.match_indentation
[[
<%= number_input f, :${1} %>
${0}
]];


  ti = U.match_indentation
[[
<%= text_input f, :${1} %>
${0}
]];


  pi = U.match_indentation
[[
<%= password_input f, :${1} %>
${0}
]];
}

return eelixir
