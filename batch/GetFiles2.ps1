# Script: Download file(s) from url(s)

$file = "C:\Users\Aaron\Downloads\urls.txt"
$dir = "C:\Users\Aaron\Downloads\1\"

foreach($line in Get-Content $file) {
	$data = $line.Split("`t")
	$filename = $data[0] + ".jpg"
	$url = $data[1]
	$path = $dir + $filename
	
	if(!(Split-Path -parent $path) -or !(Test-Path -pathType Container (Split-Path -parent $path))) {
		$path = Join-Path $pwd (Split-Path -leaf $path)
	}
	
	"Downloading [$url]`nSaving at [$path]"
	$client = new-object System.Net.WebClient
	$client.DownloadFile($url, $path)
}
