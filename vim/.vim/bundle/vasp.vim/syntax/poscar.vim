"
" REF: http://cms.mpi.univie.ac.at/vasp/guide/node59.html
"

if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "poscar"

set commentstring=#\ %s


syntax match poscarComment "\v#.*$"
" First line is COMMENT
syntax match poscarComment "^\%1l.*$"

syntax keyword elements Ac Al Am Sb Ar As At Ba Bk Be Bi Bh B Br Cd Ca Cf C
                      \ Ce Cs Cl Cr Co Cu Cm Ds Db Dy Es Er Eu Fm F Fr Gd Ga
                      \ Ge Au Hf Hs He Ho H In I Ir Fe Kr La Lr Pb Li Lu Mg
                      \ Mt Md Hg Mo Nd Ne Np Ni Nb N No Os O Pd P Pt Pu Po K
                      \ Pr Pm Pa Ra Rn Re Rh Rg Rb Ru Rf Sm Sc Sg Se Si Ag Na
                      \ Sr S Ta Tc Te Tb Tl Th Tm Sn Ti W Uub Uuh Uuo Uup Uuq
                      \ Uus Uut Uuu U V Xe Yb Y Zn Zr Mn


syntax keyword coordinatesMode Cartesian Cubic Direct
syntax keyword coordinatesMode Cart Cubic Dir
syntax keyword coordinatesMode cartesian cubic direct
syntax keyword coordinatesMode cart dir

"syntax match coordinatesMode "Selective dynamics"
"syntax match coordinatesMode "Selective Dynamics"
"syntax match coordinatesMode "selective dynamics"
"syntax match coordinatesMode "Selective"
"syntax match coordinatesMode "selective"
syntax match selectiveMode "Select.*$"
syntax match selevtiveMode "select.*$"

syntax match latticeConstant "^\%>1l\%<3l.*$"

syntax match latticeVectors "^\%>2l\%<6l.*$"

syntax match numberOfAtoms "\%7l\d\+"

syntax match selectiveMode "T "
syntax match selectiveMode "T$"

highlight link numberOfAtoms String
highlight link latticeVectors Structure
highlight link latticeConstant Constant
highlight link poscarComment Comment
highlight link elements Identifier
highlight link coordinatesMode Keyword
highlight link selectiveMode Function
