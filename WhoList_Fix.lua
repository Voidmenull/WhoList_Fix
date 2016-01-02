-- hookup source from http://wowwiki.wikia.com/wiki/Talk:API_SetWhoToUI

local OrigWhoList_Update = WhoList_Update

function WhoList_Update()
  if (not SWALLOW_NEXT_WHO) then
    OrigWhoList_Update()
	local numWhos, totalCount = GetNumWhoResults()
	local displayedText = ""
	if numWhos >= 49 then 
		displayedText = format(WHO_FRAME_SHOWN_TEMPLATE, numWhos)
		WhoFrameTotals:SetText(format(GetText("WHO_FRAME_TOTAL_TEMPLATE", nil, totalCount), totalCount).."  ".."(49+ displayed)")
	else
		displayedText = format(WHO_FRAME_SHOWN_TEMPLATE, numWhos)
		WhoFrameTotals:SetText(format(GetText("WHO_FRAME_TOTAL_TEMPLATE", nil, totalCount), totalCount).."  "..displayedText)
	end
  end
end