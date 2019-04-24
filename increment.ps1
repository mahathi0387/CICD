
param($counter)

[xml]$xmldata = Get-Content "C:\Users\HAI\training\CICD\pom.xml"

$Version = $xmldata.project.version
$VersionSplitHyphen = $Version -split '-'
write-host "version is" $VersionSplitHyphen[0]
write-host "version is" $version

$vers=[system.version]$VersionSplitHyphen[0]
Write-Host ("Current Major: " + $vers.Major)
Write-Host ("Current Minor: " + $vers.Minor)
Write-Host ("Current Build: " + $vers.Build)


If ($counter -eq 'release') 

{
$newminor= [int]$vers.minor +  1

}


If ($counter -eq 'snapshot') 

{
$newbuild= [int]$vers.build +  1

}

$newVersion = (New-Object -TypeName 'system.Version' -ArgumentList @($vers.Major, $vers.Minor, $vers.Build)).ToString()
write-host($newVersion)

$xmldata.project.version = $newVersion
$xmldata.Save("C:\Users\HAI\maventest\Maventestapp\pom.xml")




