/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(___rt_sigqueueinfo)
    mov     ip, r7
    .cfi_register r7, ip
    ldr     r7, =__NR_rt_sigqueueinfo
    swi     #0
    mov     r7, ip
    .cfi_restore r7
    cmn     r0, #(MAX_ERRNO + 1)
    bxls    lr
    neg     r0, r0
    b       __set_errno_internal
END(___rt_sigqueueinfo)
.hidden ___rt_sigqueueinfo
