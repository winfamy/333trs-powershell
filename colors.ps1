function switchColors ($a) {
    $count = 0
    while ($count -lt $a.Count) {
        $host.UI.RawUI.ForegroundColor = $a[$count]
        Write-Host "Hello World"
        $count += 1
    }
}

switchColors "Green", "Blue", "Cyan", "Red"