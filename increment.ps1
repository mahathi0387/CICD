[xml]$xmldata = Get-Content "C:\Users\HAI\maventest\Maventestapp\pom.xml"




$Version = $xmldata.project.version
$VersionSplitHyphen = $Version -split '-'
write-host "version is" $VersionSplitHyphen[0]


#$fileContents  = ($VersionSplitHyphen[0]| Select -Last 1)
#$parts=$fileContents.Split('=')
#$versionString = $parts[1].Replace('"','"')
#$version = [Version]$versionString
#$newVersionString = (New-Object -TypeName 'System.Version' -ArgumentList @($version.Major, ($version.Minor+1), $version.Build)).ToString()
#(gc $Verfile) -replace "$versionString", "$newVersionString" | sc $Verfile