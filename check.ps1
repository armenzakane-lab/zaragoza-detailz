Set-Location 'C:\Users\armen\.openclaw\workspace\zaragoza-detailz'
$files = @('index.html', 'book.html')
foreach ($f in $files) {
  $c = Get-Content $f -Raw
  $open = ([regex]::Matches($c, '<script')).Count
  $close = ([regex]::Matches($c, '</script>')).Count
  $body = $c.Contains('</body>')
  $html = $c.Contains('</html>')
  Write-Host "$f : open=$open close=$close body=$body html=$html"
}
