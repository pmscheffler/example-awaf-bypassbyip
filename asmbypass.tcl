when ASM_REQUEST_DONE priority 100 {

    set i 0
    log local0. "Violation Data [ASM::violation details] "
    log local0. "client_addr [client_addr]"
    foreach {viol} [ASM::violation names] {
        log local0. "details: $viol "
        # set details [lindex [ASM::violation details] $i]
        if { $viol eq "VIOLATION_ILLEGAL_METHOD" } {
            if { [class match [client_addr] eq asmMethodBypass ] } {
                log local0. "Bypassing allowed device"
                ASM::unblock
            }
        }
    }
}