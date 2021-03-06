; Autohotkey Capslock Remapping Script 
; - Deactivates capslock for normal (accidental) use.
; - Hold Capslock and drag anywhere in a window to move it (not just the title bar).
; - Access the following functions when pressing Capslock: 
    ;Cursor keys        - J, K, L, I
    ;Home,End       - N, ;
    ;Esc            - CapsLock only
    ;CapsLock       - Space

#Persistent
SetCapsLockState, AlwaysOff

; Capslock + hjkl (left, down, up, right)

Capslock & h::Send {Blind}{Left DownTemp}
Capslock & h up::Send {Blind}{Left Up}

Capslock & j::Send {Blind}{Down DownTemp}
Capslock & j up::Send {Blind}{Down Up}

Capslock & k::Send {Blind}{Up DownTemp}
Capslock & k up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

; Capslock +w : ctrl+backspace
Capslock & w::Send {Blind}{Ctrl Down}{BS DownTemp}
Capslock & w up::Send {Blind}{Ctrl Up}{BS Up}

; Capslock +c+x+v : ctrl+backspace
Capslock & c::Send {Blind}{Ctrl Down}{Ins DownTemp}
Capslock & c up::Send {Blind}{Ctrl Up}{Ins Up}

Capslock & v::Send {Blind}{Shift Down}{Ins DownTemp}
Capslock & v up::Send {Blind}{Shift Up}{Ins Up}

Capslock & x::Send {Blind}{Shift Down}{Del DownTemp}
Capslock & x up::Send {Blind}{Shift Up}{Del Up}

; Capslock + n (home, end)

Capslock & a::SendInput {Blind}{Home Down}
Capslock & a up::SendInput {Blind}{Home Up}

Capslock & e::SendInput {Blind}{End Down}
Capslock & e up::SendInput {Blind}{End Up}

Capslock & Space::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return

; Capslock only, Send Escape
CapsLock::Send, {ESC}

; Capslck + s, open the gitbash
; CapsLock & s::Send +{F10},Send s

; Capslck + w,  open Worktile
; CapsLock & w::
; Run https://worktile.com
; return
