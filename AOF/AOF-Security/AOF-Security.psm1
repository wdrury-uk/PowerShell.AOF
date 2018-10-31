<#
    .Synopsis
    Create an AES key file

    .Description
    Create an AES key file of specified byte size 16, 32, 64.

    .Example
    Add-AESKey -Path C:\AESfile.key -Size 16

#>

function Add-AESKey {
    [CmdletBinding()]

    param(
        [string] $Path,
        [int] $KeySize
    )


    begin {
        $KeyFile = $Path
        $Key = New-Object Byte[] $KeySize   # You can use 16, 24, or 32 for AES
        [Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($Key)
        $Key | out-file $KeyFile    }
    
    process {
        $version = @{
            version = $ver
            author = $authorFullname
        }

        return $version
    }
    
    end {
    }
}
