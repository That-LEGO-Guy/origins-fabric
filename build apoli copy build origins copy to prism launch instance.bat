cd "C:\Users\Ryan Ryzen\Documents\Cool code\calio"
call gradlew.bat clean publishToMavenLocal > build.txt 2>&1

cd "C:\Users\Ryan Ryzen\Documents\Cool code\apoli"
call gradlew.bat clean publishToMavenLocal > build.txt 2>&1


cd "C:\Users\Ryan Ryzen\Documents\Cool code\origins-fabric"
call gradlew.bat clean build > build.txt 2>&1
copy "build\libs\Origins-1.13.0-pre.1+mc.1.21.1.jar" "C:\Users\Ryan Ryzen\Documents\Minecraft\PrismLauncher\instances\1.21.1 origins with conector\minecraft\mods" /y

echo done builds and copies run instance???
timeout 10

rmdir /s /q "C:\Users\Ryan Ryzen\Documents\Minecraft\PrismLauncher\instances\1.21.1 origins with conector\minecraft\mods\.connector"
start "launch instance" "C:\Users\Ryan Ryzen\Documents\Minecraft\PrisimLauncher-9.4\PrismLauncher\prismlauncher.exe" --launch "1.21.1 origins with conector"