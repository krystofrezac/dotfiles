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
}

return eelixir
