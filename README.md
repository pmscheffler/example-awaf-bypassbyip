# AWAF Bypass by IP

## Intro

Quick iRule and Datagroup to allow bypassing an ASM block for a particular IP address, for a particular VIOLATION type

A datagroup needs to be added (listed below) as a String Datagroup with the IPs listed in the "String" field for IPs where the violation needs to be skipped


## Datagroup
''' 
ltm data-group internal /Common/asmMethodBypass {
    records {
        10.2.10.10 { }
        10.1.14.11 { }
    }
    type string
}
'''


### enhancement ideas
In the value field, add VIOLATION names for that IP that should be bypassed
