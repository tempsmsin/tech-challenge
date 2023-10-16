#We have a nested object. We would like a function where you pass in the object and a key and
#get back the value.
#The choice of language and implementation is up to you.
#Example Inputs
#object = {“a”:{“b”:{“c”:”d”}}}
#key = a/b/c

object = {“a”:{“b”:{“c”:”d”}}}
key = a/b/c
$value1 = Get-NestedValue -object $object -key $key
Write-Host "Value 1: $value1"

result : Value 1 : d
