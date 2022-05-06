; ModuleID = '/llk/IR/drivers/pci/vpd.c_pt.bc'
source_filename = "../drivers/pci/vpd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_vpd_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_vpd_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_pci_vpd_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_vpd_find_id_string:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_vpd_find_id_string\22\09\09\09\09\09"
module asm "__kstrtabns_pci_vpd_find_id_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_read_vpd:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_read_vpd\22\09\09\09\09\09"
module asm "__kstrtabns_pci_read_vpd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_read_vpd_any:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_read_vpd_any\22\09\09\09\09\09"
module asm "__kstrtabns_pci_read_vpd_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_write_vpd:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_write_vpd\22\09\09\09\09\09"
module asm "__kstrtabns_pci_write_vpd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_write_vpd_any:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_write_vpd_any\22\09\09\09\09\09"
module asm "__kstrtabns_pci_write_vpd_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_vpd_find_ro_info_keyword:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_vpd_find_ro_info_keyword\22\09\09\09\09\09"
module asm "__kstrtabns_pci_vpd_find_ro_info_keyword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_vpd_check_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_vpd_check_csum\22\09\09\09\09\09"
module asm "__kstrtabns_pci_vpd_check_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@pci_vpd_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&dev->vpd.lock\00", align 1
@vpd_attrs = internal global [2 x ptr] [ptr @bin_attr_vpd, ptr null], align 4
@pci_dev_vpd_attr_group = dso_local local_unnamed_addr constant %struct.attribute_group { ptr null, ptr null, ptr @vpd_attr_is_visible, ptr null, ptr @vpd_attrs }, align 4
@__kstrtab_pci_vpd_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_vpd_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_vpd_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_vpd_alloc to i32), ptr @__kstrtab_pci_vpd_alloc, ptr @__kstrtabns_pci_vpd_alloc }, section "___ksymtab_gpl+pci_vpd_alloc", align 4
@__kstrtab_pci_vpd_find_id_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_vpd_find_id_string = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_vpd_find_id_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_vpd_find_id_string to i32), ptr @__kstrtab_pci_vpd_find_id_string, ptr @__kstrtabns_pci_vpd_find_id_string }, section "___ksymtab_gpl+pci_vpd_find_id_string", align 4
@__kstrtab_pci_read_vpd = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_read_vpd = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_read_vpd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_read_vpd to i32), ptr @__kstrtab_pci_read_vpd, ptr @__kstrtabns_pci_read_vpd }, section "___ksymtab+pci_read_vpd", align 4
@__kstrtab_pci_read_vpd_any = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_read_vpd_any = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_read_vpd_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_read_vpd_any to i32), ptr @__kstrtab_pci_read_vpd_any, ptr @__kstrtabns_pci_read_vpd_any }, section "___ksymtab+pci_read_vpd_any", align 4
@__kstrtab_pci_write_vpd = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_write_vpd = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_write_vpd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_write_vpd to i32), ptr @__kstrtab_pci_write_vpd, ptr @__kstrtabns_pci_write_vpd }, section "___ksymtab+pci_write_vpd", align 4
@__kstrtab_pci_write_vpd_any = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_write_vpd_any = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_write_vpd_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_write_vpd_any to i32), ptr @__kstrtab_pci_write_vpd_any, ptr @__kstrtabns_pci_write_vpd_any }, section "___ksymtab+pci_write_vpd_any", align 4
@__kstrtab_pci_vpd_find_ro_info_keyword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_vpd_find_ro_info_keyword = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_vpd_find_ro_info_keyword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_vpd_find_ro_info_keyword to i32), ptr @__kstrtab_pci_vpd_find_ro_info_keyword, ptr @__kstrtabns_pci_vpd_find_ro_info_keyword }, section "___ksymtab_gpl+pci_vpd_find_ro_info_keyword", align 4
@__kstrtab_pci_vpd_check_csum = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_vpd_check_csum = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_vpd_check_csum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_vpd_check_csum to i32), ptr @__kstrtab_pci_vpd_check_csum, ptr @__kstrtabns_pci_vpd_check_csum }, section "___ksymtab_gpl+pci_vpd_check_csum", align 4
@__pci_fixup_quirk_f0_vpd_link537 = internal constant %struct.pci_fixup { i16 -32634, i16 -1, i32 512, i32 8, ptr @quirk_f0_vpd_link }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_blacklist_vpd551 = internal constant %struct.pci_fixup { i16 4096, i16 96, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd552 = internal constant %struct.pci_fixup { i16 4096, i16 124, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd553 = internal constant %struct.pci_fixup { i16 4096, i16 1043, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd554 = internal constant %struct.pci_fixup { i16 4096, i16 120, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd555 = internal constant %struct.pci_fixup { i16 4096, i16 121, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd556 = internal constant %struct.pci_fixup { i16 4096, i16 115, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd557 = internal constant %struct.pci_fixup { i16 4096, i16 113, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd558 = internal constant %struct.pci_fixup { i16 4096, i16 91, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd559 = internal constant %struct.pci_fixup { i16 4096, i16 47, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd560 = internal constant %struct.pci_fixup { i16 4096, i16 93, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd561 = internal constant %struct.pci_fixup { i16 4096, i16 95, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd562 = internal constant %struct.pci_fixup { i16 6505, i16 -1, i32 -1, i32 0, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_blacklist_vpd568 = internal constant %struct.pci_fixup { i16 7222, i16 49, i32 1540, i32 8, ptr @quirk_blacklist_vpd }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_chelsio_extend_vpd594 = internal constant %struct.pci_fixup { i16 5157, i16 -1, i32 -1, i32 0, ptr @quirk_chelsio_extend_vpd }, section ".pci_fixup_header", align 4
@bin_attr_vpd = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.2, i16 384 }, i32 0, ptr null, ptr null, ptr @vpd_read, ptr @vpd_write, ptr null }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"vpd\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed VPD read at offset %zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"invalid VPD tag %#04x (size %zu) at offset %zu%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"; assume missing optional EEPROM\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [114 x i8] c"VPD access failed.  This is likely a firmware bug on this device.  Contact the card vendor for a firmware update\0A\00", align 1
@.str.8 = private unnamed_addr constant [88 x i8] c"[Firmware Bug]: disabling VPD access (can't determine size of non-standard VPD format)\0A\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_pci_read_vpd, ptr @__ksymtab_pci_read_vpd_any, ptr @__ksymtab_pci_vpd_alloc, ptr @__ksymtab_pci_vpd_check_csum, ptr @__ksymtab_pci_vpd_find_id_string, ptr @__ksymtab_pci_vpd_find_ro_info_keyword, ptr @__ksymtab_pci_write_vpd, ptr @__ksymtab_pci_write_vpd_any, ptr @__pci_fixup_quirk_blacklist_vpd551, ptr @__pci_fixup_quirk_blacklist_vpd552, ptr @__pci_fixup_quirk_blacklist_vpd553, ptr @__pci_fixup_quirk_blacklist_vpd554, ptr @__pci_fixup_quirk_blacklist_vpd555, ptr @__pci_fixup_quirk_blacklist_vpd556, ptr @__pci_fixup_quirk_blacklist_vpd557, ptr @__pci_fixup_quirk_blacklist_vpd558, ptr @__pci_fixup_quirk_blacklist_vpd559, ptr @__pci_fixup_quirk_blacklist_vpd560, ptr @__pci_fixup_quirk_blacklist_vpd561, ptr @__pci_fixup_quirk_blacklist_vpd562, ptr @__pci_fixup_quirk_blacklist_vpd568, ptr @__pci_fixup_quirk_chelsio_extend_vpd594, ptr @__pci_fixup_quirk_f0_vpd_link537], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_vpd_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59
  %7 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 3) #13
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 2
  store i8 %7, ptr %8, align 4
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @pci_vpd_init.__key) #13
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @vpd_attr_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1036
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i16 [ %9, %7 ], [ 0, %3 ]
  ret i16 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_vpd_alloc(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = tail call fastcc zeroext i1 @pci_vpd_available(ptr noundef %0, i1 noundef zeroext true)
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 256
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 248
  %20 = tail call ptr @pci_get_slot(ptr noundef %16, i32 noundef %19) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = tail call fastcc i32 @pci_vpd_read(ptr noundef nonnull %20, i64 noundef 0, i32 noundef %6, ptr noundef nonnull %7, i1 noundef zeroext true) #13
  tail call void @pci_dev_put(ptr noundef nonnull %20) #13
  br label %26

24:                                               ; preds = %9
  %25 = tail call fastcc i32 @pci_vpd_read(ptr noundef %0, i64 noundef 0, i32 noundef %6, ptr noundef nonnull %7, i1 noundef zeroext true) #13
  br label %26

26:                                               ; preds = %24, %22, %14
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ], [ -19, %14 ]
  %28 = icmp eq i32 %27, %6
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @kfree(ptr noundef nonnull %7) #13
  br label %33

30:                                               ; preds = %26
  %31 = icmp eq ptr %1, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  store i32 %6, ptr %1, align 4
  br label %33

33:                                               ; preds = %32, %30, %29, %4, %2
  %34 = phi ptr [ inttoptr (i32 -5 to ptr), %29 ], [ %7, %32 ], [ %7, %30 ], [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pci_vpd_available(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %108, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %10, %1
  br i1 %11, label %12, label %108

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #13, !annotation !8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  br label %17

17:                                               ; preds = %85, %12
  %18 = phi i32 [ 0, %12 ], [ %86, %85 ]
  %19 = zext i32 %18 to i64
  %20 = load i16, ptr %13, align 2
  %21 = and i16 %20, 256
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %14, align 8
  %25 = load i32, ptr %15, align 4
  %26 = and i32 %25, 248
  %27 = tail call ptr @pci_get_slot(ptr noundef %24, i32 noundef %26) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %104, label %29

29:                                               ; preds = %23
  %30 = call fastcc i32 @pci_vpd_read(ptr noundef nonnull %27, i64 noundef %19, i32 noundef 1, ptr noundef nonnull %3, i1 noundef zeroext false) #13
  tail call void @pci_dev_put(ptr noundef nonnull %27) #13
  br label %33

31:                                               ; preds = %17
  %32 = call fastcc i32 @pci_vpd_read(ptr noundef %0, i64 noundef %19, i32 noundef 1, ptr noundef nonnull %3, i1 noundef zeroext false) #13
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %104

36:                                               ; preds = %33
  %37 = icmp eq i32 %18, 0
  %38 = load i8, ptr %3, align 1
  %39 = add i8 %38, 1
  %40 = icmp ult i8 %39, 2
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %44 = zext i8 %38 to i32
  br label %99

45:                                               ; preds = %36
  %46 = icmp sgt i8 %38, -1
  br i1 %46, label %75, label %47

47:                                               ; preds = %45
  %48 = add i32 %18, 1
  %49 = zext i32 %48 to i64
  %50 = load i16, ptr %13, align 2
  %51 = and i16 %50, 256
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %14, align 8
  %55 = load i32, ptr %15, align 4
  %56 = and i32 %55, 248
  %57 = tail call ptr @pci_get_slot(ptr noundef %54, i32 noundef %56) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = call fastcc i32 @pci_vpd_read(ptr noundef nonnull %57, i64 noundef %49, i32 noundef 2, ptr noundef %16, i1 noundef zeroext false) #13
  tail call void @pci_dev_put(ptr noundef nonnull %57) #13
  br label %63

61:                                               ; preds = %47
  %62 = call fastcc i32 @pci_vpd_read(ptr noundef %0, i64 noundef %49, i32 noundef 2, ptr noundef %16, i1 noundef zeroext false) #13
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %68, label %66

66:                                               ; preds = %63, %53
  %67 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.3, i32 noundef %48) #15
  br i1 %37, label %103, label %104

68:                                               ; preds = %63
  %69 = load i16, ptr %16, align 1
  %70 = zext i16 %69 to i32
  %71 = add i32 %18, %70
  %72 = icmp ugt i32 %71, 32768
  br i1 %72, label %87, label %73

73:                                               ; preds = %68
  %74 = add nuw nsw i32 %71, 3
  br label %85

75:                                               ; preds = %45
  %76 = and i8 %38, 7
  %77 = zext i8 %76 to i32
  %78 = add i32 %18, %77
  %79 = icmp ugt i32 %78, 32768
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = add i32 %18, 1
  %82 = add i32 %81, %77
  %83 = and i8 %38, -8
  %84 = icmp eq i8 %83, 120
  br i1 %84, label %104, label %85

85:                                               ; preds = %80, %73
  %86 = phi i32 [ %74, %73 ], [ %82, %80 ]
  br label %17

87:                                               ; preds = %68
  %88 = zext i16 %69 to i32
  %89 = load i8, ptr %3, align 1
  %90 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %91 = zext i8 %89 to i32
  br i1 %37, label %99, label %95

92:                                               ; preds = %75
  %93 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %94 = zext i8 %38 to i32
  br i1 %37, label %99, label %95

95:                                               ; preds = %92, %87
  %96 = phi i32 [ %91, %87 ], [ %94, %92 ]
  %97 = phi ptr [ %90, %87 ], [ %93, %92 ]
  %98 = phi i32 [ %88, %87 ], [ %77, %92 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.4, i32 noundef %96, i32 noundef %98, i32 noundef %18, ptr noundef nonnull @.str.6) #15
  br label %104

99:                                               ; preds = %92, %87, %42
  %100 = phi i32 [ %44, %42 ], [ %94, %92 ], [ %91, %87 ]
  %101 = phi ptr [ %43, %42 ], [ %93, %92 ], [ %90, %87 ]
  %102 = phi i32 [ 0, %42 ], [ %77, %92 ], [ %88, %87 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.4, i32 noundef %100, i32 noundef %102, i32 noundef 0, ptr noundef nonnull @.str.5) #15
  br label %103

103:                                              ; preds = %99, %66
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  store i32 -1, ptr %8, align 4
  br label %107

104:                                              ; preds = %95, %80, %66, %33, %23
  %105 = phi i32 [ %18, %66 ], [ %18, %95 ], [ %82, %80 ], [ %18, %33 ], [ %18, %23 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  store i32 %105, ptr %8, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %103
  store i8 0, ptr %4, align 4
  br label %108

108:                                              ; preds = %107, %104, %7, %2
  %109 = phi i1 [ false, %107 ], [ false, %2 ], [ true, %7 ], [ true, %104 ]
  ret i1 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_read_vpd(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 256
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 248
  %15 = tail call ptr @pci_get_slot(ptr noundef %11, i32 noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = tail call fastcc i32 @pci_vpd_read(ptr noundef nonnull %15, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext true) #13
  tail call void @pci_dev_put(ptr noundef nonnull %15) #13
  br label %21

19:                                               ; preds = %4
  %20 = tail call fastcc i32 @pci_vpd_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext true) #13
  br label %21

21:                                               ; preds = %19, %17, %9
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ], [ -19, %9 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_vpd_find_id_string(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #4 {
  %4 = icmp ult i32 %1, 3
  br i1 %4, label %28, label %10

5:                                                ; preds = %16
  %6 = zext i16 %18 to i32
  %7 = add i32 %11, %6
  %8 = add i32 %7, 3
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %28, label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ %8, %5 ], [ 3, %3 ]
  %12 = phi i32 [ %7, %5 ], [ 0, %3 ]
  %13 = getelementptr i8, ptr %0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = icmp sgt i8 %14, -1
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %13, i32 1
  %18 = load i16, ptr %17, align 1
  %19 = icmp eq i8 %14, -126
  br i1 %19, label %20, label %5

20:                                               ; preds = %16
  %21 = icmp eq ptr %2, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = zext i16 %18 to i32
  %24 = add i32 %11, %23
  %25 = icmp ugt i32 %24, %1
  %26 = sub i32 %1, %11
  %27 = select i1 %25, i32 %26, i32 %23
  store i32 %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %22, %20, %10, %5, %3
  %29 = phi i32 [ %11, %20 ], [ %11, %22 ], [ -2, %3 ], [ -2, %10 ], [ -2, %5 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_read_vpd_any(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 256
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 248
  %15 = tail call ptr @pci_get_slot(ptr noundef %11, i32 noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = tail call fastcc i32 @pci_vpd_read(ptr noundef nonnull %15, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #13
  tail call void @pci_dev_put(ptr noundef nonnull %15) #13
  br label %21

19:                                               ; preds = %4
  %20 = tail call fastcc i32 @pci_vpd_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #13
  br label %21

21:                                               ; preds = %19, %17, %9
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ], [ -19, %9 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_write_vpd(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 256
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 248
  %15 = tail call ptr @pci_get_slot(ptr noundef %11, i32 noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = tail call fastcc i32 @pci_vpd_write(ptr noundef nonnull %15, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext true) #13
  tail call void @pci_dev_put(ptr noundef nonnull %15) #13
  br label %21

19:                                               ; preds = %4
  %20 = tail call fastcc i32 @pci_vpd_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext true) #13
  br label %21

21:                                               ; preds = %19, %17, %9
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ], [ -19, %9 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_write_vpd_any(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 256
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 248
  %15 = tail call ptr @pci_get_slot(ptr noundef %11, i32 noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = tail call fastcc i32 @pci_vpd_write(ptr noundef nonnull %15, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #13
  tail call void @pci_dev_put(ptr noundef nonnull %15) #13
  br label %21

19:                                               ; preds = %4
  %20 = tail call fastcc i32 @pci_vpd_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #13
  br label %21

21:                                               ; preds = %19, %17, %9
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ], [ -19, %9 ]
  ret i32 %22
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_vpd_find_ro_info_keyword(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) #5 {
  %5 = icmp ult i32 %1, 3
  br i1 %5, label %66, label %11

6:                                                ; preds = %17
  %7 = zext i16 %19 to i32
  %8 = add i32 %12, %7
  %9 = add i32 %8, 3
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %66, label %11

11:                                               ; preds = %6, %4
  %12 = phi i32 [ %9, %6 ], [ 3, %4 ]
  %13 = phi i32 [ %8, %6 ], [ 0, %4 ]
  %14 = getelementptr i8, ptr %0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp sgt i8 %15, -1
  br i1 %16, label %66, label %17

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %14, i32 1
  %19 = load i16, ptr %18, align 1
  %20 = icmp eq i8 %15, -112
  br i1 %20, label %21, label %6

21:                                               ; preds = %17
  %22 = icmp slt i32 %12, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %21
  %24 = zext i16 %19 to i32
  %25 = add nuw i32 %12, %24
  %26 = icmp ugt i32 %25, %1
  %27 = sub i32 %1, %12
  %28 = select i1 %26, i32 %27, i32 %24
  %29 = add i32 %28, %12
  %30 = add nuw i32 %12, 3
  %31 = icmp ugt i32 %30, %29
  br i1 %31, label %66, label %32

32:                                               ; preds = %23
  %33 = load i8, ptr %2, align 1
  %34 = getelementptr i8, ptr %2, i32 1
  br label %35

35:                                               ; preds = %46, %32
  %36 = phi i32 [ %12, %32 ], [ %51, %46 ]
  %37 = getelementptr i8, ptr %0, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, %33
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = add i32 %36, 1
  %42 = getelementptr i8, ptr %0, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = load i8, ptr %34, align 1
  %45 = icmp eq i8 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %40, %35
  %47 = getelementptr i8, ptr %37, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add i32 %36, 3
  %51 = add i32 %50, %49
  %52 = add i32 %51, 3
  %53 = icmp ugt i32 %52, %29
  br i1 %53, label %66, label %35

54:                                               ; preds = %40
  %55 = icmp slt i32 %36, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %54
  %57 = getelementptr i8, ptr %37, i32 2
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nuw i32 %36, 3
  %61 = add nuw i32 %60, %59
  %62 = icmp ugt i32 %61, %1
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = icmp eq ptr %3, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  store i32 %59, ptr %3, align 4
  br label %66

66:                                               ; preds = %65, %63, %56, %54, %46, %23, %21, %11, %6, %4
  %67 = phi i32 [ %12, %21 ], [ %36, %54 ], [ -22, %56 ], [ %60, %65 ], [ %60, %63 ], [ -2, %4 ], [ -2, %23 ], [ -2, %46 ], [ -2, %11 ], [ -2, %6 ]
  ret i32 %67
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @pci_vpd_check_csum(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %78, label %9

4:                                                ; preds = %15
  %5 = zext i16 %17 to i32
  %6 = add i32 %10, %5
  %7 = add i32 %6, 3
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %78, label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %7, %4 ], [ 3, %2 ]
  %11 = phi i32 [ %6, %4 ], [ 0, %2 ]
  %12 = getelementptr i8, ptr %0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp sgt i8 %13, -1
  br i1 %14, label %78, label %15

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %12, i32 1
  %17 = load i16, ptr %16, align 1
  %18 = icmp eq i8 %13, -112
  br i1 %18, label %19, label %4

19:                                               ; preds = %15
  %20 = icmp slt i32 %10, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %19
  %22 = zext i16 %17 to i32
  %23 = add nuw i32 %10, %22
  %24 = icmp ugt i32 %23, %1
  %25 = sub i32 %1, %10
  %26 = select i1 %24, i32 %25, i32 %22
  %27 = add i32 %26, %10
  %28 = add nuw i32 %10, 3
  %29 = icmp ugt i32 %28, %27
  br i1 %29, label %78, label %30

30:                                               ; preds = %40, %21
  %31 = phi i32 [ %45, %40 ], [ %10, %21 ]
  %32 = getelementptr i8, ptr %0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 82
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = add i32 %31, 1
  %37 = getelementptr i8, ptr %0, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 86
  br i1 %39, label %48, label %40

40:                                               ; preds = %35, %30
  %41 = getelementptr i8, ptr %32, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add i32 %31, 3
  %45 = add i32 %44, %43
  %46 = add i32 %45, 3
  %47 = icmp ugt i32 %46, %27
  br i1 %47, label %78, label %30

48:                                               ; preds = %35
  %49 = icmp slt i32 %31, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %48
  %51 = getelementptr i8, ptr %32, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add nuw i32 %31, 3
  %55 = add nuw i32 %54, %53
  %56 = icmp ugt i32 %55, %1
  br i1 %56, label %78, label %61

57:                                               ; preds = %48, %19
  %58 = phi i32 [ %10, %19 ], [ %31, %48 ]
  %59 = icmp eq i32 %58, -2
  %60 = select i1 %59, i32 1, i32 %58
  br label %78

61:                                               ; preds = %50
  %62 = icmp slt i32 %54, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %61
  %64 = icmp eq i8 %52, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %65, %63
  %66 = phi i32 [ %68, %65 ], [ %54, %63 ]
  %67 = phi i32 [ %73, %65 ], [ 0, %63 ]
  %68 = add nsw i32 %66, -1
  %69 = getelementptr i8, ptr %0, i32 %66
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = add nuw nsw i32 %67, %71
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %66, 0
  br i1 %74, label %75, label %65

75:                                               ; preds = %65
  %76 = icmp eq i32 %73, 0
  %77 = select i1 %76, i32 0, i32 -84
  br label %78

78:                                               ; preds = %75, %63, %61, %57, %50, %40, %21, %9, %4, %2
  %79 = phi i32 [ %77, %75 ], [ %54, %61 ], [ -22, %63 ], [ -22, %50 ], [ 1, %2 ], [ 1, %21 ], [ %60, %57 ], [ 1, %40 ], [ 1, %9 ], [ 1, %4 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_f0_vpd_link(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = and i32 %3, 248
  %10 = tail call ptr @pci_get_slot(ptr noundef %8, i32 noundef %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 59, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 11
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %24 = load i16, ptr %23, align 8
  %25 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 7
  %26 = load i16, ptr %25, align 8
  %27 = icmp eq i16 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %36 = load i16, ptr %35, align 2
  %37 = or i16 %36, 256
  store i16 %37, ptr %35, align 2
  br label %38

38:                                               ; preds = %34, %28, %22, %16, %12
  tail call void @pci_dev_put(ptr noundef nonnull %10) #13
  br label %39

39:                                               ; preds = %38, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_blacklist_vpd(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 1
  store i32 -1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.8) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_chelsio_extend_vpd(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 2
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 224
  %6 = icmp ult i16 %3, 4096
  %7 = icmp ne i32 %5, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = icmp ugt i16 %3, 16383
  %11 = and i32 %4, 2048
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %1
  %15 = phi i32 [ 8192, %1 ], [ 2048, %9 ]
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 1
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vpd_read(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr i8, ptr %1, i32 838
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %1, i32 -128
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %1, i32 -108
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 248
  %17 = tail call ptr @pci_get_slot(ptr noundef %13, i32 noundef %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @pci_vpd_read(ptr noundef nonnull %17, i64 noundef %4, i32 noundef %5, ptr noundef %3, i1 noundef zeroext true) #13
  tail call void @pci_dev_put(ptr noundef nonnull %17) #13
  br label %24

21:                                               ; preds = %6
  %22 = getelementptr i8, ptr %1, i32 -136
  %23 = tail call fastcc i32 @pci_vpd_read(ptr noundef %22, i64 noundef %4, i32 noundef %5, ptr noundef %3, i1 noundef zeroext true) #13
  br label %24

24:                                               ; preds = %21, %19, %11
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ], [ -19, %11 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vpd_write(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr i8, ptr %1, i32 838
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %1, i32 -128
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %1, i32 -108
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 248
  %17 = tail call ptr @pci_get_slot(ptr noundef %13, i32 noundef %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @pci_vpd_write(ptr noundef nonnull %17, i64 noundef %4, i32 noundef %5, ptr noundef %3, i1 noundef zeroext true) #13
  tail call void @pci_dev_put(ptr noundef nonnull %17) #13
  br label %24

21:                                               ; preds = %6
  %22 = getelementptr i8, ptr %1, i32 -136
  %23 = tail call fastcc i32 @pci_vpd_write(ptr noundef %22, i64 noundef %4, i32 noundef %5, ptr noundef %3, i1 noundef zeroext true) #13
  br label %24

24:                                               ; preds = %21, %19, %11
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ], [ -19, %11 ]
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_vpd_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59
  %8 = zext i32 %2 to i64
  %9 = add i64 %8, %1
  %10 = tail call fastcc zeroext i1 @pci_vpd_available(ptr noundef %0, i1 noundef zeroext %4)
  br i1 %10, label %11, label %120

11:                                               ; preds = %5
  %12 = icmp slt i64 %1, 0
  br i1 %12, label %120, label %13

13:                                               ; preds = %11
  br i1 %4, label %14, label %17

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 1
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %13
  %18 = phi i32 [ %16, %14 ], [ 32768, %13 ]
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %19, %1
  br i1 %20, label %21, label %120

21:                                               ; preds = %17
  %22 = icmp sgt i64 %9, %19
  %23 = trunc i64 %1 to i32
  %24 = sub i32 %18, %23
  %25 = select i1 %22, i32 %24, i32 %2
  %26 = tail call i64 @llvm.smin.i64(i64 %9, i64 %19)
  %27 = tail call i32 @mutex_lock_killable(ptr noundef %7) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %120

29:                                               ; preds = %21
  %30 = icmp sgt i64 %26, %1
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @mutex_unlock(ptr noundef %7) #13
  br label %119

32:                                               ; preds = %29
  %33 = tail call ptr @llvm.thread.pointer() #13
  %34 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 98, i32 1
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 2
  br label %36

36:                                               ; preds = %114, %32
  %37 = phi ptr [ %3, %32 ], [ %115, %114 ]
  %38 = phi i64 [ %1, %32 ], [ %109, %114 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %39 = load volatile i32, ptr %33, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %34, align 4
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %111

46:                                               ; preds = %42, %36
  %47 = load i8, ptr %35, align 4
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %48, 2
  %50 = trunc i64 %38 to i16
  %51 = and i16 %50, -4
  %52 = call i32 @pci_user_write_config_word(ptr noundef %0, i32 noundef %49, i16 noundef zeroext %51) #13
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %111, label %54

54:                                               ; preds = %46
  %55 = call fastcc i32 @pci_vpd_wait(ptr noundef %0, i1 noundef zeroext true)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %111, label %57

57:                                               ; preds = %54
  %58 = load i8, ptr %35, align 4
  %59 = zext i8 %58 to i32
  %60 = add nuw nsw i32 %59, 4
  %61 = call i32 @pci_user_read_config_dword(ptr noundef %0, i32 noundef %60, ptr noundef nonnull %6) #13
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %111, label %63

63:                                               ; preds = %57
  %64 = trunc i64 %38 to i32
  %65 = and i32 %64, 3
  %66 = icmp eq i32 %65, 0
  %67 = load i32, ptr %6, align 4
  br i1 %66, label %68, label %76

68:                                               ; preds = %63
  %69 = trunc i32 %67 to i8
  store i8 %69, ptr %37, align 1
  %70 = add nsw i64 %38, 1
  %71 = icmp eq i64 %70, %26
  br i1 %71, label %113, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %37, i32 1
  %74 = load i32, ptr %6, align 4
  %75 = lshr i32 %74, 8
  store i32 %75, ptr %6, align 4
  br label %79

76:                                               ; preds = %63
  %77 = lshr i32 %67, 8
  store i32 %77, ptr %6, align 4
  %78 = icmp eq i32 %65, 1
  br i1 %78, label %79, label %90

79:                                               ; preds = %76, %72
  %80 = phi i32 [ %75, %72 ], [ %77, %76 ]
  %81 = phi ptr [ %73, %72 ], [ %37, %76 ]
  %82 = phi i64 [ %70, %72 ], [ %38, %76 ]
  %83 = trunc i32 %80 to i8
  store i8 %83, ptr %81, align 1
  %84 = add i64 %82, 1
  %85 = icmp eq i64 %84, %26
  br i1 %85, label %113, label %86

86:                                               ; preds = %79
  %87 = getelementptr i8, ptr %81, i32 1
  %88 = load i32, ptr %6, align 4
  %89 = lshr i32 %88, 8
  store i32 %89, ptr %6, align 4
  br label %93

90:                                               ; preds = %76
  %91 = lshr i32 %67, 16
  store i32 %91, ptr %6, align 4
  %92 = icmp eq i32 %65, 3
  br i1 %92, label %103, label %93

93:                                               ; preds = %90, %86
  %94 = phi i32 [ %89, %86 ], [ %91, %90 ]
  %95 = phi ptr [ %87, %86 ], [ %37, %90 ]
  %96 = phi i64 [ %84, %86 ], [ %38, %90 ]
  %97 = trunc i32 %94 to i8
  store i8 %97, ptr %95, align 1
  %98 = add i64 %96, 1
  %99 = icmp eq i64 %98, %26
  br i1 %99, label %113, label %100

100:                                              ; preds = %93
  %101 = getelementptr i8, ptr %95, i32 1
  %102 = load i32, ptr %6, align 4
  br label %103

103:                                              ; preds = %100, %90
  %104 = phi i32 [ %102, %100 ], [ %91, %90 ]
  %105 = phi i64 [ %98, %100 ], [ %38, %90 ]
  %106 = phi ptr [ %101, %100 ], [ %37, %90 ]
  %107 = lshr i32 %104, 8
  %108 = trunc i32 %107 to i8
  store i8 %108, ptr %106, align 1
  %109 = add i64 %105, 1
  %110 = icmp eq i64 %109, %26
  br i1 %110, label %113, label %114

111:                                              ; preds = %57, %54, %46, %42
  %112 = phi i32 [ %61, %57 ], [ %55, %54 ], [ %52, %46 ], [ -4, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @mutex_unlock(ptr noundef %7) #13
  br label %120

113:                                              ; preds = %103, %93, %79, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %117

114:                                              ; preds = %103
  %115 = getelementptr i8, ptr %106, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %116 = icmp slt i64 %109, %26
  br i1 %116, label %36, label %117

117:                                              ; preds = %114, %113
  call void @mutex_unlock(ptr noundef %7) #13
  %118 = icmp eq i32 %61, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %117, %31
  br label %120

120:                                              ; preds = %119, %117, %111, %21, %17, %11, %5
  %121 = phi i32 [ -19, %5 ], [ -22, %11 ], [ 0, %17 ], [ -4, %21 ], [ %25, %119 ], [ %61, %117 ], [ %112, %111 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_vpd_wait(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %4, 13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i32 %8, 2
  %10 = call i32 @pci_user_read_config_word(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %3) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  %13 = zext i1 %1 to i16
  br label %14

14:                                               ; preds = %23, %12
  %15 = phi i32 [ 16, %12 ], [ %26, %23 ]
  %16 = load i16, ptr %3, align 2
  %17 = lshr i16 %16, 15
  %18 = icmp eq i16 %17, %13
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = sub i32 %5, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  call void @usleep_range_state(i32 noundef 10, i32 noundef %15, i32 noundef 2) #13
  %24 = icmp ult i32 %15, 1024
  %25 = zext i1 %24 to i32
  %26 = shl i32 %15, %25
  %27 = load i8, ptr %6, align 4
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %28, 2
  %30 = call i32 @pci_user_read_config_word(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %3) #13
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %34, label %14

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.7) #15
  br label %34

34:                                               ; preds = %32, %23, %14, %2
  %35 = phi i32 [ -110, %32 ], [ %10, %2 ], [ %30, %23 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_vpd_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59
  %7 = zext i32 %2 to i64
  %8 = add i64 %7, %1
  %9 = tail call fastcc zeroext i1 @pci_vpd_available(ptr noundef %0, i1 noundef zeroext %4)
  br i1 %9, label %10, label %60

10:                                               ; preds = %5
  %11 = and i64 %1, -9223372036854775805
  %12 = icmp eq i64 %11, 0
  %13 = and i32 %2, 3
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %10
  br i1 %4, label %17, label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 1
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ %19, %17 ], [ 32768, %16 ]
  %22 = zext i32 %21 to i64
  %23 = icmp sgt i64 %8, %22
  br i1 %23, label %60, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @mutex_lock_killable(ptr noundef %6) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 59, i32 2
  %29 = icmp sgt i64 %8, %1
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @mutex_unlock(ptr noundef %6) #13
  br label %59

31:                                               ; preds = %48, %27
  %32 = phi ptr [ %51, %48 ], [ %3, %27 ]
  %33 = phi i64 [ %52, %48 ], [ %1, %27 ]
  %34 = load i8, ptr %28, align 4
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %35, 4
  %37 = load i32, ptr %32, align 1
  %38 = tail call i32 @pci_user_write_config_dword(ptr noundef %0, i32 noundef %36, i32 noundef %37) #13
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %31
  %41 = load i8, ptr %28, align 4
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, 2
  %44 = trunc i64 %33 to i16
  %45 = or i16 %44, -32768
  %46 = tail call i32 @pci_user_write_config_word(ptr noundef %0, i32 noundef %43, i16 noundef zeroext %45) #13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = tail call fastcc i32 @pci_vpd_wait(ptr noundef %0, i1 noundef zeroext false)
  %50 = icmp sgt i32 %49, -1
  %51 = getelementptr i8, ptr %32, i32 4
  %52 = add i64 %33, 4
  %53 = icmp slt i64 %52, %8
  %54 = select i1 %50, i1 %53, i1 false
  br i1 %54, label %31, label %57

55:                                               ; preds = %40, %31
  %56 = phi i32 [ %46, %40 ], [ %38, %31 ]
  tail call void @mutex_unlock(ptr noundef %6) #13
  br label %60

57:                                               ; preds = %48
  tail call void @mutex_unlock(ptr noundef %6) #13
  %58 = icmp eq i32 %49, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %57, %30
  br label %60

60:                                               ; preds = %59, %57, %55, %24, %20, %10, %5
  %61 = phi i32 [ -19, %5 ], [ -22, %10 ], [ -22, %20 ], [ -4, %24 ], [ %2, %59 ], [ %49, %57 ], [ %56, %55 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

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
!8 = !{!"auto-init"}
