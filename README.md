## Running sample
- Import samplesI/AndFixDemo to your IDE, append AndFixDemo dependencies with AndFix(library project or aar).
- Build project, save the package as 1.apk, and then install on device/emulator.
- Modify com.euler.test.A, references com.euler.test.Fix.
- Build project, save the package as 2.apk.
- Use apkpatch tool to make a patch.
- Rename the patch file to out.apatch, and then copy it to sdcard.
- Run 1.apk and view log.

## Generate .apatch file by providing the two package,

usage: apkpatch -f <new> -t <old> -o <output> -k <keystore> -p <***> -a <alias> -e <***>
 -a,--alias <alias>     keystore entry alias.
 -e,--epassword <***>   keystore entry password.
 -f,--from <loc>        new Apk file path.
 -k,--keystore <loc>    keystore path.
 -n,--name <name>       patch name.
 -o,--out <dir>         output dir.
 -p,--kpassword <***>   keystore password.
 -t,--to <loc>          old Apk file path.
 
 apkpatch.bat -f 2.apk -t 1.apk -o . -k ../app/android.keystore -p 123456 -a android.keystore -e 123456

## 关于混淆
If you enable ProGuard, you must save the mapping.txt, so your new version's build can use it with "-applymapping".