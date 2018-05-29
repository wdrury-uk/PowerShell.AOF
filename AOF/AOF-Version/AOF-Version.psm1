<#
    .Synopsis
    Displays version informtion of the module

    .Description
    Displays full version and contain information for the module

    .Example
    Get-AOFVersion

#>

function Get-AOFVersion {
    [CmdletBinding()]
    param (
        
    )
    
    begin {
        $ver = 1.0.0
        $authorFullname = 'Wayne Drury'
    }
    
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
