-- hookup source from http://wowwiki.wikia.com/wiki/Talk:API_SetWhoToUI

local OrigWhoList_Update = WhoList_Update

function WhoList_Update()
    OrigWhoList_Update()
	local numWhos, totalCount = GetNumWhoResults()
	local displayedText = ""
	if numWhos >= 49 then 
		WhoFrameTotals:SetText(format(GetText("WHO_FRAME_TOTAL_TEMPLATE", nil, totalCount), totalCount).."  ".."(49+ found)")
	else
		displayedText = format(WHO_FRAME_SHOWN_TEMPLATE, numWhos)
		WhoFrameTotals:SetText(format(GetText("WHO_FRAME_TOTAL_TEMPLATE", nil, totalCount), totalCount).."  "..displayedText)
	end
end