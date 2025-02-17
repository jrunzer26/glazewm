echo "Run this in an administrator powershell terminal"

echo "Installing GlazeWM"
winget install GlazeWM

# Define the source and target paths
$sourcePath = "C:\Users\$Env:USERNAME\.glzr\glazewm\config.yaml"
$targetPath = "$pwd\config.yaml"

echo "Creating a symbolic link from $sourcePath to $targetPath"
cmd /c mklink $sourcePath $targetPath