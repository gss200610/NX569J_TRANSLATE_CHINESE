#magick mogrify * .png

cls 
echo. ***** SCRIPT UPDATE ******** 
echo. Removendo zip antigo..... 
adb shell rm -f /storage/CFB4-9BCF/traducao/Update_twrp.zip 
echo. Enviando arquivo novo..... 
adb push "C:\BatchApkTool\Update_twrp\Update_twrp.zip" /storage/CFB4-9BCF/traducao/ 
echo. Reiniciando o celular... 
adb reboot recovery  
echo. FINALIZADO!!!!

cls && ^
echo. ***** SCRIPT UPDATE DATA ******** 
echo. Removendo zip antigo..... 
adb shell rm -f  /storage/CFB4-9BCF/traducao/Update_data_twrp.zip 
echo. Enviando arquivo novo..... 
adb push "C:\BatchApkTool\Update_data_twrp\Update_data_twrp.zip" /storage/CFB4-9BCF/traducao/ 
echo. Reiniciando o celular... 
adb reboot recovery 
echo. FINALIZADO!!!!



cp "C:\BatchApkTool\_OUT_APK\base.apk" /data/app/com.google.android.GoogleCamera-1