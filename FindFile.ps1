function Find-File {
    param([string]$FileName)
    
    $query = "'%$FileName%'"
    $conn = New-Object -ComObject ADODB.Connection
    $rs = New-Object -ComObject ADODB.Recordset
    
    try {
        $conn.Open("Provider=Search.CollatorDSO;Extended Properties='Application=Windows';")
        $rs.Open("SELECT System.ItemPathDisplay FROM SYSTEMINDEX WHERE System.FileName LIKE $query", $conn)

        $found = $false
        while (-not $rs.EOF) {
            $path = $rs.Fields.Item("System.ItemPathDisplay").Value
            Write-Host "Found: $path" -ForegroundColor Green
            $found = $true
            $rs.MoveNext()
        }
        $rs.Close()
        $conn.Close()

        if (-not $found) {
            Write-Host "No file named '$FileName' found on your computer." -ForegroundColor Red
        }
    } catch {
        Write-Host "An error occurred: $_" -ForegroundColor Red
    }
}
