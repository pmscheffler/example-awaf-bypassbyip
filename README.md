# AWAF Bypass by IP

## Intro

Quick iRule and Datagroup to allow bypassing an ASM block for a particular IP address, for a particular VIOLATION type

Note that for the iRule to fire, the Security Policy must have 'ASM iRules capabilities' enabled.  For more details:
https://support.f5.com/csp/article/K15573541 

A datagroup needs to be added (listed below) as a String Datagroup with the IPs listed in the "String" field for IPs where the violation needs to be skipped


## Datagroup
``` 
ltm data-group internal /Common/asmMethodBypass {
    records {
        10.2.10.10 { }
        10.1.14.11 { }
    }
    type string
}
```


### enhancement ideas
In the value field, add VIOLATION names for that IP that should be bypassed

### Note:
Offered as a simple example of what is capable with iRules and a Security Policy on BIG-IP Advanced WAF

Care MUST be taken to ensure that any violations that are "Unblocked" are properly assessed and categorized by your Security Team.

No warranty offered on how this works in a particular environment. If you have questions, please reach out to me or your F5 Reseller