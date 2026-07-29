[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory)]
    [string]$TenantDomain,

    [switch]$WhatIfOnly = $true
)

$users = @(
    @{ DisplayName = "Alice HR"; Alias = "alice.hr"; Department = "HR" },
    @{ DisplayName = "David Finance"; Alias = "david.finance"; Department = "Finance" },
    @{ DisplayName = "Priya Security"; Alias = "priya.security"; Department = "Security" },
    @{ DisplayName = "Mani PKI Admin"; Alias = "mani.pkiadmin"; Department = "Security" }
)

foreach ($user in $users) {
    $upn = "$($user.Alias)@$TenantDomain"
    Write-Host "Planned synthetic user: $upn ($($user.Department))"
    if (-not $WhatIfOnly -and $PSCmdlet.ShouldProcess($upn, "Create synthetic lab user")) {
        throw "Implementation intentionally disabled. Add Microsoft Graph commands only in your own lab."
    }
}
