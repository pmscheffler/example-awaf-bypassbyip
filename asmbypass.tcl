when ASM_REQUEST_DONE priority 100 {

    # log local0. "Violation Data [ASM::violation details] "
    # log local0. "client_addr [client_addr]"
    foreach {viol} [ASM::violation names] {
        # log local0. "details: $viol "

        if { [class match [client_addr] eq asmMethodBypass ] } {
            if { $viol eq "VIOLATION_ILLEGAL_METHOD" } {
                log local0. "Bypassing allowed device"
                ASM::unblock
            }
        }
    }
}