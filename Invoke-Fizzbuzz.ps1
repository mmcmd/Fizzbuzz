function Invoke-Fizzbuzz {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateRange(1, [int]::MaxValue)]
        [int]
        $Range
    )

    1..$Range | ForEach-Object {
        if ((($_ % 3) -eq 0) -and (($_ % 5) -eq 0)) {
            Write-Host "$_`: Fizzbuzz"
        }
        elseif (($_ % 3) -eq 0) {
            Write-Host "$_`: Fizz"
        }
        elseif (($_ % 5) -eq 0) {
            Write-Host "$_`: Buzz"
        }
        else {
            Write-Host $_
        }

    }
}