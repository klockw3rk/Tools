#Insert Base64 hash value surrounded by single quotes
$b64 = ''

#Insert desired file output name. Full path is desired
$filename = 'C:\path\to\final\destination\test.txt'

#This bit of code converts base64 string into readable bytes
$bytes = [Convert]::FromBase64String($b64)

#This bit of code writes the bytes into a file.
[IO.File]::WriteAllBytes($filename, $bytes)