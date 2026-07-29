[CmdletBinding()]
param(
    [string]$Path = ".",
    [int]$WarningDays = 30
)

Get-ChildItem -Path $Path -Recurse -File -Include *.cer,*.crt |
    ForEach-Object {
        try {
            $cert = [System.Security.Cryptography.X509Certificates.X509Certificate2]::new($_.FullName)
            [pscustomobject]@{
                File       = $_.FullName
                Subject    = $cert.Subject
                Thumbprint = $cert.Thumbprint
                NotAfter   = $cert.NotAfter
                DaysLeft   = [math]::Floor(($cert.NotAfter - (Get-Date)).TotalDays)
                Alert      = ($cert.NotAfter -lt (Get-Date).AddDays($WarningDays))
            }
        }
        catch {
            Write-Warning "Could not read certificate: $($_.FullName)"
        }
    } | Sort-Object DaysLeft
