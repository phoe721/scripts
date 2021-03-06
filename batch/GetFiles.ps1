# Script: Download file(s) from url(s)

$file = "C:\Users\Aaron\Downloads\urls.txt"
$dir = "C:\Users\Aaron\Downloads\"

foreach($url in Get-Content $file) {
	$filename = $url.Substring($url.LastIndexOf("/") + 1)
	$path = $dir + $filename
	
	if(!(Split-Path -parent $path) -or !(Test-Path -pathType Container (Split-Path -parent $path))) {
		$path = Join-Path $pwd (Split-Path -leaf $path)
	}
	
	"Downloading [$url]`nSaving at [$path]" 
	$client = new-object System.Net.WebClient 
	$client.DownloadFile($url, $path) 
}
