; ModuleID = '/llk/IR/kernel/locking/spinlock.c_pt.bc'
source_filename = "../kernel/locking/spinlock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_trylock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_trylock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_trylock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_trylock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock_irq\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_unlock_irqrestore\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_unlock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_trylock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_lock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_lock_irq\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_lock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_unlock_irqrestore\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_unlock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_trylock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock_nested\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock_irq\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_unlock_irqrestore\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_unlock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in_lock_functions:\09\09\09\09\09"
module asm "\09.asciz \09\22in_lock_functions\22\09\09\09\09\09"
module asm "__kstrtabns_in_lock_functions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab__raw_spin_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_trylock to i32), ptr @__kstrtab__raw_spin_trylock, ptr @__kstrtabns__raw_spin_trylock }, section "___ksymtab+_raw_spin_trylock", align 4
@__kstrtab__raw_spin_trylock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_trylock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_trylock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_trylock_bh to i32), ptr @__kstrtab__raw_spin_trylock_bh, ptr @__kstrtabns__raw_spin_trylock_bh }, section "___ksymtab+_raw_spin_trylock_bh", align 4
@__kstrtab__raw_spin_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock to i32), ptr @__kstrtab__raw_spin_lock, ptr @__kstrtabns__raw_spin_lock }, section "___ksymtab+_raw_spin_lock", align 4
@__kstrtab__raw_spin_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock_irqsave to i32), ptr @__kstrtab__raw_spin_lock_irqsave, ptr @__kstrtabns__raw_spin_lock_irqsave }, section "___ksymtab+_raw_spin_lock_irqsave", align 4
@__kstrtab__raw_spin_lock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock_irq to i32), ptr @__kstrtab__raw_spin_lock_irq, ptr @__kstrtabns__raw_spin_lock_irq }, section "___ksymtab+_raw_spin_lock_irq", align 4
@__kstrtab__raw_spin_lock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock_bh to i32), ptr @__kstrtab__raw_spin_lock_bh, ptr @__kstrtabns__raw_spin_lock_bh }, section "___ksymtab+_raw_spin_lock_bh", align 4
@__kstrtab__raw_spin_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_unlock_irqrestore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_unlock_irqrestore to i32), ptr @__kstrtab__raw_spin_unlock_irqrestore, ptr @__kstrtabns__raw_spin_unlock_irqrestore }, section "___ksymtab+_raw_spin_unlock_irqrestore", align 4
@__kstrtab__raw_spin_unlock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_unlock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_unlock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_unlock_bh to i32), ptr @__kstrtab__raw_spin_unlock_bh, ptr @__kstrtabns__raw_spin_unlock_bh }, section "___ksymtab+_raw_spin_unlock_bh", align 4
@__kstrtab__raw_read_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_trylock to i32), ptr @__kstrtab__raw_read_trylock, ptr @__kstrtabns__raw_read_trylock }, section "___ksymtab+_raw_read_trylock", align 4
@__kstrtab__raw_read_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_lock to i32), ptr @__kstrtab__raw_read_lock, ptr @__kstrtabns__raw_read_lock }, section "___ksymtab+_raw_read_lock", align 4
@__kstrtab__raw_read_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_lock_irqsave to i32), ptr @__kstrtab__raw_read_lock_irqsave, ptr @__kstrtabns__raw_read_lock_irqsave }, section "___ksymtab+_raw_read_lock_irqsave", align 4
@__kstrtab__raw_read_lock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_lock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_lock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_lock_irq to i32), ptr @__kstrtab__raw_read_lock_irq, ptr @__kstrtabns__raw_read_lock_irq }, section "___ksymtab+_raw_read_lock_irq", align 4
@__kstrtab__raw_read_lock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_lock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_lock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_lock_bh to i32), ptr @__kstrtab__raw_read_lock_bh, ptr @__kstrtabns__raw_read_lock_bh }, section "___ksymtab+_raw_read_lock_bh", align 4
@__kstrtab__raw_read_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_unlock_irqrestore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_unlock_irqrestore to i32), ptr @__kstrtab__raw_read_unlock_irqrestore, ptr @__kstrtabns__raw_read_unlock_irqrestore }, section "___ksymtab+_raw_read_unlock_irqrestore", align 4
@__kstrtab__raw_read_unlock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_unlock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_unlock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_unlock_bh to i32), ptr @__kstrtab__raw_read_unlock_bh, ptr @__kstrtabns__raw_read_unlock_bh }, section "___ksymtab+_raw_read_unlock_bh", align 4
@__kstrtab__raw_write_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_trylock to i32), ptr @__kstrtab__raw_write_trylock, ptr @__kstrtabns__raw_write_trylock }, section "___ksymtab+_raw_write_trylock", align 4
@__kstrtab__raw_write_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock to i32), ptr @__kstrtab__raw_write_lock, ptr @__kstrtabns__raw_write_lock }, section "___ksymtab+_raw_write_lock", align 4
@__kstrtab__raw_write_lock_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock_nested = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock_nested to i32), ptr @__kstrtab__raw_write_lock_nested, ptr @__kstrtabns__raw_write_lock_nested }, section "___ksymtab+_raw_write_lock_nested", align 4
@__kstrtab__raw_write_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock_irqsave to i32), ptr @__kstrtab__raw_write_lock_irqsave, ptr @__kstrtabns__raw_write_lock_irqsave }, section "___ksymtab+_raw_write_lock_irqsave", align 4
@__kstrtab__raw_write_lock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock_irq to i32), ptr @__kstrtab__raw_write_lock_irq, ptr @__kstrtabns__raw_write_lock_irq }, section "___ksymtab+_raw_write_lock_irq", align 4
@__kstrtab__raw_write_lock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock_bh to i32), ptr @__kstrtab__raw_write_lock_bh, ptr @__kstrtabns__raw_write_lock_bh }, section "___ksymtab+_raw_write_lock_bh", align 4
@__kstrtab__raw_write_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_unlock_irqrestore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_unlock_irqrestore to i32), ptr @__kstrtab__raw_write_unlock_irqrestore, ptr @__kstrtabns__raw_write_unlock_irqrestore }, section "___ksymtab+_raw_write_unlock_irqrestore", align 4
@__kstrtab__raw_write_unlock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_unlock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_unlock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_unlock_bh to i32), ptr @__kstrtab__raw_write_unlock_bh, ptr @__kstrtabns__raw_write_unlock_bh }, section "___ksymtab+_raw_write_unlock_bh", align 4
@__lock_text_start = external dso_local global [0 x i8], align 1
@__lock_text_end = external dso_local global [0 x i8], align 1
@__kstrtab_in_lock_functions = external dso_local constant [0 x i8], align 1
@__kstrtabns_in_lock_functions = external dso_local constant [0 x i8], align 1
@__ksymtab_in_lock_functions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in_lock_functions to i32), ptr @__kstrtab_in_lock_functions, ptr @__kstrtabns_in_lock_functions }, section "___ksymtab+in_lock_functions", align 4
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab__raw_read_lock, ptr @__ksymtab__raw_read_lock_bh, ptr @__ksymtab__raw_read_lock_irq, ptr @__ksymtab__raw_read_lock_irqsave, ptr @__ksymtab__raw_read_trylock, ptr @__ksymtab__raw_read_unlock_bh, ptr @__ksymtab__raw_read_unlock_irqrestore, ptr @__ksymtab__raw_spin_lock, ptr @__ksymtab__raw_spin_lock_bh, ptr @__ksymtab__raw_spin_lock_irq, ptr @__ksymtab__raw_spin_lock_irqsave, ptr @__ksymtab__raw_spin_trylock, ptr @__ksymtab__raw_spin_trylock_bh, ptr @__ksymtab__raw_spin_unlock_bh, ptr @__ksymtab__raw_spin_unlock_irqrestore, ptr @__ksymtab__raw_write_lock, ptr @__ksymtab__raw_write_lock_bh, ptr @__ksymtab__raw_write_lock_irq, ptr @__ksymtab__raw_write_lock_irqsave, ptr @__ksymtab__raw_write_lock_nested, ptr @__ksymtab__raw_write_trylock, ptr @__ksymtab__raw_write_unlock_bh, ptr @__ksymtab__raw_write_unlock_irqrestore, ptr @__ksymtab_in_lock_functions], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_raw_spin_trylock(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr %0, i32 65536) #4, !srcloc !10
  %4 = extractvalue { i32, i32, i32 } %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %2

6:                                                ; preds = %2
  %7 = extractvalue { i32, i32, i32 } %3, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  br label %11

10:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  br label %11

11:                                               ; preds = %10, %9
  %12 = phi i32 [ 0, %10 ], [ 1, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_raw_spin_trylock_bh(ptr noundef %0) #0 section ".spinlock.text" {
  %2 = tail call ptr @llvm.thread.pointer() #4
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = add i32 %4, 512
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  br label %6

6:                                                ; preds = %6, %1
  %7 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr %0, i32 65536) #4, !srcloc !10
  %8 = extractvalue { i32, i32, i32 } %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32, i32 } %7, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  br label %17

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.returnaddress(i32 0) #4
  %16 = ptrtoint ptr %15 to i32
  tail call void @__local_bh_enable_ip(i32 noundef %16, i32 noundef 512) #4
  br label %17

17:                                               ; preds = %14, %13
  %18 = phi i32 [ 0, %14 ], [ 1, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_spin_lock(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %0, i32 65536) #4, !srcloc !15
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = lshr i32 %3, 16
  %5 = and i32 %3, 65535
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %1
  tail call void asm sideeffect "wfe", "~{memory}"() #4, !srcloc !16
  %8 = load volatile i16, ptr %0, align 4
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %4, %9
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_raw_spin_lock_irqsave(ptr noundef %0) #0 section ".spinlock.text" {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %0, i32 65536) #4, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = lshr i32 %4, 16
  %6 = and i32 %4, 65535
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %1
  tail call void asm sideeffect "wfe", "~{memory}"() #4, !srcloc !16
  %9 = load volatile i16, ptr %0, align 4
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_spin_lock_irq(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %0, i32 65536) #4, !srcloc !15
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = lshr i32 %3, 16
  %5 = and i32 %3, 65535
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %1
  tail call void asm sideeffect "wfe", "~{memory}"() #4, !srcloc !16
  %8 = load volatile i16, ptr %0, align 4
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %4, %9
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_spin_lock_bh(ptr noundef %0) #0 section ".spinlock.text" {
  %2 = tail call ptr @llvm.thread.pointer() #4
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = add i32 %4, 512
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %6 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %0, i32 65536) #4, !srcloc !15
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %1
  tail call void asm sideeffect "wfe", "~{memory}"() #4, !srcloc !16
  %12 = load volatile i16, ptr %0, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_spin_unlock_irqrestore(ptr nocapture noundef %0, i32 noundef %1) #0 section ".spinlock.text" {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !22
  %3 = load i16, ptr %0, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !24
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #4, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_spin_unlock_bh(ptr nocapture noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !22
  %2 = load i16, ptr %0, align 4
  %3 = add i16 %2, 1
  store i16 %3, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !24
  %4 = tail call ptr @llvm.returnaddress(i32 0) #4
  %5 = ptrtoint ptr %4 to i32
  tail call void @__local_bh_enable_ip(i32 noundef %5, i32 noundef 512) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_raw_read_trylock(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call { i32, i32 } asm sideeffect "\09ldrex\09$0, [$2]\0A\09mov\09$1, #0\0A\09adds\09$0, $0, #1\0A\09strexpl\09$1, $0, [$2]", "=&r,=&r,r,~{cc}"(ptr %0) #4, !srcloc !28
  %4 = extractvalue { i32, i32 } %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %2

6:                                                ; preds = %2
  %7 = extractvalue { i32, i32 } %3, 0
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !29
  br label %11

10:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !30
  br label %11

11:                                               ; preds = %10, %9
  %12 = phi i32 [ 0, %10 ], [ 1, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_read_lock(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "\09.syntax unified\0A1:\09ldrex\09$0, [$2]\0A\09adds\09$0, $0, #1\0A\09strexpl\09$1, $0, [$2]\0A9998:\09wfemi\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09rsbspl\09$0, $1, #0\0A\09bmi\091b", "=&r,=&r,r,~{cc}"(ptr %0) #4, !srcloc !32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_raw_read_lock_irqsave(ptr noundef %0) #0 section ".spinlock.text" {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %3 = tail call { i32, i32 } asm sideeffect "\09.syntax unified\0A1:\09ldrex\09$0, [$2]\0A\09adds\09$0, $0, #1\0A\09strexpl\09$1, $0, [$2]\0A9998:\09wfemi\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09rsbspl\09$0, $1, #0\0A\09bmi\091b", "=&r,=&r,r,~{cc}"(ptr %0) #4, !srcloc !32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !33
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_read_lock_irq(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "\09.syntax unified\0A1:\09ldrex\09$0, [$2]\0A\09adds\09$0, $0, #1\0A\09strexpl\09$1, $0, [$2]\0A9998:\09wfemi\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09rsbspl\09$0, $1, #0\0A\09bmi\091b", "=&r,=&r,r,~{cc}"(ptr %0) #4, !srcloc !32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_read_lock_bh(ptr noundef %0) #0 section ".spinlock.text" {
  %2 = tail call ptr @llvm.thread.pointer() #4
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = add i32 %4, 512
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %6 = tail call { i32, i32 } asm sideeffect "\09.syntax unified\0A1:\09ldrex\09$0, [$2]\0A\09adds\09$0, $0, #1\0A\09strexpl\09$1, $0, [$2]\0A9998:\09wfemi\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09rsbspl\09$0, $1, #0\0A\09bmi\091b", "=&r,=&r,r,~{cc}"(ptr %0) #4, !srcloc !32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_read_unlock_irqrestore(ptr noundef %0, i32 noundef %1) #0 section ".spinlock.text" {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %3 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %0) #4, !srcloc !37
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !24
  br label %7

7:                                                ; preds = %6, %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #4, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_read_unlock_bh(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %0) #4, !srcloc !37
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !24
  br label %6

6:                                                ; preds = %5, %1
  %7 = tail call ptr @llvm.returnaddress(i32 0) #4
  %8 = ptrtoint ptr %7 to i32
  tail call void @__local_bh_enable_ip(i32 noundef %8, i32 noundef 512) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_raw_write_trylock(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call { i32, i32 } asm sideeffect "\09ldrex\09$0, [$2]\0A\09mov\09$1, #0\0A\09teq\09$0, #0\0A\09strexeq\09$1, $3, [$2]", "=&r,=&r,r,r,~{cc}"(ptr %0, i32 -2147483648) #4, !srcloc !40
  %4 = extractvalue { i32, i32 } %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %2

6:                                                ; preds = %2
  %7 = extractvalue { i32, i32 } %3, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !41
  br label %11

10:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !42
  br label %11

11:                                               ; preds = %10, %9
  %12 = phi i32 [ 0, %10 ], [ 1, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_write_lock(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %2 = tail call i32 asm sideeffect "1:\09ldrex\09$0, [$1]\0A\09teq\09$0, #0\0A9998:\09wfene\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09strexeq\09$0, $2, [$1]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,r,r,~{cc}"(ptr %0, i32 -2147483648) #4, !srcloc !44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_write_lock_nested(ptr noundef %0, i32 %1) #0 section ".spinlock.text" {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %3 = tail call i32 asm sideeffect "1:\09ldrex\09$0, [$1]\0A\09teq\09$0, #0\0A9998:\09wfene\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09strexeq\09$0, $2, [$1]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,r,r,~{cc}"(ptr %0, i32 -2147483648) #4, !srcloc !44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_raw_write_lock_irqsave(ptr noundef %0) #0 section ".spinlock.text" {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %3 = tail call i32 asm sideeffect "1:\09ldrex\09$0, [$1]\0A\09teq\09$0, #0\0A9998:\09wfene\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09strexeq\09$0, $2, [$1]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,r,r,~{cc}"(ptr %0, i32 -2147483648) #4, !srcloc !44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !45
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_write_lock_irq(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !47
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %2 = tail call i32 asm sideeffect "1:\09ldrex\09$0, [$1]\0A\09teq\09$0, #0\0A9998:\09wfene\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09strexeq\09$0, $2, [$1]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,r,r,~{cc}"(ptr %0, i32 -2147483648) #4, !srcloc !44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_write_lock_bh(ptr noundef %0) #0 section ".spinlock.text" {
  %2 = tail call ptr @llvm.thread.pointer() #4
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = add i32 %4, 512
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !9
  %6 = tail call i32 asm sideeffect "1:\09ldrex\09$0, [$1]\0A\09teq\09$0, #0\0A9998:\09wfene\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A\09strexeq\09$0, $2, [$1]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,r,r,~{cc}"(ptr %0, i32 -2147483648) #4, !srcloc !44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_write_unlock_irqrestore(ptr noundef %0, i32 noundef %1) #0 section ".spinlock.text" {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !48
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %0, i32 0) #4, !srcloc !49
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !24
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #4, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_raw_write_unlock_bh(ptr noundef %0) #0 section ".spinlock.text" {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !48
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %0, i32 0) #4, !srcloc !49
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !24
  %2 = tail call ptr @llvm.returnaddress(i32 0) #4
  %3 = ptrtoint ptr %2 to i32
  tail call void @__local_bh_enable_ip(i32 noundef %3, i32 noundef 512) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @in_lock_functions(i32 noundef %0) #1 {
  %2 = icmp uge i32 %0, ptrtoint (ptr @__lock_text_start to i32)
  %3 = icmp ult i32 %0, ptrtoint (ptr @__lock_text_end to i32)
  %4 = and i1 %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i64 2148849055}
!9 = !{i64 646777, i64 2148136748, i64 2148136774, i64 2148136821, i64 2148136843, i64 2148136871, i64 2148136891}
!10 = !{i64 1337852, i64 1337875, i64 1337893, i64 1337925, i64 1337949}
!11 = !{i64 2148829101}
!12 = !{i64 2148849386}
!13 = !{i64 2148623622}
!14 = !{i64 2148851728}
!15 = !{i64 1337349, i64 1337372, i64 1337392, i64 1337416, i64 1337432}
!16 = !{i64 2148825687}
!17 = !{i64 2148828803}
!18 = !{i64 552455, i64 552516}
!19 = !{i64 2148849890}
!20 = !{i64 552890}
!21 = !{i64 2148850514}
!22 = !{i64 2148829396}
!23 = !{i64 2148825220}
!24 = !{i64 2148825295, i64 2148825322, i64 2148825369, i64 2148825391, i64 2148825419, i64 2148825439}
!25 = !{i64 555472}
!26 = !{i64 2148853099}
!27 = !{i64 2148864716}
!28 = !{i64 1341028, i64 1341051, i64 1341069, i64 1341092}
!29 = !{i64 2148837573}
!30 = !{i64 2148865430}
!31 = !{i64 2148866240}
!32 = !{i64 1340353, i64 1340375, i64 1340397, i64 1340418, i64 2148836718, i64 2148836744, i64 2148836791, i64 2148836813, i64 2148836841, i64 2148836861, i64 1340455, i64 1340478}
!33 = !{i64 2148836983}
!34 = !{i64 2148867483}
!35 = !{i64 2148868529}
!36 = !{i64 2148837278}
!37 = !{i64 1340702, i64 1340725, i64 1340745, i64 1340769, i64 1340785}
!38 = !{i64 2148875666}
!39 = !{i64 2148865647}
!40 = !{i64 1339339, i64 1339362, i64 1339380, i64 1339398}
!41 = !{i64 2148836178}
!42 = !{i64 2148866023}
!43 = !{i64 2148872967}
!44 = !{i64 1339016, i64 1339039, i64 2148835618, i64 2148835644, i64 2148835691, i64 2148835713, i64 2148835741, i64 2148835761, i64 1339066, i64 1339092, i64 1339108}
!45 = !{i64 2148835883}
!46 = !{i64 2148870874}
!47 = !{i64 2148871583}
!48 = !{i64 2148836473}
!49 = !{i64 1339687}
!50 = !{i64 2148877563}
