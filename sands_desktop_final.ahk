;"C:\Program Files\AutoHotkey\AutoHotkey.exe" "D:\Dropbox\autohotkey.ahk"
; Ctrl + Alt + E �ŃX�N���v�g��ҏW.
;^!e::Edit
; Ctrl + Alt + R �ŃX�N���v�g���ēǂݍ���.
^!r::Reload


;https://edvakf.hatenadiary.org/entry/20101027/1288168554


Space::
SendInput {LShift Down}
If SandS_SpaceDown = 1
{
	Return
}
SandS_SpaceDown := 1
SandS_SpaceDownTime := A_TickCount ; milliseconds after computer is booted http://www.autohotkey.com/docs/Variables.htm
SandS_AnyKeyPressed := 0
; watch for the next single key, http://www.autohotkey.com/docs/commands/Input.htm
Input, SandS_AnyKey, L1 V,{LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{Capslock}{Numlock}{PrintScreen}{Pause}
SandS_AnyKeyPressed := 1
Return


Space Up::
SendInput {LShift Up}
SandS_SpaceDown := 0
If SandS_AnyKeyPressed = 0
{
	If A_TickCount - SandS_SpaceDownTime < 200
	{
		;If takubo = 0
		;{
		;	SendInput {Space}
		;} Else {
		;	SendInput ^{Space}
		;}
		if ( 0 )
		{
			SendInput {Space}
		}
		else
		{
			if  ( WinActive("ahk_class LyncConversationWindowClass")  ){
				Send, #{F4}
			}else{
				SendInput {Space}
			}
		}
	}
	; Send EndKey of the "Input" command above
	; You must use Send here since SendInput is ignored by "Input"
	Send {LShift}
}
Return




; RControl::Space





LShift::Space



;? ^[:: SendInput {Escape}

;Capslock::Return
;
;
; vkF3sc029
; vkF4sc029	�S�p/���p�ɑ����AIME��ON/OFF�Ŕ�������C�x���g���Ⴄ�B
;		Send�ő��M����ꍇ�͂ǂ���ł������B
;		�����{�������Lock�n�L�[�̓���͕s��
;
; vk1Csc079	�ϊ��L�[
; vk1Dsc07B	���ϊ��L�[
; vkF2sc070	�Ђ炪��/�J�^�J�i�L�[	�����{�������Lock�n�L�[�̓���͕s��
; vkF0sc03A	�p���iCapsLock�j	�����{�������Lock�n�L�[�̓���͕s��
;
; �ϊ��L�[	IME ON
; ���ϊ��L�[	IME OFF
;
Capslock:: SendInput {vkF3sc029}



; RControl:: SendInput {Space}
; 
; LShift:: SendInput {Escape}
; 
; 
; ;RShift:: SendInput {CtrlDown}
; 
; ;RShift Up:: SendInput {CtrlUp}
; 
; RShift::
; 	takubo := 1
; 	SendInput {CtrlDown}
; 	Return
; 
; 
; RShift Up::
; 	takubo := 0
; 	SendInput {CtrlUp}
; 	Return



;;;;;;;;;;;;;;;;;; HHKB ;;;;;;;;;;;;;;;;;;;;;;;

; HHKB Cursor
NumpadMult::Left
NumpadDiv::Down
Home::Up
PgUp::Right

; ; HHKB Shift + Cursor
; NumpadAdd::+Left
; NumpadSub::+Down
; End::+Up
; PgDn::+Right


;�}�E�X�J�[�\���ړ�(��) Windows�L�[ + ��
NumpadMult:: MouseMove -10,0,0,R

;�}�E�X�J�[�\���ړ�(��) Windows�L�[ + ��
NumpadDiv:: MouseMove 0,10,0,R

;�}�E�X�J�[�\���ړ�(��) Windows�L�[ + ��
Home:: MouseMove 0,-10,0,R

;�}�E�X�J�[�\���ړ�(�E) Windows�L�[ + ��
PgUp:: MouseMove 10,0,0,R


;�}�E�X���N���b�N Windows�L�[ + Enter
NumpadEnter:: MouseClick ,Left

;�E�N���b�N
Pause::+F10


; for Excel
;? PrintScreen::F2
;? ScrollLock::PrintScreen
;ScrollLock:: Run C:\Users\pk65278\bin\Rapture\Rapture\rapture.exe
ScrollLock:: Return


;Capslock::AltTab


;LShift::LWin
;LShift::Space


; �⏞
Up::PgUp
Down::PgDn
Left::Home
Right::End

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;; Not HHKB ( Close to HHKB ) ;;;;;;;;;;;;;;;;;;;;;;;

; ; LShift::LCtrl
; ; RControl::RAlt
; RAlt::RWin
; LWin::LAlt
; ;LAlt:: Return
; 
; ; Back Slash
; \::Backspace
; +\:: SendInput {Delete}
; 
; Backspace::\
; +Backspace::+\
; 
; !h:: SendInput {Left}
; !j:: SendInput {Down}
; !k:: SendInput {Up}
; !l:: SendInput {Right}
; 
; +!h:: SendInput +{Left}
; +!j:: SendInput +{Down}
; +!k:: SendInput +{Up}
; +!l:: SendInput +{Right}
; 
; !n::+Left
; !m::+Down
; !,::+Up
; !.::+Right

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;; R IME ;;;;;;;;;;;;;;;;;;;;;;;;;;

RCtrl::
SendInput {RAlt Down}
If RIME_RbttnDown = 1
{
	Return
}
RIME_RbttnDown := 1
RIME_RbttnDownTime := A_TickCount ; milliseconds after computer is booted http://www.autohotkey.com/docs/Variables.htm
;? RIME_AnyKeyPressed := 0
;? ; watch for the next single key, http://www.autohotkey.com/docs/commands/Input.htm
;? Input, RIME_AnyKey, L1 V,{LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{Capslock}{Numlock}{PrintScreen}{Pause}
;? RIME_AnyKeyPressed := 1
Return


RCtrl Up::
SendInput {RAlt Up}	; �Ȃ����ARalt Up��2�Ȃ��ƁA�����Ȃ��B
RIME_RbttnDown := 0
;? If RIME_AnyKeyPressed = 0
;? {
	If A_TickCount - RIME_RbttnDownTime < 200
	{
;? 		Send {RAlt Up}
;? 		SendInput {vk1Dsc07B}	; ���ϊ��L�[ IME OFF
	}
;? 	; Send EndKey of the "Input" command above
;? 	; You must use Send here since SendInput is ignored by "Input"
;? 	Send {RAlt Up}
;? }
Return




;? SendInput {RShift Up}	; �Ȃ������ꂪ�Ȃ��ƁA�����Ȃ��B�B�B

;? RCtrl Up::
;? SendInput {RShift Up}	; �Ȃ������ꂪ�Ȃ��ƁA�����Ȃ��B�B�B
;? SendInput {RAlt Up}	; �Ȃ����ARalt Up��2�Ȃ��ƁA�����Ȃ��B
;? RIME_RbttnDown := 0
;? If RIME_AnyKeyPressed = 0
;? {
;? 	If A_TickCount - RIME_RbttnDownTime < 200
;? 	{
;? 		Send {RAlt Up}
;? 		SendInput {vk1Dsc07B}	; ���ϊ��L�[ IME OFF
;? 	}
;? 	; Send EndKey of the "Input" command above
;? 	; You must use Send here since SendInput is ignored by "Input"
;? 	Send {RAlt Up}
;? }
;? Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;; Left CandE ;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;??? LCtrl::
;;;??? SendInput {LCtrl Down}
;;;??? If LCandE_LCtrlDown = 1
;;;??? {
;;;??? 	Return
;;;??? }
;;;??? LCandE_LCtrlDown := 1
;;;??? LCandE_LCtrlDownTime := A_TickCount ; milliseconds after computer is booted http://www.autohotkey.com/docs/Variables.htm
;;;??? ;LCandE_AnyKeyPressed := 0
;;;??? ;; watch for the next single key, http://www.autohotkey.com/docs/commands/Input.htm
;;;??? ;Input, LCandE_AnyKey, L1 V,{LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{Capslock}{Numlock}{PrintScreen}{Pause}
;;;??? ;LCandE_AnyKeyPressed := 1
;;;??? Return
;;;??? 
;;;??? 
;;;??? LCtrl Up::
;;;??? SendInput {LCtrl Up}
;;;??? ;Send {LCtrl Up}
;;;??? LCandE_LCtrlDown := 0
;;;??? ;If LCandE_AnyKeyPressed = 0
;;;??? ;{
;;;??? 	If A_TickCount - LCandE_LCtrlDownTime < 200
;;;??? 	{
;;;??? 		SendInput {Escape}
;;;??? 	}
;;;??? ; 	; Send EndKey of the "Input" command above
;;;??? ; 	; You must use Send here since SendInput is ignored by "Input"
;;;??? ; 	SendInput {LCtrl Up}
;;;??? ;}
;;;??? Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; RShift::RCtrl

;;;;;;;;;;;;; Right CandE ;;;;;;;;;;;;;;;;;;;;;;;;;;

RShift::
SendInput {RCtrl Down}
If RCandE_LCtrlDown = 1
{
	Return
}
RCandE_LCtrlDown := 1
RCandE_LCtrlDownTime := A_TickCount ; milliseconds after computer is booted http://www.autohotkey.com/docs/Variables.htm
;RCandE_AnyKeyPressed := 0
;; watch for the next single key, http://www.autohotkey.com/docs/commands/Input.htm
;Input, RCandE_AnyKey, L1 V,{LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{Capslock}{Numlock}{PrintScreen}{Pause}
;RCandE_AnyKeyPressed := 1
Return


RShift Up::
SendInput {RCtrl Up}
;Send {RCtrl Up}
RCandE_LCtrlDown := 0
;If RCandE_AnyKeyPressed = 0
;{
	If A_TickCount - RCandE_LCtrlDownTime < 200
	{
		;SendInput {Escape}
		SendInput {vkF4sc029}
	}
; 	; Send EndKey of the "Input" command above
; 	; You must use Send here since SendInput is ignored by "Input"
; 	SendInput {RCtrl Up}
;}
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; �w�i�F�F �X�g�[��
; �E�B���h�E�F�F#6C100B
; just color picker





; ;�}�E�X�J�[�\���ړ�(��) Windows�L�[ + ��
; !a:: MouseMove -10,0,5,R
; 
; ;�}�E�X�J�[�\���ړ�(��) Windows�L�[ + ��
; !s:: MouseMove 0,10,5,R
; 
; ;�}�E�X�J�[�\���ړ�(��) Windows�L�[ + ��
; !w:: MouseMove 0,-10,5,R
; 
; ;�}�E�X�J�[�\���ړ�(�E) Windows�L�[ + ��
; !d:: MouseMove 10,0,5,R
; 
; ;�}�E�X�J�[�\���ړ�(��) Windows�L�[ + ��
; #Up::
; MouseMove 0,-10,0,R
; return
; 
; ;�}�E�X�J�[�\���ړ�(��) Windows�L�[ + ��
; #Down::
; MouseMove 0,10,0,R
; return
; 
; ;�}�E�X�J�[�\���ړ�(��) Windows�L�[ + ��
; #Left::
; MouseMove -10,0,0,R
; return
; 
; ;�}�E�X�J�[�\���ړ�(�E) Windows�L�[ + ��
; #Right::
; MouseMove 10,0,0,R
; return
; 
; ;�}�E�X���N���b�N Windows�L�[ + Enter
; #Enter::
; MouseClick ,Left
; return
