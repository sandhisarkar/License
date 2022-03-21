!include "MUI2.nsh"


!define PRODUCT_NAME "License"
!define PRODUCT_VERSION "1.0.0"
!define PRODUCT_PUBLISHER "Nevaeh Technology Pvt. Ltd."
!define PRODUCT_WEB_SITE "http://www.nevaehtech.com"


;Interface Configuration

  !define MUI_HEADERIMAGE 
  ;!define MUI_HEADERIMAGE_BITMAP "final_screen.bmp"
  #!define MUI_HEADERIMAGE_BITMAP_NOSTRETCH
  #!define MUI_HEADERIMAGE_BITMAP_RTL "final_screen.bmp"
  !define MUI_ABORTWARNING
  !define MUI_INSTFILESPAGE_COLORS "FFFFFF 000000"
  ;!define MUI_ICON "BZer.ico"
  ;!define MUI_WELCOMEFINISHPAGE_BITMAP "final_screen.bmp"
;--------------------------------
;Pages


OutFile "JAN-FEB19LicenseBag.exe"
; Background color

/*
Section "TestSection"
	#${registry::Open} "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall" "/S=1 /N=FPDKMA" $0
	${registry::Open} "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" "/S=1 /NS=${PRODUCT_NAME}" $0

	StrCmp $0 0 0 loop
	MessageBox MB_OK "Error" IDOK close

	loop:
	${registry::Find} "$0" $1 $2 $3 $4
        StrCmp $1 "" openfolder close
        
	MessageBox MB_OKCANCEL '$$1    "path"   =[$1]$\n\
				$$2    "value" =[$2]$\n\
				$$3    "string" =[$3]$\n\
				$$4    "type"   =[$4]$\n\
								$\n\
				Find next?' IDOK loop
        
        openfolder:
        
	close:
        SetOutPath "$2"
	${registry::Close} "$0"
	${registry::Unload}
	
SectionEnd
*/
Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
/*
!insertmacro MUI_PAGE_LICENSE "License.txt"
*/
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_PAGE_INSTFILES
Section "MainSection"
        SetOutPath "$INSTDIR"
        SetOverWrite on
        File EDMSLIC.ini
SectionEnd