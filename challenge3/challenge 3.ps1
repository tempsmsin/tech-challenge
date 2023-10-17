#We have a nested object. We would like a function where you pass in the object and a key and
#get back the value.
#The choice of language and implementation is up to you.
#Example Inputs
#object = {“a”:{“b”:{“c”:”d”}}}
#key = a/b/c



object = {“a”:{“b”:{“c”:”d”}}}
key = a/b/c

function Get-NestedValue {
    param (
        [Parameter(Mandatory=$true)]
        [System.Collections.Hashtable] $object,
        
        [Parameter(Mandatory=$true)]
        [string] $key
    )

    $keys = $key -split '/'
    $currentObject = $object

    foreach ($k in $keys) {
        if ($currentObject.ContainsKey($k)) {
            $currentObject = $currentObject[$k]
        } else {
            Write-Host "Key '$key' not found in the object."
            return $null
        }
    }

    return $currentObject
}


$value1 = Get-NestedValue -object $object -key $key
Write-Host "Value 1: $value1"

result : Value 1 : d
