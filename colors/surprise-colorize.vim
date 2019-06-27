" Name: The surprisingly variable colorscheme that always changes
" Author: Nino Annighoefer
" URL: https://github.com/nino/surprise-colorize
" License: CC-0

let g:colors_name = "surprise-colorize"

set background=dark

let s:allMyColors = {
      \  'Black': { 'term': 0, 'gui': '#000000' },
      \  'Maroon': { 'term': 1, 'gui': '#800000' },
      \  'Green': { 'term': 2, 'gui': '#008000' },
      \  'Olive': { 'term': 3, 'gui': '#808000' },
      \  'Navy': { 'term': 4, 'gui': '#000080' },
      \  'Purple': { 'term': 5, 'gui': '#800080' },
      \  'Teal': { 'term': 6, 'gui': '#008080' },
      \  'Silver': { 'term': 7, 'gui': '#c0c0c0' },
      \  'Grey': { 'term': 8, 'gui': '#808080' },
      \  'Red': { 'term': 9, 'gui': '#ff0000' },
      \  'Lime': { 'term': 10, 'gui': '#00ff00' },
      \  'Yellow': { 'term': 11, 'gui': '#ffff00' },
      \  'Blue': { 'term': 12, 'gui': '#0000ff' },
      \  'Fuchsia': { 'term': 13, 'gui': '#ff00ff' },
      \  'Aqua': { 'term': 14, 'gui': '#00ffff' },
      \  'White': { 'term': 15, 'gui': '#ffffff' },
      \  'Grey0': { 'term': 16, 'gui': '#000000' },
      \  'NavyBlue': { 'term': 17, 'gui': '#00005f' },
      \  'DarkBlue': { 'term': 18, 'gui': '#000087' },
      \  'Blue3': { 'term': 19, 'gui': '#0000af' },
      \  'Blue2': { 'term': 20, 'gui': '#0000d7' },
      \  'Blue1': { 'term': 21, 'gui': '#0000ff' },
      \  'DarkGreen': { 'term': 22, 'gui': '#005f00' },
      \  'DeepSkyBlue7': { 'term': 23, 'gui': '#005f5f' },
      \  'DeepSkyBlue6': { 'term': 24, 'gui': '#005f87' },
      \  'DeepSkyBlue5': { 'term': 25, 'gui': '#005faf' },
      \  'DodgerBlue3': { 'term': 26, 'gui': '#005fd7' },
      \  'DodgerBlue2': { 'term': 27, 'gui': '#005fff' },
      \  'Green4': { 'term': 28, 'gui': '#008700' },
      \  'SpringGreen6': { 'term': 29, 'gui': '#00875f' },
      \  'Turquoise4': { 'term': 30, 'gui': '#008787' },
      \  'DeepSkyBlue4': { 'term': 31, 'gui': '#0087af' },
      \  'DeepSkyBlue3': { 'term': 32, 'gui': '#0087d7' },
      \  'DodgerBlue1': { 'term': 33, 'gui': '#0087ff' },
      \  'Green3': { 'term': 34, 'gui': '#00af00' },
      \  'SpringGreen5': { 'term': 35, 'gui': '#00af5f' },
      \  'DarkCyan': { 'term': 36, 'gui': '#00af87' },
      \  'LightSeaGreen': { 'term': 37, 'gui': '#00afaf' },
      \  'DeepSkyBlue2': { 'term': 38, 'gui': '#00afd7' },
      \  'DeepSkyBlue1': { 'term': 39, 'gui': '#00afff' },
      \  'Green2': { 'term': 40, 'gui': '#00d700' },
      \  'SpringGreen4': { 'term': 41, 'gui': '#00d75f' },
      \  'SpringGreen3': { 'term': 42, 'gui': '#00d787' },
      \  'Cyan3': { 'term': 43, 'gui': '#00d7af' },
      \  'DarkTurquoise': { 'term': 44, 'gui': '#00d7d7' },
      \  'Turquoise2': { 'term': 45, 'gui': '#00d7ff' },
      \  'Green1': { 'term': 46, 'gui': '#00ff00' },
      \  'SpringGreen2': { 'term': 47, 'gui': '#00ff5f' },
      \  'SpringGreen1': { 'term': 48, 'gui': '#00ff87' },
      \  'MediumSpringGreen': { 'term': 49, 'gui': '#00ffaf' },
      \  'Cyan2': { 'term': 50, 'gui': '#00ffd7' },
      \  'Cyan1': { 'term': 51, 'gui': '#00ffff' },
      \  'DarkRed': { 'term': 52, 'gui': '#5f0000' },
      \  'DeepPink8': { 'term': 53, 'gui': '#5f005f' },
      \  'Purple5': { 'term': 54, 'gui': '#5f0087' },
      \  'Purple4': { 'term': 55, 'gui': '#5f00af' },
      \  'Purple3': { 'term': 56, 'gui': '#5f00d7' },
      \  'BlueViolet': { 'term': 57, 'gui': '#5f00ff' },
      \  'Orange4': { 'term': 58, 'gui': '#5f5f00' },
      \  'Grey37': { 'term': 59, 'gui': '#5f5f5f' },
      \  'MediumPurple7': { 'term': 60, 'gui': '#5f5f87' },
      \  'SlateBlue3': { 'term': 61, 'gui': '#5f5faf' },
      \  'SlateBlue2': { 'term': 62, 'gui': '#5f5fd7' },
      \  'RoyalBlue1': { 'term': 63, 'gui': '#5f5fff' },
      \  'Chartreuse6': { 'term': 64, 'gui': '#5f8700' },
      \  'DarkSeaGreen8': { 'term': 65, 'gui': '#5f875f' },
      \  'PaleTurquoise4': { 'term': 66, 'gui': '#5f8787' },
      \  'SteelBlue': { 'term': 67, 'gui': '#5f87af' },
      \  'SteelBlue3': { 'term': 68, 'gui': '#5f87d7' },
      \  'CornflowerBlue': { 'term': 69, 'gui': '#5f87ff' },
      \  'Chartreuse5': { 'term': 70, 'gui': '#5faf00' },
      \  'DarkSeaGreen7': { 'term': 71, 'gui': '#5faf5f' },
      \  'CadetBlue2': { 'term': 72, 'gui': '#5faf87' },
      \  'CadetBlue1': { 'term': 73, 'gui': '#5fafaf' },
      \  'SkyBlue3': { 'term': 74, 'gui': '#5fafd7' },
      \  'SteelBlue2': { 'term': 75, 'gui': '#5fafff' },
      \  'Chartreuse4': { 'term': 76, 'gui': '#5fd700' },
      \  'PaleGreen4': { 'term': 77, 'gui': '#5fd75f' },
      \  'SeaGreen4': { 'term': 78, 'gui': '#5fd787' },
      \  'Aquamarine3': { 'term': 79, 'gui': '#5fd7af' },
      \  'MediumTurquoise': { 'term': 80, 'gui': '#5fd7d7' },
      \  'SteelBlue1': { 'term': 81, 'gui': '#5fd7ff' },
      \  'Chartreuse3': { 'term': 82, 'gui': '#5fff00' },
      \  'SeaGreen3': { 'term': 83, 'gui': '#5fff5f' },
      \  'SeaGreen2': { 'term': 84, 'gui': '#5fff87' },
      \  'SeaGreen1': { 'term': 85, 'gui': '#5fffaf' },
      \  'Aquamarine2': { 'term': 86, 'gui': '#5fffd7' },
      \  'DarkSlateGray2': { 'term': 87, 'gui': '#5fffff' },
      \  'DarkRed1': { 'term': 88, 'gui': '#870000' },
      \  'DeepPink7': { 'term': 89, 'gui': '#87005f' },
      \  'DarkMagenta': { 'term': 90, 'gui': '#870087' },
      \  'DarkMagenta1': { 'term': 91, 'gui': '#8700af' },
      \  'DarkViolet': { 'term': 92, 'gui': '#8700d7' },
      \  'Purple2': { 'term': 93, 'gui': '#8700ff' },
      \  'Orange3': { 'term': 94, 'gui': '#875f00' },
      \  'LightPink4': { 'term': 95, 'gui': '#875f5f' },
      \  'Plum4': { 'term': 96, 'gui': '#875f87' },
      \  'MediumPurple6': { 'term': 97, 'gui': '#875faf' },
      \  'MediumPurple5': { 'term': 98, 'gui': '#875fd7' },
      \  'SlateBlue1': { 'term': 99, 'gui': '#875fff' },
      \  'Yellow6': { 'term': 100, 'gui': '#878700' },
      \  'Wheat4': { 'term': 101, 'gui': '#87875f' },
      \  'Grey53': { 'term': 102, 'gui': '#878787' },
      \  'LightSlateGrey': { 'term': 103, 'gui': '#8787af' },
      \  'MediumPurple4': { 'term': 104, 'gui': '#8787d7' },
      \  'LightSlateBlue': { 'term': 105, 'gui': '#8787ff' },
      \  'Yellow5': { 'term': 106, 'gui': '#87af00' },
      \  'DarkOliveGreen6': { 'term': 107, 'gui': '#87af5f' },
      \  'DarkSeaGreen': { 'term': 108, 'gui': '#87af87' },
      \  'LightSkyBlue3': { 'term': 109, 'gui': '#87afaf' },
      \  'LightSkyBlue2': { 'term': 110, 'gui': '#87afd7' },
      \  'SkyBlue2': { 'term': 111, 'gui': '#87afff' },
      \  'Chartreuse2': { 'term': 112, 'gui': '#87d700' },
      \  'DarkOliveGreen5': { 'term': 113, 'gui': '#87d75f' },
      \  'PaleGreen3': { 'term': 114, 'gui': '#87d787' },
      \  'DarkSeaGreen6': { 'term': 115, 'gui': '#87d7af' },
      \  'DarkSlateGray3': { 'term': 116, 'gui': '#87d7d7' },
      \  'SkyBlue1': { 'term': 117, 'gui': '#87d7ff' },
      \  'Chartreuse1': { 'term': 118, 'gui': '#87ff00' },
      \  'LightGreen': { 'term': 119, 'gui': '#87ff5f' },
      \  'LightGreen1': { 'term': 120, 'gui': '#87ff87' },
      \  'PaleGreen2': { 'term': 121, 'gui': '#87ffaf' },
      \  'Aquamarine1': { 'term': 122, 'gui': '#87ffd7' },
      \  'DarkSlateGray1': { 'term': 123, 'gui': '#87ffff' },
      \  'Red3': { 'term': 124, 'gui': '#af0000' },
      \  'DeepPink6': { 'term': 125, 'gui': '#af005f' },
      \  'MediumVioletRed': { 'term': 126, 'gui': '#af0087' },
      \  'Magenta6': { 'term': 127, 'gui': '#af00af' },
      \  'DarkViolet1': { 'term': 128, 'gui': '#af00d7' },
      \  'Purple1': { 'term': 129, 'gui': '#af00ff' },
      \  'DarkOrange2': { 'term': 130, 'gui': '#af5f00' },
      \  'IndianRed4': { 'term': 131, 'gui': '#af5f5f' },
      \  'HotPink5': { 'term': 132, 'gui': '#af5f87' },
      \  'MediumOrchid4': { 'term': 133, 'gui': '#af5faf' },
      \  'MediumOrchid3': { 'term': 134, 'gui': '#af5fd7' },
      \  'MediumPurple3': { 'term': 135, 'gui': '#af5fff' },
      \  'DarkGoldenrod': { 'term': 136, 'gui': '#af8700' },
      \  'LightSalmon3': { 'term': 137, 'gui': '#af875f' },
      \  'RosyBrown': { 'term': 138, 'gui': '#af8787' },
      \  'Grey63': { 'term': 139, 'gui': '#af87af' },
      \  'MediumPurple2': { 'term': 140, 'gui': '#af87d7' },
      \  'MediumPurple1': { 'term': 141, 'gui': '#af87ff' },
      \  'Gold3': { 'term': 142, 'gui': '#afaf00' },
      \  'DarkKhaki': { 'term': 143, 'gui': '#afaf5f' },
      \  'NavajoWhite3': { 'term': 144, 'gui': '#afaf87' },
      \  'Grey69': { 'term': 145, 'gui': '#afafaf' },
      \  'LightSteelBlue3': { 'term': 146, 'gui': '#afafd7' },
      \  'LightSteelBlue': { 'term': 147, 'gui': '#afafff' },
      \  'Yellow4': { 'term': 148, 'gui': '#afd700' },
      \  'DarkOliveGreen4': { 'term': 149, 'gui': '#afd75f' },
      \  'DarkSeaGreen5': { 'term': 150, 'gui': '#afd787' },
      \  'DarkSeaGreen4': { 'term': 151, 'gui': '#afd7af' },
      \  'LightCyan3': { 'term': 152, 'gui': '#afd7d7' },
      \  'LightSkyBlue1': { 'term': 153, 'gui': '#afd7ff' },
      \  'GreenYellow': { 'term': 154, 'gui': '#afff00' },
      \  'DarkOliveGreen3': { 'term': 155, 'gui': '#afff5f' },
      \  'PaleGreen1': { 'term': 156, 'gui': '#afff87' },
      \  'DarkSeaGreen3': { 'term': 157, 'gui': '#afffaf' },
      \  'DarkSeaGreen2': { 'term': 158, 'gui': '#afffd7' },
      \  'PaleTurquoise1': { 'term': 159, 'gui': '#afffff' },
      \  'Red2': { 'term': 160, 'gui': '#d70000' },
      \  'DeepPink5': { 'term': 161, 'gui': '#d7005f' },
      \  'DeepPink4': { 'term': 162, 'gui': '#d70087' },
      \  'Magenta5': { 'term': 163, 'gui': '#d700af' },
      \  'Magenta4': { 'term': 164, 'gui': '#d700d7' },
      \  'Magenta3': { 'term': 165, 'gui': '#d700ff' },
      \  'DarkOrange1': { 'term': 166, 'gui': '#d75f00' },
      \  'IndianRed3': { 'term': 167, 'gui': '#d75f5f' },
      \  'HotPink4': { 'term': 168, 'gui': '#d75f87' },
      \  'HotPink3': { 'term': 169, 'gui': '#d75faf' },
      \  'Orchid': { 'term': 170, 'gui': '#d75fd7' },
      \  'MediumOrchid2': { 'term': 171, 'gui': '#d75fff' },
      \  'Orange2': { 'term': 172, 'gui': '#d78700' },
      \  'LightSalmon2': { 'term': 173, 'gui': '#d7875f' },
      \  'LightPink3': { 'term': 174, 'gui': '#d78787' },
      \  'Pink3': { 'term': 175, 'gui': '#d787af' },
      \  'Plum3': { 'term': 176, 'gui': '#d787d7' },
      \  'Violet': { 'term': 177, 'gui': '#d787ff' },
      \  'Gold2': { 'term': 178, 'gui': '#d7af00' },
      \  'LightGoldenrod5': { 'term': 179, 'gui': '#d7af5f' },
      \  'Tan': { 'term': 180, 'gui': '#d7af87' },
      \  'MistyRose3': { 'term': 181, 'gui': '#d7afaf' },
      \  'Thistle3': { 'term': 182, 'gui': '#d7afd7' },
      \  'Plum2': { 'term': 183, 'gui': '#d7afff' },
      \  'Yellow3': { 'term': 184, 'gui': '#d7d700' },
      \  'Khaki3': { 'term': 185, 'gui': '#d7d75f' },
      \  'LightGoldenrod4': { 'term': 186, 'gui': '#d7d787' },
      \  'LightYellow3': { 'term': 187, 'gui': '#d7d7af' },
      \  'Grey84': { 'term': 188, 'gui': '#d7d7d7' },
      \  'LightSteelBlue1': { 'term': 189, 'gui': '#d7d7ff' },
      \  'Yellow2': { 'term': 190, 'gui': '#d7ff00' },
      \  'DarkOliveGreen2': { 'term': 191, 'gui': '#d7ff5f' },
      \  'DarkOliveGreen1': { 'term': 192, 'gui': '#d7ff87' },
      \  'DarkSeaGreen1': { 'term': 193, 'gui': '#d7ffaf' },
      \  'Honeydew2': { 'term': 194, 'gui': '#d7ffd7' },
      \  'LightCyan1': { 'term': 195, 'gui': '#d7ffff' },
      \  'Red1': { 'term': 196, 'gui': '#ff0000' },
      \  'DeepPink3': { 'term': 197, 'gui': '#ff005f' },
      \  'DeepPink2': { 'term': 198, 'gui': '#ff0087' },
      \  'DeepPink1': { 'term': 199, 'gui': '#ff00af' },
      \  'Magenta2': { 'term': 200, 'gui': '#ff00d7' },
      \  'Magenta1': { 'term': 201, 'gui': '#ff00ff' },
      \  'OrangeRed1': { 'term': 202, 'gui': '#ff5f00' },
      \  'IndianRed2': { 'term': 203, 'gui': '#ff5f5f' },
      \  'IndianRed1': { 'term': 204, 'gui': '#ff5f87' },
      \  'HotPink2': { 'term': 205, 'gui': '#ff5faf' },
      \  'HotPink1': { 'term': 206, 'gui': '#ff5fd7' },
      \  'MediumOrchid1': { 'term': 207, 'gui': '#ff5fff' },
      \  'DarkOrange': { 'term': 208, 'gui': '#ff8700' },
      \  'Salmon1': { 'term': 209, 'gui': '#ff875f' },
      \  'LightCoral': { 'term': 210, 'gui': '#ff8787' },
      \  'PaleVioletRed1': { 'term': 211, 'gui': '#ff87af' },
      \  'Orchid2': { 'term': 212, 'gui': '#ff87d7' },
      \  'Orchid1': { 'term': 213, 'gui': '#ff87ff' },
      \  'Orange1': { 'term': 214, 'gui': '#ffaf00' },
      \  'SandyBrown': { 'term': 215, 'gui': '#ffaf5f' },
      \  'LightSalmon1': { 'term': 216, 'gui': '#ffaf87' },
      \  'LightPink1': { 'term': 217, 'gui': '#ffafaf' },
      \  'Pink1': { 'term': 218, 'gui': '#ffafd7' },
      \  'Plum1': { 'term': 219, 'gui': '#ffafff' },
      \  'Gold1': { 'term': 220, 'gui': '#ffd700' },
      \  'LightGoldenrod3': { 'term': 221, 'gui': '#ffd75f' },
      \  'LightGoldenrod2': { 'term': 222, 'gui': '#ffd787' },
      \  'NavajoWhite1': { 'term': 223, 'gui': '#ffd7af' },
      \  'MistyRose1': { 'term': 224, 'gui': '#ffd7d7' },
      \  'Thistle1': { 'term': 225, 'gui': '#ffd7ff' },
      \  'Yellow1': { 'term': 226, 'gui': '#ffff00' },
      \  'LightGoldenrod1': { 'term': 227, 'gui': '#ffff5f' },
      \  'Khaki1': { 'term': 228, 'gui': '#ffff87' },
      \  'Wheat1': { 'term': 229, 'gui': '#ffffaf' },
      \  'Cornsilk1': { 'term': 230, 'gui': '#ffffd7' },
      \  'Grey100': { 'term': 231, 'gui': '#ffffff' },
      \  'Grey3': { 'term': 232, 'gui': '#080808' },
      \  'Grey7': { 'term': 233, 'gui': '#121212' },
      \  'Grey11': { 'term': 234, 'gui': '#1c1c1c' },
      \  'Grey15': { 'term': 235, 'gui': '#262626' },
      \  'Grey19': { 'term': 236, 'gui': '#303030' },
      \  'Grey23': { 'term': 237, 'gui': '#3a3a3a' },
      \  'Grey27': { 'term': 238, 'gui': '#444444' },
      \  'Grey30': { 'term': 239, 'gui': '#4e4e4e' },
      \  'Grey35': { 'term': 240, 'gui': '#585858' },
      \  'Grey39': { 'term': 241, 'gui': '#626262' },
      \  'Grey42': { 'term': 242, 'gui': '#6c6c6c' },
      \  'Grey46': { 'term': 243, 'gui': '#767676' },
      \  'Grey50': { 'term': 244, 'gui': '#808080' },
      \  'Grey54': { 'term': 245, 'gui': '#8a8a8a' },
      \  'Grey58': { 'term': 246, 'gui': '#949494' },
      \  'Grey62': { 'term': 247, 'gui': '#9e9e9e' },
      \  'Grey66': { 'term': 248, 'gui': '#a8a8a8' },
      \  'Grey70': { 'term': 249, 'gui': '#b2b2b2' },
      \  'Grey74': { 'term': 250, 'gui': '#bcbcbc' },
      \  'Grey78': { 'term': 251, 'gui': '#c6c6c6' },
      \  'Grey82': { 'term': 252, 'gui': '#d0d0d0' },
      \  'Grey85': { 'term': 253, 'gui': '#dadada' },
      \  'Grey89': { 'term': 254, 'gui': '#e4e4e4' },
      \  'Grey93': { 'term': 255, 'gui': '#eeeeee' },
      \}

function! s:MyCustomHighlight(groupName, fgColor, bgColor)
  let l:commandString = 'hi '.a:groupName.' '

  if strlen(a:fgColor)
    let l:commandString = l:commandString.' ctermfg='.s:allMyColors[a:fgColor]['term']
    let l:commandString = l:commandString.' guifg='.s:allMyColors[a:fgColor]['gui']
  endif

  if strlen(a:bgColor)
    let l:commandString = l:commandString.' ctermbg='.s:allMyColors[a:bgColor]['term']
    let l:commandString = l:commandString.' guibg='.s:allMyColors[a:bgColor]['gui']
  endif

  exe l:commandString
endfunction

hi VertSplit term=NONE cterm=NONE ctermfg=245 ctermbg=NONE gui=NONE guifg=#8a8a8a guibg=#6C6C6C
hi ALEError ctermfg=214 ctermbg=none cterm=none guifg=#ffaf00
hi ALEWarning ctermfg=219 ctermbg=none cterm=none guifg=#ffafff
hi SpellBad ctermbg=none cterm=underline ctermfg=171 guifg=#d75fff

hi DiffAdd ctermbg=22 ctermfg=none guibg=#005f00
hi DiffChange ctermbg=238 ctermfg=none guibg=#444444
hi DiffDelete ctermbg=52 ctermfg=52 guifg=#5f0000 guibg=#5f0000
hi DiffText ctermbg=19 ctermfg=none guibg=#0000af

hi ALEErrorSign ctermfg=red guifg=#ff0000
hi ALEWarningSign ctermfg=214 guifg=#ffaf00
hi Folded ctermbg=black guibg=#000000
hi ColorColumn ctermbg=233 guibg=#121212
hi Comment ctermfg=152 guifg=#afd7d7
" hi String ctermfg=13 guifg=#ff00ff
call s:MyCustomHighlight('String', 'DarkSeaGreen4', '')
hi htmlTagName ctermfg=193 guifg=#d7ffaf
hi Statement ctermfg=39 guifg=#00afff
hi Function ctermfg=193 cterm=none guifg=#d7ffaf

hi Normal ctermfg=none ctermbg=none guibg=#252525 guifg=#eeeeee
call s:MyCustomHighlight('NonText', 'Navy', '')

hi TabLine cterm=none ctermfg=249 ctermbg=240 gui=none guifg=#b2b2b2 guibg=#585858
hi TabLineFill cterm=none ctermfg=249 ctermbg=242 gui=none guifg=#b2b2b2 guibg=#6c6c6c
hi TabLineSel cterm=bold gui=bold ctermfg=238 ctermbg=254 guifg=#444444 guibg=#e4e4e4

hi CursorLine ctermbg=234 cterm=none guibg=#1c1c1c

hi StatusLine ctermbg=240 ctermfg=white cterm=none guibg=#585858 guifg=#ffffff
hi StatusLineNC ctermbg=236 ctermfg=248 cterm=none guibg=#303030 guifg=#a8a8a8

hi Visual ctermbg=23 guibg=#005f5f

hi Search ctermbg=11 guibg=#ffff00 ctermfg=0 guifg=Black
hi MatchParen ctermbg=14 ctermfg=19 guibg=#00ffff guifg=#0000af

hi GitGutterAdd ctermfg=40 guifg=#00d700
hi GitGutterChange ctermfg=39 guifg=#00afff
hi GitGutterDelete ctermfg=160 guifg=#d70000

