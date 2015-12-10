#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=logo.ico
#AutoIt3Wrapper_Run_Obfuscator=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include<Misc.au3>
#include <windowsconstants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <ImageSearch.au3>
#Include <WinAPI.au3>
#include <Date.au3>
#include <EditConstants.au3>
#include <ComboConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#include <GDIPlus.au3>
#include <GuiConstantsEx.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GDIPlus.au3>
#include <WinAPI.au3>
#include <ScreenCapture.au3>

;;;


;;;;
;~ HotKeySet("{TAB}", "Test")
HotKeySet("{ESC}","ESCI")
HotKeySet("{HOME}","Start")
HotKeySet("{END}","Stop")




Opt("TrayMenuMode",1)


;TraySetState(2)
;
Global $Rett12_x1,$Rett12_y1,$Rett12_x2,$Rett12_y2
global $Rett11_x1,$Rett11_y1,$Rett11_x2,$Rett11_y2
Global $Rett10_x1,$Rett10_y1,$Rett10_x2,$Rett10_y2
Global $Rett9_x1,$Rett9_y1,$Rett9_x2,$Rett9_y2
Global $Rett8_x1,$Rett8_y1,$Rett8_x2,$Rett8_y2
Global $Rett7_x1,$Rett7_y1,$Rett7_x2,$Rett7_y2
Global $Rett6_x1,$Rett6_y1,$Rett6_x2,$Rett6_y2
Global $Rett5_x1,$Rett5_y1,$Rett5_x2,$Rett5_y2
Global $Rett4_x1,$Rett4_y1,$Rett4_x2,$Rett4_y2
Global $Rett3_x1,$Rett3_y1,$Rett3_x2,$Rett3_y2
Global $Rett2_x1,$Rett2_y1,$Rett2_x2,$Rett2_y2
Global $Rett1_x1,$Rett1_y1,$Rett1_x2,$Rett1_y2
;Colors
Global $pallacolor=0xFFC78A
Global $pallacolorbasic=0x264B6B;0x2D4E6A;0xECFBF7
Global $boxcolorbasic=0xFBFFCD;0xFFC78A
Global $promcolorbasic=0xFF8781
Global $endcolorbasic=0x80A7DB
Global $tercolorbasic=0xEFEA8F
Global $carcolorbasic=0xFFFE95
Global $eggcolorbasic=0x052F00
Global $pircolorbasic=0x75FFFF
Global $eiccolor=0x86D2FF
Global $mmocolor=0xEBA169
Global $vrucolor=0x98FF21

Global $hpcolor=0x000000

;Colors end
Global $waittime=1000
Global $waittimerandom=100
Global $waittimebox=800
Global $waittimepaladium=1100

Global $waittimepirate=5000
Global $waittimeflight=45
Global $waittimeflightrandom=5

Global $type=1

Global $waittimeenemy = 1200
Global $waittimeenemyrandom = 200
Global $escaping=0


$Rett1_x1 = 0
$Rett1_y1 = 0
$Rett1_x2 = 0
$Rett1_y2 = 0
$Mini_x1=0
$Mini_y1=0
$Mini_y2=0
$Mini_x2=0
$Pala_x1=0
$Pala_y1=0
$Pala_y2=0
$Pala_x2=0
$HP_x1=0
$HP_y1=0
$HP_y2=0
$HP_x2=0
$Border_x1=0
$Border_y1=0
$Border_y2=0
$Border_x2=0

$boxnumbers=0
$palnumbers=0
$version=0.5
$canrepair=1
$buttonblock=1
$X = 0
$Y = 0

$run=0
$enemy=0

$showed=0

$status = 1
$statustext = "Waiting"

Global $hp_status=1

$map = "Unknown"

$repairing = 0
Global $c=1


;~ CheckVersion()

;///////////////////////
;Hlavni program

#Region ### START Koda GUI section ### Form=C:\Users\Hadi.k\Desktop\UltraBot\Form1_1.kxf

$Form1_1 = GUICreate("UltraBot", 357, 540, -1, -1,$WS_POPUP)


$map_bg2=GUICtrlCreatePic("data/minimap_bg.jpg", 54, 131, 244, 150)
GUICtrlSetState(-1, $GUI_DISABLE)



$pic1 = GUICtrlCreatePic("data/logo.jpg", 68, 145, 215, 122)

GUICtrlCreateTab(44, 284, 264, 156) ;GUICtrlCreateTab(42, 254, 264, 186)
GUICtrlSetFont(-1, 8, 400, 0, "MS Sans Serif")
GUICtrlCreateTabItem("Collect")
GUICtrlSetState(-1,$GUI_SHOW)


$tab_bg1=GUICtrlCreatePic("data/tab_bg.jpg", 44, 305, 269, 135)
GUICtrlSetState(-1, $GUI_DISABLE)
$pich_icon = GUICtrlCreatePic("data/hp.jpg", 60, 310, 15, 16)
$pichp = GUICtrlCreatePic("data/run/hp.jpg", 80, 310, 64, 16)
$picsh_icon = GUICtrlCreatePic("data/sh.jpg", 60, 330, 15, 16)
$picsh = GUICtrlCreatePic("data/run/sh.jpg", 80, 330, 64, 14)

GUICtrlSetColor(-1, 0xFFFFFF)
$combo1 = GUICtrlCreateCombo("", 100, 352, 64, 120)
GUICtrlSetData(-1, "EIC|MMO|VRU")
$label11 = GUICtrlCreateLabel("Company:", 50, 358, 50, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
;~ GUICtrlCreateGroup("Collect", 49, 323, 239, 82)
$radio_1 = GUICtrlCreateRadio("", 59, 375, 12, 15)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateLabel("BonusBox",74,375,50,20)

GUICtrlSetColor(-1, 0xFFFFFF)

$radio_6 = GUICtrlCreateRadio("", 59, 390, 12, 15)
GUICtrlCreateLabel("CargoBox",74,390,50,20)
GUICtrlSetColor(-1, 0xFFFFFF)
$radio_2 = GUICtrlCreateRadio("", 59, 405, 12, 15)
GUICtrlCreateLabel("Palladium",74,405,50,20)
GUICtrlSetColor(-1, 0xFFFFFF)

$radio_3 = GUICtrlCreateRadio("", 139, 375, 12, 15)
GUICtrlCreateLabel("Prometium",155,375,50,20)
GUICtrlSetColor(-1, 0xFFFFFF)
$radio_4 = GUICtrlCreateRadio("", 139, 390, 12, 15)
GUICtrlCreateLabel("Endurium",155,390,50,20)
GUICtrlSetColor(-1, 0xFFFFFF)
$radio_5 = GUICtrlCreateRadio("Terbium", 139, 405, 12, 15)
GUICtrlCreateLabel("Terbium",155,405,50,20)
GUICtrlSetColor(-1, 0xFFFFFF)
$radio_7 = GUICtrlCreateRadio("", 209, 375, 12, 15)
GUICtrlCreateLabel("PirateBox",226,375,50,20)
GUICtrlSetColor(-1, 0xFFFFFF)
$radio_8 = GUICtrlCreateRadio("", 209, 390, 12, 15)
GUICtrlCreateLabel("EasterEgg",226,390,50,20)
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$checkbox1 = GUICtrlCreateCheckbox("", 176, 360, 12, 15)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateLabel("Repairing",190,360,115,20)
GUICtrlSetColor(-1, 0xFFFFFF)
$checkbox2 = GUICtrlCreateCheckbox("", 176, 345, 12, 15)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateLabel("Escape before enemy",190,345,115,20)
GUICtrlSetColor(-1, 0xFFFFFF)
$checkbox3 = GUICtrlCreateCheckbox("", 176, 330, 12, 15)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateLabel("Block button in game",190,330,100,20)
GUICtrlSetColor(-1, 0xFFFFFF)

$checkbox4 = GUICtrlCreateCheckbox("", 176, 315, 12, 15)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateLabel("Repair after dead",190,315,100,20)
GUICtrlSetColor(-1, 0xFFFFFF)

$Button5 = GUICtrlCreateButton("Start", 44, 420,80, 25,$BS_BITMAP)
GUICtrlSetImage($Button5,'data/start_button.bmp')
$Button6 = GUICtrlCreateButton("Stop", 1100, 420, 80, 20,$BS_BITMAP)
GUICtrlSetImage($Button6,'data/stop_button.bmp')
$Button8 = GUICtrlCreateButton("Exit", 230, 420, 80, 25,$BS_BITMAP)
GUICtrlSetImage($Button8,'data/exit_button.bmp')
$Button1 = GUICtrlCreateButton("Stop@safe", 140, 419, 80, 25,$BS_BITMAP)
GUICtrlSetImage($Button1,'data/stop_button.bmp')

GUICtrlCreateTabItem("Log")
$tab_bg2=GUICtrlCreatePic("data/tab_bg.jpg", 44, 305, 269, 135)
GUICtrlSetState(-1, $GUI_DISABLE)
$iMemo = GUICtrlCreateEdit("", 56, 310, 244, 130)
GUICtrlSetData(-1, "")
GUICtrlCreateTabItem("Settings")
$tab_bg3=GUICtrlCreatePic("data/tab_bg.jpg", 44, 305, 269, 135)
GUICtrlSetState(-1, $GUI_DISABLE)
$Label2 = GUICtrlCreateLabel("- Press for detect all parts of the game", 110, 320, 184, 17)
GUICtrlSetColor(-1, 0xFFFFFF)
$Button10 = GUICtrlCreateButton("Detect", 50, 320, 50, 17)

$Button11 = GUICtrlCreateButton("Show areas", 114, 362, 100, 17)
GUICtrlCreateTabItem("Credits")
$tab_bg4=GUICtrlCreatePic("data/tab_bg.jpg", 44, 305, 269, 135)
GUICtrlSetState(-1, $GUI_DISABLE)




GUICtrlCreateLabel("Created by Ultra-TECH", 64, 348, 204, 12, $SS_CENTER)
GUICtrlSetColor(-1, 0xFFFFFF)



    Local $iCreate = GUICtrlCreateButton('', 160, 72, 62, 11, $BS_BITMAP) ;Obrazkove tlacitko
	GUICtrlSetImage($iCreate,'data/bmp.bmp')

GUICtrlCreateTabItem("")
$label9 = GUICtrlCreateLabel("Map: " & $map, 242, 287, 66, 12)
GUICtrlSetFont(-1, 6, 400, 0, "MS Sans Serif")

;~ $map_bg4=GUICtrlCreatePic("data/status_bg.jpg", 64, 488, 224, 160)
;~ GUICtrlSetState($map_bg4, $GUI_DISABLE)

$label10 = GUICtrlCreateLabel("Status: " & $statustext, 80, 488, 80, 15)
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x192229)
;~ GUICtrlSetState($label10,$GUI_SHOW)
;~ $label15 = GUICtrlCreateLabel($version, 148, 56, 54, 15)
$Pic6 = GUICtrlCreatePic("data\logo2.jpg", 65, 50, 220, 27)
$Pic4 = GUICtrlCreatePic("data\comp.jpg", 255, 488, 14, 14)
$label15 = GUICtrlCreateLabel("Ultra-Tech", 200, 488, 54, 15)
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x1A2A31)
$Pic4 = GUICtrlCreatePic("data\rank.jpg", 183, 488, 14, 14)

$Pic2 = GUICtrlCreatePic("data\bg.jpg", 0, 0, 353, 537, BitOR($GUI_SS_DEFAULT_PIC,$WS_CLIPSIBLINGS))
GUISetState(@SW_SHOW)



$area6 = GUICreate("Border",$Border_x2-$Border_x1,$Border_y1-$Border_y2,$Border_x1,$Border_y2 , $WS_POPUP, $WS_EX_TOPMOST,$WS_EX_TOOLWINDOW)





;;TRAY lista

Local $startitem = TrayCreateItem("Start")
Local $stopitem = TrayCreateItem("Stop")
TrayCreateItem("")
Local $settingsitem = TrayCreateMenu("About")
TrayCreateItem("Ver 0.1", $settingsitem)
TrayCreateItem("", $settingsitem)
TrayCreateItem("")
Local $exititem = TrayCreateItem("Exit")
;;TRAY LISTA KONEC
#endregion

GUISetState(@SW_SHOW)
If FileExists(@ScriptDir &"\settings.ini") Then
	$Rett1_x1=int(IniRead( @ScriptDir &"\settings.ini" , "Hra_nahore" , "x" ,0))
	$Rett1_y1=int(IniRead( @ScriptDir &"\settings.ini" , "Hra_nahore" , "y" ,0))
	$Rett1_x2=int(IniRead( @ScriptDir &"\settings.ini" , "Hra_dole" , "x",0 ))
	$Rett1_y2=int(IniRead( @ScriptDir &"\settings.ini" , "Hra_dole" , "y" ,0))
	$Mini_x1=int(IniRead( @ScriptDir &"\settings.ini" , "Mini_od" , "x",0 ))
	$Mini_y1=int(IniRead( @ScriptDir &"\settings.ini" , "Mini_od" , "y" ,0))
	$Mini_x2=int(IniRead( @ScriptDir &"\settings.ini" , "Mini_do" , "x" ,0))
	$Mini_y2=int(IniRead( @ScriptDir &"\settings.ini" , "Mini_do" , "y" ,0))
	$Pala_x1=int(IniRead( @ScriptDir &"\settings.ini" , "Pala_od" , "x",0 ))
	$Pala_y1=int(IniRead( @ScriptDir &"\settings.ini" , "Pala_od" , "y" ,0))
	$Pala_x2=int(IniRead( @ScriptDir &"\settings.ini" , "Pala_do" , "x" ,0))
	$Pala_y2=int(IniRead( @ScriptDir &"\settings.ini" , "Pala_do" , "y" ,0))
	$HP_x1=int(IniRead( @ScriptDir &"\settings.ini" , "HP_od" , "x",0 ))
	$HP_y1=int(IniRead( @ScriptDir &"\settings.ini" , "HP_od" , "y" ,0))
	$HP_x2=int(IniRead( @ScriptDir &"\settings.ini" , "HP_do" , "x" ,0))
	$HP_y2=int(IniRead( @ScriptDir &"\settings.ini" , "HP_do" , "y" ,0))
	$Border_x1=int(IniRead( @ScriptDir &"\settings.ini" , "Border_od" , "x",0 ))
	$Border_y1=int(IniRead( @ScriptDir &"\settings.ini" , "Border_od" , "y" ,0))
	$Border_x2=int(IniRead( @ScriptDir &"\settings.ini" , "Border_do" , "x" ,0))
	$Border_y2=int(IniRead( @ScriptDir &"\settings.ini" , "Border_do" , "y" ,0))
EndIf



Func MemoWrite($sMessage)
	GUICtrlSetData($iMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite

Func Status($vstup)
;~ 	$label10=GUICtrlCreateLabel("Status: " & $vstup,0,480,300,15, $SS_CENTER)
	GUICtrlSetData($label10,"Status: " & $vstup)
EndFunc


	TrayTip("Status","Waiting",1)

Func Avvia()



$a=$Rett1_x2-$Rett1_x1 ; larghezza rettangolo grande
$b=$Rett1_y2-$Rett1_y1; altezza rettangolo grande

;Rettangolo 2
   ; coord alto sin
$Rett2_x1=$Rett1_x1+$a/24
$Rett2_y1=$Rett1_y1+$b/24
   ;coord basso dex
$Rett2_x2=$Rett2_x1+$a*11/12
$Rett2_y2=$Rett2_y1+$b*11/12

;Rettangolo 3
  ; coord alto sin
$Rett3_x1=$Rett2_x1+$a/24
$Rett3_y1=$Rett2_y1+$b/24
   ;coord basso dex
$Rett3_x2=$Rett3_x1+$a*5/6
$Rett3_y2=$Rett3_y1+$b*5/6

;Rettangolo 4
  ; coord alto sin
$Rett4_x1=$Rett3_x1+$a/24
$Rett4_y1=$Rett3_y1+$b/24
   ;coord basso dex
$Rett4_x2=$Rett4_x1+$a*3/4
$Rett4_y2=$Rett4_y1+$b*3/4

;Rettangolo 5
  ; coord alto sin
$Rett5_x1=$Rett4_x1+$a/24
$Rett5_y1=$Rett4_y1+$b/24
   ;coord basso dex
$Rett5_x2=$Rett5_x1+$a*2/3
$Rett5_y2=$Rett5_y1+$b*2/3

;Rettangolo 6
  ; coord alto sin
$Rett6_x1=$Rett5_x1+$a/24
$Rett6_y1=$Rett5_y1+$b/24
   ;coord basso dex
$Rett6_x2=$Rett6_x1+$a*7/12
$Rett6_y2=$Rett6_y1+$b*7/12

;Rettangolo 7
  ; coord alto sin
$Rett7_x1=$Rett6_x1+$a/24
$Rett7_y1=$Rett6_y1+$b/24
   ;coord basso dex
$Rett7_x2=$Rett7_x1+$a/2
$Rett7_y2=$Rett7_y1+$b/2

;Rettangolo 8
  ; coord alto sin
$Rett8_x1=$Rett7_x1+$a/24
$Rett8_y1=$Rett7_y1+$b/24
   ;coord basso dex
$Rett8_x2=$Rett8_x1+$a*5/12
$Rett8_y2=$Rett8_y1+$b*5/12

;Rettangolo 9
  ; coord alto sin
$Rett9_x1=$Rett8_x1+$a/24
$Rett9_y1=$Rett3_y1+$b/24
   ;coord basso dex
$Rett9_x2=$Rett9_x1+$a/3
$Rett9_y2=$Rett9_y1+$b/3

;Rettangolo 10
  ; coord alto sin
$Rett10_x1=$Rett9_x1+$a/24
$Rett10_y1=$Rett9_y1+$b/24
   ;coord basso dex
$Rett10_x2=$Rett10_x1+$a/4
$Rett10_y2=$Rett10_y1+$b/4

;Rettangolo 11
  ; coord alto sin
$Rett11_x1=$Rett10_x1+$a/24
$Rett11_y1=$Rett10_y1+$b/24
   ;coord basso dex
$Rett11_x2=$Rett11_x1+$a/6
$Rett11_y2=$Rett11_y1+$b/6

;Rettangolo 12
  ; coord alto sin
$Rett12_x1=$Rett11_x1+$a/24
$Rett12_y1=$Rett11_y1+$b/24
   ;coord basso dex
$Rett12_x2=$Rett12_x1+$a/12
$Rett12_y2=$Rett3_y1+$b/12
;zjisteni barvy hp
Global $hpcolor=PixelGetColor($HP_x2-5,$HP_y2-6.5,100)

   global $c=1
   while 1
	if $canrepair=1 Then
		HP_checker()
	EndIf

	if $run=0 Then
		WhileMenu()
		$run=1
	EndIf


	 Select
		case $c=1
		if $type=1 then
			$pallacolor=$boxcolorbasic
			$waittime=$waittimebox
		EndIf
		if $type=2 then
			$pallacolor=$pallacolorbasic
			$waittime=$waittimepaladium
		EndIf
		if $type=3 then
			$pallacolor=$promcolorbasic
			$waittime=$waittimepaladium
		EndIf
		if $type=4 then
			$pallacolor=$endcolorbasic
			$waittime=$waittimepaladium
		EndIf
		if $type=5 then
			$pallacolor=$tercolorbasic
			$waittime=$waittimepaladium
		EndIf
		if $type=6 then
			$pallacolor=$carcolorbasic
			$waittime=$waittimepaladium
		EndIf
		if $type=7 then
			$pallacolor=$pircolorbasic
			$waittime=$waittimepirate
		EndIf
		if $type=8 then
			$pallacolor=$eggcolorbasic
			$waittime=$waittimebox
		EndIf


		Status("Collecting")
		 Avvia1()
	  case $c=2
		 Avvia2()
	  case $c=3
		 Avvia3()
	  case $c=4
		 Avvia4()
	  case $c=5
		 Avvia5()
	  case $c=6
		 Avvia6()
	  case $c=7
		 Avvia7()
	  case $c=8
		 Avvia8()
	  case $c=9
		 Avvia9()
	  case $c=10
		 Avvia10()
	  case $c=11
		 Avvia11()
	  case $c=12
		 Avvia12()
	  case $c=13
		 Ricerca()



	EndSelect
	if $c=50 Then
		ExitLoop
		WhileMenu()
	EndIf

	WEnd

EndFunc



Func Avvia1()
   while 1 ;finché ne trova nell'area uno continua a cliccare
	$Avvia1 = PixelSearch($Rett12_x1,$Rett12_y1,$Rett12_x2,$Rett12_y2,$pallacolor,0);0x4D6874
 		If not @error Then
			mouseCLick("left",$Avvia1[0],$Avvia1[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else; se non lo trova passa al successivo
			$c=2
			exitloop
		 EndIf
   wend
EndFunc

Func Avvia2()
	$Avvia2 = PixelSearch($Rett11_x1,$Rett11_y1,$Rett11_x2,$Rett11_y2,$pallacolor,0)
		If not @error Then
			mouseCLick("left",$Avvia2[0],$Avvia2[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=3
		EndIf
EndFunc

Func Avvia3()
	$Avvia3 = PixelSearch($Rett10_x1,$Rett10_y1,$Rett10_x2,$Rett10_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia3[0],$Avvia3[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=4
		EndIf
EndFunc

Func Avvia4()
	$Avvia4 = PixelSearch($Rett9_x1,$Rett9_y1,$Rett9_x2,$Rett9_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia4[0],$Avvia4[1],1,0)

			ToolTip("Collecting",0,0)
			Sber()
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=5
		EndIf
EndFunc

Func Avvia5()
	$Avvia5 = PixelSearch($Rett8_x1,$Rett8_y1,$Rett8_x2,$Rett8_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia5[0],$Avvia5[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=6
		EndIf
EndFunc

Func Avvia6()
	$Avvia6 = PixelSearch($Rett7_x1,$Rett7_y1,$Rett7_x2,$Rett7_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia6[0],$Avvia6[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=7
		EndIf
EndFunc

Func Avvia7()
	$Avvia7 = PixelSearch($Rett6_x1,$Rett6_y1,$Rett6_x2,$Rett6_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia7[0],$Avvia7[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=8
		EndIf
EndFunc

Func Avvia8()
	$Avvia8 = PixelSearch($Rett5_x1,$Rett5_y1,$Rett5_x2,$Rett5_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia8[0],$Avvia8[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=9
		EndIf
EndFunc

Func Avvia9()
	$Avvia9 = PixelSearch($Rett4_x1,$Rett4_y1,$Rett4_x2,$Rett4_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia9[0],$Avvia9[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=10
		EndIf
EndFunc

Func Avvia10()
	$Avvia10 = PixelSearch($Rett3_x1,$Rett3_y1,$Rett3_x2,$Rett3_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia10[0],$Avvia10[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=11
		EndIf
EndFunc

Func Avvia11()
	$Avvia11 = PixelSearch($Rett2_x1,$Rett2_y1,$Rett2_x2,$Rett2_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia11[0],$Avvia11[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=12
		EndIf
EndFunc

Func Avvia12()
	$Avvia12 = PixelSearch($Rett1_x1,$Rett1_y1,$Rett1_x2,$Rett1_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia12[0],$Avvia12[1],1,0)
			Sber()
			ToolTip("Collecting",0,0)
			sleep($waittime+random($waittimerandom))
			$c=1
		 Else
			$c=13
		EndIf
EndFunc


Func Ricerca() ;Cerca nella minimappa
   Local $randomX, $RandomY, $time


		$time=1
		if $type = 1 Then
			$RandomX = Random($Mini_x1,$Mini_x2,1)
			$RandomY = Random($Mini_y1,$Mini_y2,1)
		ElseIf $type = 2 Then
			$RandomX = Random($Pala_x1,$Pala_x2,1)
			$RandomY = Random($Pala_y1,$Pala_y2,1)
		Else
			$RandomX = Random($Mini_x1,$Mini_x2,1)
			$RandomY = Random($Mini_y1,$Mini_y2,1)
		EndIf

   MouseClick("left",$RandomX,$RandomY,1,0)

			ToolTip("Searching",0,0)

	$time=$waittimeflight+round(random($waittimeflightrandom))
	while 1
		if $run=0 Then
			WhileMenu()
			ExitLoop
		EndIf

		Menu()
		if $escaping=1 Then
			EnemyDetector()
		EndIf

		if $canrepair=1 Then
		HP_checker()
		EndIf
		 $time=$time-1

		ToolTip("Searching: " & $time,0,0)
		if $time=0 then
			ExitLoop
		EndIf
	   $Avvia12 = PixelSearch($Rett1_x1,$Rett1_y1,$Rett1_x2,$Rett1_y2,$pallacolor,0)
 		If not @error Then
			mouseCLick("left",$Avvia12[0],$Avvia12[1],1,0)

			ToolTip("Collecting",0,0)

			Sber()
			sleep($waittime+random($waittimerandom))
			$c=1
			exitloop
		EndIf

	WEnd

EndFunc




Func HP_checker()
Local $color,$x,$y
	FileDelete("data/run/hp.jpg")
	_ScreenCapture_Capture("data/run/hp.jpg", $HP_x1, $HP_y1, $HP_x2, $HP_y2+2)
	GUICtrlSetImage ($pichp, "data/run/hp.jpg")

	FileDelete("data/run/sh.jpg")
	_ScreenCapture_Capture("data/run/sh.jpg", $HP_x1, $HP_y1+18, $HP_x2, $HP_y2+18)
	GUICtrlSetImage ($picsh, "data/run/sh.jpg")

	Menu()
	$color=PixelGetColor($HP_x2-5,$HP_y2-6.5,100)
	if $color=$hpcolor Then
		$hp_status=1
		$repairing=0
		Else
			$hp_status=0
			TrayTip("Status","Ship is repairing",1)

			ToolTip("Ship is repairing",0,0)
			if $repairing=0 Then
				$repairing=1
				if $type <> 2 then
					_ImageSearch("data/port.png",1,$x,$y,100)
					MouseClick("left",$x,$y,1,0)
					MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Repairing")
					$c=50
				EndIf

				if $type=2 Then
					MouseClick("left",$Pala_x2/2,$Pala_y2,1,0)
				EndIf
				Status("Repairing")
				while 1
				HP_checker()
				if $hp_status = 1 Then
					Avvia()
					ExitLoop
					EndIf
				Wend
				$c=0
			EndIf

	EndIf

EndFunc

;~ ------------------------------------------------------------------------------------------------
;Ricerca Rettangolo
;~ ------------------------------------------------------------------------------------------------
Func Select_rectangle()
Local $Selected=0
Local $Coordinate[4]
$area = GUICreate("", 1, 1, 1, 1, $WS_POPUP, $WS_EX_TOPMOST)
GUISetBkColor(0x33FF00, $area)
WinSetTrans($area, "", 80)
GUISetState()
While $Selected = 0
    If _IsPressed("1") Then
        $mp = MouseGetPos()
        WinMove($area, "", $mp[0], $mp[1], 1, 1)

        While _IsPressed('01')
            $pos = MouseGetPos()
            global $lefts = Order($mp[0], $pos[0])
            global $tops = Order($mp[1], $pos[1])
            WinMove($area, "", $lefts[0], $tops[0], $lefts[1], $tops[1])
            ConsoleWrite($lefts[0] & ', ' & $tops[0] & ', ' & $lefts[1] & ', ' & $tops[1] & @CRLF)
        WEnd

        $Coordinate[0]=$lefts[0]
        $Coordinate[1]=$tops[0]
        $Coordinate[2]=$lefts[0]+$lefts[1]
        $Coordinate[3]=$tops[0]+ $tops[1]
        $Selected=1
     EndIf
  Wend
Guidelete($area)
return $coordinate
EndFunc


Func Show_areas()
$area = GUICreate("",$Mini_x2-$Mini_x1,$Mini_y2-$Mini_x1, $Mini_x1, $Mini_y1, $WS_POPUP, $WS_EX_TOPMOST)
GUISetBkColor(0x33FF00, $area)
WinSetTrans($area, "", 80)

		 GUISetState(@SW_show, $area)

;~         WinMove($area, "", $Mini_x1, $Mini_y1, $Mini_x2, $Mini_y2)

EndFunc



Func Order($a, $b)
    Dim $res[2]
    If $a < $b Then
        $res[0] = $a
        $res[1] = $b - $a
    Else
        $res[0] = $b
        $res[1] = $a - $b
    EndIf
    Return $res
EndFunc

Func ESCI()
	Exit

EndFunc
;Waiter()

Func Menu()


	;;TRAY
	Local $msg = TrayGetMsg()
	Select
		Case $msg = 0

		Case $msg = $startitem
					Start()
		Case $msg = $stopitem
					Stop()
		Case $msg = $exititem
					Exit

	EndSelect
	;;TRAY end
	$nMsg = GUIGetMsg()
	Switch $nMsg
		 Case $GUI_EVENT_CLOSE
            Exit
		Case $Button1
			$result = 0
				$result=_ImageSearch("data/port.png",1,$x,$y,100)
				If $result = 1 Then
					MouseClick("left",$x,$y,1,0)
				EndIf
			Stop()
		Case $Button10
			GUISetState(@SW_HIDE, $Form1_1)
		WinActivate("www.DarkOrbit.com", "")
		sleep(300)
		Global  $Rett1_x1=0
		Global  $Rett1_y1=60
		 Global $Rett1_x2=@DesktopWidth
		 Global $Rett1_y2=@DesktopHeight
		 MinimapDetector()
		 PaladiumDetector()
		 HealthBarDetector()
		 BorderDetector()
		 GUISetState(@SW_show, $Form1_1)

		IniWrite( @ScriptDir &"\settings.ini" , "Hra_nahore" , "x" , $Rett1_x1)
		 IniWrite( @ScriptDir &"\settings.ini" , "Hra_nahore" , "y" , $Rett1_y1)
		 IniWrite( @ScriptDir &"\settings.ini" , "Hra_dole" , "x" , $Rett1_x2)
		 IniWrite( @ScriptDir &"\settings.ini" , "Hra_dole" , "y" , $Rett1_y2)

		 IniWrite( @ScriptDir &"\settings.ini" , "Mini_od" , "x" , $Mini_x1)
		 IniWrite( @ScriptDir &"\settings.ini" , "Mini_od" , "y" , $Mini_y1)
		 IniWrite( @ScriptDir &"\settings.ini" , "Mini_do" , "x" , $Mini_x2)
		 IniWrite( @ScriptDir &"\settings.ini" , "Mini_do" , "y" , $Mini_y2)

		 IniWrite( @ScriptDir &"\settings.ini" , "Pala_od" , "x" , $Pala_x1)
		 IniWrite( @ScriptDir &"\settings.ini" , "Pala_od" , "y" , $Pala_y1)
		 IniWrite( @ScriptDir &"\settings.ini" , "Pala_do" , "x" , $Pala_x2)
		 IniWrite( @ScriptDir &"\settings.ini" , "Pala_do" , "y" , $Pala_y2)

		 IniWrite( @ScriptDir &"\settings.ini" , "HP_od" , "x" , $HP_x1)
		 IniWrite( @ScriptDir &"\settings.ini" , "HP_od" , "y" , $HP_y1)
		 IniWrite( @ScriptDir &"\settings.ini" , "HP_do" , "x" , $HP_x2)
		 IniWrite( @ScriptDir &"\settings.ini" , "HP_do" , "y" , $HP_y2)

		 IniWrite( @ScriptDir &"\settings.ini" , "Border_od" , "x" , $Border_x1)
		 IniWrite( @ScriptDir &"\settings.ini" , "Border_od" , "y" , $Border_y1)
		 IniWrite( @ScriptDir &"\settings.ini" , "Border_do" , "x" , $Border_x2)
		 IniWrite( @ScriptDir &"\settings.ini" , "Border_do" , "y" , $Border_y2)
		WinActivate("UltraBot", "")
		 MsgBox(0,"Settings","All has been seted and saved")
		Case $Button5
			Start()
		Case $Button6
			Stop()
;~ 		Case $Button7
;~ 		 GUISetState(@SW_HIDE, $Form1_1)
		 Local $cord2=Select_rectangle()
;~ 		 $HP_x1=$cord2[0]
;~ 		 $HP_y1=$cord2[1]
;~ 		 $HP_x2=$cord2[2]
;~ 		 $HP_y2=$cord2[3]
;~ 		 HealthBarDetector()
		 GUISetState(@SW_SHOW, $Form1_1)
		Case $Button8
			$box=MsgBox(4,"Exit ?", "Are you sure with exit ?")
			if $box=6 then
				Exit
			EndIf
		Case $Button11
			if $showed=0 Then



				$area = GUICreate("Minimap",$Mini_x2-$Mini_x1,$Mini_y2-$Mini_y1, $Mini_x1, $Mini_y1, $WS_POPUP, $WS_EX_TOPMOST,$WS_EX_TOOLWINDOW)
				GUISetBkColor(0x33FF00, $area)
				WinSetTrans($area, "", 80)
				GUICtrlCreateLabel("Minimap",0,0,$Mini_x2-$Mini_x1,$Mini_y2-$Mini_y1,$SS_CENTER)
				GUISetState(@SW_show, $area)



				$area2 = GUICreate("Palladium",$Pala_x2-$Pala_x1,$Pala_y2-$Pala_y1, $Pala_x1, $Pala_y1, $WS_POPUP, $WS_EX_TOPMOST,$WS_EX_TOOLWINDOW)
				GUISetBkColor(0xFF0000, $area2)
				WinSetTrans($area2, "", 80)

				GUICtrlCreateLabel("Palladium",0,0,$Pala_x2-$Pala_x1,$Pala_y2-$Pala_y1,$SS_CENTER)
				GUISetState(@SW_show, $area2)

				$area3 = GUICreate("Hitpoints",$HP_x2-$HP_x1,$HP_y2-$HP_y1, $HP_x1, $HP_y1, $WS_POPUP, $WS_EX_TOPMOST,$WS_EX_TOOLWINDOW)
				GUISetBkColor(0xFF0000, $area3)
				WinSetTrans($area3, "", 80)
				GUICtrlCreateLabel("Hitpoints",0,0,$HP_x2-$HP_x1,$HP_y2-$HP_y1,$SS_CENTER)
				GUISetState(@SW_show, $area3)

				$area4 = GUICreate("Map checker",70,20, $Mini_x1-20, $Mini_y1-20, $WS_POPUP, $WS_EX_TOPMOST,$WS_EX_TOOLWINDOW) ;asi otocene data
				GUISetBkColor(0xFFFF00, $area4)
				WinSetTrans($area4, "", 80)
				GUICtrlCreateLabel("Map checker",0, 0,150,20)
				GUISetState(@SW_show, $area4)

				$area5 = GUICreate("Border",$Border_x2-$Border_x1,$Border_y1-$Border_y2,$Border_x1,$Border_y2 , $WS_POPUP, $WS_EX_TOPMOST,$WS_EX_TOOLWINDOW) ;


				GUISetBkColor(0xFFFF00, $area5)
				WinSetTrans($area5, "", 80)
				GUICtrlCreateLabel("Border",0, 0,150,20)
				GUISetState(@SW_show, $area5)

				$showed=1
			sleep(2000)
			GUIDelete($area)
			GUIDelete($area2)
			GUIDelete($area3)
			GUIDelete($area4)
			GUIDelete($area5)
			$showed=0


			EndIf

	EndSwitch
EndFunc

Func EnemyWhile()
	Local $time1=0
	$time1=$waittimeenemy+round(random($waittimeenemyrandom))
	While 1
		Menu()
		if $run=0 Then
			WhileMenu()
			ExitLoop
		EndIf
		$time1=$time1-1
		TrayTip(0,"Escaping: " & $time1,0)
		ToolTip("Escaping",0,0)

		if $time1=0 Then
			Avvia()
			$run=1
			ExitLoop
		EndIf
	WEnd
EndFunc

Func EnemyDetector()
	$EnemyDetector=0
	$enemy=0
		$EnemyDetector = PixelSearch($Rett1_x1,$Rett1_y1,$Rett1_x2,$Rett1_y2,$eiccolor,1)
		If not @error Then
			if GUICtrlRead($combo1) <> "EIC" Then
				$result = 0
				$result=_ImageSearch("data/port.png",1,$x,$y,100)
				If $result = 1 Then
					MouseClick("left",$x,$y,1,0)
					MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Escaping before EIC")
					ToolTip("Escaping before EIC",0,0)
					TrayTip("Status","Escaping before EIC",1)
					EnemyWhile()
				EndIf
			EndIf
		EndIf

		$EnemyDetector = PixelSearch($Rett1_x1,$Rett1_y1,$Rett1_x2,$Rett1_y2,$vrucolor,1)
		If not @error Then
			if GUICtrlRead($combo1) <> "VRU" Then
				$result = 0
				$result=_ImageSearch("data/port.png",1,$x,$y,100)
				If $result = 1 Then
					MouseClick("left",$x,$y,1,0)
					MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Escaping before VRU")
					ToolTip("Escaping before VRU",0,0)
					TrayTip("Status","Escaping before VRU",1)
					$enemy=1
					EnemyWhile()
				EndIf
			EndIf
		EndIf

		$EnemyDetector = PixelSearch($Rett1_x1,$Rett1_y1,$Rett1_x2,$Rett1_y2,$mmocolor,1)
		If not @error Then
			if GUICtrlRead($combo1) <> "MMO" Then
				$result = 0
				$result=_ImageSearch("data/port.png",1,$x,$y,100)
				If $result = 1 Then
					MouseClick("left",$x,$y,1,0)
					MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Escaping before MMO")
					ToolTip("Escaping before MMO",0,0)
					TrayTip(0,"Escaping before MMO",0)
					$enemy=1
					EnemyWhile()
				EndIf
			EndIf
		EndIf


EndFunc



Func MinimapDetector()
	Local $result = 0
	$result = _ImageSearch("data/minimap.png",1,$x,$y,100)
	If $result = 1 Then
		Global $Mini_x1=$x+21
		Global $Mini_y1=$y+37
		Global $Mini_x2=$x+21+183
		Global $Mini_y2=$y+37+112
	EndIf

EndFunc

Func PaladiumDetector()
	Local $result = 0
	$result = _ImageSearch("data/minimap.png",1,$x,$y,100)
	If $result = 1 Then
		Global $Pala_x1=$x+21+45
		Global $Pala_y1=$y+37+88
		Global $Pala_x2=$x+21+45+105
		Global $Pala_y2=$y+37+88+24

	EndIf
EndFunc


Func HealthBarDetector()
	Local $result = 0
	$result = _ImageSearch("data/healthbar.png",0,$x,$y,100)
	If $result = 1 Then
		Global $HP_x1=$x
		Global $HP_y1=$y
		Global $HP_x2=$x+63
		Global $HP_y2=$y+170
	EndIf



EndFunc

Func BorderDetector()
	Local $result = 0
	$result = _ImageSearch("data/border.png",0,$x,$y,100)
	If $result = 1 Then
		Global $Border_x2=$x+30
		Global $Border_y2=$y
		Global $Border_x1=$x-142
		Global $Border_y1=$y+115
	EndIf


EndFunc





Func Sber()
	if $type=1 then
			$boxnumbers=$boxnumbers+1
			MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " BonusBox collecting")
		EndIf
		if $type=2 then
			$palnumbers=$palnumbers+1
			MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Palladium collecting")
		EndIf
		if $type=3 then
;~ 			$palnumbers=$palnumbers+1
			MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Prometium collecting")
		EndIf
		if $type=4 then
;~ 			$palnumbers=$palnumbers+1
			MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Endurium collecting")
		EndIf
		if $type=5 then
;~ 			$palnumbers=$palnumbers+1
			MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Terbium collecting")
		EndIf
		if $type=6 then
;~ 			$palnumbers=$palnumbers+1
			MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " CargoBox collecting")
		EndIf
		if $type=7 then
;~ 			$palnumbers=$palnumbers+1
			MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " PirateBox collecting")
		EndIf
		if $type=8 then
;~ 			$palnumbers=$palnumbers+1
			MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " EasterEgg collecting")
		EndIf
EndFunc

Func MapDetect()
	$map="0"
	$result = 0
	$result=_ImageSearchArea("data/map_number/11.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="1-1"
		GUICtrlSetImage ($pic1, "data/maps/11.jpg")
	EndIf

	$result = 0
	$result=_ImageSearchArea("data/map_number/12.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="1-2"
		GUICtrlSetImage ($pic1, "data/maps/12.jpg")
	EndIf

	$result = 0
	$result=_ImageSearchArea("data/map_number/13.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="1-3"
		GUICtrlSetImage ($pic1, "data/maps/13.jpg")
	EndIf

	$result = 0
	$result=_ImageSearchArea("data/map_number/14.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="1-4"
		GUICtrlSetImage ($pic1, "data/maps/14.jpg")
	EndIf

	$result = 0
	$result=_ImageSearchArea("data/map_number/15.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="1-5"
		GUICtrlSetImage ($pic1, "data/maps/15.jpg")
	EndIf

	$result = 0
	$result=_ImageSearchArea("data/map_number/16.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="1-6"
		GUICtrlSetImage ($pic1, "data/maps/16.jpg")
	EndIf

	$result = 0
	$result=_ImageSearchArea("data/map_number/17.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="1-7"
		GUICtrlSetImage ($pic1, "data/maps/17.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/18.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="1-8"
		GUICtrlSetImage ($pic1, "data/maps/18.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/21.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="2-1"
		GUICtrlSetImage ($pic1, "data/maps/21.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/22.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="2-2"
		GUICtrlSetImage ($pic1, "data/maps/22.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/23.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="2-3"
		GUICtrlSetImage ($pic1, "data/maps/23.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/24.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="2-4"
		GUICtrlSetImage ($pic1, "data/maps/24.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/25.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="2-5"
		GUICtrlSetImage ($pic1, "data/maps/25.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/26.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="2-6"
		GUICtrlSetImage ($pic1, "data/maps/26.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/27.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="2-7"
		GUICtrlSetImage ($pic1, "data/maps/27.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/28.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="2-8"
		GUICtrlSetImage ($pic1, "data/maps/28.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/31.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="3-1"
		GUICtrlSetImage ($pic1, "data/maps/31.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/32.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="3-2"
		GUICtrlSetImage ($pic1, "data/maps/32.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/33.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="3-3"
		GUICtrlSetImage ($pic1, "data/maps/33.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/34.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="3-4"
		GUICtrlSetImage ($pic1, "data/maps/34.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/35.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="3-5"
		GUICtrlSetImage ($pic1, "data/maps/35.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/36.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="3-6"
		GUICtrlSetImage ($pic1, "data/maps/36.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/37.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="3-7"
		GUICtrlSetImage ($pic1, "data/maps/37.jpg")
	EndIf

	$result = 0
	$result=_ImageSearchArea("data/map_number/38.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="3-8"
		GUICtrlSetImage ($pic1, "data/maps/38.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/41.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="4-1"
		GUICtrlSetImage ($pic1, "data/maps/41.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/42.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="4-2"
		GUICtrlSetImage ($pic1, "data/maps/42.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/43.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="4-3"
		GUICtrlSetImage ($pic1, "data/maps/43.jpg")
	EndIf


$result = 0
	$result=_ImageSearchArea("data/map_number/44.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="4-4"
		GUICtrlSetImage ($pic1, "data/maps/44.jpg")
	EndIf

$result = 0
	$result=_ImageSearchArea("data/map_number/45.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="4-5"
		GUICtrlSetImage ($pic1, "data/maps/45.jpg")
	EndIf


	$result = 0
	$result=_ImageSearchArea("data/map_number/51.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="5-1"
		GUICtrlSetImage ($pic1, "data/maps/51.jpg")
	EndIf

	$result = 0
	$result=_ImageSearchArea("data/map_number/52.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="5-2"
		GUICtrlSetImage ($pic1, "data/maps/52.jpg")
	EndIf

	$result = 0
	$result=_ImageSearchArea("data/map_number/53.png",1,$Mini_x1-50,$Mini_y1-50,$Mini_x1+70,$Mini_y1,$x,$y, 100)
	If $result = 1 Then
		$map="5-3"
		GUICtrlSetImage ($pic1, "data/maps/53.jpg")
	EndIf

Menu()
GUICtrlSetData($label9,"Map: " & $map)


EndFunc

Func Start()
	TrayTip("Status","Start collecting",1)
	WinActivate("www.DarkOrbit.com", "")
	Sleep(300)
	MapDetect()
	if GUICtrlRead($checkbox1) = $GUI_CHECKED then
		$canrepair=1
	Else
		$canrepair=0
	EndIf
	if GUICtrlRead($checkbox2) = $GUI_CHECKED then
		$escaping=1
	Else
		$escaping=0
	EndIf

	if GUICtrlRead($checkbox3) = $GUI_CHECKED then
		$buttonblock=1


				$area6 = GUICreate("Button blocker",$Border_x2-$Border_x1,$Border_y1-$Border_y2,$Border_x1,$Border_y2 , $WS_POPUP, $WS_EX_TOPMOST,$WS_EX_TOOLWINDOW)

				GUISetBkColor(0xFF0000, $area6)
				WinSetTrans($area6, "", 80)
				GUICtrlCreateLabel("Button blocker",0, 0,150,20)
				GUISetState(@SW_show, $area6)
	Else
		$buttonblock=0
	EndIf


	if BitAND(GUICtrlRead($radio_1), $GUI_CHECKED) = $GUI_CHECKED then
				$type=1
				MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Start collecting bonusboxes")
			EndIf
			if BitAND(GUICtrlRead($radio_2), $GUI_CHECKED) = $GUI_CHECKED then
				$type=2
				MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Start collecting palladium")
			EndIf
			if BitAND(GUICtrlRead($radio_3), $GUI_CHECKED) = $GUI_CHECKED then
				$type=3
				MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Start collecting prometium")
			EndIf
			if BitAND(GUICtrlRead($radio_4), $GUI_CHECKED) = $GUI_CHECKED then
				$type=4
				MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Start collecting Endurium")
			EndIf
			if BitAND(GUICtrlRead($radio_5), $GUI_CHECKED) = $GUI_CHECKED then
				$type=5
				MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Start collecting Terbium")
			EndIf
			if BitAND(GUICtrlRead($radio_6), $GUI_CHECKED) = $GUI_CHECKED then
				$type=6
				MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Start collecting CargoBox")
			EndIf
			if BitAND(GUICtrlRead($radio_7), $GUI_CHECKED) = $GUI_CHECKED then
				$type=7
				MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Start collecting PirateBox")
			EndIf
			if BitAND(GUICtrlRead($radio_8), $GUI_CHECKED) = $GUI_CHECKED then
				$type=8
				MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Start collecting EasterEgg")
			EndIf
			$run=1
			Avvia()
			GUISetState(@SW_HIDE, $Form1_1)
endFunc

Func Stop()
	GUIDelete($area6)
	Status("Waiting")
	ToolTip("Waiting",0,0)
	TrayTip("Status","Waiting",1)
	MemoWrite(@HOUR & ":" & @MIN  & ":" & @SEC & " Stoped")
			;$c=50
			$run=0
	WinActivate("UltraBot", "")
	GUISetState(@SW_SHOW, $Form1_1)
	$c=99
;~ 	$pallacolor=" "
	WhileMenu()
EndFunc




Func CheckVersion()

FileDelete("version.txt")
$line=-1
; Advanced example - downloading in the background
Local $hDownload = InetGet("http://www.ultrabot.czweb.org/ver/version.txt","version.txt", 1, 1)
Do
    Sleep(250)
Until InetGetInfo($hDownload, 2) ; Check if the download is complete.
Local $nBytes = InetGetInfo($hDownload, 0)
InetClose($hDownload) ; Close the handle to release resources.


Local $file = FileOpen("version.txt", 0)


; Check if file opened for reading OK
If $file = -1 Then
	MsgBox(0, "Error", "Unable to connect update server.")
	Exit

EndIf

; Read in lines of text until the EOF is reached
While 1
	Local $line = FileReadLine($file)
	If @error = -1 Then ExitLoop
;~ 	MsgBox(0, "Line read:", $line)
if $line <> $version Then
	MsgBox(0,"Old version","You must update, this version is not supported.")
	Exit

EndIf
WEnd

FileClose($file)
FileDelete("version.txt")



EndFunc


;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;













While 1
	Menu()

WEnd
Func WhileMenu()
	While 1
		Menu()
	WEnd
EndFunc
