local colors = require('./colors')

local ui = {
    background = colors.nightSurface,
    backgroundDarker = colors.nightDarkerSurface,
  
    currentLineGutter = colors.white,
    activeCursorLine = colors.nightLighterSurface,
    gutterBg = colors.nightSurface, 
    lineGutter = colors.mute,
  
    statusBg = colors.nightLighterSurface,
    statusNotFocusBg = colors.nightSurface,
  
    pMenu = colors.nightDarkerSurface,
    pMenuSel = colors.nightLighterSurface,
}

return editor