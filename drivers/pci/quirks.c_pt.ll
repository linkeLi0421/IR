; ModuleID = '/llk/IR/drivers/pci/quirks.c_pt.bc'
source_filename = "../drivers/pci/quirks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_fixup_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_fixup_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_fixup_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_dev_acs_enabled = type { i16, i16, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%union.anon.71 = type { %union.anon.72 }
%union.anon.72 = type { [1 x i64] }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.71 }
%struct.pci_cap_saved_state = type { %struct.hlist_node, %struct.pci_cap_saved_data }
%struct.pci_cap_saved_data = type { i16, i8, i32, [0 x i32] }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.ntb_ctrl_regs = type { i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, [7 x i32], [6 x %struct.anon.73], [6 x %struct.anon.74], [192 x i32], [512 x i32], [256 x i32], [512 x i64] }
%struct.anon.73 = type { i32, i32, i64 }
%struct.anon.74 = type { i32, [3 x i32] }

@__start_pci_fixups_early = external dso_local global [0 x %struct.pci_fixup], align 4
@__end_pci_fixups_early = external dso_local global [0 x %struct.pci_fixup], align 4
@__start_pci_fixups_header = external dso_local global [0 x %struct.pci_fixup], align 4
@__end_pci_fixups_header = external dso_local global [0 x %struct.pci_fixup], align 4
@pci_apply_fixup_final_quirks = internal unnamed_addr global i1 false, align 1
@__start_pci_fixups_final = external dso_local global [0 x %struct.pci_fixup], align 4
@__end_pci_fixups_final = external dso_local global [0 x %struct.pci_fixup], align 4
@__start_pci_fixups_enable = external dso_local global [0 x %struct.pci_fixup], align 4
@__end_pci_fixups_enable = external dso_local global [0 x %struct.pci_fixup], align 4
@__start_pci_fixups_resume = external dso_local global [0 x %struct.pci_fixup], align 4
@__end_pci_fixups_resume = external dso_local global [0 x %struct.pci_fixup], align 4
@__start_pci_fixups_resume_early = external dso_local global [0 x %struct.pci_fixup], align 4
@__end_pci_fixups_resume_early = external dso_local global [0 x %struct.pci_fixup], align 4
@__start_pci_fixups_suspend = external dso_local global [0 x %struct.pci_fixup], align 4
@__end_pci_fixups_suspend = external dso_local global [0 x %struct.pci_fixup], align 4
@__start_pci_fixups_suspend_late = external dso_local global [0 x %struct.pci_fixup], align 4
@__end_pci_fixups_suspend_late = external dso_local global [0 x %struct.pci_fixup], align 4
@__kstrtab_pci_fixup_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_fixup_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_fixup_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_fixup_device to i32), ptr @__kstrtab_pci_fixup_device, ptr @__kstrtabns_pci_fixup_device }, section "___ksymtab+pci_fixup_device", align 4
@__initcall__kmod_quirks__252_194_pci_apply_final_quirks5s = internal global ptr @pci_apply_final_quirks, section ".initcall5s.init", align 4
@__pci_fixup_quirk_mmio_always_on207 = internal constant %struct.pci_fixup { i16 -1, i16 -1, i32 1536, i32 8, ptr @quirk_mmio_always_on }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_disable_parity213 = internal constant %struct.pci_fixup { i16 5555, i16 23108, i32 -1, i32 0, ptr @pci_disable_parity }, section ".pci_fixup_final", align 4
@__pci_fixup_pci_disable_parity214 = internal constant %struct.pci_fixup { i16 5555, i16 23110, i32 -1, i32 0, ptr @pci_disable_parity }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_passive_release238 = internal constant %struct.pci_fixup { i16 -32634, i16 4663, i32 -1, i32 0, ptr @quirk_passive_release }, section ".pci_fixup_final", align 4
@__pci_fixup_resumequirk_passive_release239 = internal constant %struct.pci_fixup { i16 -32634, i16 4663, i32 -1, i32 0, ptr @quirk_passive_release }, section ".pci_fixup_resume", align 4
@__pci_fixup_quirk_isa_dma_hangs260 = internal constant %struct.pci_fixup { i16 4358, i16 1414, i32 -1, i32 0, ptr @quirk_isa_dma_hangs }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_isa_dma_hangs261 = internal constant %struct.pci_fixup { i16 4358, i16 1430, i32 -1, i32 0, ptr @quirk_isa_dma_hangs }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_isa_dma_hangs262 = internal constant %struct.pci_fixup { i16 -32634, i16 28672, i32 -1, i32 0, ptr @quirk_isa_dma_hangs }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_isa_dma_hangs263 = internal constant %struct.pci_fixup { i16 4281, i16 5427, i32 -1, i32 0, ptr @quirk_isa_dma_hangs }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_isa_dma_hangs264 = internal constant %struct.pci_fixup { i16 4147, i16 1, i32 -1, i32 0, ptr @quirk_isa_dma_hangs }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_isa_dma_hangs265 = internal constant %struct.pci_fixup { i16 4147, i16 45, i32 -1, i32 0, ptr @quirk_isa_dma_hangs }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_isa_dma_hangs266 = internal constant %struct.pci_fixup { i16 4147, i16 59, i32 -1, i32 0, ptr @quirk_isa_dma_hangs }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_tigerpoint_bm_sts286 = internal constant %struct.pci_fixup { i16 -32634, i16 10172, i32 -1, i32 0, ptr @quirk_tigerpoint_bm_sts }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_nopcipci296 = internal constant %struct.pci_fixup { i16 4153, i16 21911, i32 -1, i32 0, ptr @quirk_nopcipci }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_nopcipci297 = internal constant %struct.pci_fixup { i16 4153, i16 1174, i32 -1, i32 0, ptr @quirk_nopcipci }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_nopciamd309 = internal constant %struct.pci_fixup { i16 4130, i16 29780, i32 -1, i32 0, ptr @quirk_nopciamd }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_triton319 = internal constant %struct.pci_fixup { i16 -32634, i16 4653, i32 -1, i32 0, ptr @quirk_triton }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_triton320 = internal constant %struct.pci_fixup { i16 -32634, i16 28720, i32 -1, i32 0, ptr @quirk_triton }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_triton321 = internal constant %struct.pci_fixup { i16 -32634, i16 4688, i32 -1, i32 0, ptr @quirk_triton }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_triton322 = internal constant %struct.pci_fixup { i16 -32634, i16 28928, i32 -1, i32 0, ptr @quirk_triton }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_vialatency388 = internal constant %struct.pci_fixup { i16 4358, i16 773, i32 -1, i32 0, ptr @quirk_vialatency }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_vialatency389 = internal constant %struct.pci_fixup { i16 4358, i16 -31855, i32 -1, i32 0, ptr @quirk_vialatency }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_vialatency390 = internal constant %struct.pci_fixup { i16 4358, i16 12562, i32 -1, i32 0, ptr @quirk_vialatency }, section ".pci_fixup_final", align 4
@__pci_fixup_resumequirk_vialatency392 = internal constant %struct.pci_fixup { i16 4358, i16 773, i32 -1, i32 0, ptr @quirk_vialatency }, section ".pci_fixup_resume", align 4
@__pci_fixup_resumequirk_vialatency393 = internal constant %struct.pci_fixup { i16 4358, i16 -31855, i32 -1, i32 0, ptr @quirk_vialatency }, section ".pci_fixup_resume", align 4
@__pci_fixup_resumequirk_vialatency394 = internal constant %struct.pci_fixup { i16 4358, i16 12562, i32 -1, i32 0, ptr @quirk_vialatency }, section ".pci_fixup_resume", align 4
@__pci_fixup_quirk_viaetbf404 = internal constant %struct.pci_fixup { i16 4358, i16 1431, i32 -1, i32 0, ptr @quirk_viaetbf }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_vsfx413 = internal constant %struct.pci_fixup { i16 4358, i16 1398, i32 -1, i32 0, ptr @quirk_vsfx }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_alimagik427 = internal constant %struct.pci_fixup { i16 4281, i16 5703, i32 -1, i32 0, ptr @quirk_alimagik }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_alimagik428 = internal constant %struct.pci_fixup { i16 4281, i16 5713, i32 -1, i32 0, ptr @quirk_alimagik }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_natoma438 = internal constant %struct.pci_fixup { i16 -32634, i16 4663, i32 -1, i32 0, ptr @quirk_natoma }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_natoma439 = internal constant %struct.pci_fixup { i16 -32634, i16 29056, i32 -1, i32 0, ptr @quirk_natoma }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_natoma440 = internal constant %struct.pci_fixup { i16 -32634, i16 29057, i32 -1, i32 0, ptr @quirk_natoma }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_natoma441 = internal constant %struct.pci_fixup { i16 -32634, i16 29072, i32 -1, i32 0, ptr @quirk_natoma }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_natoma442 = internal constant %struct.pci_fixup { i16 -32634, i16 29073, i32 -1, i32 0, ptr @quirk_natoma }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_natoma443 = internal constant %struct.pci_fixup { i16 -32634, i16 29074, i32 -1, i32 0, ptr @quirk_natoma }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_citrine453 = internal constant %struct.pci_fixup { i16 4116, i16 652, i32 -1, i32 0, ptr @quirk_citrine }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_nfp6000463 = internal constant %struct.pci_fixup { i16 6638, i16 16384, i32 -1, i32 0, ptr @quirk_nfp6000 }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_nfp6000464 = internal constant %struct.pci_fixup { i16 6638, i16 24576, i32 -1, i32 0, ptr @quirk_nfp6000 }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_nfp6000465 = internal constant %struct.pci_fixup { i16 6638, i16 20480, i32 -1, i32 0, ptr @quirk_nfp6000 }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_nfp6000466 = internal constant %struct.pci_fixup { i16 6638, i16 24579, i32 -1, i32 0, ptr @quirk_nfp6000 }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_extend_bar_to_page485 = internal constant %struct.pci_fixup { i16 4116, i16 842, i32 -1, i32 0, ptr @quirk_extend_bar_to_page }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_s3_64M501 = internal constant %struct.pci_fixup { i16 21299, i16 -30592, i32 -1, i32 0, ptr @quirk_s3_64M }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_s3_64M502 = internal constant %struct.pci_fixup { i16 21299, i16 -30480, i32 -1, i32 0, ptr @quirk_s3_64M }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_cs5536_vsa552 = internal constant %struct.pci_fixup { i16 4130, i16 8336, i32 -1, i32 0, ptr @quirk_cs5536_vsa }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ati_exploding_mce590 = internal constant %struct.pci_fixup { i16 4098, i16 -13648, i32 -1, i32 0, ptr @quirk_ati_exploding_mce }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_amd_nl_class613 = internal constant %struct.pci_fixup { i16 4130, i16 30994, i32 -1, i32 0, ptr @quirk_amd_nl_class }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_synopsys_haps638 = internal constant %struct.pci_fixup { i16 5827, i16 -1, i32 787248, i32 0, ptr @quirk_synopsys_haps }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ali7101_acpi655 = internal constant %struct.pci_fixup { i16 4281, i16 28929, i32 -1, i32 0, ptr @quirk_ali7101_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_piix4_acpi743 = internal constant %struct.pci_fixup { i16 -32634, i16 28947, i32 -1, i32 0, ptr @quirk_piix4_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_piix4_acpi744 = internal constant %struct.pci_fixup { i16 -32634, i16 29083, i32 -1, i32 0, ptr @quirk_piix4_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi783 = internal constant %struct.pci_fixup { i16 -32634, i16 9232, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi784 = internal constant %struct.pci_fixup { i16 -32634, i16 9248, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi785 = internal constant %struct.pci_fixup { i16 -32634, i16 9280, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi786 = internal constant %struct.pci_fixup { i16 -32634, i16 9292, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi787 = internal constant %struct.pci_fixup { i16 -32634, i16 9344, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi788 = internal constant %struct.pci_fixup { i16 -32634, i16 9356, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi789 = internal constant %struct.pci_fixup { i16 -32634, i16 9408, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi790 = internal constant %struct.pci_fixup { i16 -32634, i16 9420, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi791 = internal constant %struct.pci_fixup { i16 -32634, i16 9424, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich4_lpc_acpi792 = internal constant %struct.pci_fixup { i16 -32634, i16 9633, i32 -1, i32 0, ptr @quirk_ich4_lpc_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich6_lpc850 = internal constant %struct.pci_fixup { i16 -32634, i16 9792, i32 -1, i32 0, ptr @quirk_ich6_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich6_lpc851 = internal constant %struct.pci_fixup { i16 -32634, i16 9793, i32 -1, i32 0, ptr @quirk_ich6_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc889 = internal constant %struct.pci_fixup { i16 -32634, i16 10168, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc890 = internal constant %struct.pci_fixup { i16 -32634, i16 10169, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc891 = internal constant %struct.pci_fixup { i16 -32634, i16 10173, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc892 = internal constant %struct.pci_fixup { i16 -32634, i16 10256, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc893 = internal constant %struct.pci_fixup { i16 -32634, i16 10258, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc894 = internal constant %struct.pci_fixup { i16 -32634, i16 10260, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc895 = internal constant %struct.pci_fixup { i16 -32634, i16 10257, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc896 = internal constant %struct.pci_fixup { i16 -32634, i16 10261, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc897 = internal constant %struct.pci_fixup { i16 -32634, i16 10514, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc898 = internal constant %struct.pci_fixup { i16 -32634, i16 10516, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc899 = internal constant %struct.pci_fixup { i16 -32634, i16 10518, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc900 = internal constant %struct.pci_fixup { i16 -32634, i16 10520, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_ich7_lpc901 = internal constant %struct.pci_fixup { i16 -32634, i16 14870, i32 -1, i32 0, ptr @quirk_ich7_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_vt82c586_acpi913 = internal constant %struct.pci_fixup { i16 4358, i16 12352, i32 -1, i32 0, ptr @quirk_vt82c586_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_vt82c686_acpi930 = internal constant %struct.pci_fixup { i16 4358, i16 12375, i32 -1, i32 0, ptr @quirk_vt82c686_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_vt8235_acpi942 = internal constant %struct.pci_fixup { i16 4358, i16 12663, i32 -1, i32 0, ptr @quirk_vt8235_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_xio2000a961 = internal constant %struct.pci_fixup { i16 4172, i16 -32207, i32 -1, i32 0, ptr @quirk_xio2000a }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_amd_8131_mmrbc1054 = internal constant %struct.pci_fixup { i16 4130, i16 29776, i32 -1, i32 0, ptr @quirk_amd_8131_mmrbc }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_via_acpi1073 = internal constant %struct.pci_fixup { i16 4358, i16 12352, i32 -1, i32 0, ptr @quirk_via_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_acpi1074 = internal constant %struct.pci_fixup { i16 4358, i16 12375, i32 -1, i32 0, ptr @quirk_via_acpi }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_bridge1107 = internal constant %struct.pci_fixup { i16 4358, i16 1670, i32 -1, i32 0, ptr @quirk_via_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_bridge1108 = internal constant %struct.pci_fixup { i16 4358, i16 -32207, i32 -1, i32 0, ptr @quirk_via_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_bridge1109 = internal constant %struct.pci_fixup { i16 4358, i16 12404, i32 -1, i32 0, ptr @quirk_via_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_bridge1110 = internal constant %struct.pci_fixup { i16 4358, i16 12615, i32 -1, i32 0, ptr @quirk_via_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_bridge1111 = internal constant %struct.pci_fixup { i16 4358, i16 12553, i32 -1, i32 0, ptr @quirk_via_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_bridge1112 = internal constant %struct.pci_fixup { i16 4358, i16 12663, i32 -1, i32 0, ptr @quirk_via_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_bridge1113 = internal constant %struct.pci_fixup { i16 4358, i16 12839, i32 -1, i32 0, ptr @quirk_via_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_bridge1114 = internal constant %struct.pci_fixup { i16 4358, i16 13111, i32 -1, i32 0, ptr @quirk_via_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_via_vlink1158 = internal constant %struct.pci_fixup { i16 4358, i16 -1, i32 -1, i32 0, ptr @quirk_via_vlink }, section ".pci_fixup_enable", align 4
@__pci_fixup_quirk_vt82c598_id1170 = internal constant %struct.pci_fixup { i16 4358, i16 1431, i32 -1, i32 0, ptr @quirk_vt82c598_id }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_cardbus_legacy1183 = internal constant %struct.pci_fixup { i16 -1, i16 -1, i32 1543, i32 8, ptr @quirk_cardbus_legacy }, section ".pci_fixup_final", align 4
@__pci_fixup_resume_earlyquirk_cardbus_legacy1185 = internal constant %struct.pci_fixup { i16 -1, i16 -1, i32 1543, i32 8, ptr @quirk_cardbus_legacy }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_amd_ordering1207 = internal constant %struct.pci_fixup { i16 4130, i16 28684, i32 -1, i32 0, ptr @quirk_amd_ordering }, section ".pci_fixup_final", align 4
@__pci_fixup_resume_earlyquirk_amd_ordering1208 = internal constant %struct.pci_fixup { i16 4130, i16 28684, i32 -1, i32 0, ptr @quirk_amd_ordering }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_dunord1225 = internal constant %struct.pci_fixup { i16 21828, i16 1, i32 -1, i32 0, ptr @quirk_dunord }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_transparent_bridge1236 = internal constant %struct.pci_fixup { i16 -32634, i16 4683, i32 -1, i32 0, ptr @quirk_transparent_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_transparent_bridge1237 = internal constant %struct.pci_fixup { i16 4473, i16 1541, i32 -1, i32 0, ptr @quirk_transparent_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_mediagx_master1257 = internal constant %struct.pci_fixup { i16 4216, i16 1, i32 -1, i32 0, ptr @quirk_mediagx_master }, section ".pci_fixup_final", align 4
@__pci_fixup_resumequirk_mediagx_master1258 = internal constant %struct.pci_fixup { i16 4216, i16 1, i32 -1, i32 0, ptr @quirk_mediagx_master }, section ".pci_fixup_resume", align 4
@__pci_fixup_quirk_disable_pxb1278 = internal constant %struct.pci_fixup { i16 -32634, i16 -31541, i32 -1, i32 0, ptr @quirk_disable_pxb }, section ".pci_fixup_final", align 4
@__pci_fixup_resume_earlyquirk_disable_pxb1279 = internal constant %struct.pci_fixup { i16 -32634, i16 -31541, i32 -1, i32 0, ptr @quirk_disable_pxb }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_amd_ide_mode1298 = internal constant %struct.pci_fixup { i16 4098, i16 17280, i32 -1, i32 0, ptr @quirk_amd_ide_mode }, section ".pci_fixup_header", align 4
@__pci_fixup_resume_earlyquirk_amd_ide_mode1299 = internal constant %struct.pci_fixup { i16 4098, i16 17280, i32 -1, i32 0, ptr @quirk_amd_ide_mode }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_amd_ide_mode1300 = internal constant %struct.pci_fixup { i16 4098, i16 17296, i32 -1, i32 0, ptr @quirk_amd_ide_mode }, section ".pci_fixup_header", align 4
@__pci_fixup_resume_earlyquirk_amd_ide_mode1301 = internal constant %struct.pci_fixup { i16 4098, i16 17296, i32 -1, i32 0, ptr @quirk_amd_ide_mode }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_amd_ide_mode1302 = internal constant %struct.pci_fixup { i16 4130, i16 30720, i32 -1, i32 0, ptr @quirk_amd_ide_mode }, section ".pci_fixup_header", align 4
@__pci_fixup_resume_earlyquirk_amd_ide_mode1303 = internal constant %struct.pci_fixup { i16 4130, i16 30720, i32 -1, i32 0, ptr @quirk_amd_ide_mode }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_amd_ide_mode1304 = internal constant %struct.pci_fixup { i16 4130, i16 30976, i32 -1, i32 0, ptr @quirk_amd_ide_mode }, section ".pci_fixup_header", align 4
@__pci_fixup_resume_earlyquirk_amd_ide_mode1305 = internal constant %struct.pci_fixup { i16 4130, i16 30976, i32 -1, i32 0, ptr @quirk_amd_ide_mode }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_svwks_csb5ide1319 = internal constant %struct.pci_fixup { i16 4454, i16 530, i32 -1, i32 0, ptr @quirk_svwks_csb5ide }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_ide_samemode1335 = internal constant %struct.pci_fixup { i16 -32634, i16 9354, i32 -1, i32 0, ptr @quirk_ide_samemode }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ata_d31344 = internal constant %struct.pci_fixup { i16 4454, i16 -1, i32 257, i32 8, ptr @quirk_no_ata_d3 }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ata_d31346 = internal constant %struct.pci_fixup { i16 4098, i16 -1, i32 257, i32 8, ptr @quirk_no_ata_d3 }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ata_d31349 = internal constant %struct.pci_fixup { i16 4281, i16 -1, i32 257, i32 8, ptr @quirk_no_ata_d3 }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ata_d31353 = internal constant %struct.pci_fixup { i16 4358, i16 -1, i32 257, i32 8, ptr @quirk_no_ata_d3 }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_eisa_bridge1363 = internal constant %struct.pci_fixup { i16 -32634, i16 1154, i32 -1, i32 0, ptr @quirk_eisa_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1510 = internal constant %struct.pci_fixup { i16 -32634, i16 6704, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1511 = internal constant %struct.pci_fixup { i16 -32634, i16 9568, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1512 = internal constant %struct.pci_fixup { i16 -32634, i16 9520, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1513 = internal constant %struct.pci_fixup { i16 -32634, i16 9584, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1514 = internal constant %struct.pci_fixup { i16 -32634, i16 9592, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1515 = internal constant %struct.pci_fixup { i16 -32634, i16 9565, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1516 = internal constant %struct.pci_fixup { i16 -32634, i16 9548, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1517 = internal constant %struct.pci_fixup { i16 -32634, i16 13120, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1518 = internal constant %struct.pci_fixup { i16 -32634, i16 13696, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1519 = internal constant %struct.pci_fixup { i16 -32634, i16 9616, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1521 = internal constant %struct.pci_fixup { i16 -32634, i16 28963, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1522 = internal constant %struct.pci_fixup { i16 -32634, i16 9410, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_hostbridge1523 = internal constant %struct.pci_fixup { i16 -32634, i16 4402, i32 -1, i32 0, ptr @asus_hides_smbus_hostbridge }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_lpc1543 = internal constant %struct.pci_fixup { i16 -32634, i16 9232, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_lpc1544 = internal constant %struct.pci_fixup { i16 -32634, i16 9408, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_lpc1545 = internal constant %struct.pci_fixup { i16 -32634, i16 9280, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_lpc1546 = internal constant %struct.pci_fixup { i16 -32634, i16 9344, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_lpc1547 = internal constant %struct.pci_fixup { i16 -32634, i16 9356, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_lpc1548 = internal constant %struct.pci_fixup { i16 -32634, i16 9420, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_asus_hides_smbus_lpc1549 = internal constant %struct.pci_fixup { i16 -32634, i16 9424, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_resume_earlyasus_hides_smbus_lpc1550 = internal constant %struct.pci_fixup { i16 -32634, i16 9232, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyasus_hides_smbus_lpc1551 = internal constant %struct.pci_fixup { i16 -32634, i16 9408, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyasus_hides_smbus_lpc1552 = internal constant %struct.pci_fixup { i16 -32634, i16 9280, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyasus_hides_smbus_lpc1553 = internal constant %struct.pci_fixup { i16 -32634, i16 9344, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyasus_hides_smbus_lpc1554 = internal constant %struct.pci_fixup { i16 -32634, i16 9356, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyasus_hides_smbus_lpc1555 = internal constant %struct.pci_fixup { i16 -32634, i16 9420, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyasus_hides_smbus_lpc1556 = internal constant %struct.pci_fixup { i16 -32634, i16 9424, i32 -1, i32 0, ptr @asus_hides_smbus_lpc }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_asus_hides_smbus_lpc_ich61605 = internal constant %struct.pci_fixup { i16 -32634, i16 9793, i32 -1, i32 0, ptr @asus_hides_smbus_lpc_ich6 }, section ".pci_fixup_header", align 4
@__pci_fixup_suspendasus_hides_smbus_lpc_ich6_suspend1606 = internal constant %struct.pci_fixup { i16 -32634, i16 9793, i32 -1, i32 0, ptr @asus_hides_smbus_lpc_ich6_suspend }, section ".pci_fixup_suspend", align 4
@__pci_fixup_resumeasus_hides_smbus_lpc_ich6_resume1607 = internal constant %struct.pci_fixup { i16 -32634, i16 9793, i32 -1, i32 0, ptr @asus_hides_smbus_lpc_ich6_resume }, section ".pci_fixup_resume", align 4
@__pci_fixup_resume_earlyasus_hides_smbus_lpc_ich6_resume_early1608 = internal constant %struct.pci_fixup { i16 -32634, i16 9793, i32 -1, i32 0, ptr @asus_hides_smbus_lpc_ich6_resume_early }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_sis_96x_smbus1620 = internal constant %struct.pci_fixup { i16 4153, i16 2401, i32 -1, i32 0, ptr @quirk_sis_96x_smbus }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_sis_96x_smbus1621 = internal constant %struct.pci_fixup { i16 4153, i16 2402, i32 -1, i32 0, ptr @quirk_sis_96x_smbus }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_sis_96x_smbus1622 = internal constant %struct.pci_fixup { i16 4153, i16 2403, i32 -1, i32 0, ptr @quirk_sis_96x_smbus }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_sis_96x_smbus1623 = internal constant %struct.pci_fixup { i16 4153, i16 24, i32 -1, i32 0, ptr @quirk_sis_96x_smbus }, section ".pci_fixup_header", align 4
@__pci_fixup_resume_earlyquirk_sis_96x_smbus1624 = internal constant %struct.pci_fixup { i16 4153, i16 2401, i32 -1, i32 0, ptr @quirk_sis_96x_smbus }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_sis_96x_smbus1625 = internal constant %struct.pci_fixup { i16 4153, i16 2402, i32 -1, i32 0, ptr @quirk_sis_96x_smbus }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_sis_96x_smbus1626 = internal constant %struct.pci_fixup { i16 4153, i16 2403, i32 -1, i32 0, ptr @quirk_sis_96x_smbus }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_sis_96x_smbus1627 = internal constant %struct.pci_fixup { i16 4153, i16 24, i32 -1, i32 0, ptr @quirk_sis_96x_smbus }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_sis_5031660 = internal constant %struct.pci_fixup { i16 4153, i16 8, i32 -1, i32 0, ptr @quirk_sis_503 }, section ".pci_fixup_header", align 4
@__pci_fixup_resume_earlyquirk_sis_5031661 = internal constant %struct.pci_fixup { i16 4153, i16 8, i32 -1, i32 0, ptr @quirk_sis_503 }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_asus_hides_ac97_lpc1693 = internal constant %struct.pci_fixup { i16 4358, i16 12839, i32 -1, i32 0, ptr @asus_hides_ac97_lpc }, section ".pci_fixup_header", align 4
@__pci_fixup_resume_earlyasus_hides_ac97_lpc1694 = internal constant %struct.pci_fixup { i16 4358, i16 12839, i32 -1, i32 0, ptr @asus_hides_ac97_lpc }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_jmicron_ata1755 = internal constant %struct.pci_fixup { i16 6523, i16 9056, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_jmicron_ata1756 = internal constant %struct.pci_fixup { i16 6523, i16 9057, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_jmicron_ata1757 = internal constant %struct.pci_fixup { i16 6523, i16 9058, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_jmicron_ata1758 = internal constant %struct.pci_fixup { i16 6523, i16 9059, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_jmicron_ata1759 = internal constant %struct.pci_fixup { i16 6523, i16 9060, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_jmicron_ata1760 = internal constant %struct.pci_fixup { i16 6523, i16 9061, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_jmicron_ata1761 = internal constant %struct.pci_fixup { i16 6523, i16 9062, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_jmicron_ata1762 = internal constant %struct.pci_fixup { i16 6523, i16 9064, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_jmicron_ata1763 = internal constant %struct.pci_fixup { i16 6523, i16 9065, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_early", align 4
@__pci_fixup_resume_earlyquirk_jmicron_ata1764 = internal constant %struct.pci_fixup { i16 6523, i16 9056, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_jmicron_ata1765 = internal constant %struct.pci_fixup { i16 6523, i16 9057, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_jmicron_ata1766 = internal constant %struct.pci_fixup { i16 6523, i16 9058, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_jmicron_ata1767 = internal constant %struct.pci_fixup { i16 6523, i16 9059, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_jmicron_ata1768 = internal constant %struct.pci_fixup { i16 6523, i16 9060, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_jmicron_ata1769 = internal constant %struct.pci_fixup { i16 6523, i16 9061, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_jmicron_ata1770 = internal constant %struct.pci_fixup { i16 6523, i16 9062, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_jmicron_ata1771 = internal constant %struct.pci_fixup { i16 6523, i16 9064, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_resume_earlyquirk_jmicron_ata1772 = internal constant %struct.pci_fixup { i16 6523, i16 9065, i32 -1, i32 0, ptr @quirk_jmicron_ata }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_jmicron_async_suspend1783 = internal constant %struct.pci_fixup { i16 6523, i16 -1, i32 257, i32 8, ptr @quirk_jmicron_async_suspend }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_jmicron_async_suspend1784 = internal constant %struct.pci_fixup { i16 6523, i16 -1, i32 67073, i32 0, ptr @quirk_jmicron_async_suspend }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_jmicron_async_suspend1785 = internal constant %struct.pci_fixup { i16 6523, i16 9058, i32 -1, i32 0, ptr @quirk_jmicron_async_suspend }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_jmicron_async_suspend1786 = internal constant %struct.pci_fixup { i16 6523, i16 9071, i32 -1, i32 0, ptr @quirk_jmicron_async_suspend }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_pcie_mch1818 = internal constant %struct.pci_fixup { i16 -32634, i16 13712, i32 -1, i32 0, ptr @quirk_pcie_mch }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_pcie_mch1819 = internal constant %struct.pci_fixup { i16 -32634, i16 13714, i32 -1, i32 0, ptr @quirk_pcie_mch }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_pcie_mch1820 = internal constant %struct.pci_fixup { i16 -32634, i16 13726, i32 -1, i32 0, ptr @quirk_pcie_mch }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_pcie_mch1822 = internal constant %struct.pci_fixup { i16 6629, i16 5648, i32 1540, i32 8, ptr @quirk_pcie_mch }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_huawei_pcie_sva1856 = internal constant %struct.pci_fixup { i16 6629, i16 -23984, i32 -1, i32 0, ptr @quirk_huawei_pcie_sva }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_huawei_pcie_sva1857 = internal constant %struct.pci_fixup { i16 6629, i16 -23983, i32 -1, i32 0, ptr @quirk_huawei_pcie_sva }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_huawei_pcie_sva1858 = internal constant %struct.pci_fixup { i16 6629, i16 -23979, i32 -1, i32 0, ptr @quirk_huawei_pcie_sva }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_huawei_pcie_sva1859 = internal constant %struct.pci_fixup { i16 6629, i16 -23978, i32 -1, i32 0, ptr @quirk_huawei_pcie_sva }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_huawei_pcie_sva1860 = internal constant %struct.pci_fixup { i16 6629, i16 -23976, i32 -1, i32 0, ptr @quirk_huawei_pcie_sva }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_huawei_pcie_sva1861 = internal constant %struct.pci_fixup { i16 6629, i16 -23975, i32 -1, i32 0, ptr @quirk_huawei_pcie_sva }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_pcie_pxh1872 = internal constant %struct.pci_fixup { i16 -32634, i16 800, i32 -1, i32 0, ptr @quirk_pcie_pxh }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_pcie_pxh1873 = internal constant %struct.pci_fixup { i16 -32634, i16 801, i32 -1, i32 0, ptr @quirk_pcie_pxh }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_pcie_pxh1874 = internal constant %struct.pci_fixup { i16 -32634, i16 809, i32 -1, i32 0, ptr @quirk_pcie_pxh }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_pcie_pxh1875 = internal constant %struct.pci_fixup { i16 -32634, i16 810, i32 -1, i32 0, ptr @quirk_pcie_pxh }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_pcie_pxh1876 = internal constant %struct.pci_fixup { i16 -32634, i16 812, i32 -1, i32 0, ptr @quirk_pcie_pxh }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_intel_pcie_pm1887 = internal constant %struct.pci_fixup { i16 -32634, i16 9698, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1888 = internal constant %struct.pci_fixup { i16 -32634, i16 9699, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1889 = internal constant %struct.pci_fixup { i16 -32634, i16 9700, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1890 = internal constant %struct.pci_fixup { i16 -32634, i16 9701, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1891 = internal constant %struct.pci_fixup { i16 -32634, i16 9702, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1892 = internal constant %struct.pci_fixup { i16 -32634, i16 9703, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1893 = internal constant %struct.pci_fixup { i16 -32634, i16 9719, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1894 = internal constant %struct.pci_fixup { i16 -32634, i16 9720, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1895 = internal constant %struct.pci_fixup { i16 -32634, i16 9721, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1896 = internal constant %struct.pci_fixup { i16 -32634, i16 9722, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1897 = internal constant %struct.pci_fixup { i16 -32634, i16 9729, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1898 = internal constant %struct.pci_fixup { i16 -32634, i16 9730, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1899 = internal constant %struct.pci_fixup { i16 -32634, i16 9731, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1900 = internal constant %struct.pci_fixup { i16 -32634, i16 9732, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1901 = internal constant %struct.pci_fixup { i16 -32634, i16 9733, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1902 = internal constant %struct.pci_fixup { i16 -32634, i16 9734, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1903 = internal constant %struct.pci_fixup { i16 -32634, i16 9735, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1904 = internal constant %struct.pci_fixup { i16 -32634, i16 9736, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1905 = internal constant %struct.pci_fixup { i16 -32634, i16 9737, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1906 = internal constant %struct.pci_fixup { i16 -32634, i16 9738, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_intel_pcie_pm1907 = internal constant %struct.pci_fixup { i16 -32634, i16 9739, i32 -1, i32 0, ptr @quirk_intel_pcie_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_radeon_pm1925 = internal constant %struct.pci_fixup { i16 4098, i16 26433, i32 -1, i32 0, ptr @quirk_radeon_pm }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_ryzen_xhci_d3hot1940 = internal constant %struct.pci_fixup { i16 4130, i16 5600, i32 -1, i32 0, ptr @quirk_ryzen_xhci_d3hot }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_ryzen_xhci_d3hot1941 = internal constant %struct.pci_fixup { i16 4130, i16 5601, i32 -1, i32 0, ptr @quirk_ryzen_xhci_d3hot }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_ryzen_xhci_d3hot1942 = internal constant %struct.pci_fixup { i16 4130, i16 5689, i32 -1, i32 0, ptr @quirk_ryzen_xhci_d3hot }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_tc86c001_ide2201 = internal constant %struct.pci_fixup { i16 4143, i16 261, i32 -1, i32 0, ptr @quirk_tc86c001_ide }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_plx_pci90502229 = internal constant %struct.pci_fixup { i16 4277, i16 -28592, i32 -1, i32 0, ptr @quirk_plx_pci9050 }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_plx_pci90502239 = internal constant %struct.pci_fixup { i16 5122, i16 8192, i32 -1, i32 0, ptr @quirk_plx_pci9050 }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_plx_pci90502240 = internal constant %struct.pci_fixup { i16 5122, i16 9728, i32 -1, i32 0, ptr @quirk_plx_pci9050 }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_netmos2277 = internal constant %struct.pci_fixup { i16 -26864, i16 -1, i32 1792, i32 8, ptr @quirk_netmos }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_e100_interrupt2343 = internal constant %struct.pci_fixup { i16 -32634, i16 -1, i32 512, i32 8, ptr @quirk_e100_interrupt }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2354 = internal constant %struct.pci_fixup { i16 -32634, i16 4263, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2355 = internal constant %struct.pci_fixup { i16 -32634, i16 4265, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2356 = internal constant %struct.pci_fixup { i16 -32634, i16 4278, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2357 = internal constant %struct.pci_fixup { i16 -32634, i16 4294, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2358 = internal constant %struct.pci_fixup { i16 -32634, i16 4295, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2359 = internal constant %struct.pci_fixup { i16 -32634, i16 4296, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2360 = internal constant %struct.pci_fixup { i16 -32634, i16 4310, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2361 = internal constant %struct.pci_fixup { i16 -32634, i16 4315, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2362 = internal constant %struct.pci_fixup { i16 -32634, i16 4317, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2363 = internal constant %struct.pci_fixup { i16 -32634, i16 4321, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2364 = internal constant %struct.pci_fixup { i16 -32634, i16 4332, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2365 = internal constant %struct.pci_fixup { i16 -32634, i16 4337, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2366 = internal constant %struct.pci_fixup { i16 -32634, i16 4340, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s2367 = internal constant %struct.pci_fixup { i16 -32634, i16 5384, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_aspm_l0s_l12380 = internal constant %struct.pci_fixup { i16 6945, i16 4224, i32 -1, i32 0, ptr @quirk_disable_aspm_l0s_l1 }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_enable_clear_retrain_link2395 = internal constant %struct.pci_fixup { i16 4824, i16 -7920, i32 -1, i32 0, ptr @quirk_enable_clear_retrain_link }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_enable_clear_retrain_link2396 = internal constant %struct.pci_fixup { i16 4824, i16 -7919, i32 -1, i32 0, ptr @quirk_enable_clear_retrain_link }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_enable_clear_retrain_link2397 = internal constant %struct.pci_fixup { i16 4824, i16 -7888, i32 -1, i32 0, ptr @quirk_enable_clear_retrain_link }, section ".pci_fixup_header", align 4
@__pci_fixup_fixup_rev1_53c8102414 = internal constant %struct.pci_fixup { i16 4096, i16 1, i32 -1, i32 0, ptr @fixup_rev1_53c810 }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_p64h2_1k_io2428 = internal constant %struct.pci_fixup { i16 -32634, i16 5216, i32 -1, i32 0, ptr @quirk_p64h2_1k_io }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_nvidia_ck804_pcie_aer_ext_cap2447 = internal constant %struct.pci_fixup { i16 4318, i16 93, i32 -1, i32 0, ptr @quirk_nvidia_ck804_pcie_aer_ext_cap }, section ".pci_fixup_final", align 4
@__pci_fixup_resume_earlyquirk_nvidia_ck804_pcie_aer_ext_cap2449 = internal constant %struct.pci_fixup { i16 4318, i16 93, i32 -1, i32 0, ptr @quirk_nvidia_ck804_pcie_aer_ext_cap }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_via_cx700_pci_parking_caching2501 = internal constant %struct.pci_fixup { i16 4358, i16 12878, i32 -1, i32 0, ptr @quirk_via_cx700_pci_parking_caching }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_brcm_5719_limit_mrrs2518 = internal constant %struct.pci_fixup { i16 5348, i16 5719, i32 -1, i32 0, ptr @quirk_brcm_5719_limit_mrrs }, section ".pci_fixup_enable", align 4
@__pci_fixup_quirk_unhide_mch_dev62536 = internal constant %struct.pci_fixup { i16 -32634, i16 9584, i32 -1, i32 0, ptr @quirk_unhide_mch_dev6 }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_unhide_mch_dev62538 = internal constant %struct.pci_fixup { i16 -32634, i16 9592, i32 -1, i32 0, ptr @quirk_unhide_mch_dev6 }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_disable_all_msi2553 = internal constant %struct.pci_fixup { i16 4454, i16 23, i32 -1, i32 0, ptr @quirk_disable_all_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_all_msi2554 = internal constant %struct.pci_fixup { i16 4098, i16 23091, i32 -1, i32 0, ptr @quirk_disable_all_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_all_msi2555 = internal constant %struct.pci_fixup { i16 4098, i16 22864, i32 -1, i32 0, ptr @quirk_disable_all_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_all_msi2556 = internal constant %struct.pci_fixup { i16 4358, i16 822, i32 -1, i32 0, ptr @quirk_disable_all_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_all_msi2557 = internal constant %struct.pci_fixup { i16 4358, i16 849, i32 -1, i32 0, ptr @quirk_disable_all_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_all_msi2558 = internal constant %struct.pci_fixup { i16 4358, i16 868, i32 -1, i32 0, ptr @quirk_disable_all_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_all_msi2559 = internal constant %struct.pci_fixup { i16 4358, i16 516, i32 -1, i32 0, ptr @quirk_disable_all_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_all_msi2560 = internal constant %struct.pci_fixup { i16 4153, i16 1889, i32 -1, i32 0, ptr @quirk_disable_all_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_all_msi2561 = internal constant %struct.pci_fixup { i16 5197, i16 -23069, i32 -1, i32 0, ptr @quirk_disable_all_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_msi2571 = internal constant %struct.pci_fixup { i16 4130, i16 29776, i32 -1, i32 0, ptr @quirk_disable_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_msi2572 = internal constant %struct.pci_fixup { i16 4358, i16 -24008, i32 -1, i32 0, ptr @quirk_disable_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_disable_msi2573 = internal constant %struct.pci_fixup { i16 4098, i16 23103, i32 -1, i32 0, ptr @quirk_disable_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_amd_780_apc_msi2592 = internal constant %struct.pci_fixup { i16 4130, i16 -27136, i32 -1, i32 0, ptr @quirk_amd_780_apc_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_amd_780_apc_msi2593 = internal constant %struct.pci_fixup { i16 4130, i16 -27135, i32 -1, i32 0, ptr @quirk_amd_780_apc_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_ht_cap2628 = internal constant %struct.pci_fixup { i16 4454, i16 306, i32 -1, i32 0, ptr @quirk_msi_ht_cap }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_nvidia_ck804_msi_ht_cap2650 = internal constant %struct.pci_fixup { i16 4318, i16 93, i32 -1, i32 0, ptr @quirk_nvidia_ck804_msi_ht_cap }, section ".pci_fixup_final", align 4
@__pci_fixup_ht_enable_msi_mapping2674 = internal constant %struct.pci_fixup { i16 4454, i16 54, i32 -1, i32 0, ptr @ht_enable_msi_mapping }, section ".pci_fixup_header", align 4
@__pci_fixup_ht_enable_msi_mapping2676 = internal constant %struct.pci_fixup { i16 4130, i16 29784, i32 -1, i32 0, ptr @ht_enable_msi_mapping }, section ".pci_fixup_header", align 4
@__pci_fixup_nvenet_msi_disable2696 = internal constant %struct.pci_fixup { i16 4318, i16 883, i32 -1, i32 0, ptr @nvenet_msi_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2713 = internal constant %struct.pci_fixup { i16 4318, i16 6864, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2716 = internal constant %struct.pci_fixup { i16 4318, i16 6865, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2719 = internal constant %struct.pci_fixup { i16 4318, i16 6866, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2722 = internal constant %struct.pci_fixup { i16 4318, i16 3056, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2725 = internal constant %struct.pci_fixup { i16 4318, i16 3057, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2728 = internal constant %struct.pci_fixup { i16 4318, i16 3612, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2731 = internal constant %struct.pci_fixup { i16 4318, i16 3613, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2734 = internal constant %struct.pci_fixup { i16 4318, i16 3602, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2737 = internal constant %struct.pci_fixup { i16 4318, i16 3603, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2740 = internal constant %struct.pci_fixup { i16 4318, i16 4014, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2743 = internal constant %struct.pci_fixup { i16 4318, i16 4015, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2746 = internal constant %struct.pci_fixup { i16 4318, i16 4325, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2749 = internal constant %struct.pci_fixup { i16 4318, i16 4326, i32 1540, i32 8, ptr @pci_quirk_nvidia_tegra_disable_rp_msi }, section ".pci_fixup_early", align 4
@__pci_fixup_nvbridge_check_legacy_irq_routing2778 = internal constant %struct.pci_fixup { i16 4318, i16 864, i32 -1, i32 0, ptr @nvbridge_check_legacy_irq_routing }, section ".pci_fixup_early", align 4
@__pci_fixup_nvbridge_check_legacy_irq_routing2781 = internal constant %struct.pci_fixup { i16 4318, i16 868, i32 -1, i32 0, ptr @nvbridge_check_legacy_irq_routing }, section ".pci_fixup_early", align 4
@__pci_fixup_nv_msi_ht_cap_quirk_all2983 = internal constant %struct.pci_fixup { i16 4281, i16 -1, i32 -1, i32 0, ptr @nv_msi_ht_cap_quirk_all }, section ".pci_fixup_final", align 4
@__pci_fixup_resume_earlynv_msi_ht_cap_quirk_all2984 = internal constant %struct.pci_fixup { i16 4281, i16 -1, i32 -1, i32 0, ptr @nv_msi_ht_cap_quirk_all }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_nv_msi_ht_cap_quirk_leaf2990 = internal constant %struct.pci_fixup { i16 4318, i16 -1, i32 -1, i32 0, ptr @nv_msi_ht_cap_quirk_leaf }, section ".pci_fixup_final", align 4
@__pci_fixup_resume_earlynv_msi_ht_cap_quirk_leaf2991 = internal constant %struct.pci_fixup { i16 4318, i16 -1, i32 -1, i32 0, ptr @nv_msi_ht_cap_quirk_leaf }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3027 = internal constant %struct.pci_fixup { i16 5348, i16 5738, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3030 = internal constant %struct.pci_fixup { i16 5348, i16 5739, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3033 = internal constant %struct.pci_fixup { i16 5348, i16 5736, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3036 = internal constant %struct.pci_fixup { i16 5348, i16 5737, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3039 = internal constant %struct.pci_fixup { i16 5348, i16 5752, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3042 = internal constant %struct.pci_fixup { i16 5348, i16 5753, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_ati_bug3045 = internal constant %struct.pci_fixup { i16 4098, i16 17296, i32 -1, i32 0, ptr @quirk_msi_intx_disable_ati_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_ati_bug3047 = internal constant %struct.pci_fixup { i16 4098, i16 17297, i32 -1, i32 0, ptr @quirk_msi_intx_disable_ati_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_ati_bug3049 = internal constant %struct.pci_fixup { i16 4098, i16 17298, i32 -1, i32 0, ptr @quirk_msi_intx_disable_ati_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_ati_bug3051 = internal constant %struct.pci_fixup { i16 4098, i16 17299, i32 -1, i32 0, ptr @quirk_msi_intx_disable_ati_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_ati_bug3053 = internal constant %struct.pci_fixup { i16 4098, i16 17300, i32 -1, i32 0, ptr @quirk_msi_intx_disable_ati_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3056 = internal constant %struct.pci_fixup { i16 4098, i16 17267, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3058 = internal constant %struct.pci_fixup { i16 4098, i16 17268, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3060 = internal constant %struct.pci_fixup { i16 4098, i16 17269, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3063 = internal constant %struct.pci_fixup { i16 6505, i16 4194, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3065 = internal constant %struct.pci_fixup { i16 6505, i16 4195, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3067 = internal constant %struct.pci_fixup { i16 6505, i16 8288, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3069 = internal constant %struct.pci_fixup { i16 6505, i16 8290, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3071 = internal constant %struct.pci_fixup { i16 6505, i16 4211, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_bug3073 = internal constant %struct.pci_fixup { i16 6505, i16 4227, i32 -1, i32 0, ptr @quirk_msi_intx_disable_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_qca_bug3075 = internal constant %struct.pci_fixup { i16 6505, i16 4240, i32 -1, i32 0, ptr @quirk_msi_intx_disable_qca_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_qca_bug3077 = internal constant %struct.pci_fixup { i16 6505, i16 4241, i32 -1, i32 0, ptr @quirk_msi_intx_disable_qca_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_qca_bug3079 = internal constant %struct.pci_fixup { i16 6505, i16 4256, i32 -1, i32 0, ptr @quirk_msi_intx_disable_qca_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_qca_bug3081 = internal constant %struct.pci_fixup { i16 6505, i16 4257, i32 -1, i32 0, ptr @quirk_msi_intx_disable_qca_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_msi_intx_disable_qca_bug3083 = internal constant %struct.pci_fixup { i16 6505, i16 -8047, i32 -1, i32 0, ptr @quirk_msi_intx_disable_qca_bug }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_al_msi_disable3101 = internal constant %struct.pci_fixup { i16 7222, i16 49, i32 1540, i32 8, ptr @quirk_al_msi_disable }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_hotplug_bridge3115 = internal constant %struct.pci_fixup { i16 13192, i16 32, i32 -1, i32 0, ptr @quirk_hotplug_bridge }, section ".pci_fixup_header", align 4
@__pci_fixup_fixup_ti816x_class3267 = internal constant %struct.pci_fixup { i16 4172, i16 -18432, i32 0, i32 8, ptr @fixup_ti816x_class }, section ".pci_fixup_early", align 4
@__pci_fixup_fixup_mpss_2563278 = internal constant %struct.pci_fixup { i16 6436, i16 1795, i32 -1, i32 0, ptr @fixup_mpss_256 }, section ".pci_fixup_early", align 4
@__pci_fixup_fixup_mpss_2563280 = internal constant %struct.pci_fixup { i16 6436, i16 26371, i32 -1, i32 0, ptr @fixup_mpss_256 }, section ".pci_fixup_early", align 4
@__pci_fixup_fixup_mpss_2563282 = internal constant %struct.pci_fixup { i16 6436, i16 1808, i32 -1, i32 0, ptr @fixup_mpss_256 }, section ".pci_fixup_early", align 4
@__pci_fixup_fixup_mpss_2563283 = internal constant %struct.pci_fixup { i16 6945, i16 1554, i32 -1, i32 0, ptr @fixup_mpss_256 }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_intel_mc_errata3327 = internal constant %struct.pci_fixup { i16 -32634, i16 9664, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3328 = internal constant %struct.pci_fixup { i16 -32634, i16 9680, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3329 = internal constant %struct.pci_fixup { i16 -32634, i16 9684, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3330 = internal constant %struct.pci_fixup { i16 -32634, i16 9688, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3331 = internal constant %struct.pci_fixup { i16 -32634, i16 9698, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3332 = internal constant %struct.pci_fixup { i16 -32634, i16 9699, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3333 = internal constant %struct.pci_fixup { i16 -32634, i16 9700, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3334 = internal constant %struct.pci_fixup { i16 -32634, i16 9701, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3335 = internal constant %struct.pci_fixup { i16 -32634, i16 9702, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3336 = internal constant %struct.pci_fixup { i16 -32634, i16 9703, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3337 = internal constant %struct.pci_fixup { i16 -32634, i16 9719, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3338 = internal constant %struct.pci_fixup { i16 -32634, i16 9720, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3339 = internal constant %struct.pci_fixup { i16 -32634, i16 9721, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3340 = internal constant %struct.pci_fixup { i16 -32634, i16 9722, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3342 = internal constant %struct.pci_fixup { i16 -32634, i16 26048, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3343 = internal constant %struct.pci_fixup { i16 -32634, i16 26082, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3344 = internal constant %struct.pci_fixup { i16 -32634, i16 26083, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3345 = internal constant %struct.pci_fixup { i16 -32634, i16 26084, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3346 = internal constant %struct.pci_fixup { i16 -32634, i16 26085, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3347 = internal constant %struct.pci_fixup { i16 -32634, i16 26086, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3348 = internal constant %struct.pci_fixup { i16 -32634, i16 26087, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3349 = internal constant %struct.pci_fixup { i16 -32634, i16 26103, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3350 = internal constant %struct.pci_fixup { i16 -32634, i16 26104, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3351 = internal constant %struct.pci_fixup { i16 -32634, i16 26105, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_mc_errata3352 = internal constant %struct.pci_fixup { i16 -32634, i16 26106, i32 -1, i32 0, ptr @quirk_intel_mc_errata }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_ntb3376 = internal constant %struct.pci_fixup { i16 -32634, i16 3592, i32 -1, i32 0, ptr @quirk_intel_ntb }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_intel_ntb3377 = internal constant %struct.pci_fixup { i16 -32634, i16 3597, i32 -1, i32 0, ptr @quirk_intel_ntb }, section ".pci_fixup_header", align 4
@__pci_fixup_disable_igfx_irq3409 = internal constant %struct.pci_fixup { i16 -32634, i16 66, i32 -1, i32 0, ptr @disable_igfx_irq }, section ".pci_fixup_final", align 4
@__pci_fixup_disable_igfx_irq3410 = internal constant %struct.pci_fixup { i16 -32634, i16 70, i32 -1, i32 0, ptr @disable_igfx_irq }, section ".pci_fixup_final", align 4
@__pci_fixup_disable_igfx_irq3411 = internal constant %struct.pci_fixup { i16 -32634, i16 74, i32 -1, i32 0, ptr @disable_igfx_irq }, section ".pci_fixup_final", align 4
@__pci_fixup_disable_igfx_irq3412 = internal constant %struct.pci_fixup { i16 -32634, i16 258, i32 -1, i32 0, ptr @disable_igfx_irq }, section ".pci_fixup_final", align 4
@__pci_fixup_disable_igfx_irq3413 = internal constant %struct.pci_fixup { i16 -32634, i16 262, i32 -1, i32 0, ptr @disable_igfx_irq }, section ".pci_fixup_final", align 4
@__pci_fixup_disable_igfx_irq3414 = internal constant %struct.pci_fixup { i16 -32634, i16 266, i32 -1, i32 0, ptr @disable_igfx_irq }, section ".pci_fixup_final", align 4
@__pci_fixup_disable_igfx_irq3415 = internal constant %struct.pci_fixup { i16 -32634, i16 338, i32 -1, i32 0, ptr @disable_igfx_irq }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3426 = internal constant %struct.pci_fixup { i16 -32634, i16 1042, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3427 = internal constant %struct.pci_fixup { i16 -32634, i16 3072, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3428 = internal constant %struct.pci_fixup { i16 -32634, i16 3084, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3430 = internal constant %struct.pci_fixup { i16 -32634, i16 -29694, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3431 = internal constant %struct.pci_fixup { i16 -32634, i16 -29672, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3432 = internal constant %struct.pci_fixup { i16 -32634, i16 -29668, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3433 = internal constant %struct.pci_fixup { i16 -32634, i16 -29664, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3434 = internal constant %struct.pci_fixup { i16 -32634, i16 -29662, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3435 = internal constant %struct.pci_fixup { i16 -32634, i16 -29658, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3436 = internal constant %struct.pci_fixup { i16 -32634, i16 -29651, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3437 = internal constant %struct.pci_fixup { i16 -32634, i16 -29647, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3438 = internal constant %struct.pci_fixup { i16 -32634, i16 -29638, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3439 = internal constant %struct.pci_fixup { i16 -32634, i16 -29635, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3440 = internal constant %struct.pci_fixup { i16 -32634, i16 -29618, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3442 = internal constant %struct.pci_fixup { i16 -32634, i16 8832, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3443 = internal constant %struct.pci_fixup { i16 -32634, i16 8856, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3444 = internal constant %struct.pci_fixup { i16 -32634, i16 8860, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3445 = internal constant %struct.pci_fixup { i16 -32634, i16 8880, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3446 = internal constant %struct.pci_fixup { i16 -32634, i16 8885, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3447 = internal constant %struct.pci_fixup { i16 -32634, i16 8887, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3448 = internal constant %struct.pci_fixup { i16 -32634, i16 8888, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3449 = internal constant %struct.pci_fixup { i16 -32634, i16 8920, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_remove_d3hot_delay3450 = internal constant %struct.pci_fixup { i16 -32634, i16 8924, i32 -1, i32 0, ptr @quirk_remove_d3hot_delay }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3462 = internal constant %struct.pci_fixup { i16 5157, i16 48, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3464 = internal constant %struct.pci_fixup { i16 6164, i16 1537, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3466 = internal constant %struct.pci_fixup { i16 7036, i16 4, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3475 = internal constant %struct.pci_fixup { i16 4332, i16 -32407, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3481 = internal constant %struct.pci_fixup { i16 -32634, i16 5490, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3482 = internal constant %struct.pci_fixup { i16 -32634, i16 5492, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3483 = internal constant %struct.pci_fixup { i16 -32634, i16 5504, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3484 = internal constant %struct.pci_fixup { i16 -32634, i16 5505, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3485 = internal constant %struct.pci_fixup { i16 -32634, i16 5507, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3486 = internal constant %struct.pci_fixup { i16 -32634, i16 5508, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3487 = internal constant %struct.pci_fixup { i16 -32634, i16 5509, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3488 = internal constant %struct.pci_fixup { i16 -32634, i16 5510, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3489 = internal constant %struct.pci_fixup { i16 -32634, i16 5511, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3490 = internal constant %struct.pci_fixup { i16 -32634, i16 5512, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3491 = internal constant %struct.pci_fixup { i16 -32634, i16 5513, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3492 = internal constant %struct.pci_fixup { i16 -32634, i16 5514, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3493 = internal constant %struct.pci_fixup { i16 -32634, i16 5515, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3494 = internal constant %struct.pci_fixup { i16 -32634, i16 14288, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3495 = internal constant %struct.pci_fixup { i16 -32634, i16 14289, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_broken_intx_masking3496 = internal constant %struct.pci_fixup { i16 -32634, i16 14290, i32 -1, i32 0, ptr @quirk_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_mellanox_check_broken_intx_masking3584 = internal constant %struct.pci_fixup { i16 5555, i16 -1, i32 -1, i32 0, ptr @mellanox_check_broken_intx_masking }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_nvidia_no_bus_reset3601 = internal constant %struct.pci_fixup { i16 4318, i16 -1, i32 -1, i32 0, ptr @quirk_nvidia_no_bus_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_no_bus_reset3610 = internal constant %struct.pci_fixup { i16 5772, i16 48, i32 -1, i32 0, ptr @quirk_no_bus_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_no_bus_reset3611 = internal constant %struct.pci_fixup { i16 5772, i16 50, i32 -1, i32 0, ptr @quirk_no_bus_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_no_bus_reset3612 = internal constant %struct.pci_fixup { i16 5772, i16 60, i32 -1, i32 0, ptr @quirk_no_bus_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_no_bus_reset3613 = internal constant %struct.pci_fixup { i16 5772, i16 51, i32 -1, i32 0, ptr @quirk_no_bus_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_no_bus_reset3614 = internal constant %struct.pci_fixup { i16 5772, i16 52, i32 -1, i32 0, ptr @quirk_no_bus_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_no_bus_reset3615 = internal constant %struct.pci_fixup { i16 5772, i16 62, i32 -1, i32 0, ptr @quirk_no_bus_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_no_bus_reset3622 = internal constant %struct.pci_fixup { i16 6013, i16 -24320, i32 -1, i32 0, ptr @quirk_no_bus_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_no_bus_reset3632 = internal constant %struct.pci_fixup { i16 4172, i16 -20475, i32 -1, i32 0, ptr @quirk_no_bus_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_no_pm_reset3653 = internal constant %struct.pci_fixup { i16 4098, i16 -1, i32 768, i32 8, ptr @quirk_no_pm_reset }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_thunderbolt_hotplug_msi3668 = internal constant %struct.pci_fixup { i16 -32634, i16 5395, i32 -1, i32 0, ptr @quirk_thunderbolt_hotplug_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_thunderbolt_hotplug_msi3670 = internal constant %struct.pci_fixup { i16 -32634, i16 5402, i32 -1, i32 0, ptr @quirk_thunderbolt_hotplug_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_thunderbolt_hotplug_msi3672 = internal constant %struct.pci_fixup { i16 -32634, i16 5403, i32 -1, i32 0, ptr @quirk_thunderbolt_hotplug_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_thunderbolt_hotplug_msi3674 = internal constant %struct.pci_fixup { i16 -32634, i16 5447, i32 -1, i32 0, ptr @quirk_thunderbolt_hotplug_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_thunderbolt_hotplug_msi3676 = internal constant %struct.pci_fixup { i16 -32634, i16 5449, i32 -1, i32 0, ptr @quirk_thunderbolt_hotplug_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_dma_func0_alias4087 = internal constant %struct.pci_fixup { i16 4480, i16 -6094, i32 -1, i32 0, ptr @quirk_dma_func0_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func0_alias4088 = internal constant %struct.pci_fixup { i16 4480, i16 -7050, i32 -1, i32 0, ptr @quirk_dma_func0_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4103 = internal constant %struct.pci_fixup { i16 6987, i16 -28384, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4105 = internal constant %struct.pci_fixup { i16 6987, i16 -28381, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4108 = internal constant %struct.pci_fixup { i16 6987, i16 -28379, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4110 = internal constant %struct.pci_fixup { i16 6987, i16 -28376, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4113 = internal constant %struct.pci_fixup { i16 6987, i16 -28368, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4115 = internal constant %struct.pci_fixup { i16 6987, i16 -28304, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4118 = internal constant %struct.pci_fixup { i16 6987, i16 -28302, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4121 = internal constant %struct.pci_fixup { i16 6987, i16 -28294, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4124 = internal constant %struct.pci_fixup { i16 6987, i16 -28286, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4127 = internal constant %struct.pci_fixup { i16 6987, i16 -28285, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4130 = internal constant %struct.pci_fixup { i16 6987, i16 -28256, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4133 = internal constant %struct.pci_fixup { i16 6987, i16 -28139, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4136 = internal constant %struct.pci_fixup { i16 6987, i16 -28128, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4139 = internal constant %struct.pci_fixup { i16 6987, i16 -28112, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4141 = internal constant %struct.pci_fixup { i16 4355, i16 1602, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4143 = internal constant %struct.pci_fixup { i16 4355, i16 1605, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4147 = internal constant %struct.pci_fixup { i16 6523, i16 9106, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_dma_func1_alias4151 = internal constant %struct.pci_fixup { i16 7208, i16 290, i32 -1, i32 0, ptr @quirk_dma_func1_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_fixed_dma_alias4186 = internal constant %struct.pci_fixup { i16 -28667, i16 645, i32 -1, i32 0, ptr @quirk_fixed_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_use_pcie_bridge_dma_alias4207 = internal constant %struct.pci_fixup { i16 6945, i16 4224, i32 -1, i32 0, ptr @quirk_use_pcie_bridge_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_use_pcie_bridge_dma_alias4209 = internal constant %struct.pci_fixup { i16 4323, i16 -32493, i32 -1, i32 0, ptr @quirk_use_pcie_bridge_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_use_pcie_bridge_dma_alias4211 = internal constant %struct.pci_fixup { i16 4739, i16 -30574, i32 -1, i32 0, ptr @quirk_use_pcie_bridge_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_use_pcie_bridge_dma_alias4213 = internal constant %struct.pci_fixup { i16 4739, i16 -30573, i32 -1, i32 0, ptr @quirk_use_pcie_bridge_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_use_pcie_bridge_dma_alias4215 = internal constant %struct.pci_fixup { i16 -32634, i16 9294, i32 -1, i32 0, ptr @quirk_use_pcie_bridge_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_mic_x200_dma_alias4229 = internal constant %struct.pci_fixup { i16 -32634, i16 8800, i32 -1, i32 0, ptr @quirk_mic_x200_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_mic_x200_dma_alias4230 = internal constant %struct.pci_fixup { i16 -32634, i16 8804, i32 -1, i32 0, ptr @quirk_mic_x200_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_pex_vca_alias4254 = internal constant %struct.pci_fixup { i16 -32634, i16 10580, i32 -1, i32 0, ptr @quirk_pex_vca_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_pex_vca_alias4255 = internal constant %struct.pci_fixup { i16 -32634, i16 10581, i32 -1, i32 0, ptr @quirk_pex_vca_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_pex_vca_alias4256 = internal constant %struct.pci_fixup { i16 -32634, i16 10582, i32 -1, i32 0, ptr @quirk_pex_vca_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_pex_vca_alias4257 = internal constant %struct.pci_fixup { i16 -32634, i16 10584, i32 -1, i32 0, ptr @quirk_pex_vca_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_pex_vca_alias4258 = internal constant %struct.pci_fixup { i16 -32634, i16 10585, i32 -1, i32 0, ptr @quirk_pex_vca_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_pex_vca_alias4259 = internal constant %struct.pci_fixup { i16 -32634, i16 10586, i32 -1, i32 0, ptr @quirk_pex_vca_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_bridge_cavm_thrx2_pcie_root4271 = internal constant %struct.pci_fixup { i16 5348, i16 -28672, i32 -1, i32 0, ptr @quirk_bridge_cavm_thrx2_pcie_root }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_bridge_cavm_thrx2_pcie_root4273 = internal constant %struct.pci_fixup { i16 5348, i16 -28540, i32 -1, i32 0, ptr @quirk_bridge_cavm_thrx2_pcie_root }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_tw686x_class4289 = internal constant %struct.pci_fixup { i16 6039, i16 26724, i32 0, i32 8, ptr @quirk_tw686x_class }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_tw686x_class4291 = internal constant %struct.pci_fixup { i16 6039, i16 26725, i32 0, i32 8, ptr @quirk_tw686x_class }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_tw686x_class4293 = internal constant %struct.pci_fixup { i16 6039, i16 26728, i32 0, i32 8, ptr @quirk_tw686x_class }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_tw686x_class4295 = internal constant %struct.pci_fixup { i16 6039, i16 26729, i32 0, i32 8, ptr @quirk_tw686x_class }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4314 = internal constant %struct.pci_fixup { i16 -32634, i16 28417, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4316 = internal constant %struct.pci_fixup { i16 -32634, i16 28418, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4318 = internal constant %struct.pci_fixup { i16 -32634, i16 28419, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4320 = internal constant %struct.pci_fixup { i16 -32634, i16 28420, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4322 = internal constant %struct.pci_fixup { i16 -32634, i16 28421, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4324 = internal constant %struct.pci_fixup { i16 -32634, i16 28422, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4326 = internal constant %struct.pci_fixup { i16 -32634, i16 28423, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4328 = internal constant %struct.pci_fixup { i16 -32634, i16 28424, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4330 = internal constant %struct.pci_fixup { i16 -32634, i16 28425, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4332 = internal constant %struct.pci_fixup { i16 -32634, i16 28426, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4334 = internal constant %struct.pci_fixup { i16 -32634, i16 28427, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4336 = internal constant %struct.pci_fixup { i16 -32634, i16 28428, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4338 = internal constant %struct.pci_fixup { i16 -32634, i16 28429, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4340 = internal constant %struct.pci_fixup { i16 -32634, i16 28430, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4342 = internal constant %struct.pci_fixup { i16 -32634, i16 12033, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4344 = internal constant %struct.pci_fixup { i16 -32634, i16 12034, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4346 = internal constant %struct.pci_fixup { i16 -32634, i16 12035, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4348 = internal constant %struct.pci_fixup { i16 -32634, i16 12036, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4350 = internal constant %struct.pci_fixup { i16 -32634, i16 12037, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4352 = internal constant %struct.pci_fixup { i16 -32634, i16 12038, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4354 = internal constant %struct.pci_fixup { i16 -32634, i16 12039, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4356 = internal constant %struct.pci_fixup { i16 -32634, i16 12040, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4358 = internal constant %struct.pci_fixup { i16 -32634, i16 12041, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4360 = internal constant %struct.pci_fixup { i16 -32634, i16 12042, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4362 = internal constant %struct.pci_fixup { i16 -32634, i16 12043, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4364 = internal constant %struct.pci_fixup { i16 -32634, i16 12044, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4366 = internal constant %struct.pci_fixup { i16 -32634, i16 12045, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4368 = internal constant %struct.pci_fixup { i16 -32634, i16 12046, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4380 = internal constant %struct.pci_fixup { i16 4130, i16 6656, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4382 = internal constant %struct.pci_fixup { i16 4130, i16 6657, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_relaxedordering_disable4384 = internal constant %struct.pci_fixup { i16 4130, i16 6658, i32 0, i32 8, ptr @quirk_relaxedordering_disable }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_chelsio_T5_disable_root_port_attributes4441 = internal constant %struct.pci_fixup { i16 5157, i16 -1, i32 -1, i32 0, ptr @quirk_chelsio_T5_disable_root_port_attributes }, section ".pci_fixup_header", align 4
@pci_dev_acs_enabled = internal unnamed_addr constant [112 x %struct.pci_dev_acs_enabled] [%struct.pci_dev_acs_enabled { i16 4098, i16 17285, ptr @pci_quirk_amd_sb_acs }, %struct.pci_dev_acs_enabled { i16 4098, i16 17308, ptr @pci_quirk_amd_sb_acs }, %struct.pci_dev_acs_enabled { i16 4098, i16 17283, ptr @pci_quirk_amd_sb_acs }, %struct.pci_dev_acs_enabled { i16 4098, i16 17309, ptr @pci_quirk_amd_sb_acs }, %struct.pci_dev_acs_enabled { i16 4098, i16 17284, ptr @pci_quirk_amd_sb_acs }, %struct.pci_dev_acs_enabled { i16 4098, i16 17305, ptr @pci_quirk_amd_sb_acs }, %struct.pci_dev_acs_enabled { i16 4130, i16 30735, ptr @pci_quirk_amd_sb_acs }, %struct.pci_dev_acs_enabled { i16 4130, i16 30729, ptr @pci_quirk_amd_sb_acs }, %struct.pci_dev_acs_enabled { i16 6436, i16 2307, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 6436, i16 2339, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 6436, i16 2563, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4294, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4315, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4317, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4321, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4337, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4343, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4344, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4345, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4346, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4347, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4348, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5383, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5396, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5404, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5417, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5418, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5453, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5455, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5457, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5464, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5385, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5390, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5391, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5392, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5393, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5398, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5415, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4297, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4326, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4327, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4328, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5386, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5389, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5400, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5414, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4263, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4265, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4310, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5409, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5410, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5411, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5412, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4190, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4191, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4192, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 4313, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5559, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 5560, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 -1, ptr @pci_quirk_rciep_acs }, %struct.pci_dev_acs_enabled { i16 6091, i16 1024, ptr @pci_quirk_qcom_rp_acs }, %struct.pci_dev_acs_enabled { i16 6091, i16 1025, ptr @pci_quirk_qcom_rp_acs }, %struct.pci_dev_acs_enabled { i16 7615, i16 1025, ptr @pci_quirk_qcom_rp_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 -1, ptr @pci_quirk_intel_pch_acs }, %struct.pci_dev_acs_enabled { i16 -32634, i16 -1, ptr @pci_quirk_intel_spt_pch_acs }, %struct.pci_dev_acs_enabled { i16 6562, i16 1808, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 4319, i16 1824, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 6013, i16 -1, ptr @pci_quirk_cavium_acs }, %struct.pci_dev_acs_enabled { i16 6013, i16 -24538, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 6013, i16 -24487, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 6013, i16 -24480, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 4328, i16 -8188, ptr @pci_quirk_xgene_acs }, %struct.pci_dev_acs_enabled { i16 7663, i16 -8187, ptr @pci_quirk_xgene_acs }, %struct.pci_dev_acs_enabled { i16 7663, i16 -8186, ptr @pci_quirk_xgene_acs }, %struct.pci_dev_acs_enabled { i16 7663, i16 -8185, ptr @pci_quirk_xgene_acs }, %struct.pci_dev_acs_enabled { i16 7663, i16 -8184, ptr @pci_quirk_xgene_acs }, %struct.pci_dev_acs_enabled { i16 7663, i16 -8183, ptr @pci_quirk_xgene_acs }, %struct.pci_dev_acs_enabled { i16 7663, i16 -8182, ptr @pci_quirk_xgene_acs }, %struct.pci_dev_acs_enabled { i16 7663, i16 -8181, ptr @pci_quirk_xgene_acs }, %struct.pci_dev_acs_enabled { i16 7663, i16 -8180, ptr @pci_quirk_xgene_acs }, %struct.pci_dev_acs_enabled { i16 5348, i16 5847, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 5348, i16 -10476, ptr @pci_quirk_brcm_acs }, %struct.pci_dev_acs_enabled { i16 7222, i16 49, ptr @pci_quirk_al_acs }, %struct.pci_dev_acs_enabled { i16 7447, i16 12344, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 7447, i16 12548, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 7447, i16 -28541, ptr @pci_quirk_mf_endpoint_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29311, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29279, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29309, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29312, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29280, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29310, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29296, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29264, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29294, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29295, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29263, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29293, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29303, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29271, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29301, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29304, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29272, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29302, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29288, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29256, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29286, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29287, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29255, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 6487, i16 -29285, ptr @pci_quirk_nxp_rp_acs }, %struct.pci_dev_acs_enabled { i16 7447, i16 -1, ptr @pci_quirk_zhaoxin_pcie_ports_acs }, %struct.pci_dev_acs_enabled zeroinitializer], align 4
@__pci_fixup_quirk_intel_qat_vf_cap5297 = internal constant %struct.pci_fixup { i16 -32634, i16 1091, i32 -1, i32 0, ptr @quirk_intel_qat_vf_cap }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_flr5313 = internal constant %struct.pci_fixup { i16 4130, i16 5255, i32 -1, i32 0, ptr @quirk_no_flr }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_flr5314 = internal constant %struct.pci_fixup { i16 4130, i16 5260, i32 -1, i32 0, ptr @quirk_no_flr }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_flr5315 = internal constant %struct.pci_fixup { i16 4130, i16 5276, i32 -1, i32 0, ptr @quirk_no_flr }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_flr5316 = internal constant %struct.pci_fixup { i16 -32634, i16 5378, i32 -1, i32 0, ptr @quirk_no_flr }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_flr5317 = internal constant %struct.pci_fixup { i16 -32634, i16 5379, i32 -1, i32 0, ptr @quirk_no_flr }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ext_tags5331 = internal constant %struct.pci_fixup { i16 4454, i16 306, i32 -1, i32 0, ptr @quirk_no_ext_tags }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ext_tags5332 = internal constant %struct.pci_fixup { i16 4454, i16 320, i32 -1, i32 0, ptr @quirk_no_ext_tags }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ext_tags5333 = internal constant %struct.pci_fixup { i16 4454, i16 321, i32 -1, i32 0, ptr @quirk_no_ext_tags }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ext_tags5334 = internal constant %struct.pci_fixup { i16 4454, i16 322, i32 -1, i32 0, ptr @quirk_no_ext_tags }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ext_tags5335 = internal constant %struct.pci_fixup { i16 4454, i16 324, i32 -1, i32 0, ptr @quirk_no_ext_tags }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ext_tags5336 = internal constant %struct.pci_fixup { i16 4454, i16 1056, i32 -1, i32 0, ptr @quirk_no_ext_tags }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_no_ext_tags5337 = internal constant %struct.pci_fixup { i16 4454, i16 1058, i32 -1, i32 0, ptr @quirk_no_ext_tags }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_fsl_no_msi5391 = internal constant %struct.pci_fixup { i16 6487, i16 -1, i32 -1, i32 0, ptr @quirk_fsl_no_msi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_gpu_hda5439 = internal constant %struct.pci_fixup { i16 4098, i16 -1, i32 1027, i32 8, ptr @quirk_gpu_hda }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_gpu_hda5441 = internal constant %struct.pci_fixup { i16 4130, i16 -1, i32 1027, i32 8, ptr @quirk_gpu_hda }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_gpu_hda5443 = internal constant %struct.pci_fixup { i16 4318, i16 -1, i32 1027, i32 8, ptr @quirk_gpu_hda }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_gpu_usb5454 = internal constant %struct.pci_fixup { i16 4318, i16 -1, i32 3075, i32 8, ptr @quirk_gpu_usb }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_gpu_usb5456 = internal constant %struct.pci_fixup { i16 4098, i16 -1, i32 3075, i32 8, ptr @quirk_gpu_usb }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_gpu_usb_typec_ucsi5471 = internal constant %struct.pci_fixup { i16 4318, i16 -1, i32 3200, i32 8, ptr @quirk_gpu_usb_typec_ucsi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_gpu_usb_typec_ucsi5474 = internal constant %struct.pci_fixup { i16 4098, i16 -1, i32 3200, i32 8, ptr @quirk_gpu_usb_typec_ucsi }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_nvidia_hda5502 = internal constant %struct.pci_fixup { i16 4318, i16 -1, i32 3, i32 16, ptr @quirk_nvidia_hda }, section ".pci_fixup_header", align 4
@__pci_fixup_resume_earlyquirk_nvidia_hda5504 = internal constant %struct.pci_fixup { i16 4318, i16 -1, i32 3, i32 16, ptr @quirk_nvidia_hda }, section ".pci_fixup_resume_early", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5645 = internal constant %struct.pci_fixup { i16 4600, i16 -31439, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5646 = internal constant %struct.pci_fixup { i16 4600, i16 -31438, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5647 = internal constant %struct.pci_fixup { i16 4600, i16 -31437, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5648 = internal constant %struct.pci_fixup { i16 4600, i16 -31436, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5649 = internal constant %struct.pci_fixup { i16 4600, i16 -31435, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5650 = internal constant %struct.pci_fixup { i16 4600, i16 -31434, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5651 = internal constant %struct.pci_fixup { i16 4600, i16 -31423, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5652 = internal constant %struct.pci_fixup { i16 4600, i16 -31422, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5653 = internal constant %struct.pci_fixup { i16 4600, i16 -31421, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5654 = internal constant %struct.pci_fixup { i16 4600, i16 -31420, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5655 = internal constant %struct.pci_fixup { i16 4600, i16 -31419, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5656 = internal constant %struct.pci_fixup { i16 4600, i16 -31418, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5657 = internal constant %struct.pci_fixup { i16 4600, i16 -31407, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5658 = internal constant %struct.pci_fixup { i16 4600, i16 -31406, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5659 = internal constant %struct.pci_fixup { i16 4600, i16 -31405, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5660 = internal constant %struct.pci_fixup { i16 4600, i16 -31404, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5661 = internal constant %struct.pci_fixup { i16 4600, i16 -31403, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5662 = internal constant %struct.pci_fixup { i16 4600, i16 -31402, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5663 = internal constant %struct.pci_fixup { i16 4600, i16 -31391, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5664 = internal constant %struct.pci_fixup { i16 4600, i16 -31390, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5665 = internal constant %struct.pci_fixup { i16 4600, i16 -31389, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5666 = internal constant %struct.pci_fixup { i16 4600, i16 -31388, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5667 = internal constant %struct.pci_fixup { i16 4600, i16 -31387, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5668 = internal constant %struct.pci_fixup { i16 4600, i16 -31386, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5669 = internal constant %struct.pci_fixup { i16 4600, i16 -31375, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5670 = internal constant %struct.pci_fixup { i16 4600, i16 -31374, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5671 = internal constant %struct.pci_fixup { i16 4600, i16 -31373, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5672 = internal constant %struct.pci_fixup { i16 4600, i16 -31372, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5673 = internal constant %struct.pci_fixup { i16 4600, i16 -31371, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5674 = internal constant %struct.pci_fixup { i16 4600, i16 -31370, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5675 = internal constant %struct.pci_fixup { i16 4600, i16 16384, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5676 = internal constant %struct.pci_fixup { i16 4600, i16 16516, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5677 = internal constant %struct.pci_fixup { i16 4600, i16 16488, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5678 = internal constant %struct.pci_fixup { i16 4600, i16 16466, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5679 = internal constant %struct.pci_fixup { i16 4600, i16 16438, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5680 = internal constant %struct.pci_fixup { i16 4600, i16 16424, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5681 = internal constant %struct.pci_fixup { i16 4600, i16 16640, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5682 = internal constant %struct.pci_fixup { i16 4600, i16 16772, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5683 = internal constant %struct.pci_fixup { i16 4600, i16 16744, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5684 = internal constant %struct.pci_fixup { i16 4600, i16 16722, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5685 = internal constant %struct.pci_fixup { i16 4600, i16 16694, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5686 = internal constant %struct.pci_fixup { i16 4600, i16 16680, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5687 = internal constant %struct.pci_fixup { i16 4600, i16 16896, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5688 = internal constant %struct.pci_fixup { i16 4600, i16 17028, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5689 = internal constant %struct.pci_fixup { i16 4600, i16 17000, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5690 = internal constant %struct.pci_fixup { i16 4600, i16 16978, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5691 = internal constant %struct.pci_fixup { i16 4600, i16 16950, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5692 = internal constant %struct.pci_fixup { i16 4600, i16 16936, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5693 = internal constant %struct.pci_fixup { i16 4600, i16 17234, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5694 = internal constant %struct.pci_fixup { i16 4600, i16 17206, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5695 = internal constant %struct.pci_fixup { i16 4600, i16 17192, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5696 = internal constant %struct.pci_fixup { i16 4600, i16 17490, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5697 = internal constant %struct.pci_fixup { i16 4600, i16 17462, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5698 = internal constant %struct.pci_fixup { i16 4600, i16 17448, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5699 = internal constant %struct.pci_fixup { i16 4600, i16 17746, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5700 = internal constant %struct.pci_fixup { i16 4600, i16 17718, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_switchtec_ntb_dma_alias5701 = internal constant %struct.pci_fixup { i16 4600, i16 17704, i32 1664, i32 8, ptr @quirk_switchtec_ntb_dma_alias }, section ".pci_fixup_final", align 4
@__pci_fixup_quirk_plx_ntb_dma_alias5715 = internal constant %struct.pci_fixup { i16 4277, i16 -30800, i32 -1, i32 0, ptr @quirk_plx_ntb_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_plx_ntb_dma_alias5716 = internal constant %struct.pci_fixup { i16 4277, i16 -30799, i32 -1, i32 0, ptr @quirk_plx_ntb_dma_alias }, section ".pci_fixup_header", align 4
@__pci_fixup_quirk_reset_lenovo_thinkpad_p50_nvgpu5774 = internal constant %struct.pci_fixup { i16 4318, i16 5041, i32 768, i32 8, ptr @quirk_reset_lenovo_thinkpad_p50_nvgpu }, section ".pci_fixup_final", align 4
@__pci_fixup_pci_fixup_no_d0_pme5785 = internal constant %struct.pci_fixup { i16 6945, i16 8514, i32 -1, i32 0, ptr @pci_fixup_no_d0_pme }, section ".pci_fixup_final", align 4
@__pci_fixup_pci_fixup_no_msi_no_pme5806 = internal constant %struct.pci_fixup { i16 4824, i16 16398, i32 -1, i32 0, ptr @pci_fixup_no_msi_no_pme }, section ".pci_fixup_final", align 4
@__pci_fixup_pci_fixup_no_msi_no_pme5807 = internal constant %struct.pci_fixup { i16 4824, i16 16399, i32 -1, i32 0, ptr @pci_fixup_no_msi_no_pme }, section ".pci_fixup_final", align 4
@__pci_fixup_apex_pci_fixup_class5814 = internal constant %struct.pci_fixup { i16 6849, i16 2202, i32 0, i32 8, ptr @apex_pci_fixup_class }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_pericom_acs_store_forward5859 = internal constant %struct.pci_fixup { i16 4824, i16 9220, i32 -1, i32 0, ptr @pci_fixup_pericom_acs_store_forward }, section ".pci_fixup_enable", align 4
@__pci_fixup_resumepci_fixup_pericom_acs_store_forward5861 = internal constant %struct.pci_fixup { i16 4824, i16 9220, i32 -1, i32 0, ptr @pci_fixup_pericom_acs_store_forward }, section ".pci_fixup_resume", align 4
@__pci_fixup_pci_fixup_pericom_acs_store_forward5863 = internal constant %struct.pci_fixup { i16 4824, i16 8964, i32 -1, i32 0, ptr @pci_fixup_pericom_acs_store_forward }, section ".pci_fixup_enable", align 4
@__pci_fixup_resumepci_fixup_pericom_acs_store_forward5865 = internal constant %struct.pci_fixup { i16 4824, i16 8964, i32 -1, i32 0, ptr @pci_fixup_pericom_acs_store_forward }, section ".pci_fixup_resume", align 4
@__pci_fixup_pci_fixup_pericom_acs_store_forward5867 = internal constant %struct.pci_fixup { i16 4824, i16 8963, i32 -1, i32 0, ptr @pci_fixup_pericom_acs_store_forward }, section ".pci_fixup_enable", align 4
@__pci_fixup_resumepci_fixup_pericom_acs_store_forward5869 = internal constant %struct.pci_fixup { i16 4824, i16 8963, i32 -1, i32 0, ptr @pci_fixup_pericom_acs_store_forward }, section ".pci_fixup_resume", align 4
@__pci_fixup_nvidia_ion_ahci_fixup5875 = internal constant %struct.pci_fixup { i16 4318, i16 2744, i32 -1, i32 0, ptr @nvidia_ion_ahci_fixup }, section ".pci_fixup_final", align 4
@__pci_fixup_rom_bar_overlap_defect5882 = internal constant %struct.pci_fixup { i16 -32634, i16 5427, i32 -1, i32 0, ptr @rom_bar_overlap_defect }, section ".pci_fixup_early", align 4
@__pci_fixup_rom_bar_overlap_defect5883 = internal constant %struct.pci_fixup { i16 -32634, i16 5430, i32 -1, i32 0, ptr @rom_bar_overlap_defect }, section ".pci_fixup_early", align 4
@__pci_fixup_rom_bar_overlap_defect5884 = internal constant %struct.pci_fixup { i16 -32634, i16 5431, i32 -1, i32 0, ptr @rom_bar_overlap_defect }, section ".pci_fixup_early", align 4
@__pci_fixup_rom_bar_overlap_defect5885 = internal constant %struct.pci_fixup { i16 -32634, i16 5432, i32 -1, i32 0, ptr @rom_bar_overlap_defect }, section ".pci_fixup_early", align 4
@initcall_debug = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [19 x i8] c"calling  %pS @ %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%pS took %lld usecs\0A\00", align 1
@pci_cache_line_size = external dso_local local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\016PCI: CLS %u bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CLS mismatch (%u != %u), using %u bytes\0A\00", align 1
@pci_dfl_cache_line_size = external dso_local local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\016PCI: CLS %u bytes, default %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"PIIX3: Enabling Passive Release\0A\00", align 1
@isa_dma_bridge_buggy = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Activating ISA DMA hang workarounds\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"[Firmware Bug]: TigerPoint LPC.BM_STS cleared\0A\00", align 1
@pci_pci_problems = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Disabling direct PCI/PCI transfers\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Chipset erratum: Disabling direct PCI/AGP transfers\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Limiting direct PCI/PCI transfers\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Applying VIA southbridge workaround\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"expanded BAR %d to page size: %pR\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"CS5536 ISA bridge\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"%s bug detected (incorrect header); workaround applied\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"[Firmware Bug]: %s quirk: reg 0x%x: %pR\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"ATI Northbridge, reserving I/O ports 0x3b0 to 0x3bb\0A\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"RadeonIGP\00", align 1
@.str.18 = private unnamed_addr constant [85 x i8] c"PCI class overridden (%#08x -> %#08x) so dwc3 driver can claim this instead of xhci\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"ali7101 ACPI\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"ali7101 SMB\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"quirk: %pR claimed by %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"PIIX4 ACPI\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"PIIX4 SMB\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"PIIX4 devres B\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"PIIX4 devres C\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"PIIX4 devres E\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"PIIX4 devres F\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"PIIX4 devres G\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"PIIX4 devres H\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"PIIX4 devres I\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"PIIX4 devres J\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"%s PIO at %04x-%04x\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"%s MMIO at %04x-%04x\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"ICH4 ACPI/GPIO/TCO\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"ICH4 GPIO\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"LPC Generic IO decode 1\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"LPC Generic IO decode 2\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"ICH6 ACPI/GPIO/TCO\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ICH6 GPIO\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"ICH7 LPC Generic IO decode 1\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"ICH7 LPC Generic IO decode 2\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"ICH7 LPC Generic IO decode 3\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"ICH7 LPC Generic IO decode 4\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"%s PIO at %04x (mask %04x)\0A\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"vt82c586 ACPI\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"vt82c686 HW-mon\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"vt82c686 SMB\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"vt8235 PM\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"vt8235 SMB\00", align 1
@.str.50 = private unnamed_addr constant [80 x i8] c"TI XIO2000a quirk detected; secondary bus fast back-to-back transfers disabled\0A\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"AMD8131 rev %x detected; disabling PCI-X MMRBC\0A\00", align 1
@via_vlink_dev_lo = internal unnamed_addr global i32 -1, align 4
@via_vlink_dev_hi = internal unnamed_addr global i32 18, align 4
@.str.52 = private unnamed_addr constant [36 x i8] c"VIA VLink IRQ fixup, from %d to %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.53 = private unnamed_addr constant [67 x i8] c"BIOS failed to enable PCI standards compliance; fixing this error\0A\00", align 1
@.str.54 = private unnamed_addr constant [65 x i8] c"Fixup for MediaGX/Geode Slave Disconnect Boundary (0x41=0x%02x)\0A\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"C0 revision 450NX. Disabling PCI restreaming\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"set SATA to AHCI mode\0A\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"IDE mode mismatch; forcing legacy mode\0A\00", align 1
@asus_hides_smbus = internal unnamed_addr global i1 false, align 4
@.str.58 = private unnamed_addr constant [59 x i8] c"i801 SMBus device continues to play 'hide and seek'! 0x%x\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"Enabled i801 SMBus device\0A\00", align 1
@asus_rcba_base = internal unnamed_addr global ptr null, align 4
@.str.60 = private unnamed_addr constant [21 x i8] c"drivers/pci/quirks.c\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"Enabled ICH6/i801 SMBus device\0A\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"Enabling SiS 96x SMBus\0A\00", align 1
@.str.63 = private unnamed_addr constant [66 x i8] c"Onboard AC97/MC97 devices continue to play 'hide and seek'! 0x%x\0A\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"Enabled onboard AC97/MC97 devices\0A\00", align 1
@.str.65 = private unnamed_addr constant [72 x i8] c"async suspend disabled to avoid multi-function power-on ordering issue\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"dma-can-stall\00", align 1
@__const.quirk_huawei_pcie_sva.properties = private unnamed_addr constant [2 x { ptr, i32, i8, [3 x i8], i32, %union.anon.71 }] [{ ptr, i32, i8, [3 x i8], i32, %union.anon.71 } { ptr @.str.66, i32 0, i8 1, [3 x i8] zeroinitializer, i32 0, %union.anon.71 zeroinitializer }, { ptr, i32, i8, [3 x i8], i32, %union.anon.71 } zeroinitializer], align 8
@.str.67 = private unnamed_addr constant [29 x i8] c"could not add stall property\00", align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"PXH quirk detected; SHPC device MSI disabled\0A\00", align 1
@pci_pm_d3hot_delay = external dso_local local_unnamed_addr global i32, align 4
@.str.69 = private unnamed_addr constant [54 x i8] c"extending delay after power-on from D3hot to %d msec\0A\00", align 1
@.str.70 = private unnamed_addr constant [68 x i8] c"Re-allocating PLX PCI 9050 BAR %u to length 256 to avoid bit 7 bug\0A\00", align 1
@.str.71 = private unnamed_addr constant [91 x i8] c"Netmos %04x (%u parallel, %u serial); changing class SERIAL to OTHER (use parport_serial)\0A\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"Can't map e100 registers\0A\00", align 1
@.str.73 = private unnamed_addr constant [50 x i8] c"Firmware left e100 interrupts enabled; disabling\0A\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"Disabling L0s\0A\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"Disabling ASPM L0s/L1\0A\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"Enable PCIe Retrain Link quirk\0A\00", align 1
@.str.77 = private unnamed_addr constant [56 x i8] c"NCR 53c810 rev 1 PCI class overridden (%#08x -> %#08x)\0A\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"Enable I/O Space to 1KB granularity\0A\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"Linking AER extended capability\0A\00", align 1
@.str.80 = private unnamed_addr constant [33 x i8] c"Disabling VIA CX700 PCI parking\0A\00", align 1
@.str.81 = private unnamed_addr constant [33 x i8] c"Disabling VIA CX700 PCI caching\0A\00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"Enabling MCH 'Overflow' Device\0A\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"MSI quirk detected; MSI disabled\0A\00", align 1
@.str.84 = private unnamed_addr constant [46 x i8] c"MSI quirk detected; subordinate MSI disabled\0A\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"Found %s HT MSI Mapping\0A\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"Enabling HT MSI Mapping\0A\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"P5N32-SLI PREMIUM\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"P5N32-E SLI\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"Disabling MSI for MCP55 NIC on P5N32-SLI\0A\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"\016Rewriting IRQ routing register on MCP55\0A\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"nv_msi_ht_cap_quirk didn't locate host bridge\0A\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"Disabling HT MSI Mapping\0A\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"set MSI_INTX_DISABLE_BUG flag\0A\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"Disabling MSI/MSI-X\0A\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"PCI class overridden (%#08x -> %#08x)\0A\00", align 1
@pcie_bus_config = external dso_local local_unnamed_addr global i32, align 4
@.str.98 = private unnamed_addr constant [66 x i8] c"Error attempting to read the read completion coalescing register\0A\00", align 1
@.str.99 = private unnamed_addr constant [67 x i8] c"Error attempting to write the read completion coalescing register\0A\00", align 1
@quirk_intel_mc_errata.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.100 = private unnamed_addr constant [84 x i8] c"\016Read completion coalescing disabled due to hardware erratum relating to 256B MPS\0A\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c"igfx quirk: Can't iomap PCI device\0A\00", align 1
@.str.102 = private unnamed_addr constant [51 x i8] c"BIOS left Intel GPU interrupts enabled; disabling\0A\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"Can't enable device memory\0A\00", align 1
@.str.104 = private unnamed_addr constant [45 x i8] c"Can't map ConnectX-4 initialization segment\0A\00", align 1
@.str.105 = private unnamed_addr constant [122 x i8] c"ConnectX-4: FW %u.%u.%u doesn't support INTx masking, disabling. Please upgrade FW to %d.14.1100 and up for INTx support\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.106 = private unnamed_addr constant [22 x i8] c"timeout during reset\0A\00", align 1
@.str.107 = private unnamed_addr constant [62 x i8] c"Timeout waiting for NVMe ready status to clear after disable\0A\00", align 1
@.str.108 = private unnamed_addr constant [40 x i8] c"Reset dev timeout, FLR ack reg: %#010x\0A\00", align 1
@fixed_dma_alias_tbl = internal constant [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 699, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 700, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@.str.109 = private unnamed_addr constant [46 x i8] c"TW686x PCI class overridden (%#08x -> %#08x)\0A\00", align 1
@.str.110 = private unnamed_addr constant [70 x i8] c"Disable Relaxed Ordering Attributes to avoid PCIe Completion erratum\0A\00", align 1
@.str.111 = private unnamed_addr constant [49 x i8] c"PCIe Completion erratum may cause device errors\0A\00", align 1
@.str.112 = private unnamed_addr constant [87 x i8] c"Disabling No Snoop/Relaxed Ordering Attributes to avoid PCIe Completion erratum in %s\0A\00", align 1
@pci_quirk_intel_pch_acs_ids = internal unnamed_addr constant [119 x i16] [i16 15170, i16 15171, i16 15172, i16 15173, i16 15174, i16 15175, i16 15176, i16 15177, i16 15178, i16 15179, i16 15180, i16 15181, i16 15182, i16 15183, i16 15184, i16 15185, i16 7184, i16 7185, i16 7186, i16 7187, i16 7188, i16 7189, i16 7190, i16 7191, i16 7192, i16 7193, i16 7194, i16 7195, i16 7196, i16 7197, i16 7198, i16 7199, i16 7696, i16 7697, i16 7698, i16 7699, i16 7700, i16 7701, i16 7702, i16 7703, i16 7704, i16 7705, i16 7706, i16 7707, i16 7708, i16 7709, i16 7710, i16 7711, i16 -29680, i16 -29679, i16 -29678, i16 -29677, i16 -29676, i16 -29675, i16 -29674, i16 -29673, i16 -29672, i16 -29671, i16 -29670, i16 -29669, i16 -29668, i16 -29667, i16 -29666, i16 -29665, i16 -25584, i16 -25583, i16 -25582, i16 -25581, i16 -25580, i16 -25579, i16 -25578, i16 -25577, i16 -25576, i16 -25575, i16 -25574, i16 -25573, i16 -25456, i16 -25455, i16 -25454, i16 -25453, i16 -25452, i16 -25451, i16 -25450, i16 -25449, i16 -25448, i16 -25447, i16 -25446, i16 -25445, i16 7440, i16 7442, i16 7444, i16 7446, i16 7448, i16 7450, i16 7452, i16 7454, i16 -29424, i16 -29423, i16 -29422, i16 -29421, i16 -29420, i16 -29419, i16 -29418, i16 -29417, i16 -29416, i16 -29415, i16 -29414, i16 -29413, i16 -29412, i16 -29411, i16 -29410, i16 -29552, i16 -29550, i16 -29548, i16 -29546, i16 -29544, i16 -29542, i16 -29540, i16 -29538], align 2
@.str.113 = private unnamed_addr constant [38 x i8] c"Failed to enable Intel PCH ACS quirk\0A\00", align 1
@.str.114 = private unnamed_addr constant [44 x i8] c"Intel PCH root port ACS workaround enabled\0A\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"Disabling UPDCR peer decodes\0A\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"Enabling MPC IRBNCE\0A\00", align 1
@.str.117 = private unnamed_addr constant [48 x i8] c"Intel SPT PCH root port ACS workaround enabled\0A\00", align 1
@.str.118 = private unnamed_addr constant [59 x i8] c"Intel SPT PCH root port workaround: disabled ACS redirect\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.119 = private unnamed_addr constant [57 x i8] c"disabling Extended Tags (this device can't handle them)\0A\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"D0 power state depends on %s\0A\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"Cannot enforce power dependency on %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"Enabling HDA controller\0A\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"Cannot enable Switchtec device\0A\00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"Cannot iomap Switchtec device\0A\00", align 1
@.str.125 = private unnamed_addr constant [36 x i8] c"Setting Switchtec proxy ID aliases\0A\00", align 1
@.str.126 = private unnamed_addr constant [25 x i8] c"Partition %d table_sz 0\0A\00", align 1
@.str.127 = private unnamed_addr constant [44 x i8] c"Invalid Switchtec partition %d table_sz %d\0A\00", align 1
@.str.128 = private unnamed_addr constant [34 x i8] c"Setting PLX NTB proxy ID aliases\0A\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"Can't map MMIO space\0A\00", align 1
@.str.130 = private unnamed_addr constant [56 x i8] c"[Firmware Bug]: GPU left initialized by EFI, resetting\0A\00", align 1
@.str.131 = private unnamed_addr constant [25 x i8] c"Failed to reset GPU: %d\0A\00", align 1
@.str.132 = private unnamed_addr constant [43 x i8] c"PME# does not work under D0, disabling it\0A\00", align 1
@.str.133 = private unnamed_addr constant [53 x i8] c"MSI is not implemented on this device, disabling it\0A\00", align 1
@.str.134 = private unnamed_addr constant [34 x i8] c"PME# is unreliable, disabling it\0A\00", align 1
@.str.135 = private unnamed_addr constant [61 x i8] c"Setting PI7C9X2Gxxx store-forward mode to avoid ACS erratum\0A\00", align 1
@.str.136 = private unnamed_addr constant [39 x i8] c"working around ROM BAR overlap defect\0A\00", align 1
@llvm.compiler.used = appending global [591 x ptr] [ptr @__initcall__kmod_quirks__252_194_pci_apply_final_quirks5s, ptr @__ksymtab_pci_fixup_device, ptr @__pci_fixup_apex_pci_fixup_class5814, ptr @__pci_fixup_asus_hides_ac97_lpc1693, ptr @__pci_fixup_asus_hides_smbus_hostbridge1510, ptr @__pci_fixup_asus_hides_smbus_hostbridge1511, ptr @__pci_fixup_asus_hides_smbus_hostbridge1512, ptr @__pci_fixup_asus_hides_smbus_hostbridge1513, ptr @__pci_fixup_asus_hides_smbus_hostbridge1514, ptr @__pci_fixup_asus_hides_smbus_hostbridge1515, ptr @__pci_fixup_asus_hides_smbus_hostbridge1516, ptr @__pci_fixup_asus_hides_smbus_hostbridge1517, ptr @__pci_fixup_asus_hides_smbus_hostbridge1518, ptr @__pci_fixup_asus_hides_smbus_hostbridge1519, ptr @__pci_fixup_asus_hides_smbus_hostbridge1521, ptr @__pci_fixup_asus_hides_smbus_hostbridge1522, ptr @__pci_fixup_asus_hides_smbus_hostbridge1523, ptr @__pci_fixup_asus_hides_smbus_lpc1543, ptr @__pci_fixup_asus_hides_smbus_lpc1544, ptr @__pci_fixup_asus_hides_smbus_lpc1545, ptr @__pci_fixup_asus_hides_smbus_lpc1546, ptr @__pci_fixup_asus_hides_smbus_lpc1547, ptr @__pci_fixup_asus_hides_smbus_lpc1548, ptr @__pci_fixup_asus_hides_smbus_lpc1549, ptr @__pci_fixup_asus_hides_smbus_lpc_ich61605, ptr @__pci_fixup_disable_igfx_irq3409, ptr @__pci_fixup_disable_igfx_irq3410, ptr @__pci_fixup_disable_igfx_irq3411, ptr @__pci_fixup_disable_igfx_irq3412, ptr @__pci_fixup_disable_igfx_irq3413, ptr @__pci_fixup_disable_igfx_irq3414, ptr @__pci_fixup_disable_igfx_irq3415, ptr @__pci_fixup_fixup_mpss_2563278, ptr @__pci_fixup_fixup_mpss_2563280, ptr @__pci_fixup_fixup_mpss_2563282, ptr @__pci_fixup_fixup_mpss_2563283, ptr @__pci_fixup_fixup_rev1_53c8102414, ptr @__pci_fixup_fixup_ti816x_class3267, ptr @__pci_fixup_ht_enable_msi_mapping2674, ptr @__pci_fixup_ht_enable_msi_mapping2676, ptr @__pci_fixup_mellanox_check_broken_intx_masking3584, ptr @__pci_fixup_nv_msi_ht_cap_quirk_all2983, ptr @__pci_fixup_nv_msi_ht_cap_quirk_leaf2990, ptr @__pci_fixup_nvbridge_check_legacy_irq_routing2778, ptr @__pci_fixup_nvbridge_check_legacy_irq_routing2781, ptr @__pci_fixup_nvenet_msi_disable2696, ptr @__pci_fixup_nvidia_ion_ahci_fixup5875, ptr @__pci_fixup_pci_disable_parity213, ptr @__pci_fixup_pci_disable_parity214, ptr @__pci_fixup_pci_fixup_no_d0_pme5785, ptr @__pci_fixup_pci_fixup_no_msi_no_pme5806, ptr @__pci_fixup_pci_fixup_no_msi_no_pme5807, ptr @__pci_fixup_pci_fixup_pericom_acs_store_forward5859, ptr @__pci_fixup_pci_fixup_pericom_acs_store_forward5863, ptr @__pci_fixup_pci_fixup_pericom_acs_store_forward5867, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2713, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2716, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2719, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2722, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2725, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2728, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2731, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2734, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2737, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2740, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2743, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2746, ptr @__pci_fixup_pci_quirk_nvidia_tegra_disable_rp_msi2749, ptr @__pci_fixup_quirk_al_msi_disable3101, ptr @__pci_fixup_quirk_ali7101_acpi655, ptr @__pci_fixup_quirk_alimagik427, ptr @__pci_fixup_quirk_alimagik428, ptr @__pci_fixup_quirk_amd_780_apc_msi2592, ptr @__pci_fixup_quirk_amd_780_apc_msi2593, ptr @__pci_fixup_quirk_amd_8131_mmrbc1054, ptr @__pci_fixup_quirk_amd_ide_mode1298, ptr @__pci_fixup_quirk_amd_ide_mode1300, ptr @__pci_fixup_quirk_amd_ide_mode1302, ptr @__pci_fixup_quirk_amd_ide_mode1304, ptr @__pci_fixup_quirk_amd_nl_class613, ptr @__pci_fixup_quirk_amd_ordering1207, ptr @__pci_fixup_quirk_ati_exploding_mce590, ptr @__pci_fixup_quirk_brcm_5719_limit_mrrs2518, ptr @__pci_fixup_quirk_bridge_cavm_thrx2_pcie_root4271, ptr @__pci_fixup_quirk_bridge_cavm_thrx2_pcie_root4273, ptr @__pci_fixup_quirk_broken_intx_masking3462, ptr @__pci_fixup_quirk_broken_intx_masking3464, ptr @__pci_fixup_quirk_broken_intx_masking3466, ptr @__pci_fixup_quirk_broken_intx_masking3475, ptr @__pci_fixup_quirk_broken_intx_masking3481, ptr @__pci_fixup_quirk_broken_intx_masking3482, ptr @__pci_fixup_quirk_broken_intx_masking3483, ptr @__pci_fixup_quirk_broken_intx_masking3484, ptr @__pci_fixup_quirk_broken_intx_masking3485, ptr @__pci_fixup_quirk_broken_intx_masking3486, ptr @__pci_fixup_quirk_broken_intx_masking3487, ptr @__pci_fixup_quirk_broken_intx_masking3488, ptr @__pci_fixup_quirk_broken_intx_masking3489, ptr @__pci_fixup_quirk_broken_intx_masking3490, ptr @__pci_fixup_quirk_broken_intx_masking3491, ptr @__pci_fixup_quirk_broken_intx_masking3492, ptr @__pci_fixup_quirk_broken_intx_masking3493, ptr @__pci_fixup_quirk_broken_intx_masking3494, ptr @__pci_fixup_quirk_broken_intx_masking3495, ptr @__pci_fixup_quirk_broken_intx_masking3496, ptr @__pci_fixup_quirk_cardbus_legacy1183, ptr @__pci_fixup_quirk_chelsio_T5_disable_root_port_attributes4441, ptr @__pci_fixup_quirk_citrine453, ptr @__pci_fixup_quirk_cs5536_vsa552, ptr @__pci_fixup_quirk_disable_all_msi2553, ptr @__pci_fixup_quirk_disable_all_msi2554, ptr @__pci_fixup_quirk_disable_all_msi2555, ptr @__pci_fixup_quirk_disable_all_msi2556, ptr @__pci_fixup_quirk_disable_all_msi2557, ptr @__pci_fixup_quirk_disable_all_msi2558, ptr @__pci_fixup_quirk_disable_all_msi2559, ptr @__pci_fixup_quirk_disable_all_msi2560, ptr @__pci_fixup_quirk_disable_all_msi2561, ptr @__pci_fixup_quirk_disable_aspm_l0s2354, ptr @__pci_fixup_quirk_disable_aspm_l0s2355, ptr @__pci_fixup_quirk_disable_aspm_l0s2356, ptr @__pci_fixup_quirk_disable_aspm_l0s2357, ptr @__pci_fixup_quirk_disable_aspm_l0s2358, ptr @__pci_fixup_quirk_disable_aspm_l0s2359, ptr @__pci_fixup_quirk_disable_aspm_l0s2360, ptr @__pci_fixup_quirk_disable_aspm_l0s2361, ptr @__pci_fixup_quirk_disable_aspm_l0s2362, ptr @__pci_fixup_quirk_disable_aspm_l0s2363, ptr @__pci_fixup_quirk_disable_aspm_l0s2364, ptr @__pci_fixup_quirk_disable_aspm_l0s2365, ptr @__pci_fixup_quirk_disable_aspm_l0s2366, ptr @__pci_fixup_quirk_disable_aspm_l0s2367, ptr @__pci_fixup_quirk_disable_aspm_l0s_l12380, ptr @__pci_fixup_quirk_disable_msi2571, ptr @__pci_fixup_quirk_disable_msi2572, ptr @__pci_fixup_quirk_disable_msi2573, ptr @__pci_fixup_quirk_disable_pxb1278, ptr @__pci_fixup_quirk_dma_func0_alias4087, ptr @__pci_fixup_quirk_dma_func0_alias4088, ptr @__pci_fixup_quirk_dma_func1_alias4103, ptr @__pci_fixup_quirk_dma_func1_alias4105, ptr @__pci_fixup_quirk_dma_func1_alias4108, ptr @__pci_fixup_quirk_dma_func1_alias4110, ptr @__pci_fixup_quirk_dma_func1_alias4113, ptr @__pci_fixup_quirk_dma_func1_alias4115, ptr @__pci_fixup_quirk_dma_func1_alias4118, ptr @__pci_fixup_quirk_dma_func1_alias4121, ptr @__pci_fixup_quirk_dma_func1_alias4124, ptr @__pci_fixup_quirk_dma_func1_alias4127, ptr @__pci_fixup_quirk_dma_func1_alias4130, ptr @__pci_fixup_quirk_dma_func1_alias4133, ptr @__pci_fixup_quirk_dma_func1_alias4136, ptr @__pci_fixup_quirk_dma_func1_alias4139, ptr @__pci_fixup_quirk_dma_func1_alias4141, ptr @__pci_fixup_quirk_dma_func1_alias4143, ptr @__pci_fixup_quirk_dma_func1_alias4147, ptr @__pci_fixup_quirk_dma_func1_alias4151, ptr @__pci_fixup_quirk_dunord1225, ptr @__pci_fixup_quirk_e100_interrupt2343, ptr @__pci_fixup_quirk_eisa_bridge1363, ptr @__pci_fixup_quirk_enable_clear_retrain_link2395, ptr @__pci_fixup_quirk_enable_clear_retrain_link2396, ptr @__pci_fixup_quirk_enable_clear_retrain_link2397, ptr @__pci_fixup_quirk_extend_bar_to_page485, ptr @__pci_fixup_quirk_fixed_dma_alias4186, ptr @__pci_fixup_quirk_fsl_no_msi5391, ptr @__pci_fixup_quirk_gpu_hda5439, ptr @__pci_fixup_quirk_gpu_hda5441, ptr @__pci_fixup_quirk_gpu_hda5443, ptr @__pci_fixup_quirk_gpu_usb5454, ptr @__pci_fixup_quirk_gpu_usb5456, ptr @__pci_fixup_quirk_gpu_usb_typec_ucsi5471, ptr @__pci_fixup_quirk_gpu_usb_typec_ucsi5474, ptr @__pci_fixup_quirk_hotplug_bridge3115, ptr @__pci_fixup_quirk_huawei_pcie_sva1856, ptr @__pci_fixup_quirk_huawei_pcie_sva1857, ptr @__pci_fixup_quirk_huawei_pcie_sva1858, ptr @__pci_fixup_quirk_huawei_pcie_sva1859, ptr @__pci_fixup_quirk_huawei_pcie_sva1860, ptr @__pci_fixup_quirk_huawei_pcie_sva1861, ptr @__pci_fixup_quirk_ich4_lpc_acpi783, ptr @__pci_fixup_quirk_ich4_lpc_acpi784, ptr @__pci_fixup_quirk_ich4_lpc_acpi785, ptr @__pci_fixup_quirk_ich4_lpc_acpi786, ptr @__pci_fixup_quirk_ich4_lpc_acpi787, ptr @__pci_fixup_quirk_ich4_lpc_acpi788, ptr @__pci_fixup_quirk_ich4_lpc_acpi789, ptr @__pci_fixup_quirk_ich4_lpc_acpi790, ptr @__pci_fixup_quirk_ich4_lpc_acpi791, ptr @__pci_fixup_quirk_ich4_lpc_acpi792, ptr @__pci_fixup_quirk_ich6_lpc850, ptr @__pci_fixup_quirk_ich6_lpc851, ptr @__pci_fixup_quirk_ich7_lpc889, ptr @__pci_fixup_quirk_ich7_lpc890, ptr @__pci_fixup_quirk_ich7_lpc891, ptr @__pci_fixup_quirk_ich7_lpc892, ptr @__pci_fixup_quirk_ich7_lpc893, ptr @__pci_fixup_quirk_ich7_lpc894, ptr @__pci_fixup_quirk_ich7_lpc895, ptr @__pci_fixup_quirk_ich7_lpc896, ptr @__pci_fixup_quirk_ich7_lpc897, ptr @__pci_fixup_quirk_ich7_lpc898, ptr @__pci_fixup_quirk_ich7_lpc899, ptr @__pci_fixup_quirk_ich7_lpc900, ptr @__pci_fixup_quirk_ich7_lpc901, ptr @__pci_fixup_quirk_ide_samemode1335, ptr @__pci_fixup_quirk_intel_mc_errata3327, ptr @__pci_fixup_quirk_intel_mc_errata3328, ptr @__pci_fixup_quirk_intel_mc_errata3329, ptr @__pci_fixup_quirk_intel_mc_errata3330, ptr @__pci_fixup_quirk_intel_mc_errata3331, ptr @__pci_fixup_quirk_intel_mc_errata3332, ptr @__pci_fixup_quirk_intel_mc_errata3333, ptr @__pci_fixup_quirk_intel_mc_errata3334, ptr @__pci_fixup_quirk_intel_mc_errata3335, ptr @__pci_fixup_quirk_intel_mc_errata3336, ptr @__pci_fixup_quirk_intel_mc_errata3337, ptr @__pci_fixup_quirk_intel_mc_errata3338, ptr @__pci_fixup_quirk_intel_mc_errata3339, ptr @__pci_fixup_quirk_intel_mc_errata3340, ptr @__pci_fixup_quirk_intel_mc_errata3342, ptr @__pci_fixup_quirk_intel_mc_errata3343, ptr @__pci_fixup_quirk_intel_mc_errata3344, ptr @__pci_fixup_quirk_intel_mc_errata3345, ptr @__pci_fixup_quirk_intel_mc_errata3346, ptr @__pci_fixup_quirk_intel_mc_errata3347, ptr @__pci_fixup_quirk_intel_mc_errata3348, ptr @__pci_fixup_quirk_intel_mc_errata3349, ptr @__pci_fixup_quirk_intel_mc_errata3350, ptr @__pci_fixup_quirk_intel_mc_errata3351, ptr @__pci_fixup_quirk_intel_mc_errata3352, ptr @__pci_fixup_quirk_intel_ntb3376, ptr @__pci_fixup_quirk_intel_ntb3377, ptr @__pci_fixup_quirk_intel_pcie_pm1887, ptr @__pci_fixup_quirk_intel_pcie_pm1888, ptr @__pci_fixup_quirk_intel_pcie_pm1889, ptr @__pci_fixup_quirk_intel_pcie_pm1890, ptr @__pci_fixup_quirk_intel_pcie_pm1891, ptr @__pci_fixup_quirk_intel_pcie_pm1892, ptr @__pci_fixup_quirk_intel_pcie_pm1893, ptr @__pci_fixup_quirk_intel_pcie_pm1894, ptr @__pci_fixup_quirk_intel_pcie_pm1895, ptr @__pci_fixup_quirk_intel_pcie_pm1896, ptr @__pci_fixup_quirk_intel_pcie_pm1897, ptr @__pci_fixup_quirk_intel_pcie_pm1898, ptr @__pci_fixup_quirk_intel_pcie_pm1899, ptr @__pci_fixup_quirk_intel_pcie_pm1900, ptr @__pci_fixup_quirk_intel_pcie_pm1901, ptr @__pci_fixup_quirk_intel_pcie_pm1902, ptr @__pci_fixup_quirk_intel_pcie_pm1903, ptr @__pci_fixup_quirk_intel_pcie_pm1904, ptr @__pci_fixup_quirk_intel_pcie_pm1905, ptr @__pci_fixup_quirk_intel_pcie_pm1906, ptr @__pci_fixup_quirk_intel_pcie_pm1907, ptr @__pci_fixup_quirk_intel_qat_vf_cap5297, ptr @__pci_fixup_quirk_isa_dma_hangs260, ptr @__pci_fixup_quirk_isa_dma_hangs261, ptr @__pci_fixup_quirk_isa_dma_hangs262, ptr @__pci_fixup_quirk_isa_dma_hangs263, ptr @__pci_fixup_quirk_isa_dma_hangs264, ptr @__pci_fixup_quirk_isa_dma_hangs265, ptr @__pci_fixup_quirk_isa_dma_hangs266, ptr @__pci_fixup_quirk_jmicron_async_suspend1783, ptr @__pci_fixup_quirk_jmicron_async_suspend1784, ptr @__pci_fixup_quirk_jmicron_async_suspend1785, ptr @__pci_fixup_quirk_jmicron_async_suspend1786, ptr @__pci_fixup_quirk_jmicron_ata1755, ptr @__pci_fixup_quirk_jmicron_ata1756, ptr @__pci_fixup_quirk_jmicron_ata1757, ptr @__pci_fixup_quirk_jmicron_ata1758, ptr @__pci_fixup_quirk_jmicron_ata1759, ptr @__pci_fixup_quirk_jmicron_ata1760, ptr @__pci_fixup_quirk_jmicron_ata1761, ptr @__pci_fixup_quirk_jmicron_ata1762, ptr @__pci_fixup_quirk_jmicron_ata1763, ptr @__pci_fixup_quirk_mediagx_master1257, ptr @__pci_fixup_quirk_mic_x200_dma_alias4229, ptr @__pci_fixup_quirk_mic_x200_dma_alias4230, ptr @__pci_fixup_quirk_mmio_always_on207, ptr @__pci_fixup_quirk_msi_ht_cap2628, ptr @__pci_fixup_quirk_msi_intx_disable_ati_bug3045, ptr @__pci_fixup_quirk_msi_intx_disable_ati_bug3047, ptr @__pci_fixup_quirk_msi_intx_disable_ati_bug3049, ptr @__pci_fixup_quirk_msi_intx_disable_ati_bug3051, ptr @__pci_fixup_quirk_msi_intx_disable_ati_bug3053, ptr @__pci_fixup_quirk_msi_intx_disable_bug3027, ptr @__pci_fixup_quirk_msi_intx_disable_bug3030, ptr @__pci_fixup_quirk_msi_intx_disable_bug3033, ptr @__pci_fixup_quirk_msi_intx_disable_bug3036, ptr @__pci_fixup_quirk_msi_intx_disable_bug3039, ptr @__pci_fixup_quirk_msi_intx_disable_bug3042, ptr @__pci_fixup_quirk_msi_intx_disable_bug3056, ptr @__pci_fixup_quirk_msi_intx_disable_bug3058, ptr @__pci_fixup_quirk_msi_intx_disable_bug3060, ptr @__pci_fixup_quirk_msi_intx_disable_bug3063, ptr @__pci_fixup_quirk_msi_intx_disable_bug3065, ptr @__pci_fixup_quirk_msi_intx_disable_bug3067, ptr @__pci_fixup_quirk_msi_intx_disable_bug3069, ptr @__pci_fixup_quirk_msi_intx_disable_bug3071, ptr @__pci_fixup_quirk_msi_intx_disable_bug3073, ptr @__pci_fixup_quirk_msi_intx_disable_qca_bug3075, ptr @__pci_fixup_quirk_msi_intx_disable_qca_bug3077, ptr @__pci_fixup_quirk_msi_intx_disable_qca_bug3079, ptr @__pci_fixup_quirk_msi_intx_disable_qca_bug3081, ptr @__pci_fixup_quirk_msi_intx_disable_qca_bug3083, ptr @__pci_fixup_quirk_natoma438, ptr @__pci_fixup_quirk_natoma439, ptr @__pci_fixup_quirk_natoma440, ptr @__pci_fixup_quirk_natoma441, ptr @__pci_fixup_quirk_natoma442, ptr @__pci_fixup_quirk_natoma443, ptr @__pci_fixup_quirk_netmos2277, ptr @__pci_fixup_quirk_nfp6000463, ptr @__pci_fixup_quirk_nfp6000464, ptr @__pci_fixup_quirk_nfp6000465, ptr @__pci_fixup_quirk_nfp6000466, ptr @__pci_fixup_quirk_no_ata_d31344, ptr @__pci_fixup_quirk_no_ata_d31346, ptr @__pci_fixup_quirk_no_ata_d31349, ptr @__pci_fixup_quirk_no_ata_d31353, ptr @__pci_fixup_quirk_no_bus_reset3610, ptr @__pci_fixup_quirk_no_bus_reset3611, ptr @__pci_fixup_quirk_no_bus_reset3612, ptr @__pci_fixup_quirk_no_bus_reset3613, ptr @__pci_fixup_quirk_no_bus_reset3614, ptr @__pci_fixup_quirk_no_bus_reset3615, ptr @__pci_fixup_quirk_no_bus_reset3622, ptr @__pci_fixup_quirk_no_bus_reset3632, ptr @__pci_fixup_quirk_no_ext_tags5331, ptr @__pci_fixup_quirk_no_ext_tags5332, ptr @__pci_fixup_quirk_no_ext_tags5333, ptr @__pci_fixup_quirk_no_ext_tags5334, ptr @__pci_fixup_quirk_no_ext_tags5335, ptr @__pci_fixup_quirk_no_ext_tags5336, ptr @__pci_fixup_quirk_no_ext_tags5337, ptr @__pci_fixup_quirk_no_flr5313, ptr @__pci_fixup_quirk_no_flr5314, ptr @__pci_fixup_quirk_no_flr5315, ptr @__pci_fixup_quirk_no_flr5316, ptr @__pci_fixup_quirk_no_flr5317, ptr @__pci_fixup_quirk_no_pm_reset3653, ptr @__pci_fixup_quirk_nopciamd309, ptr @__pci_fixup_quirk_nopcipci296, ptr @__pci_fixup_quirk_nopcipci297, ptr @__pci_fixup_quirk_nvidia_ck804_msi_ht_cap2650, ptr @__pci_fixup_quirk_nvidia_ck804_pcie_aer_ext_cap2447, ptr @__pci_fixup_quirk_nvidia_hda5502, ptr @__pci_fixup_quirk_nvidia_no_bus_reset3601, ptr @__pci_fixup_quirk_p64h2_1k_io2428, ptr @__pci_fixup_quirk_passive_release238, ptr @__pci_fixup_quirk_pcie_mch1818, ptr @__pci_fixup_quirk_pcie_mch1819, ptr @__pci_fixup_quirk_pcie_mch1820, ptr @__pci_fixup_quirk_pcie_mch1822, ptr @__pci_fixup_quirk_pcie_pxh1872, ptr @__pci_fixup_quirk_pcie_pxh1873, ptr @__pci_fixup_quirk_pcie_pxh1874, ptr @__pci_fixup_quirk_pcie_pxh1875, ptr @__pci_fixup_quirk_pcie_pxh1876, ptr @__pci_fixup_quirk_pex_vca_alias4254, ptr @__pci_fixup_quirk_pex_vca_alias4255, ptr @__pci_fixup_quirk_pex_vca_alias4256, ptr @__pci_fixup_quirk_pex_vca_alias4257, ptr @__pci_fixup_quirk_pex_vca_alias4258, ptr @__pci_fixup_quirk_pex_vca_alias4259, ptr @__pci_fixup_quirk_piix4_acpi743, ptr @__pci_fixup_quirk_piix4_acpi744, ptr @__pci_fixup_quirk_plx_ntb_dma_alias5715, ptr @__pci_fixup_quirk_plx_ntb_dma_alias5716, ptr @__pci_fixup_quirk_plx_pci90502229, ptr @__pci_fixup_quirk_plx_pci90502239, ptr @__pci_fixup_quirk_plx_pci90502240, ptr @__pci_fixup_quirk_radeon_pm1925, ptr @__pci_fixup_quirk_relaxedordering_disable4314, ptr @__pci_fixup_quirk_relaxedordering_disable4316, ptr @__pci_fixup_quirk_relaxedordering_disable4318, ptr @__pci_fixup_quirk_relaxedordering_disable4320, ptr @__pci_fixup_quirk_relaxedordering_disable4322, ptr @__pci_fixup_quirk_relaxedordering_disable4324, ptr @__pci_fixup_quirk_relaxedordering_disable4326, ptr @__pci_fixup_quirk_relaxedordering_disable4328, ptr @__pci_fixup_quirk_relaxedordering_disable4330, ptr @__pci_fixup_quirk_relaxedordering_disable4332, ptr @__pci_fixup_quirk_relaxedordering_disable4334, ptr @__pci_fixup_quirk_relaxedordering_disable4336, ptr @__pci_fixup_quirk_relaxedordering_disable4338, ptr @__pci_fixup_quirk_relaxedordering_disable4340, ptr @__pci_fixup_quirk_relaxedordering_disable4342, ptr @__pci_fixup_quirk_relaxedordering_disable4344, ptr @__pci_fixup_quirk_relaxedordering_disable4346, ptr @__pci_fixup_quirk_relaxedordering_disable4348, ptr @__pci_fixup_quirk_relaxedordering_disable4350, ptr @__pci_fixup_quirk_relaxedordering_disable4352, ptr @__pci_fixup_quirk_relaxedordering_disable4354, ptr @__pci_fixup_quirk_relaxedordering_disable4356, ptr @__pci_fixup_quirk_relaxedordering_disable4358, ptr @__pci_fixup_quirk_relaxedordering_disable4360, ptr @__pci_fixup_quirk_relaxedordering_disable4362, ptr @__pci_fixup_quirk_relaxedordering_disable4364, ptr @__pci_fixup_quirk_relaxedordering_disable4366, ptr @__pci_fixup_quirk_relaxedordering_disable4368, ptr @__pci_fixup_quirk_relaxedordering_disable4380, ptr @__pci_fixup_quirk_relaxedordering_disable4382, ptr @__pci_fixup_quirk_relaxedordering_disable4384, ptr @__pci_fixup_quirk_remove_d3hot_delay3426, ptr @__pci_fixup_quirk_remove_d3hot_delay3427, ptr @__pci_fixup_quirk_remove_d3hot_delay3428, ptr @__pci_fixup_quirk_remove_d3hot_delay3430, ptr @__pci_fixup_quirk_remove_d3hot_delay3431, ptr @__pci_fixup_quirk_remove_d3hot_delay3432, ptr @__pci_fixup_quirk_remove_d3hot_delay3433, ptr @__pci_fixup_quirk_remove_d3hot_delay3434, ptr @__pci_fixup_quirk_remove_d3hot_delay3435, ptr @__pci_fixup_quirk_remove_d3hot_delay3436, ptr @__pci_fixup_quirk_remove_d3hot_delay3437, ptr @__pci_fixup_quirk_remove_d3hot_delay3438, ptr @__pci_fixup_quirk_remove_d3hot_delay3439, ptr @__pci_fixup_quirk_remove_d3hot_delay3440, ptr @__pci_fixup_quirk_remove_d3hot_delay3442, ptr @__pci_fixup_quirk_remove_d3hot_delay3443, ptr @__pci_fixup_quirk_remove_d3hot_delay3444, ptr @__pci_fixup_quirk_remove_d3hot_delay3445, ptr @__pci_fixup_quirk_remove_d3hot_delay3446, ptr @__pci_fixup_quirk_remove_d3hot_delay3447, ptr @__pci_fixup_quirk_remove_d3hot_delay3448, ptr @__pci_fixup_quirk_remove_d3hot_delay3449, ptr @__pci_fixup_quirk_remove_d3hot_delay3450, ptr @__pci_fixup_quirk_reset_lenovo_thinkpad_p50_nvgpu5774, ptr @__pci_fixup_quirk_ryzen_xhci_d3hot1940, ptr @__pci_fixup_quirk_ryzen_xhci_d3hot1941, ptr @__pci_fixup_quirk_ryzen_xhci_d3hot1942, ptr @__pci_fixup_quirk_s3_64M501, ptr @__pci_fixup_quirk_s3_64M502, ptr @__pci_fixup_quirk_sis_5031660, ptr @__pci_fixup_quirk_sis_96x_smbus1620, ptr @__pci_fixup_quirk_sis_96x_smbus1621, ptr @__pci_fixup_quirk_sis_96x_smbus1622, ptr @__pci_fixup_quirk_sis_96x_smbus1623, ptr @__pci_fixup_quirk_svwks_csb5ide1319, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5645, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5646, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5647, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5648, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5649, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5650, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5651, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5652, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5653, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5654, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5655, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5656, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5657, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5658, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5659, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5660, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5661, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5662, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5663, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5664, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5665, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5666, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5667, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5668, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5669, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5670, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5671, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5672, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5673, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5674, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5675, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5676, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5677, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5678, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5679, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5680, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5681, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5682, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5683, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5684, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5685, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5686, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5687, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5688, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5689, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5690, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5691, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5692, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5693, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5694, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5695, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5696, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5697, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5698, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5699, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5700, ptr @__pci_fixup_quirk_switchtec_ntb_dma_alias5701, ptr @__pci_fixup_quirk_synopsys_haps638, ptr @__pci_fixup_quirk_tc86c001_ide2201, ptr @__pci_fixup_quirk_thunderbolt_hotplug_msi3668, ptr @__pci_fixup_quirk_thunderbolt_hotplug_msi3670, ptr @__pci_fixup_quirk_thunderbolt_hotplug_msi3672, ptr @__pci_fixup_quirk_thunderbolt_hotplug_msi3674, ptr @__pci_fixup_quirk_thunderbolt_hotplug_msi3676, ptr @__pci_fixup_quirk_tigerpoint_bm_sts286, ptr @__pci_fixup_quirk_transparent_bridge1236, ptr @__pci_fixup_quirk_transparent_bridge1237, ptr @__pci_fixup_quirk_triton319, ptr @__pci_fixup_quirk_triton320, ptr @__pci_fixup_quirk_triton321, ptr @__pci_fixup_quirk_triton322, ptr @__pci_fixup_quirk_tw686x_class4289, ptr @__pci_fixup_quirk_tw686x_class4291, ptr @__pci_fixup_quirk_tw686x_class4293, ptr @__pci_fixup_quirk_tw686x_class4295, ptr @__pci_fixup_quirk_unhide_mch_dev62536, ptr @__pci_fixup_quirk_unhide_mch_dev62538, ptr @__pci_fixup_quirk_use_pcie_bridge_dma_alias4207, ptr @__pci_fixup_quirk_use_pcie_bridge_dma_alias4209, ptr @__pci_fixup_quirk_use_pcie_bridge_dma_alias4211, ptr @__pci_fixup_quirk_use_pcie_bridge_dma_alias4213, ptr @__pci_fixup_quirk_use_pcie_bridge_dma_alias4215, ptr @__pci_fixup_quirk_via_acpi1073, ptr @__pci_fixup_quirk_via_acpi1074, ptr @__pci_fixup_quirk_via_bridge1107, ptr @__pci_fixup_quirk_via_bridge1108, ptr @__pci_fixup_quirk_via_bridge1109, ptr @__pci_fixup_quirk_via_bridge1110, ptr @__pci_fixup_quirk_via_bridge1111, ptr @__pci_fixup_quirk_via_bridge1112, ptr @__pci_fixup_quirk_via_bridge1113, ptr @__pci_fixup_quirk_via_bridge1114, ptr @__pci_fixup_quirk_via_cx700_pci_parking_caching2501, ptr @__pci_fixup_quirk_via_vlink1158, ptr @__pci_fixup_quirk_viaetbf404, ptr @__pci_fixup_quirk_vialatency388, ptr @__pci_fixup_quirk_vialatency389, ptr @__pci_fixup_quirk_vialatency390, ptr @__pci_fixup_quirk_vsfx413, ptr @__pci_fixup_quirk_vt8235_acpi942, ptr @__pci_fixup_quirk_vt82c586_acpi913, ptr @__pci_fixup_quirk_vt82c598_id1170, ptr @__pci_fixup_quirk_vt82c686_acpi930, ptr @__pci_fixup_quirk_xio2000a961, ptr @__pci_fixup_resume_earlyasus_hides_ac97_lpc1694, ptr @__pci_fixup_resume_earlyasus_hides_smbus_lpc1550, ptr @__pci_fixup_resume_earlyasus_hides_smbus_lpc1551, ptr @__pci_fixup_resume_earlyasus_hides_smbus_lpc1552, ptr @__pci_fixup_resume_earlyasus_hides_smbus_lpc1553, ptr @__pci_fixup_resume_earlyasus_hides_smbus_lpc1554, ptr @__pci_fixup_resume_earlyasus_hides_smbus_lpc1555, ptr @__pci_fixup_resume_earlyasus_hides_smbus_lpc1556, ptr @__pci_fixup_resume_earlyasus_hides_smbus_lpc_ich6_resume_early1608, ptr @__pci_fixup_resume_earlynv_msi_ht_cap_quirk_all2984, ptr @__pci_fixup_resume_earlynv_msi_ht_cap_quirk_leaf2991, ptr @__pci_fixup_resume_earlyquirk_amd_ide_mode1299, ptr @__pci_fixup_resume_earlyquirk_amd_ide_mode1301, ptr @__pci_fixup_resume_earlyquirk_amd_ide_mode1303, ptr @__pci_fixup_resume_earlyquirk_amd_ide_mode1305, ptr @__pci_fixup_resume_earlyquirk_amd_ordering1208, ptr @__pci_fixup_resume_earlyquirk_cardbus_legacy1185, ptr @__pci_fixup_resume_earlyquirk_disable_pxb1279, ptr @__pci_fixup_resume_earlyquirk_jmicron_ata1764, ptr @__pci_fixup_resume_earlyquirk_jmicron_ata1765, ptr @__pci_fixup_resume_earlyquirk_jmicron_ata1766, ptr @__pci_fixup_resume_earlyquirk_jmicron_ata1767, ptr @__pci_fixup_resume_earlyquirk_jmicron_ata1768, ptr @__pci_fixup_resume_earlyquirk_jmicron_ata1769, ptr @__pci_fixup_resume_earlyquirk_jmicron_ata1770, ptr @__pci_fixup_resume_earlyquirk_jmicron_ata1771, ptr @__pci_fixup_resume_earlyquirk_jmicron_ata1772, ptr @__pci_fixup_resume_earlyquirk_nvidia_ck804_pcie_aer_ext_cap2449, ptr @__pci_fixup_resume_earlyquirk_nvidia_hda5504, ptr @__pci_fixup_resume_earlyquirk_sis_5031661, ptr @__pci_fixup_resume_earlyquirk_sis_96x_smbus1624, ptr @__pci_fixup_resume_earlyquirk_sis_96x_smbus1625, ptr @__pci_fixup_resume_earlyquirk_sis_96x_smbus1626, ptr @__pci_fixup_resume_earlyquirk_sis_96x_smbus1627, ptr @__pci_fixup_resumeasus_hides_smbus_lpc_ich6_resume1607, ptr @__pci_fixup_resumepci_fixup_pericom_acs_store_forward5861, ptr @__pci_fixup_resumepci_fixup_pericom_acs_store_forward5865, ptr @__pci_fixup_resumepci_fixup_pericom_acs_store_forward5869, ptr @__pci_fixup_resumequirk_mediagx_master1258, ptr @__pci_fixup_resumequirk_passive_release239, ptr @__pci_fixup_resumequirk_vialatency392, ptr @__pci_fixup_resumequirk_vialatency393, ptr @__pci_fixup_resumequirk_vialatency394, ptr @__pci_fixup_rom_bar_overlap_defect5882, ptr @__pci_fixup_rom_bar_overlap_defect5883, ptr @__pci_fixup_rom_bar_overlap_defect5884, ptr @__pci_fixup_rom_bar_overlap_defect5885, ptr @__pci_fixup_suspendasus_hides_smbus_lpc_ich6_suspend1606], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_fixup_device(i32 noundef %0, ptr noundef %1) #0 {
  switch i32 %0, label %66 [
    i32 0, label %11
    i32 1, label %3
    i32 2, label %4
    i32 3, label %6
    i32 4, label %7
    i32 6, label %8
    i32 5, label %9
    i32 7, label %10
  ]

3:                                                ; preds = %2
  br label %11

4:                                                ; preds = %2
  %5 = load i1, ptr @pci_apply_fixup_final_quirks, align 1
  br i1 %5, label %11, label %66

6:                                                ; preds = %2
  br label %11

7:                                                ; preds = %2
  br label %11

8:                                                ; preds = %2
  br label %11

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %4, %3, %2
  %12 = phi ptr [ @__start_pci_fixups_suspend_late, %10 ], [ @__start_pci_fixups_suspend, %9 ], [ @__start_pci_fixups_resume_early, %8 ], [ @__start_pci_fixups_resume, %7 ], [ @__start_pci_fixups_enable, %6 ], [ @__start_pci_fixups_header, %3 ], [ @__start_pci_fixups_early, %2 ], [ @__start_pci_fixups_final, %4 ]
  %13 = phi ptr [ @__end_pci_fixups_suspend_late, %10 ], [ @__end_pci_fixups_suspend, %9 ], [ @__end_pci_fixups_resume_early, %8 ], [ @__end_pci_fixups_resume, %7 ], [ @__end_pci_fixups_enable, %6 ], [ @__end_pci_fixups_header, %3 ], [ @__end_pci_fixups_early, %2 ], [ @__end_pci_fixups_final, %4 ]
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 11
  %17 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %18 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %19 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %20

20:                                               ; preds = %63, %15
  %21 = phi ptr [ %12, %15 ], [ %64, %63 ]
  %22 = getelementptr inbounds %struct.pci_fixup, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %16, align 8
  %25 = getelementptr inbounds %struct.pci_fixup, ptr %21, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %24, %26
  %28 = icmp eq i32 %23, %27
  %29 = icmp eq i32 %23, -1
  %30 = or i1 %29, %28
  br i1 %30, label %31, label %63

31:                                               ; preds = %20
  %32 = load i16, ptr %21, align 4
  %33 = load i16, ptr %17, align 8
  %34 = icmp eq i16 %32, %33
  %35 = icmp eq i16 %32, -1
  %36 = or i1 %35, %34
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.pci_fixup, ptr %21, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = load i16, ptr %18, align 2
  %41 = icmp eq i16 %39, %40
  %42 = icmp eq i16 %39, -1
  %43 = or i1 %42, %41
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.pci_fixup, ptr %21, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = load i8, ptr @initcall_debug, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = tail call ptr @llvm.thread.pointer() #16
  %51 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 52
  %52 = load i32, ptr %51, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %46, i32 noundef %52) #17
  br label %53

53:                                               ; preds = %49, %44
  %54 = tail call i64 @ktime_get() #16
  tail call void %46(ptr noundef %1) #16
  %55 = tail call i64 @ktime_get() #16
  %56 = sub i64 %55, %54
  %57 = load i8, ptr @initcall_debug, align 1, !range !8
  %58 = icmp ne i8 %57, 0
  %59 = icmp ugt i64 %56, 10241023
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = lshr i64 %56, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef %46, i64 noundef %62) #17
  br label %63

63:                                               ; preds = %61, %53, %37, %31, %20
  %64 = getelementptr %struct.pci_fixup, ptr %21, i32 1
  %65 = icmp ult ptr %64, %13
  br i1 %65, label %20, label %66

66:                                               ; preds = %63, %11, %4, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_apply_final_quirks() #2 section ".init.text" {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #16
  store i8 0, ptr %1, align 1, !annotation !9
  %2 = load i8, ptr @pci_cache_line_size, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = zext i8 %2 to i32
  %6 = shl nuw nsw i32 %5, 2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %6) #17
  br label %8

8:                                                ; preds = %4, %0
  store i1 true, ptr @pci_apply_fixup_final_quirks, align 1
  %9 = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %34, %8
  %12 = phi ptr [ %36, %34 ], [ %9, %8 ]
  %13 = phi i8 [ %35, %34 ], [ 0, %8 ]
  call void @pci_fixup_device(i32 noundef 2, ptr noundef nonnull %12)
  %14 = load i8, ptr @pci_cache_line_size, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = call i32 @pci_read_config_byte(ptr noundef nonnull %12, i32 noundef 12, ptr noundef nonnull %1) #16
  %18 = icmp eq i8 %13, 0
  %19 = load i8, ptr %1, align 1
  %20 = select i1 %18, i8 %19, i8 %13
  %21 = icmp eq i8 %19, 0
  %22 = icmp eq i8 %20, %19
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = zext i8 %19 to i32
  %26 = zext i8 %20 to i32
  %27 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %28 = shl nuw nsw i32 %26, 2
  %29 = shl nuw nsw i32 %25, 2
  %30 = load i8, ptr @pci_dfl_cache_line_size, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.3, i32 noundef %28, i32 noundef %29, i32 noundef %32) #17
  %33 = load i8, ptr @pci_dfl_cache_line_size, align 1
  store i8 %33, ptr @pci_cache_line_size, align 1
  br label %34

34:                                               ; preds = %24, %16, %11
  %35 = phi i8 [ %20, %16 ], [ %13, %11 ], [ %20, %24 ]
  %36 = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %12) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %11

38:                                               ; preds = %34, %8
  %39 = phi i8 [ 0, %8 ], [ %35, %34 ]
  %40 = load i8, ptr @pci_cache_line_size, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = zext i8 %39 to i32
  %44 = shl nuw nsw i32 %43, 2
  %45 = load i8, ptr @pci_dfl_cache_line_size, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 2
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %44, i32 noundef %47) #17
  %49 = icmp eq i8 %39, 0
  %50 = load i8, ptr @pci_dfl_cache_line_size, align 1
  %51 = select i1 %49, i8 %50, i8 %39
  store i8 %51, ptr @pci_cache_line_size, align 1
  br label %52

52:                                               ; preds = %42, %38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #16
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_mmio_always_on(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 2
  %4 = or i32 %3, 4096
  store i32 %4, ptr %2, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_parity(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_passive_release(ptr nocapture noundef readnone %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call ptr @pci_get_device(i32 noundef 32902, i32 noundef 28672, ptr noundef null) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %16, %1
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = call i32 @pci_read_config_byte(ptr noundef nonnull %6, i32 noundef 130, ptr noundef nonnull %2) #16
  %8 = load i8, ptr %2, align 1
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.5) #17
  %13 = load i8, ptr %2, align 1
  %14 = or i8 %13, 2
  store i8 %14, ptr %2, align 1
  %15 = call i32 @pci_write_config_byte(ptr noundef nonnull %6, i32 noundef 130, i8 noundef zeroext %14) #16
  br label %16

16:                                               ; preds = %11, %5
  %17 = call ptr @pci_get_device(i32 noundef 32902, i32 noundef 28672, ptr noundef nonnull %6) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5

19:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_isa_dma_hangs(ptr noundef %0) #0 {
  %2 = load i32, ptr @isa_dma_bridge_buggy, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  store i32 1, ptr @isa_dma_bridge_buggy, align 4
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.6) #17
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_tigerpoint_bm_sts(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %2) #16
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 65408
  store i32 %5, ptr %2, align 4
  %6 = or i32 %5, -18874368
  %7 = inttoptr i32 %6 to ptr
  %8 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #16, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !11
  %9 = and i16 %8, 16
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.7) #17
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !12
  call void @arm_heavy_mb() #16
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 1048575
  %15 = or i32 %14, -18874368
  %16 = inttoptr i32 %15 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 16) #16, !srcloc !13
  br label %17

17:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_nopcipci(ptr noundef %0) #0 {
  %2 = load i32, ptr @pci_pci_problems, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.8) #17
  %7 = load i32, ptr @pci_pci_problems, align 4
  %8 = or i32 %7, 1
  store i32 %8, ptr @pci_pci_problems, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_nopciamd(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %2) #16
  %4 = load i8, ptr %2, align 1
  %5 = icmp eq i8 %4, 19
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.9) #17
  %8 = load i32, ptr @pci_pci_problems, align 4
  %9 = or i32 %8, 64
  store i32 %9, ptr @pci_pci_problems, align 4
  br label %10

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_triton(ptr noundef %0) #0 {
  %2 = load i32, ptr @pci_pci_problems, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.10) #17
  %7 = load i32, ptr @pci_pci_problems, align 4
  %8 = or i32 %7, 2
  store i32 %8, ptr @pci_pci_problems, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_vialatency(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = tail call ptr @pci_get_device(i32 noundef 4358, i32 noundef 1670, ptr noundef null) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 12
  %7 = load i8, ptr %6, align 4
  %8 = add i8 %7, -67
  %9 = icmp ult i8 %8, -3
  br i1 %9, label %26, label %18

10:                                               ; preds = %1
  %11 = tail call ptr @pci_get_device(i32 noundef 4358, i32 noundef 33329, ptr noundef null) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 12
  %15 = load i8, ptr %14, align 4
  %16 = add i8 %15, -19
  %17 = icmp ult i8 %16, -3
  br i1 %17, label %26, label %18

18:                                               ; preds = %13, %5
  %19 = phi ptr [ %3, %5 ], [ %11, %13 ]
  %20 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 118, ptr noundef nonnull %2) #16
  %21 = load i8, ptr %2, align 1
  %22 = and i8 %21, -49
  %23 = or i8 %22, 16
  store i8 %23, ptr %2, align 1
  %24 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 118, i8 noundef zeroext %23) #16
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.11) #17
  br label %26

26:                                               ; preds = %18, %13, %10, %5
  %27 = phi ptr [ %3, %5 ], [ %19, %18 ], [ null, %10 ], [ %11, %13 ]
  call void @pci_dev_put(ptr noundef %27) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_viaetbf(ptr noundef %0) #0 {
  %2 = load i32, ptr @pci_pci_problems, align 4
  %3 = and i32 %2, 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.10) #17
  %7 = load i32, ptr @pci_pci_problems, align 4
  %8 = or i32 %7, 8
  store i32 %8, ptr @pci_pci_problems, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_vsfx(ptr noundef %0) #0 {
  %2 = load i32, ptr @pci_pci_problems, align 4
  %3 = and i32 %2, 16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.10) #17
  %7 = load i32, ptr @pci_pci_problems, align 4
  %8 = or i32 %7, 16
  store i32 %8, ptr @pci_pci_problems, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_alimagik(ptr noundef %0) #0 {
  %2 = load i32, ptr @pci_pci_problems, align 4
  %3 = and i32 %2, 32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.10) #17
  %7 = load i32, ptr @pci_pci_problems, align 4
  %8 = or i32 %7, 34
  store i32 %8, ptr @pci_pci_problems, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_natoma(ptr noundef %0) #0 {
  %2 = load i32, ptr @pci_pci_problems, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.10) #17
  %7 = load i32, ptr @pci_pci_problems, align 4
  %8 = or i32 %7, 4
  store i32 %8, ptr @pci_pci_problems, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @quirk_citrine(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  store i32 160, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @quirk_nfp6000(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  store i32 1536, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_extend_bar_to_page(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0
  %4 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %3, align 4
  %12 = add i32 %10, 1
  %13 = sub i32 %12, %11
  %14 = icmp ult i32 %13, 4096
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  store i32 4095, ptr %9, align 4
  store i32 0, ptr %3, align 4
  %16 = or i32 %5, 536870912
  store i32 %16, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %3) #17
  br label %17

17:                                               ; preds = %15, %8, %1
  %18 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %19 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %18, align 4
  %27 = add i32 %25, 1
  %28 = sub i32 %27, %26
  %29 = icmp ult i32 %28, 4096
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  store i32 4095, ptr %24, align 4
  store i32 0, ptr %18, align 4
  %31 = or i32 %20, 536870912
  store i32 %31, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %18) #17
  br label %32

32:                                               ; preds = %30, %23, %17
  %33 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %34 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %33, align 4
  %42 = add i32 %40, 1
  %43 = sub i32 %42, %41
  %44 = icmp ult i32 %43, 4096
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  store i32 4095, ptr %39, align 4
  store i32 0, ptr %33, align 4
  %46 = or i32 %35, 536870912
  store i32 %46, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef %33) #17
  br label %47

47:                                               ; preds = %45, %38, %32
  %48 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %49 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 512
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %48, align 4
  %57 = add i32 %55, 1
  %58 = sub i32 %57, %56
  %59 = icmp ult i32 %58, 4096
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  store i32 4095, ptr %54, align 4
  store i32 0, ptr %48, align 4
  %61 = or i32 %50, 536870912
  store i32 %61, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef %48) #17
  br label %62

62:                                               ; preds = %60, %53, %47
  %63 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %64 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 512
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %63, align 4
  %72 = add i32 %70, 1
  %73 = sub i32 %72, %71
  %74 = icmp ult i32 %73, 4096
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  store i32 4095, ptr %69, align 4
  store i32 0, ptr %63, align 4
  %76 = or i32 %65, 536870912
  store i32 %76, ptr %64, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %63) #17
  br label %77

77:                                               ; preds = %75, %68, %62
  %78 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  %79 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 512
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %77
  %84 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = load i32, ptr %78, align 4
  %87 = add i32 %85, 1
  %88 = sub i32 %87, %86
  %89 = icmp ult i32 %88, 4096
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  store i32 4095, ptr %84, align 4
  store i32 0, ptr %78, align 4
  %91 = or i32 %80, 536870912
  store i32 %91, ptr %79, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 5, ptr noundef %78) #17
  br label %92

92:                                               ; preds = %90, %83, %77
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_s3_64M(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 67108863
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add nuw i32 %3, 67108863
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 536870912
  store i32 %14, ptr %12, align 4
  store i32 0, ptr %2, align 4
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  store i32 67108863, ptr %15, align 4
  br label %16

16:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_cs5536_vsa(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_bus_region, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus_region, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus_region, align 8
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %13 = load i32, ptr %12, align 8
  %14 = sub i32 %9, %13
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %90, label %16

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %17 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %6) #16
  %18 = load i32, ptr %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %27, %25 ], [ %23, %20 ]
  %30 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = and i32 %18, 3
  %32 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %33 = or i32 %31, 262416
  store i32 %33, ptr %32, align 4
  %34 = and i32 %18, -8
  store i32 %34, ptr %6, align 4
  store i32 %34, ptr %7, align 8
  %35 = or i32 %18, 7
  %36 = getelementptr inbounds %struct.pci_bus_region, ptr %7, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  call void @pcibios_bus_to_resource(ptr noundef %38, ptr noundef %21, ptr noundef nonnull %7) #16
  %39 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef %21) #17
  br label %40

40:                                               ; preds = %28, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %41 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %4) #16
  %42 = load i32, ptr %4, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %40
  %45 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %51, %49 ], [ %47, %44 ]
  %54 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 2
  store ptr %53, ptr %54, align 4
  %55 = and i32 %42, 3
  %56 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %57 = or i32 %55, 262416
  store i32 %57, ptr %56, align 4
  %58 = and i32 %42, -256
  store i32 %58, ptr %4, align 4
  store i32 %58, ptr %5, align 8
  %59 = or i32 %42, 255
  %60 = getelementptr inbounds %struct.pci_bus_region, ptr %5, i32 0, i32 1
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  call void @pcibios_bus_to_resource(ptr noundef %62, ptr noundef %45, ptr noundef nonnull %5) #16
  %63 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 20, ptr noundef %45) #17
  br label %64

64:                                               ; preds = %52, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %65 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 24, ptr noundef nonnull %2) #16
  %66 = load i32, ptr %2, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %70 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %75 = load ptr, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi ptr [ %75, %73 ], [ %71, %68 ]
  %78 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 2
  store ptr %77, ptr %78, align 4
  %79 = and i32 %66, 3
  %80 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %81 = or i32 %79, 262416
  store i32 %81, ptr %80, align 4
  %82 = and i32 %66, -64
  store i32 %82, ptr %2, align 4
  store i32 %82, ptr %3, align 8
  %83 = or i32 %66, 63
  %84 = getelementptr inbounds %struct.pci_bus_region, ptr %3, i32 0, i32 1
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  call void @pcibios_bus_to_resource(ptr noundef %86, ptr noundef %69, ptr noundef nonnull %3) #16
  %87 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 24, ptr noundef %69) #17
  br label %88

88:                                               ; preds = %76, %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %89 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #17
  br label %90

90:                                               ; preds = %88, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_ati_exploding_mce(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.16) #17
  %3 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 944, i32 noundef 12, ptr noundef nonnull @.str.17, i32 noundef 0) #16
  %4 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 979, i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_amd_nl_class(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  store i32 787454, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef 787454) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_synopsys_haps(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 2
  %4 = add i16 %3, 21555
  %5 = icmp ult i16 %4, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %8 = load i32, ptr %7, align 8
  store i32 787454, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.18, i32 noundef %8, i32 noundef 787454) #17
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_ali7101_acpi(ptr noundef %0) #0 {
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 224, i32 noundef 64, i32 noundef 7, ptr noundef nonnull @.str.19)
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 226, i32 noundef 32, i32 noundef 8, ptr noundef nonnull @.str.20)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_piix4_acpi(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 0, ptr %10, align 4, !annotation !9
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 64, i32 noundef 64, i32 noundef 7, ptr noundef nonnull @.str.22)
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 144, i32 noundef 16, i32 noundef 8, ptr noundef nonnull @.str.23)
  %11 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 92, ptr noundef nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !9
  %12 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 96, ptr noundef nonnull %9) #16
  %13 = load i32, ptr %9, align 4
  %14 = and i32 %13, 6291456
  %15 = icmp eq i32 %14, 6291456
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = lshr i32 %13, 16
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 16, %16 ], [ %20, %18 ]
  %20 = lshr i32 %19, 1
  %21 = and i32 %20, %17
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %23, label %18

23:                                               ; preds = %18
  %24 = and i32 %13, 65535
  %25 = sub nsw i32 0, %19
  %26 = and i32 %24, %25
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %28 = add nsw i32 %19, -1
  %29 = add nsw i32 %28, %26
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, i32 noundef %26, i32 noundef %29) #17
  br label %30

30:                                               ; preds = %23, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %31 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 100, ptr noundef nonnull %8) #16
  %32 = load i32, ptr %8, align 4
  %33 = and i32 %32, 6291456
  %34 = icmp eq i32 %33, 6291456
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = lshr i32 %32, 16
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ 16, %35 ], [ %39, %37 ]
  %39 = lshr i32 %38, 1
  %40 = and i32 %39, %36
  %41 = icmp eq i32 %40, %39
  br i1 %41, label %42, label %37

42:                                               ; preds = %37
  %43 = and i32 %32, 65535
  %44 = sub nsw i32 0, %38
  %45 = and i32 %43, %44
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %47 = add nsw i32 %38, -1
  %48 = add nsw i32 %47, %45
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, i32 noundef %45, i32 noundef %48) #17
  br label %49

49:                                               ; preds = %42, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  %50 = load i32, ptr %10, align 4
  %51 = and i32 %50, 536870912
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %94, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %54 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 104, ptr noundef nonnull %7) #16
  %55 = load i32, ptr %7, align 4
  %56 = and i32 %55, 1048576
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %53
  %59 = lshr i32 %55, 16
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i32 [ 16, %58 ], [ %62, %60 ]
  %62 = lshr i32 %61, 1
  %63 = and i32 %62, %59
  %64 = icmp eq i32 %63, %62
  br i1 %64, label %65, label %60

65:                                               ; preds = %60
  %66 = and i32 %55, 65535
  %67 = sub nsw i32 0, %61
  %68 = and i32 %66, %67
  %69 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %70 = add nsw i32 %61, -1
  %71 = add nsw i32 %70, %68
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.26, i32 noundef %68, i32 noundef %71) #17
  br label %72

72:                                               ; preds = %65, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %73 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 108, ptr noundef nonnull %6) #16
  %74 = load i32, ptr %6, align 4
  %75 = and i32 %74, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = shl i32 %74, 16
  %79 = and i32 %78, 4128768
  br label %80

80:                                               ; preds = %80, %77
  %81 = phi i32 [ 8388608, %77 ], [ %82, %80 ]
  %82 = lshr i32 %81, 1
  %83 = and i32 %79, %82
  %84 = icmp eq i32 %83, %82
  br i1 %84, label %85, label %80

85:                                               ; preds = %80
  %86 = and i32 %74, -65536
  %87 = sub nsw i32 0, %81
  %88 = and i32 %86, %87
  %89 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %90 = add nsw i32 %81, -1
  %91 = add i32 %90, %88
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27, i32 noundef %88, i32 noundef %91) #17
  br label %92

92:                                               ; preds = %85, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %93 = load i32, ptr %10, align 4
  br label %94

94:                                               ; preds = %92, %49
  %95 = phi i32 [ %93, %92 ], [ %50, %49 ]
  %96 = and i32 %95, 1073741824
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %138, label %98

98:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %99 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 112, ptr noundef nonnull %5) #16
  %100 = load i32, ptr %5, align 4
  %101 = and i32 %100, 1048576
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %98
  %104 = lshr i32 %100, 16
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi i32 [ 16, %103 ], [ %107, %105 ]
  %107 = lshr i32 %106, 1
  %108 = and i32 %107, %104
  %109 = icmp eq i32 %108, %107
  br i1 %109, label %110, label %105

110:                                              ; preds = %105
  %111 = and i32 %100, 65535
  %112 = sub nsw i32 0, %106
  %113 = and i32 %111, %112
  %114 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %115 = add nsw i32 %106, -1
  %116 = add nsw i32 %115, %113
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef %113, i32 noundef %116) #17
  br label %117

117:                                              ; preds = %110, %98
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %118 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 116, ptr noundef nonnull %4) #16
  %119 = load i32, ptr %4, align 4
  %120 = and i32 %119, 128
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %117
  %123 = shl i32 %119, 16
  %124 = and i32 %123, 4128768
  br label %125

125:                                              ; preds = %125, %122
  %126 = phi i32 [ 8388608, %122 ], [ %127, %125 ]
  %127 = lshr i32 %126, 1
  %128 = and i32 %124, %127
  %129 = icmp eq i32 %128, %127
  br i1 %129, label %130, label %125

130:                                              ; preds = %125
  %131 = and i32 %119, -65536
  %132 = sub nsw i32 0, %126
  %133 = and i32 %131, %132
  %134 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %135 = add nsw i32 %126, -1
  %136 = add i32 %135, %133
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %134, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29, i32 noundef %133, i32 noundef %136) #17
  br label %137

137:                                              ; preds = %130, %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %138

138:                                              ; preds = %137, %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %139 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 120, ptr noundef nonnull %3) #16
  %140 = load i32, ptr %3, align 4
  %141 = and i32 %140, 1048576
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %157, label %143

143:                                              ; preds = %138
  %144 = lshr i32 %140, 16
  br label %145

145:                                              ; preds = %145, %143
  %146 = phi i32 [ 16, %143 ], [ %147, %145 ]
  %147 = lshr i32 %146, 1
  %148 = and i32 %147, %144
  %149 = icmp eq i32 %148, %147
  br i1 %149, label %150, label %145

150:                                              ; preds = %145
  %151 = and i32 %140, 65535
  %152 = sub nsw i32 0, %146
  %153 = and i32 %151, %152
  %154 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %155 = add nsw i32 %146, -1
  %156 = add nsw i32 %155, %153
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %154, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %153, i32 noundef %156) #17
  br label %157

157:                                              ; preds = %150, %138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %158 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 124, ptr noundef nonnull %2) #16
  %159 = load i32, ptr %2, align 4
  %160 = and i32 %159, 1048576
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %157
  %163 = lshr i32 %159, 16
  br label %164

164:                                              ; preds = %164, %162
  %165 = phi i32 [ 16, %162 ], [ %166, %164 ]
  %166 = lshr i32 %165, 1
  %167 = and i32 %166, %163
  %168 = icmp eq i32 %167, %166
  br i1 %168, label %169, label %164

169:                                              ; preds = %164
  %170 = and i32 %159, 65535
  %171 = sub nsw i32 0, %165
  %172 = and i32 %170, %171
  %173 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %174 = add nsw i32 %165, -1
  %175 = add nsw i32 %174, %172
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %173, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %172, i32 noundef %175) #17
  br label %176

176:                                              ; preds = %169, %157
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_ich4_lpc_acpi(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 68, ptr noundef nonnull %2) #16
  %4 = load i8, ptr %2, align 1
  %5 = and i8 %4, 16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 64, i32 noundef 128, i32 noundef 7, ptr noundef nonnull @.str.34)
  br label %8

8:                                                ; preds = %7, %1
  %9 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 92, ptr noundef nonnull %2) #16
  %10 = load i8, ptr %2, align 1
  %11 = and i8 %10, 16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 88, i32 noundef 64, i32 noundef 8, ptr noundef nonnull @.str.35)
  br label %14

14:                                               ; preds = %13, %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_ich6_lpc(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 68, ptr noundef nonnull %4) #16
  %6 = load i8, ptr %4, align 1
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 64, i32 noundef 128, i32 noundef 7, ptr noundef nonnull @.str.38) #16
  br label %9

9:                                                ; preds = %8, %1
  %10 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 76, ptr noundef nonnull %4) #16
  %11 = load i8, ptr %4, align 1
  %12 = and i8 %11, 16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 72, i32 noundef 64, i32 noundef 8, ptr noundef nonnull @.str.39) #16
  br label %15

15:                                               ; preds = %14, %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %16 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 132, ptr noundef nonnull %3) #16
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = and i32 %17, 65408
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %23 = or i32 %21, 127
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.36, i32 noundef %21, i32 noundef %23) #17
  br label %24

24:                                               ; preds = %20, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %25 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 136, ptr noundef nonnull %2) #16
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = and i32 %26, 65520
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %32 = or i32 %30, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.37, i32 noundef %30, i32 noundef %32) #17
  br label %33

33:                                               ; preds = %29, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_ich7_lpc(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 0, ptr %6, align 1, !annotation !9
  %7 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 68, ptr noundef nonnull %6) #16
  %8 = load i8, ptr %6, align 1
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 64, i32 noundef 128, i32 noundef 7, ptr noundef nonnull @.str.38) #16
  br label %11

11:                                               ; preds = %10, %1
  %12 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 76, ptr noundef nonnull %6) #16
  %13 = load i8, ptr %6, align 1
  %14 = and i8 %13, 16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 72, i32 noundef 64, i32 noundef 8, ptr noundef nonnull @.str.39) #16
  br label %17

17:                                               ; preds = %16, %11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %18 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 132, ptr noundef nonnull %5) #16
  %19 = load i32, ptr %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, 65532
  %24 = lshr i32 %19, 16
  %25 = and i32 %24, 252
  %26 = or i32 %25, 3
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.40, i32 noundef %23, i32 noundef %26) #17
  br label %28

28:                                               ; preds = %22, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %29 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 136, ptr noundef nonnull %4) #16
  %30 = load i32, ptr %4, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = and i32 %30, 65532
  %35 = lshr i32 %30, 16
  %36 = and i32 %35, 252
  %37 = or i32 %36, 3
  %38 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, i32 noundef %34, i32 noundef %37) #17
  br label %39

39:                                               ; preds = %33, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %40 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 140, ptr noundef nonnull %3) #16
  %41 = load i32, ptr %3, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = and i32 %41, 65532
  %46 = lshr i32 %41, 16
  %47 = and i32 %46, 252
  %48 = or i32 %47, 3
  %49 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %45, i32 noundef %48) #17
  br label %50

50:                                               ; preds = %44, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %51 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %2) #16
  %52 = load i32, ptr %2, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = and i32 %52, 65532
  %57 = lshr i32 %52, 16
  %58 = and i32 %57, 252
  %59 = or i32 %58, 3
  %60 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %56, i32 noundef %59) #17
  br label %61

61:                                               ; preds = %55, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_vt82c586_acpi(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 72, i32 noundef 256, i32 noundef 7, ptr noundef nonnull @.str.45)
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_vt82c686_acpi(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 72, i32 noundef 256, i32 noundef 7, ptr noundef nonnull @.str.45) #16
  br label %7

7:                                                ; preds = %6, %1
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 112, i32 noundef 128, i32 noundef 8, ptr noundef nonnull @.str.46)
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 144, i32 noundef 16, i32 noundef 9, ptr noundef nonnull @.str.47)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_vt8235_acpi(ptr noundef %0) #0 {
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 136, i32 noundef 128, i32 noundef 7, ptr noundef nonnull @.str.48)
  tail call fastcc void @quirk_io_region(ptr noundef %0, i32 noundef 208, i32 noundef 16, i32 noundef 8, ptr noundef nonnull @.str.49)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_xio2000a(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !9
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.50) #17
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %18, %1
  %10 = phi ptr [ %19, %18 ], [ %7, %1 ]
  %11 = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %2) #16
  %12 = load i16, ptr %2, align 2
  %13 = and i16 %12, 512
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = and i16 %12, -513
  %17 = call i32 @pci_write_config_word(ptr noundef %10, i32 noundef 4, i16 noundef zeroext %16) #16
  br label %18

18:                                               ; preds = %15, %9
  %19 = load ptr, ptr %10, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 3
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %9

23:                                               ; preds = %18, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_amd_8131_mmrbc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %7 = load i8, ptr %6, align 4
  %8 = icmp ult i8 %7, 19
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = zext i8 %7 to i32
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.51, i32 noundef %10) #17
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 19
  %14 = load i16, ptr %13, align 2
  %15 = or i16 %14, 2
  store i16 %15, ptr %13, align 2
  br label %16

16:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_via_acpi(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 66, ptr noundef nonnull %2) #16
  %4 = load i8, ptr %2, align 1
  %5 = and i8 %4, 13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = and i8 %4, 15
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_via_bridge(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 2
  switch i16 %3, label %12 [
    i16 1670, label %4
    i16 12839, label %9
    i16 13111, label %9
    i16 12663, label %10
    i16 -32207, label %11
    i16 12404, label %11
    i16 12615, label %11
    i16 12553, label %11
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 31
  store i32 %8, ptr @via_vlink_dev_lo, align 4
  store i32 %8, ptr @via_vlink_dev_hi, align 4
  br label %12

9:                                                ; preds = %1, %1
  store i32 15, ptr @via_vlink_dev_lo, align 4
  br label %12

10:                                               ; preds = %1
  store i32 16, ptr @via_vlink_dev_lo, align 4
  br label %12

11:                                               ; preds = %1, %1, %1, %1
  store i32 17, ptr @via_vlink_dev_lo, align 4
  br label %12

12:                                               ; preds = %11, %10, %9, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_via_vlink(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = load i32, ptr @via_vlink_dev_lo, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  %9 = icmp eq i8 %8, 0
  %10 = and i32 %7, 255
  %11 = icmp ugt i32 %10, 15
  %12 = or i1 %9, %11
  br i1 %12, label %37, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 12
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 3
  %23 = and i32 %22, 31
  %24 = load i32, ptr @via_vlink_dev_hi, align 4
  %25 = icmp ugt i32 %23, %24
  %26 = icmp ult i32 %23, %3
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %19
  %29 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %2) #16
  %30 = load i8, ptr %2, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %10, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.52, i32 noundef %31, i32 noundef %10) #17
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 3221220) #16
  %36 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 60, i8 noundef zeroext %8) #16
  br label %37

37:                                               ; preds = %33, %28, %19, %13, %5, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_vt82c598_id(ptr noundef %0) #0 {
  %2 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 252, i8 noundef zeroext 0) #16
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %4 = tail call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 2, ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_cardbus_legacy(ptr noundef %0) #0 {
  %2 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 68, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_amd_ordering(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 76, ptr noundef nonnull %2) #16
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 6
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = or i32 %4, 6
  store i32 %8, ptr %2, align 4
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.53) #17
  %10 = load i32, ptr %2, align 4
  %11 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 76, i32 noundef %10) #16
  %12 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 132, ptr noundef nonnull %2) #16
  %13 = load i32, ptr %2, align 4
  %14 = or i32 %13, 8388608
  store i32 %14, ptr %2, align 4
  %15 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 132, i32 noundef %14) #16
  br label %16

16:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_dunord(ptr nocapture noundef %0) #3 {
  %2 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 536870912
  store i32 %5, ptr %3, align 4
  store i32 0, ptr %2, align 4
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  store i32 16777215, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_transparent_bridge(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = or i40 %3, 1
  store i40 %4, ptr %2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_mediagx_master(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 65, ptr noundef nonnull %2) #16
  %4 = load i8, ptr %2, align 1
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = and i8 %4, -3
  store i8 %8, ptr %2, align 1
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %10 = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.54, i32 noundef %10) #17
  %11 = load i8, ptr %2, align 1
  %12 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 65, i8 noundef zeroext %11) #16
  br label %13

13:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_disable_pxb(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !9
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %2) #16
  %8 = load i16, ptr %2, align 2
  %9 = and i16 %8, 64
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = and i16 %8, -65
  store i16 %12, ptr %2, align 2
  %13 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 64, i16 noundef zeroext %12) #16
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.55) #17
  br label %15

15:                                               ; preds = %11, %6, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_amd_ide_mode(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %2) #16
  %4 = load i8, ptr %2, align 1
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %2) #16
  %8 = load i8, ptr %2, align 1
  %9 = or i8 %8, 1
  %10 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 64, i8 noundef zeroext %9) #16
  %11 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 9, i8 noundef zeroext 1) #16
  %12 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 10, i8 noundef zeroext 6) #16
  %13 = load i8, ptr %2, align 1
  %14 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 64, i8 noundef zeroext %13) #16
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  store i32 67073, ptr %15, align 8
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.56) #17
  br label %17

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_svwks_csb5ide(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2) #16
  %4 = load i8, ptr %2, align 1
  %5 = and i8 %4, 5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = and i8 %4, -6
  store i8 %8, ptr %2, align 1
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, -6
  store i32 %11, ptr %9, align 8
  %12 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 9, i8 noundef zeroext %8) #16
  br label %13

13:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_ide_samemode(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2) #16
  %4 = load i8, ptr %2, align 1
  %5 = trunc i8 %4 to i3
  %6 = and i3 %5, -3
  switch i3 %6, label %15 [
    i3 -4, label %7
    i3 1, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.57) #17
  %9 = load i8, ptr %2, align 1
  %10 = and i8 %9, -6
  store i8 %10, ptr %2, align 1
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, -6
  store i32 %13, ptr %11, align 8
  %14 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 9, i8 noundef zeroext %10) #16
  br label %15

15:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_no_ata_d3(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %3 = load i16, ptr %2, align 2
  %4 = or i16 %3, 2
  store i16 %4, ptr %2, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @quirk_eisa_bridge(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  store i32 393728, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @asus_hides_smbus_hostbridge(ptr noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %3 = load i16, ptr %2, align 4
  switch i16 %3, label %80 [
    i16 4163, label %4
    i16 4156, label %38
    i16 5197, label %51
    i16 3601, label %59
  ], !prof !14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %6 = load i16, ptr %5, align 2
  switch i16 %6, label %80 [
    i16 6704, label %7
    i16 9568, label %10
    i16 9520, label %13
    i16 9565, label %17
    i16 9548, label %21
    i16 13696, label %25
    i16 13120, label %28
    i16 9584, label %31
    i16 9616, label %35
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %9 = load i16, ptr %8, align 2
  switch i16 %9, label %80 [
    i16 -32731, label %79
    i16 -32656, label %79
    i16 -32632, label %79
    i16 5670, label %79
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %12 = load i16, ptr %11, align 2
  switch i16 %12, label %80 [
    i16 -32591, label %79
    i16 -32590, label %79
    i16 -32621, label %79
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, -32720
  br i1 %16, label %79, label %80

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, -32656
  br i1 %20, label %79, label %80

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, -32567
  br i1 %24, label %79, label %80

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %27 = load i16, ptr %26, align 2
  switch i16 %27, label %80 [
    i16 5969, label %79
    i16 6177, label %79
    i16 6295, label %79
  ]

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %30 = load i16, ptr %29, align 2
  switch i16 %30, label %80 [
    i16 6219, label %79
    i16 6250, label %79
  ]

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, -32526
  br i1 %34, label %79, label %80

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %37 = load i16, ptr %36, align 2
  switch i16 %37, label %80 [
    i16 6274, label %79
    i16 6519, label %79
  ]

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %40 = load i16, ptr %39, align 2
  switch i16 %40, label %80 [
    i16 13120, label %41
    i16 9584, label %44
    i16 9592, label %47
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %43 = load i16, ptr %42, align 2
  switch i16 %43, label %80 [
    i16 2188, label %79
    i16 2192, label %79
  ]

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %46 = load i16, ptr %45, align 2
  switch i16 %46, label %80 [
    i16 4796, label %79
    i16 4797, label %79
    i16 106, label %79
  ]

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, 4799
  br i1 %50, label %79, label %80

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, 13120
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %57 = load i16, ptr %56, align 2
  %58 = icmp eq i16 %57, -16372
  br i1 %58, label %79, label %80

59:                                               ; preds = %1
  %60 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %61 = load i16, ptr %60, align 2
  switch i16 %61, label %80 [
    i16 13120, label %62
    i16 28963, label %66
    i16 9410, label %70
    i16 4402, label %75
  ]

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i16 %64, 88
  br i1 %65, label %79, label %80

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %68 = load i16, ptr %67, align 2
  %69 = icmp eq i16 %68, -20116
  br i1 %69, label %79, label %80

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %72 = load i16, ptr %71, align 2
  %73 = add i16 %72, -184
  %74 = icmp ult i16 %73, 3
  br i1 %74, label %79, label %80

75:                                               ; preds = %59
  %76 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %77 = load i16, ptr %76, align 2
  %78 = icmp eq i16 %77, 26
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %70, %66, %62, %55, %47, %44, %44, %44, %41, %41, %35, %35, %31, %28, %28, %25, %25, %25, %21, %17, %13, %10, %10, %10, %7, %7, %7, %7
  store i1 true, ptr @asus_hides_smbus, align 4
  br label %80

80:                                               ; preds = %79, %75, %70, %66, %62, %59, %55, %51, %47, %44, %41, %38, %35, %31, %28, %25, %21, %17, %13, %10, %7, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asus_hides_smbus_lpc(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !9
  %3 = load i1, ptr @asus_hides_smbus, align 4
  br i1 %3, label %4, label %20, !prof !15

4:                                                ; preds = %1
  %5 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 242, ptr noundef nonnull %2) #16
  %6 = load i16, ptr %2, align 2
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %4
  %10 = and i16 %6, -9
  %11 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 242, i16 noundef zeroext %10) #16
  %12 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 242, ptr noundef nonnull %2) #16
  %13 = load i16, ptr %2, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br i1 %16, label %19, label %18

18:                                               ; preds = %9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.58, i32 noundef %14) #17
  br label %20

19:                                               ; preds = %9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.59) #17
  br label %20

20:                                               ; preds = %19, %18, %4, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asus_hides_smbus_lpc_ich6(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = load i1, ptr @asus_hides_smbus, align 4
  br i1 %3, label %5, label %4, !prof !15

4:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %34

5:                                                ; preds = %1
  %6 = load ptr, ptr @asus_rcba_base, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !16

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 1566, i32 noundef 9, ptr noundef null) #16
  br label %9

9:                                                ; preds = %8, %5
  %10 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 240, ptr noundef nonnull %2) #16
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, -16384
  %13 = call ptr @ioremap(i32 noundef %12, i32 noundef 16384) #16
  store ptr %13, ptr @asus_rcba_base, align 4
  %14 = load i1, ptr @asus_hides_smbus, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %15 = icmp eq ptr %13, null
  %16 = xor i1 %14, true
  %17 = select i1 %16, i1 true, i1 %15
  br i1 %17, label %26, label %18, !prof !16

18:                                               ; preds = %9
  %19 = getelementptr i8, ptr %13, i32 13336
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !18
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !19
  call void @arm_heavy_mb() #16
  %21 = and i32 %20, -9
  %22 = load ptr, ptr @asus_rcba_base, align 4
  %23 = getelementptr i8, ptr %22, i32 13336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #16, !srcloc !20
  %24 = load i1, ptr @asus_hides_smbus, align 4
  %25 = load ptr, ptr @asus_rcba_base, align 4
  br label %26

26:                                               ; preds = %18, %9
  %27 = phi ptr [ %13, %9 ], [ %25, %18 ]
  %28 = phi i1 [ %14, %9 ], [ %24, %18 ]
  %29 = icmp eq ptr %27, null
  %30 = xor i1 %28, true
  %31 = select i1 %30, i1 true, i1 %29
  br i1 %31, label %34, label %32, !prof !16

32:                                               ; preds = %26
  call void @iounmap(ptr noundef nonnull %27) #16
  store ptr null, ptr @asus_rcba_base, align 4
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.61) #17
  br label %34

34:                                               ; preds = %32, %26, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asus_hides_smbus_lpc_ich6_suspend(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = load i1, ptr @asus_hides_smbus, align 4
  br i1 %3, label %4, label %13, !prof !15

4:                                                ; preds = %1
  %5 = load ptr, ptr @asus_rcba_base, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !16

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 1566, i32 noundef 9, ptr noundef null) #16
  br label %8

8:                                                ; preds = %7, %4
  %9 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 240, ptr noundef nonnull %2) #16
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, -16384
  %12 = call ptr @ioremap(i32 noundef %11, i32 noundef 16384) #16
  store ptr %12, ptr @asus_rcba_base, align 4
  br label %13

13:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asus_hides_smbus_lpc_ich6_resume(ptr noundef %0) #0 {
  %2 = load i1, ptr @asus_hides_smbus, align 4
  %3 = load ptr, ptr @asus_rcba_base, align 4
  %4 = icmp eq ptr %3, null
  %5 = xor i1 %2, true
  %6 = select i1 %5, i1 true, i1 %4
  br i1 %6, label %9, label %7, !prof !16

7:                                                ; preds = %1
  tail call void @iounmap(ptr noundef nonnull %3) #16
  store ptr null, ptr @asus_rcba_base, align 4
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.61) #17
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asus_hides_smbus_lpc_ich6_resume_early(ptr nocapture noundef readnone %0) #0 {
  %2 = load i1, ptr @asus_hides_smbus, align 4
  %3 = load ptr, ptr @asus_rcba_base, align 4
  %4 = icmp eq ptr %3, null
  %5 = xor i1 %2, true
  %6 = select i1 %5, i1 true, i1 %4
  br i1 %6, label %13, label %7, !prof !16

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 13336
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !19
  tail call void @arm_heavy_mb() #16
  %10 = and i32 %9, -9
  %11 = load ptr, ptr @asus_rcba_base, align 4
  %12 = getelementptr i8, ptr %11, i32 13336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #16, !srcloc !20
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_sis_96x_smbus(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 119, ptr noundef nonnull %2) #16
  %4 = load i8, ptr %2, align 1
  %5 = and i8 %4, 16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.62) #17
  %9 = load i8, ptr %2, align 1
  %10 = and i8 %9, -17
  %11 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 119, i8 noundef zeroext %10) #16
  br label %12

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_sis_503(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 0, ptr %3, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 0, ptr %4, align 2, !annotation !9
  %5 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %3) #16
  %6 = load i8, ptr %3, align 1
  %7 = or i8 %6, 64
  %8 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 64, i8 noundef zeroext %7) #16
  %9 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #16
  %10 = load i16, ptr %4, align 2
  %11 = and i16 %10, -16
  %12 = icmp ne i16 %11, 2400
  %13 = icmp ne i16 %10, 24
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8, ptr %3, align 1
  %17 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 64, i8 noundef zeroext %16) #16
  br label %30

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  store i16 %10, ptr %19, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1
  %20 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 119, ptr noundef nonnull %2) #16
  %21 = load i8, ptr %2, align 1
  %22 = and i8 %21, 16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.62) #17
  %26 = load i8, ptr %2, align 1
  %27 = and i8 %26, -17
  %28 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 119, i8 noundef zeroext %27) #16
  br label %29

29:                                               ; preds = %24, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  br label %30

30:                                               ; preds = %29, %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asus_hides_ac97_lpc(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 4163
  br i1 %5, label %6, label %25, !prof !16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 12839
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 80, ptr noundef nonnull %2) #16
  %12 = load i8, ptr %2, align 1
  %13 = icmp ult i8 %12, 64
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = and i8 %12, 63
  %16 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 80, i8 noundef zeroext %15) #16
  %17 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 80, ptr noundef nonnull %2) #16
  %18 = load i8, ptr %2, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 192
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br i1 %21, label %24, label %23

23:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.63, i32 noundef %19) #17
  br label %25

24:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.64) #17
  br label %25

25:                                               ; preds = %24, %23, %10, %6, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_jmicron_ata(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !annotation !9
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %2) #16
  %12 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 128, ptr noundef nonnull %3) #16
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, -13628163
  store i32 %14, ptr %2, align 4
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, -16777217
  store i32 %16, ptr %3, align 4
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %18 = load i16, ptr %17, align 2
  switch i16 %18, label %27 [
    i16 9056, label %19
    i16 9058, label %19
    i16 9060, label %19
    i16 9061, label %21
    i16 9062, label %21
    i16 9057, label %23
    i16 9059, label %23
    i16 9065, label %23
    i16 9064, label %25
  ]

19:                                               ; preds = %10, %10, %10
  %20 = or i32 %14, 172288
  store i32 %20, ptr %2, align 4
  br label %27

21:                                               ; preds = %10, %10
  %22 = or i32 %15, 16777216
  store i32 %22, ptr %3, align 4
  br label %23

23:                                               ; preds = %21, %10, %10, %10
  %24 = or i32 %14, 12755379
  store i32 %24, ptr %2, align 4
  br label %27

25:                                               ; preds = %10
  %26 = or i32 %14, 12582912
  store i32 %26, ptr %2, align 4
  br label %27

27:                                               ; preds = %25, %23, %19, %10
  %28 = phi i32 [ %14, %10 ], [ %26, %25 ], [ %24, %23 ], [ %20, %19 ]
  %29 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 64, i32 noundef %28) #16
  %30 = load i32, ptr %3, align 4
  %31 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 128, i32 noundef %30) #16
  %32 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 14, ptr noundef nonnull %5) #16
  %33 = load i8, ptr %5, align 1
  %34 = and i8 %33, 127
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %37 = load i40, ptr %36, align 1
  %38 = lshr i8 %33, 3
  %39 = and i8 %38, 16
  %40 = zext i8 %39 to i40
  %41 = and i40 %37, -17
  %42 = or i40 %41, %40
  store i40 %42, ptr %36, align 1
  %43 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %4) #16
  %44 = load i32, ptr %4, align 4
  %45 = lshr i32 %44, 8
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  store i32 %45, ptr %46, align 8
  br label %47

47:                                               ; preds = %27, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_jmicron_async_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = and i40 %3, 16
  %5 = icmp eq i40 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 8
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = and i16 %9, -3
  store i16 %13, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.65) #17
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_pcie_mch(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = or i40 %3, 64
  store i40 %4, ptr %2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_huawei_pcie_sva(ptr noundef %0) #0 {
  %2 = alloca [2 x %struct.property_entry], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) @__const.quirk_huawei_pcie_sva.properties, i32 48, i1 false)
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 4
  switch i8 %4, label %17 [
    i8 33, label %5
    i8 48, label %5
  ]

5:                                                ; preds = %1, %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 41
  %7 = load i8, ptr %6, align 8
  %8 = or i8 %7, 1
  store i8 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = call i32 @device_create_managed_software_node(ptr noundef %9, ptr noundef nonnull %2, ptr noundef null) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.67) #17
  br label %17

17:                                               ; preds = %16, %13, %5, %1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_pcie_pxh(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = or i40 %3, 64
  store i40 %4, ptr %2, align 1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.68) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_intel_pcie_pm(ptr nocapture noundef %0) #6 {
  store i32 120, ptr @pci_pm_d3hot_delay, align 4
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 2
  %4 = or i32 %3, 256
  store i32 %4, ptr %2, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_radeon_pm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 4203
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 226
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 35
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 19
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  store i32 20, ptr %10, align 8
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.69, i32 noundef 20) #17
  br label %15

15:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_ryzen_xhci_d3hot(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 35
  %3 = load i32, ptr %2, align 8
  %4 = icmp ugt i32 %3, 19
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  store i32 20, ptr %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.69, i32 noundef 20) #17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_tc86c001_ide(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 536870912
  store i32 %9, ptr %7, align 4
  store i32 0, ptr %2, align 4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  store i32 15, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_plx_pci9050(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4
  %4 = icmp ugt i8 %3, 1
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0
  %8 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %7, align 8
  %13 = sub i32 %9, %12
  %14 = icmp ne i32 %13, 127
  %15 = and i32 %12, 128
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.70, i32 noundef 0) #17
  %19 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 536870912
  store i32 %21, ptr %19, align 4
  store i32 0, ptr %7, align 4
  store i32 255, ptr %8, align 4
  br label %22

22:                                               ; preds = %18, %11, %5
  %23 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %24 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %23, align 8
  %29 = sub i32 %25, %28
  %30 = icmp ne i32 %29, 127
  %31 = and i32 %28, 128
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %30, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.70, i32 noundef 1) #17
  %35 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 536870912
  store i32 %37, ptr %35, align 4
  store i32 0, ptr %23, align 4
  store i32 255, ptr %24, align 4
  br label %38

38:                                               ; preds = %34, %27, %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_netmos(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 2
  %4 = zext i16 %3 to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  %7 = and i32 %4, 15
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %9 = load i16, ptr %8, align 2
  switch i16 %9, label %27 [
    i16 -26571, label %10
    i16 -26827, label %18
    i16 -26811, label %18
    i16 -26555, label %18
    i16 -26539, label %18
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 4116
  %14 = icmp eq i16 %3, 665
  %15 = select i1 %13, i1 %14, i1 false
  %16 = icmp eq i32 %6, 0
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %27, label %20

18:                                               ; preds = %1, %1, %1, %1
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %18, %10
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %22 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.71, i32 noundef %22, i32 noundef %6, i32 noundef %7) #17
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 255
  %26 = or i32 %25, 491520
  store i32 %26, ptr %23, align 8
  br label %27

27:                                               ; preds = %20, %18, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_e100_interrupt(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  store i16 0, ptr %3, align 2, !annotation !9
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 2
  switch i16 %5, label %41 [
    i16 4137, label %6
    i16 4185, label %6
    i16 4617, label %6
    i16 4649, label %6
    i16 9289, label %6
    i16 9305, label %6
    i16 9309, label %6
    i16 10204, label %6
    i16 4241, label %6
    i16 4242, label %6
    i16 4243, label %6
    i16 4244, label %6
    i16 4245, label %6
    i16 4196, label %6
    i16 4197, label %6
    i16 4198, label %6
    i16 4199, label %6
    i16 4200, label %6
    i16 4201, label %6
    i16 4202, label %6
    i16 4203, label %6
    i16 4176, label %6
    i16 4177, label %6
    i16 4178, label %6
    i16 4179, label %6
    i16 4180, label %6
    i16 4181, label %6
    i16 4182, label %6
    i16 4183, label %6
    i16 4152, label %6
    i16 4153, label %6
    i16 4154, label %6
    i16 4155, label %6
    i16 4156, label %6
    i16 4157, label %6
    i16 4158, label %6
    i16 4144, label %6
    i16 4145, label %6
    i16 4146, label %6
    i16 4147, label %6
    i16 4148, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %7 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #16
  %8 = load i16, ptr %2, align 2
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = zext i8 %17 to i32
  %21 = add nuw nsw i32 %20, 4
  %22 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %3) #16
  %23 = load i16, ptr %3, align 2
  %24 = and i16 %23, 3
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load i32, ptr %12, align 8
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i32 [ %27, %26 ], [ %13, %15 ]
  %30 = call ptr @ioremap(i32 noundef %29, i32 noundef 8) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.72) #17
  br label %41

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %30, i32 3
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %35) #16, !srcloc !21
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !22
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.73) #17
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !23
  call void @arm_heavy_mb() #16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 1) #16, !srcloc !24
  br label %40

40:                                               ; preds = %38, %34
  call void @iounmap(ptr noundef nonnull %30) #16
  br label %41

41:                                               ; preds = %40, %32, %19, %11, %6, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_disable_aspm_l0s(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.74) #17
  %3 = tail call i32 @pci_disable_link_state(ptr noundef %0, i32 noundef 1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_disable_aspm_l0s_l1(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.75) #17
  %3 = tail call i32 @pci_disable_link_state(ptr noundef %0, i32 noundef 3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_enable_clear_retrain_link(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 2
  %4 = or i32 %3, 262144
  store i32 %4, ptr %2, align 2
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.76) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fixup_rev1_53c810(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  store i32 65536, ptr %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 65536) #17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_p64h2_1k_io(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !9
  %3 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %2) #16
  %4 = load i16, ptr %2, align 2
  %5 = and i16 %4, 512
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.78) #17
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %10 = load i40, ptr %9, align 1
  %11 = or i40 %10, 1073741824
  store i40 %11, ptr %9, align 1
  br label %12

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_nvidia_ck804_pcie_aer_ext_cap(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 3905, ptr noundef nonnull %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 1
  %7 = and i8 %6, 32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = or i8 %6, 32
  %11 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 3905, i8 noundef zeroext %10) #16
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.79) #17
  br label %13

13:                                               ; preds = %9, %5, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_via_cx700_pci_parking_caching(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @pci_get_device(i32 noundef 4358, i32 noundef 12548, ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %4 = tail call ptr @pci_get_device(i32 noundef 4358, i32 noundef 12548, ptr noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  tail call void @pci_dev_put(ptr noundef nonnull %4) #16
  %7 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 118, ptr noundef nonnull %2) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i8, ptr %2, align 1
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = xor i8 %10, 64
  %15 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 118, i8 noundef zeroext %14) #16
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.80) #17
  br label %17

17:                                               ; preds = %13, %9, %6
  %18 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 114, ptr noundef nonnull %2) #16
  %19 = icmp eq i32 %18, 0
  %20 = load i8, ptr %2, align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 114, i8 noundef zeroext 0) #16
  %25 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 117, i8 noundef zeroext 1) #16
  %26 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 119, i8 noundef zeroext 0) #16
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.81) #17
  br label %28

28:                                               ; preds = %23, %17, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_brcm_5719_limit_mrrs(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 244, ptr noundef nonnull %2) #16
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 91328512
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call i32 @pcie_get_readrq(ptr noundef %0) #16
  %8 = icmp sgt i32 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @pcie_set_readrq(ptr noundef %0, i32 noundef 2048) #16
  br label %11

11:                                               ; preds = %9, %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_unhide_mch_dev6(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 244, ptr noundef nonnull %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 1
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.82) #17
  %11 = load i8, ptr %2, align 1
  %12 = or i8 %11, 2
  %13 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 244, i8 noundef zeroext %12) #16
  br label %14

14:                                               ; preds = %9, %5, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_disable_all_msi(ptr noundef %0) #0 {
  tail call void @pci_no_msi() #16
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.83) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_disable_msi(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.84) #17
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 19
  %9 = load i16, ptr %8, align 2
  %10 = or i16 %9, 1
  store i16 %10, ptr %8, align 2
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_amd_780_apc_msi(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @pci_get_slot(ptr noundef %3, i32 noundef 8) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -27134
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.84) #17
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 19
  %18 = load i16, ptr %17, align 2
  %19 = or i16 %18, 1
  store i16 %19, ptr %17, align 2
  br label %20

20:                                               ; preds = %14, %10, %6
  tail call void @pci_dev_put(ptr noundef nonnull %4) #16
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_msi_ht_cap(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @msi_ht_cap_enabled(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.84) #17
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 19
  %12 = load i16, ptr %11, align 2
  %13 = or i16 %12, 1
  store i16 %13, ptr %11, align 2
  br label %14

14:                                               ; preds = %8, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_nvidia_ck804_msi_ht_cap(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @pci_get_slot(ptr noundef %3, i32 noundef 0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @msi_ht_cap_enabled(ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @msi_ht_cap_enabled(ptr noundef %0) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.84) #17
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.pci_bus, ptr %18, i32 0, i32 19
  %20 = load i16, ptr %19, align 2
  %21 = or i16 %20, 1
  store i16 %21, ptr %19, align 2
  br label %22

22:                                               ; preds = %16, %12, %9, %6
  tail call void @pci_dev_put(ptr noundef nonnull %4) #16
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ht_enable_msi_mapping(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = tail call zeroext i8 @pci_find_ht_capability(ptr noundef %0, i32 noundef 168) #16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br label %7

7:                                                ; preds = %21, %5
  %8 = phi i32 [ 48, %5 ], [ %10, %21 ]
  %9 = phi i8 [ %3, %5 ], [ %22, %21 ]
  %10 = add nsw i32 %8, -1
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = zext i8 %9 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %14 = add nuw nsw i32 %13, 2
  %15 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %2) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.88) #17
  %18 = load i8, ptr %2, align 1
  %19 = or i8 %18, 1
  %20 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %14, i8 noundef zeroext %19) #16
  br label %21

21:                                               ; preds = %17, %12
  %22 = call zeroext i8 @pci_find_next_ht_capability(ptr noundef %0, i8 noundef zeroext %9, i32 noundef 168) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %7

24:                                               ; preds = %21, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvenet_msi_disable(ptr noundef %0) #0 {
  %2 = tail call ptr @dmi_get_system_info(i32 noundef 14) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @strstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.89)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call ptr @strstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.90)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7, %4
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.91) #17
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %13 = load i40, ptr %12, align 1
  %14 = or i40 %13, 64
  store i40 %14, ptr %12, align 1
  br label %15

15:                                               ; preds = %10, %7, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @pci_quirk_nvidia_tegra_disable_rp_msi(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = or i40 %3, 64
  store i40 %4, ptr %2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvbridge_check_legacy_irq_routing(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 8) #16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 116, ptr noundef nonnull %2) #16
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, 32772
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #17
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %12, -32773
  store i32 %13, ptr %2, align 4
  %14 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 116, i32 noundef %13) #16
  br label %15

15:                                               ; preds = %10, %5, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_msi_ht_cap_quirk_all(ptr noundef %0) #0 {
  tail call fastcc void @__nv_msi_ht_cap_quirk(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_msi_ht_cap_quirk_leaf(ptr noundef %0) #0 {
  tail call fastcc void @__nv_msi_ht_cap_quirk(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_msi_intx_disable_bug(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %3 = load i16, ptr %2, align 2
  %4 = or i16 %3, 1
  store i16 %4, ptr %2, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_msi_intx_disable_ati_bug(ptr nocapture noundef %0) #0 {
  %2 = tail call ptr @pci_get_device(i32 noundef 4098, i32 noundef 17285, ptr noundef null) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 12
  %6 = load i8, ptr %5, align 4
  %7 = add i8 %6, -48
  %8 = icmp ult i8 %7, 11
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %11 = load i16, ptr %10, align 2
  %12 = or i16 %11, 1
  store i16 %12, ptr %10, align 2
  br label %13

13:                                               ; preds = %9, %4
  tail call void @pci_dev_put(ptr noundef nonnull %2) #16
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_msi_intx_disable_qca_bug(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4
  %4 = icmp ult i8 %3, 24
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.95) #17
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %8 = load i16, ptr %7, align 2
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 2
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_al_msi_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = or i40 %3, 64
  store i40 %4, ptr %2, align 1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.96) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_hotplug_bridge(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = or i40 %3, 16777216
  store i40 %4, ptr %2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fixup_ti816x_class(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  store i32 262144, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.97, i32 noundef %3, i32 noundef 262144) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fixup_mpss_256(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -8
  %5 = or i8 %4, 1
  store i8 %5, ptr %2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_intel_mc_errata(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !9
  %3 = load i32, ptr @pcie_bus_config, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 72, ptr noundef nonnull %2) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.98) #17
  br label %24

10:                                               ; preds = %5
  %11 = load i16, ptr %2, align 2
  %12 = and i16 %11, 1024
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = and i16 %11, -1025
  store i16 %15, ptr %2, align 2
  %16 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 72, i16 noundef zeroext %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.99) #17
  br label %24

20:                                               ; preds = %14
  %21 = load i1, ptr @quirk_intel_mc_errata.__already_done, align 1
  br i1 %21, label %24, label %22, !prof !16

22:                                               ; preds = %20
  store i1 true, ptr @quirk_intel_mc_errata.__already_done, align 1
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #17
  br label %24

24:                                               ; preds = %22, %20, %18, %10, %8, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_intel_ntb(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 208, ptr noundef nonnull %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = trunc i64 %10 to i32
  %12 = add i32 %7, -1
  %13 = add i32 %12, %11
  %14 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 1
  store i32 %13, ptr %14, align 4
  %15 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 209, ptr noundef nonnull %2) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %5
  %18 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = load i8, ptr %2, align 1
  %21 = zext i8 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = trunc i64 %22 to i32
  %24 = add i32 %19, -1
  %25 = add i32 %24, %23
  %26 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 1
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %17, %5, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @disable_igfx_irq(ptr noundef %0) #0 {
  %2 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.101) #17
  br label %13

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %2, i32 278540
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.102) #17
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !26
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #16, !srcloc !20
  br label %12

12:                                               ; preds = %10, %6
  tail call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %2) #16
  br label %13

13:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @quirk_remove_d3hot_delay(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 35
  store i32 0, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_broken_intx_masking(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = or i40 %3, 536870912
  store i40 %4, ptr %2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mellanox_check_broken_intx_masking(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 2
  switch i16 %3, label %41 [
    i16 25408, label %4
    i16 25418, label %4
    i16 25428, label %4
    i16 26418, label %4
    i16 26428, label %4
    i16 25448, label %4
    i16 26448, label %4
    i16 25458, label %4
    i16 26458, label %4
    i16 26468, label %4
    i16 26438, label %4
    i16 26478, label %4
    i16 4099, label %4
    i16 4103, label %4
    i16 4117, label %8
    i16 4115, label %8
  ]

4:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %6 = load i40, ptr %5, align 1
  %7 = or i40 %6, 536870912
  store i40 %7, ptr %5, align 1
  br label %41

8:                                                ; preds = %1, %1
  %9 = tail call i32 @pci_enable_device_mem(ptr noundef %0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.103) #17
  br label %41

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %15 = load i32, ptr %14, align 8
  %16 = tail call ptr @ioremap(i32 noundef %15, i32 noundef 4) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.104) #17
  br label %40

20:                                               ; preds = %13
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #16, !srcloc !17
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !27
  %23 = getelementptr i32, ptr %16, i32 1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !28
  %25 = add i32 %22, -6553600
  %26 = icmp ult i32 %25, -5636096
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = lshr i32 %22, 16
  %29 = and i32 %24, -65536
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %32 = and i32 %22, 65535
  %33 = load i16, ptr %2, align 2
  %34 = icmp eq i16 %33, 4115
  %35 = select i1 %34, i32 12, i32 14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.105, i32 noundef %32, i32 noundef %28, i32 noundef %30, i32 noundef %35) #17
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %37 = load i40, ptr %36, align 1
  %38 = or i40 %37, 536870912
  store i40 %38, ptr %36, align 1
  br label %39

39:                                               ; preds = %27, %20
  tail call void @iounmap(ptr noundef nonnull %16) #16
  br label %40

40:                                               ; preds = %39, %18
  tail call void @pci_disable_device(ptr noundef %0) #16
  br label %41

41:                                               ; preds = %40, %11, %4, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_nvidia_no_bus_reset(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, -64
  %5 = icmp eq i16 %4, 9024
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %8 = load i16, ptr %7, align 2
  %9 = or i16 %8, 64
  store i16 %9, ptr %7, align 2
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_no_bus_reset(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %3 = load i16, ptr %2, align 2
  %4 = or i16 %3, 64
  store i16 %4, ptr %2, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_no_pm_reset(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %9 = load i16, ptr %8, align 2
  %10 = or i16 %9, 128
  store i16 %10, ptr %8, align 2
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_thunderbolt_hotplug_msi(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = and i40 %3, 16777216
  %5 = icmp eq i40 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 5447
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %12 = load i8, ptr %11, align 4
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %6
  %15 = or i40 %3, 64
  store i40 %15, ptr %2, align 1
  br label %16

16:                                               ; preds = %14, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_dev_specific_reset(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %4 = load i16, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  switch i16 %4, label %30 [
    i16 -32634, label %6
    i16 5197, label %18
    i16 5157, label %9
    i16 6629, label %27
  ]

6:                                                ; preds = %2
  %7 = load i16, ptr %5, align 2
  %8 = icmp eq i16 %7, 4333
  br i1 %8, label %9, label %12

9:                                                ; preds = %27, %24, %21, %18, %15, %12, %6, %2
  %10 = phi ptr [ @reset_intel_82599_sfp_virtfn, %6 ], [ @reset_ivb_igd, %12 ], [ @reset_ivb_igd, %15 ], [ @nvme_disable_and_flr, %18 ], [ @delay_250ms_after_flr, %21 ], [ @delay_250ms_after_flr, %24 ], [ @reset_hinic_vf_dev, %27 ], [ @reset_chelsio_generic_dev, %2 ]
  %11 = tail call i32 %10(ptr noundef %0, i1 noundef zeroext %1) #16
  br label %30

12:                                               ; preds = %6
  %13 = load i16, ptr %5, align 2
  %14 = icmp eq i16 %13, 342
  br i1 %14, label %9, label %15

15:                                               ; preds = %12
  %16 = load i16, ptr %5, align 2
  %17 = icmp eq i16 %16, 358
  br i1 %17, label %9, label %21

18:                                               ; preds = %2
  %19 = load i16, ptr %5, align 2
  %20 = icmp eq i16 %19, -22524
  br i1 %20, label %9, label %30

21:                                               ; preds = %15
  %22 = load i16, ptr %5, align 2
  %23 = icmp eq i16 %22, 2387
  br i1 %23, label %9, label %24

24:                                               ; preds = %21
  %25 = load i16, ptr %5, align 2
  %26 = icmp eq i16 %25, 2644
  br i1 %26, label %9, label %30

27:                                               ; preds = %2
  %28 = load i16, ptr %5, align 2
  %29 = icmp eq i16 %28, 14174
  br i1 %29, label %9, label %30

30:                                               ; preds = %27, %24, %18, %9, %2
  %31 = phi i32 [ %11, %9 ], [ -25, %27 ], [ -25, %24 ], [ -25, %18 ], [ -25, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_dma_func0_alias(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = trunc i32 %3 to i8
  %8 = and i8 %7, -8
  tail call void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext %8, i32 noundef 1) #16
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_dma_func1_alias(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 7
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = trunc i32 %3 to i8
  %8 = and i8 %7, -8
  %9 = or i8 %8, 1
  tail call void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext %9, i32 noundef 1) #16
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_fixed_dma_alias(ptr noundef %0) #0 {
  %2 = tail call ptr @pci_match_id(ptr noundef nonnull @fixed_dma_alias_tbl, ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_device_id, ptr %2, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  tail call void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext %7, i32 noundef 1) #16
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_use_pcie_bridge_dma_alias(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 24
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, 240
  %25 = icmp eq i16 %24, 112
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %28 = load i16, ptr %27, align 2
  %29 = or i16 %28, 32
  store i16 %29, ptr %27, align 2
  br label %30

30:                                               ; preds = %26, %21, %15, %11, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_mic_x200_dma_alias(ptr noundef %0) #0 {
  tail call void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext -128, i32 noundef 1) #16
  tail call void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext -120, i32 noundef 1) #16
  tail call void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext -109, i32 noundef 1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_pex_vca_alias(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %4 = trunc i32 %3 to i8
  %5 = shl nuw i8 %4, 3
  tail call void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext %5, i32 noundef 5) #16
  %6 = add nuw nsw i32 %3, 1
  %7 = icmp eq i32 %6, 32
  br i1 %7, label %8, label %2

8:                                                ; preds = %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_bridge_cavm_thrx2_pcie_root(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %3 = load i16, ptr %2, align 2
  %4 = or i16 %3, 512
  store i16 %4, ptr %2, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_tw686x_class(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  store i32 294913, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.109, i32 noundef %3, i32 noundef 294913) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_relaxedordering_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %3 = load i16, ptr %2, align 2
  %4 = or i16 %3, 2048
  store i16 %4, ptr %2, align 2
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.110) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_chelsio_T5_disable_root_port_attributes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, -256
  %5 = icmp eq i16 %4, 21504
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %24, %6
  %9 = phi ptr [ %26, %24 ], [ %0, %6 ]
  %10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 18
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 24
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 240
  %17 = icmp eq i16 %16, 64
  br i1 %17, label %30, label %18

18:                                               ; preds = %13, %8
  %19 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %8

28:                                               ; preds = %24, %18, %6
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.111) #17
  br label %41

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %37, %35 ], [ %33, %30 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.112, ptr noundef %39) #17
  %40 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef nonnull %9, i32 noundef 8, i16 noundef zeroext 2064, i16 noundef zeroext 0) #16
  br label %41

41:                                               ; preds = %38, %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_dev_specific_acs_enabled(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  br label %5

5:                                                ; preds = %23, %2
  %6 = phi ptr [ @pci_quirk_amd_sb_acs, %2 ], [ %26, %23 ]
  %7 = phi ptr [ @pci_dev_acs_enabled, %2 ], [ %24, %23 ]
  %8 = load i16, ptr %7, align 4
  %9 = load i16, ptr %3, align 8
  %10 = icmp eq i16 %8, %9
  %11 = icmp eq i16 %8, -1
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %23

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.pci_dev_acs_enabled, ptr %7, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = load i16, ptr %4, align 2
  %17 = icmp eq i16 %15, %16
  %18 = icmp eq i16 %15, -1
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = tail call i32 %6(ptr noundef %0, i16 noundef zeroext %1) #16
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %28, label %23

23:                                               ; preds = %20, %13, %5
  %24 = getelementptr %struct.pci_dev_acs_enabled, ptr %7, i32 1
  %25 = getelementptr %struct.pci_dev_acs_enabled, ptr %7, i32 1, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %5

28:                                               ; preds = %23, %20
  %29 = phi i32 [ %21, %20 ], [ -25, %23 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_dev_specific_enable_acs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 8
  %4 = icmp eq i16 %3, -32634
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @pci_quirk_enable_intel_pch_acs(ptr noundef %0) #16
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load i16, ptr %2, align 8
  %10 = icmp eq i16 %9, -32634
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @pci_quirk_enable_intel_spt_pch_acs(ptr noundef %0) #16
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %8, %1
  br label %15

15:                                               ; preds = %14, %11, %5
  %16 = phi i32 [ %6, %5 ], [ %12, %11 ], [ -25, %14 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_dev_specific_disable_acs_redir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 8
  %4 = icmp eq i16 %3, -32634
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @pci_quirk_disable_intel_spt_pch_acs_redir(ptr noundef %0) #16
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %1
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ %6, %5 ], [ -25, %8 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_intel_qat_vf_cap(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  store i16 0, ptr %3, align 2, !annotation !9
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %76

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 16) #16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %76

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 5) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %76, label %14

14:                                               ; preds = %11
  %15 = zext i8 %12 to i32
  %16 = add nuw nsw i32 %15, 1
  %17 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %2) #16
  %18 = load i8, ptr %2, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %14
  %21 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 80, ptr noundef nonnull %3) #16
  %22 = load i16, ptr %3, align 2
  %23 = icmp eq i16 %22, 16
  br i1 %23, label %24, label %76

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  store i8 80, ptr %5, align 4
  %25 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 82, ptr noundef nonnull %3) #16
  %26 = load i16, ptr %3, align 2
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  store i16 %26, ptr %27, align 2
  %28 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 84, ptr noundef nonnull %3) #16
  %29 = load i16, ptr %3, align 2
  %30 = trunc i16 %29 to i8
  %31 = and i8 %30, 7
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, -8
  %35 = or i8 %34, %31
  store i8 %35, ptr %32, align 1
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  store i32 4096, ptr %36, align 8
  %37 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %4) #16
  %38 = icmp ne i32 %37, 0
  %39 = load i32, ptr %4, align 4
  %40 = icmp eq i32 %39, -1
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  store i32 256, ptr %36, align 8
  br label %43

43:                                               ; preds = %42, %24
  %44 = call ptr @pci_find_saved_cap(ptr noundef %0, i8 noundef zeroext 16) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %75

46:                                               ; preds = %43
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %48 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 30) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %75, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %48, i32 0, i32 1
  store i16 16, ptr %51, align 8
  %52 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %48, i32 0, i32 1, i32 1
  store i8 0, ptr %52, align 2
  %53 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %48, i32 0, i32 1, i32 2
  store i32 14, ptr %53, align 4
  %54 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %48, i32 1
  %55 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 8, ptr noundef %54) #16
  %56 = getelementptr i16, ptr %54, i32 1
  %57 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 16, ptr noundef %56) #16
  %58 = getelementptr %struct.pci_cap_saved_state, ptr %48, i32 1, i32 0, i32 1
  %59 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 24, ptr noundef %58) #16
  %60 = getelementptr i16, ptr %54, i32 3
  %61 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 28, ptr noundef %60) #16
  %62 = getelementptr %struct.pci_cap_saved_state, ptr %48, i32 1, i32 1
  %63 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 40, ptr noundef %62) #16
  %64 = getelementptr %struct.pci_cap_saved_state, ptr %48, i32 1, i32 1, i32 1
  %65 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 48, ptr noundef %64) #16
  %66 = getelementptr %struct.pci_cap_saved_state, ptr %48, i32 1, i32 1, i32 2
  %67 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 56, ptr noundef %66) #16
  %68 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %69 = load ptr, ptr %68, align 4
  store volatile ptr %69, ptr %48, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.hlist_node, ptr %69, i32 0, i32 1
  store volatile ptr %48, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %50
  store volatile ptr %48, ptr %68, align 4
  %74 = getelementptr inbounds %struct.hlist_node, ptr %48, i32 0, i32 1
  store volatile ptr %68, ptr %74, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %76

75:                                               ; preds = %46, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %76

76:                                               ; preds = %75, %73, %20, %14, %11, %8, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_no_flr(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %3 = load i16, ptr %2, align 2
  %4 = or i16 %3, 1024
  store i16 %4, ptr %2, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_no_ext_tags(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @pci_find_host_bridge(ptr noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 13
  %8 = load i16, ptr %7, align 16
  %9 = or i16 %8, 2
  store i16 %9, ptr %7, align 16
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.119) #17
  %11 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  tail call void @pci_walk_bus(ptr noundef %12, ptr noundef nonnull @pci_configure_extended_tags, ptr noundef null) #16
  br label %13

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @quirk_fsl_no_msi(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, 240
  %5 = icmp eq i16 %4, 64
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %8 = load i40, ptr %7, align 1
  %9 = or i40 %8, 64
  store i40 %9, ptr %7, align 1
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_gpu_hda(ptr noundef %0) #0 {
  tail call fastcc void @pci_create_device_link(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_gpu_usb(ptr noundef %0) #0 {
  tail call fastcc void @pci_create_device_link(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_gpu_usb_typec_ucsi(ptr noundef %0) #0 {
  tail call fastcc void @pci_create_device_link(ptr noundef %0, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_nvidia_hda(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 2
  %6 = icmp ult i16 %5, 2208
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 1160, ptr noundef nonnull %3) #16
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 33554432
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.122) #17
  %14 = load i32, ptr %3, align 4
  %15 = or i32 %14, 33554432
  %16 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 1160, i32 noundef %15) #16
  %17 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 14, ptr noundef nonnull %2) #16
  %18 = load i8, ptr %2, align 1
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %20 = load i40, ptr %19, align 1
  %21 = lshr i8 %18, 3
  %22 = and i8 %21, 16
  %23 = zext i8 %22 to i40
  %24 = and i40 %20, -17
  %25 = or i40 %24, %23
  store i40 %25, ptr %19, align 1
  br label %26

26:                                               ; preds = %12, %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_idt_bus_quirk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  store i16 0, ptr %5, align 2
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 60
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = icmp eq i16 %9, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = add nuw nsw i32 %10, 6
  %14 = call i32 @pci_read_config_word(ptr noundef %7, i32 noundef %13, ptr noundef nonnull %5) #16
  %15 = load i16, ptr %5, align 2
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = and i16 %15, -2
  %20 = call i32 @pci_write_config_word(ptr noundef %7, i32 noundef %13, i16 noundef zeroext %19) #16
  br label %21

21:                                               ; preds = %18, %12, %4
  %22 = call zeroext i1 @pci_bus_generic_read_dev_vendor_id(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #16
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 @pci_bus_write_config_word(ptr noundef %0, i32 noundef %1, i32 noundef 0, i16 noundef zeroext 0) #16
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i16, ptr %5, align 2
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = add nuw nsw i32 %10, 6
  %31 = call i32 @pci_write_config_word(ptr noundef %7, i32 noundef %30, i16 noundef zeroext %26) #16
  br label %32

32:                                               ; preds = %29, %25
  %33 = zext i1 %22 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_bus_generic_read_dev_vendor_id(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_write_config_word(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_switchtec_ntb_dma_alias(ptr noundef %0) #0 {
  %2 = tail call i32 @pci_enable_device(ptr noundef %0) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.123) #17
  br label %58

6:                                                ; preds = %1
  %7 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  tail call void @pci_disable_device(ptr noundef %0) #16
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.124) #17
  br label %58

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.125) #17
  %13 = getelementptr i8, ptr %7, i32 81920
  %14 = getelementptr i8, ptr %7, i32 65537
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #16, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !29
  %16 = getelementptr i8, ptr %7, i32 65540
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !30
  %18 = zext i32 %17 to i64
  %19 = getelementptr i8, ptr %7, i32 65572
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !30
  %21 = zext i32 %20 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %18
  %24 = zext i8 %15 to i64
  %25 = shl nuw i64 1, %24
  %26 = xor i64 %25, -1
  %27 = and i64 %23, %26
  br label %28

28:                                               ; preds = %54, %11
  %29 = phi i32 [ 0, %11 ], [ %55, %54 ]
  %30 = zext i32 %29 to i64
  %31 = shl nuw i64 1, %30
  %32 = and i64 %27, %31
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %28
  %35 = getelementptr %struct.ntb_ctrl_regs, ptr %13, i32 %29
  %36 = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %35, i32 0, i32 8
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #16, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !31
  %38 = zext i16 %37 to i32
  %39 = icmp eq i16 %37, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.126, i32 noundef %29) #17
  br label %54

41:                                               ; preds = %34
  %42 = icmp ugt i16 %37, 512
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %35, i32 0, i32 15
  br label %46

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.127, i32 noundef %29, i32 noundef %38) #17
  br label %54

46:                                               ; preds = %46, %43
  %47 = phi i32 [ 0, %43 ], [ %52, %46 ]
  %48 = getelementptr [512 x i32], ptr %44, i32 0, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !30
  %50 = lshr i32 %49, 1
  %51 = trunc i32 %50 to i8
  tail call void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext %51, i32 noundef 1) #16
  %52 = add nuw nsw i32 %47, 1
  %53 = icmp eq i32 %52, %38
  br i1 %53, label %54, label %46

54:                                               ; preds = %46, %45, %40, %28
  %55 = add nuw nsw i32 %29, 1
  %56 = icmp eq i32 %55, 64
  br i1 %56, label %57, label %28

57:                                               ; preds = %54
  tail call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %7) #16
  tail call void @pci_disable_device(ptr noundef %0) #16
  br label %58

58:                                               ; preds = %57, %9, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_plx_ntb_dma_alias(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.128) #17
  tail call void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 256) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_reset_lenovo_thinkpad_p50_nvgpu(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 6058
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 8750
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = tail call zeroext i1 @pci_reset_supported(ptr noundef %0) #16
  br i1 %10, label %11, label %31

11:                                               ; preds = %9
  %12 = tail call i32 @pci_enable_device_mem(ptr noundef %0) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 143360) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.129) #17
  br label %30

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %15, i32 140300
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !30
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.130) #17
  %26 = tail call i32 @pci_reset_bus(ptr noundef %0) #16
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.131, i32 noundef %26) #17
  br label %29

29:                                               ; preds = %28, %24, %19
  tail call void @iounmap(ptr noundef nonnull %15) #16
  br label %30

30:                                               ; preds = %29, %17
  tail call void @pci_disable_device(ptr noundef %0) #16
  br label %31

31:                                               ; preds = %30, %11, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_fixup_no_d0_pme(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.132) #17
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %4 = load i32, ptr %3, align 2
  %5 = and i32 %4, -2
  store i32 %5, ptr %3, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_fixup_no_msi_no_pme(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.133) #17
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = or i40 %4, 64
  store i40 %5, ptr %3, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.134) #17
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 2
  %8 = and i32 %7, -32
  store i32 %8, ptr %6, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @apex_pci_fixup_class(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  %4 = or i32 %3, 557056
  store i32 %4, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_fixup_pericom_acs_store_forward(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !9
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 240
  %6 = icmp eq i16 %5, 96
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60
  %9 = load i16, ptr %8, align 8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = zext i16 %9 to i32
  %13 = add nuw nsw i32 %12, 6
  %14 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %13, ptr noundef nonnull %2) #16
  %15 = load i16, ptr %2, align 2
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = call i32 @pci_read_config_word(ptr noundef nonnull %26, i32 noundef 116, ptr noundef nonnull %2) #16
  %30 = load i16, ptr %2, align 2
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.135) #17
  %35 = load i16, ptr %2, align 2
  %36 = or i16 %35, 1
  %37 = call i32 @pci_write_config_word(ptr noundef nonnull %26, i32 noundef 116, i16 noundef zeroext %36) #16
  br label %38

38:                                               ; preds = %33, %28, %24, %18, %11, %7, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @nvidia_ion_ahci_fixup(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %3 = load i16, ptr %2, align 2
  %4 = or i16 %3, 4096
  store i16 %4, ptr %2, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rom_bar_overlap_defect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.136) #17
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = or i40 %4, 137438953472
  store i40 %5, ptr %3, align 1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @quirk_io_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca i16, align 2
  %7 = alloca %struct.pci_bus_region, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #16
  store i16 0, ptr %6, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %9 = getelementptr %struct.resource, ptr %8, i32 %3
  %10 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #16
  %11 = load i16, ptr %6, align 2
  %12 = trunc i32 %2 to i16
  %13 = sub i16 0, %12
  %14 = and i16 %11, %13
  store i16 %14, ptr %6, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %18, %16 ]
  %25 = getelementptr %struct.resource, ptr %8, i32 %3, i32 2
  store ptr %24, ptr %25, align 4
  %26 = getelementptr %struct.resource, ptr %8, i32 %3, i32 3
  store i32 256, ptr %26, align 4
  %27 = zext i16 %14 to i32
  store i32 %27, ptr %7, align 8
  %28 = add i32 %2, -1
  %29 = add i32 %28, %27
  %30 = getelementptr inbounds %struct.pci_bus_region, ptr %7, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  call void @pcibios_bus_to_resource(ptr noundef %32, ptr noundef %9, ptr noundef nonnull %7) #16
  %33 = call i32 @pci_claim_resource(ptr noundef %0, i32 noundef %3) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.21, ptr noundef %9, ptr noundef %4) #17
  br label %37

37:                                               ; preds = %35, %23, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_claim_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_managed_software_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_link_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_no_msi() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msi_ht_cap_enabled(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = tail call zeroext i8 @pci_find_ht_capability(ptr noundef %0, i32 noundef 168) #16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %24, %1
  %6 = phi i32 [ %8, %24 ], [ 48, %1 ]
  %7 = phi i8 [ %25, %24 ], [ %3, %1 ]
  %8 = add nsw i32 %6, -1
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %5
  %11 = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !annotation !9
  %12 = add nuw nsw i32 %11, 2
  %13 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %2) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %17 = load i8, ptr %2, align 1
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, ptr @.str.87, ptr @.str.86
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.85, ptr noundef nonnull %20) #17
  %21 = load i8, ptr %2, align 1
  %22 = and i8 %21, 1
  %23 = zext i8 %22 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  br label %27

24:                                               ; preds = %10
  %25 = call zeroext i8 @pci_find_next_ht_capability(ptr noundef %0, i8 noundef zeroext %7, i32 noundef 168) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %5

27:                                               ; preds = %24, %15, %5, %1
  %28 = phi i32 [ %23, %15 ], [ 0, %1 ], [ 0, %5 ], [ 0, %24 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_ht_capability(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_next_ht_capability(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_get_system_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__nv_msi_ht_cap_quirk(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = tail call i32 @pci_msi_enabled() #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %157, label %10

10:                                               ; preds = %2
  %11 = tail call zeroext i8 @pci_find_ht_capability(ptr noundef %0, i32 noundef 168) #16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %157, label %13

13:                                               ; preds = %25, %10
  %14 = phi i32 [ %28, %25 ], [ 47, %10 ]
  %15 = phi i8 [ %26, %25 ], [ %11, %10 ]
  %16 = zext i8 %15 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  store i8 0, ptr %7, align 1, !annotation !9
  %17 = add nuw nsw i32 %16, 2
  %18 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %7) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i8, ptr %7, align 1
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %31

25:                                               ; preds = %20, %13
  %26 = call zeroext i8 @pci_find_next_ht_capability(ptr noundef %0, i8 noundef zeroext %15, i32 noundef 168) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  %27 = icmp eq i8 %26, 0
  %28 = add nsw i32 %14, -1
  %29 = icmp eq i32 %14, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %13

31:                                               ; preds = %25, %24
  %32 = phi i1 [ false, %24 ], [ true, %25 ]
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.pci_bus, ptr %34, i32 0, i32 16
  %36 = load i32, ptr %35, align 8
  %37 = call ptr @pci_get_domain_bus_and_slot(i32 noundef %36, i32 noundef 0, i32 noundef 0) #16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.93) #17
  br label %157

41:                                               ; preds = %31
  %42 = call zeroext i8 @pci_find_ht_capability(ptr noundef nonnull %37, i32 noundef 0) #16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %133, label %44

44:                                               ; preds = %41
  br i1 %32, label %45, label %156

45:                                               ; preds = %44
  %46 = icmp eq i32 %1, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  call void @ht_enable_msi_mapping(ptr noundef %0)
  br label %156

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 3
  br label %52

52:                                               ; preds = %63, %48
  %53 = phi i32 [ %51, %48 ], [ %64, %63 ]
  %54 = load ptr, ptr %33, align 8
  %55 = shl i32 %53, 3
  %56 = and i32 %55, 248
  %57 = call ptr @pci_get_slot(ptr noundef %54, i32 noundef %56) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %52
  %60 = call zeroext i8 @pci_find_ht_capability(ptr noundef nonnull %57, i32 noundef 0) #16
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  call void @pci_dev_put(ptr noundef nonnull %57) #16
  br label %63

63:                                               ; preds = %62, %52
  %64 = add nsw i32 %53, -1
  %65 = icmp sgt i32 %53, 0
  br i1 %65, label %52, label %156

66:                                               ; preds = %59
  %67 = icmp eq ptr %57, %0
  br i1 %67, label %68, label %128

68:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  store i16 0, ptr %5, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #16
  store i16 0, ptr %6, align 2, !annotation !9
  %69 = call zeroext i8 @pci_find_ht_capability(ptr noundef nonnull %0, i32 noundef 0) #16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  br label %128

72:                                               ; preds = %68
  %73 = zext i8 %69 to i32
  %74 = add nuw nsw i32 %73, 2
  %75 = call i32 @pci_read_config_word(ptr noundef nonnull %0, i32 noundef %74, ptr noundef nonnull %5) #16
  %76 = load i16, ptr %5, align 2
  %77 = and i16 %76, 1024
  %78 = icmp eq i16 %77, 0
  %79 = select i1 %78, i32 8, i32 4
  %80 = add nuw nsw i32 %79, %73
  %81 = call i32 @pci_read_config_word(ptr noundef nonnull %0, i32 noundef %80, ptr noundef nonnull %6) #16
  %82 = load i16, ptr %6, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  %83 = and i16 %82, 64
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %128, label %85

85:                                               ; preds = %72
  %86 = load i32, ptr %49, align 4
  %87 = icmp ult i32 %86, 248
  br i1 %87, label %88, label %128

88:                                               ; preds = %85
  %89 = lshr i32 %86, 3
  %90 = call i32 @llvm.umax.i32(i32 %89, i32 30) #16
  br label %91

91:                                               ; preds = %124, %88
  %92 = phi i32 [ %89, %88 ], [ %93, %124 ]
  %93 = add nuw nsw i32 %92, 1
  %94 = load ptr, ptr %33, align 8
  %95 = shl i32 %93, 3
  %96 = and i32 %95, 248
  %97 = call ptr @pci_get_slot(ptr noundef %94, i32 noundef %96) #16
  %98 = icmp eq ptr %97, null
  br i1 %98, label %124, label %99

99:                                               ; preds = %91
  %100 = call zeroext i8 @pci_find_ht_capability(ptr noundef nonnull %97, i32 noundef 0) #16
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  %103 = call zeroext i8 @pci_find_ht_capability(ptr noundef nonnull %97, i32 noundef 168) #16
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %117, %102
  %106 = phi i32 [ %120, %117 ], [ 47, %102 ]
  %107 = phi i8 [ %118, %117 ], [ %103, %102 ]
  %108 = zext i8 %107 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1, !annotation !9
  %109 = add nuw nsw i32 %108, 2
  %110 = call i32 @pci_read_config_byte(ptr noundef nonnull %97, i32 noundef %109, ptr noundef nonnull %4) #16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i8, ptr %4, align 1
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br label %126

117:                                              ; preds = %112, %105
  %118 = call zeroext i8 @pci_find_next_ht_capability(ptr noundef nonnull %97, i8 noundef zeroext %107, i32 noundef 168) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  %119 = icmp eq i8 %118, 0
  %120 = add nsw i32 %106, -1
  %121 = icmp eq i32 %106, 0
  %122 = select i1 %119, i1 true, i1 %121
  br i1 %122, label %126, label %105

123:                                              ; preds = %102
  call void @pci_dev_put(ptr noundef nonnull %97) #16
  br label %124

124:                                              ; preds = %123, %91
  %125 = icmp eq i32 %92, %90
  br i1 %125, label %128, label %91

126:                                              ; preds = %117, %116
  call void @pci_dev_put(ptr noundef nonnull %97) #16
  br label %132

127:                                              ; preds = %99
  call void @pci_dev_put(ptr noundef nonnull %97) #16
  br label %128

128:                                              ; preds = %127, %124, %85, %72, %71, %66
  %129 = call fastcc i32 @msi_ht_cap_enabled(ptr noundef nonnull %57) #16
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void @ht_enable_msi_mapping(ptr noundef %0) #16
  br label %132

132:                                              ; preds = %131, %128, %126
  call void @pci_dev_put(ptr noundef nonnull %57) #16
  br label %156

133:                                              ; preds = %41
  br i1 %32, label %156, label %134

134:                                              ; preds = %133
  %135 = call zeroext i8 @pci_find_ht_capability(ptr noundef %0, i32 noundef 168) #16
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br label %139

139:                                              ; preds = %153, %137
  %140 = phi i32 [ 48, %137 ], [ %142, %153 ]
  %141 = phi i8 [ %135, %137 ], [ %154, %153 ]
  %142 = add nsw i32 %140, -1
  %143 = icmp eq i32 %140, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %139
  %145 = zext i8 %141 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 0, ptr %3, align 1, !annotation !9
  %146 = add nuw nsw i32 %145, 2
  %147 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef %146, ptr noundef nonnull %3) #16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %138, ptr noundef nonnull @.str.94) #17
  %150 = load i8, ptr %3, align 1
  %151 = and i8 %150, -2
  %152 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %146, i8 noundef zeroext %151) #16
  br label %153

153:                                              ; preds = %149, %144
  %154 = call zeroext i8 @pci_find_next_ht_capability(ptr noundef %0, i8 noundef zeroext %141, i32 noundef 168) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %139

156:                                              ; preds = %153, %139, %134, %133, %132, %63, %47, %44
  call void @pci_dev_put(ptr noundef nonnull %37) #16
  br label %157

157:                                              ; preds = %156, %39, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_intel_82599_sfp_virtfn(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  br i1 %1, label %5, label %3

3:                                                ; preds = %2
  %4 = tail call i32 @pcie_flr(ptr noundef %0) #16
  br label %5

5:                                                ; preds = %3, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_ivb_igd(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  br i1 %1, label %27, label %3

3:                                                ; preds = %2
  %4 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 282640
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !32
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 2) #16, !srcloc !20
  %8 = getelementptr i8, ptr %4, i32 794628
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !32
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 5) #16, !srcloc !20
  %9 = getelementptr i8, ptr %4, i32 815620
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !30
  %11 = and i32 %10, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !32
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #16, !srcloc !20
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr i8, ptr %4, i32 815616
  %14 = sub i32 -1000, %12
  br label %15

15:                                               ; preds = %19, %6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !30
  %17 = and i32 %16, -1342177280
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  tail call void @msleep(i32 noundef 10) #16
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = add i32 %14, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %15, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.106) #17
  br label %25

25:                                               ; preds = %23, %15
  %26 = getelementptr i8, ptr %4, i32 852224
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !32
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 2) #16, !srcloc !20
  tail call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %4) #16
  br label %27

27:                                               ; preds = %25, %3, %2
  %28 = phi i32 [ 0, %25 ], [ 0, %2 ], [ -12, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvme_disable_and_flr(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  store i16 0, ptr %3, align 2, !annotation !9
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 67586
  br i1 %6, label %7, label %50

7:                                                ; preds = %2
  %8 = tail call i32 @pcie_reset_flr(ptr noundef %0, i1 noundef zeroext true) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %13, %1
  %15 = select i1 %13, i32 -25, i32 0
  br i1 %14, label %50, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 24) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %16
  %20 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #16
  %21 = load i16, ptr %3, align 2
  %22 = or i16 %21, 2
  %23 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %22) #16
  %24 = getelementptr i8, ptr %17, i32 20
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !33
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %19
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !34
  %30 = and i32 %25, -49154
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !35
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %30) #16, !srcloc !20
  %31 = lshr i32 %29, 24
  %32 = mul nuw nsw i32 %31, 100
  %33 = add nuw nsw i32 %32, 100
  %34 = lshr exact i32 %33, 1
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = add i32 %35, %34
  %37 = getelementptr i8, ptr %17, i32 28
  br label %38

38:                                               ; preds = %42, %28
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !36
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  call void @msleep(i32 noundef 100) #16
  %43 = load volatile i32, ptr @jiffies, align 64
  %44 = sub i32 %36, %43
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %38

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.107) #17
  br label %48

48:                                               ; preds = %46, %38, %19
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %17) #16
  %49 = call i32 @pcie_flr(ptr noundef %0) #16
  br label %50

50:                                               ; preds = %48, %16, %10, %7, %2
  %51 = phi i32 [ 0, %48 ], [ %15, %10 ], [ -25, %7 ], [ -25, %2 ], [ -25, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delay_250ms_after_flr(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  br i1 %1, label %3, label %5

3:                                                ; preds = %2
  %4 = tail call i32 @pcie_reset_flr(ptr noundef %0, i1 noundef zeroext true) #16
  br label %7

5:                                                ; preds = %2
  %6 = tail call i32 @pcie_reset_flr(ptr noundef %0, i1 noundef zeroext false) #16
  tail call void @msleep(i32 noundef 250) #16
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %4, %3 ], [ 0, %5 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_chelsio_generic_dev(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  store i16 0, ptr %3, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 0, ptr %4, align 2, !annotation !9
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, -4096
  %8 = icmp ne i16 %7, 16384
  %9 = or i1 %8, %1
  %10 = select i1 %8, i32 -25, i32 0
  br i1 %9, label %34, label %11

11:                                               ; preds = %2
  %12 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #16
  %13 = load i16, ptr %3, align 2
  %14 = or i16 %13, 4
  %15 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %14) #16
  %16 = call i32 @pci_save_state(ptr noundef %0) #16
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 20
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %19, 2
  %21 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %20, ptr noundef nonnull %4) #16
  %22 = load i16, ptr %4, align 2
  %23 = icmp sgt i16 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %11
  %25 = load i8, ptr %17, align 2
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %26, 2
  %28 = or i16 %22, -16384
  %29 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %27, i16 noundef zeroext %28) #16
  br label %30

30:                                               ; preds = %24, %11
  %31 = call i32 @pcie_flr(ptr noundef %0) #16
  call void @pci_restore_state(ptr noundef %0) #16
  %32 = load i16, ptr %3, align 2
  %33 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %32) #16
  br label %34

34:                                               ; preds = %30, %2
  %35 = phi i32 [ 0, %30 ], [ %10, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_hinic_vf_dev(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  br i1 %1, label %36, label %3

3:                                                ; preds = %2
  %4 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 4096
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !37
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %4, i32 3712
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !38
  %14 = or i32 %13, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !39
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #16, !srcloc !20
  %15 = tail call i32 @pcie_flr(ptr noundef %0) #16
  %16 = tail call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 0) #16
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = sub i32 -1500, %17
  br label %19

19:                                               ; preds = %23, %11
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !40
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  tail call void @msleep(i32 noundef 20) #16
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = add i32 %18, %24
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %19, label %27

27:                                               ; preds = %23
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #16, !srcloc !17
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !41
  %30 = and i32 %29, 262144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.108, i32 noundef %29) #17
  br label %34

34:                                               ; preds = %32, %27, %19, %6
  %35 = phi i32 [ -25, %6 ], [ 0, %27 ], [ 0, %32 ], [ 0, %19 ]
  tail call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %4) #16
  br label %36

36:                                               ; preds = %34, %3, %2
  %37 = phi i32 [ 0, %2 ], [ -25, %3 ], [ %35, %34 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_flr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_reset_flr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_dma_alias(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_amd_sb_acs(ptr nocapture noundef readnone %0, i16 noundef zeroext %1) #12 {
  ret i32 -19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_mf_endpoint_acs(ptr nocapture noundef readnone %0, i16 noundef zeroext %1) #12 {
  %3 = and i16 %1, 95
  %4 = icmp eq i16 %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_rciep_acs(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #13 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 240
  %6 = icmp eq i16 %5, 144
  %7 = and i16 %1, 29
  %8 = icmp eq i16 %7, %1
  %9 = zext i1 %8 to i32
  %10 = select i1 %6, i32 %9, i32 -25
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_qcom_rp_acs(ptr nocapture noundef readnone %0, i16 noundef zeroext %1) #12 {
  %3 = and i16 %1, 29
  %4 = icmp eq i16 %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @pci_quirk_intel_pch_acs(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #14 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 240
  %10 = icmp eq i16 %9, 64
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %13 = load i16, ptr %12, align 2
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i32 %18, 1
  %16 = icmp eq i32 %15, 119
  br i1 %16, label %34, label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %19 = getelementptr [119 x i16], ptr @pci_quirk_intel_pch_acs_ids, i32 0, i32 %18
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, %13
  br i1 %21, label %22, label %14

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %24 = load i16, ptr %23, align 2
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = and i16 %1, 29
  %29 = icmp eq i16 %28, %1
  %30 = zext i1 %29 to i32
  br label %34

31:                                               ; preds = %22
  %32 = icmp eq i16 %1, 0
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %31, %27, %14, %6, %2
  %35 = phi i32 [ %30, %27 ], [ %33, %31 ], [ -25, %6 ], [ -25, %2 ], [ -25, %14 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_quirk_intel_spt_pch_acs(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = tail call fastcc zeroext i1 @pci_quirk_intel_spt_pch_acs_match(ptr noundef %0)
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60
  %8 = load i16, ptr %7, align 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = zext i16 %8 to i32
  %12 = add nuw nsw i32 %11, 4
  %13 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %3) #16
  %14 = load i32, ptr %3, align 4
  %15 = trunc i32 %14 to i16
  %16 = or i16 %15, 32
  %17 = and i16 %16, %1
  %18 = add nuw nsw i32 %11, 8
  %19 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %18, ptr noundef nonnull %4) #16
  %20 = load i32, ptr %4, align 4
  %21 = trunc i32 %20 to i16
  %22 = and i16 %17, %21
  %23 = icmp eq i16 %22, %17
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %10, %6, %2
  %26 = phi i32 [ %24, %10 ], [ -25, %2 ], [ -25, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_cavium_acs(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #13 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 240
  %10 = icmp eq i16 %9, 64
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %13 = load i16, ptr %12, align 2
  switch i16 %13, label %14 [
    i16 -20604, label %17
    i16 -18300, label %17
  ]

14:                                               ; preds = %11
  %15 = and i16 %13, -2048
  %16 = icmp eq i16 %15, -24576
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %11, %11
  %18 = and i16 %1, 29
  %19 = icmp eq i16 %18, %1
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %17, %14, %6, %2
  %22 = phi i32 [ %20, %17 ], [ -25, %14 ], [ -25, %6 ], [ -25, %2 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_xgene_acs(ptr nocapture noundef readnone %0, i16 noundef zeroext %1) #12 {
  %3 = and i16 %1, 29
  %4 = icmp eq i16 %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_brcm_acs(ptr nocapture noundef readnone %0, i16 noundef zeroext %1) #12 {
  %3 = and i16 %1, 29
  %4 = icmp eq i16 %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_al_acs(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #13 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 240
  %6 = icmp eq i16 %5, 64
  %7 = and i16 %1, -30
  %8 = icmp eq i16 %7, 0
  %9 = zext i1 %8 to i32
  %10 = select i1 %6, i32 %9, i32 -25
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_nxp_rp_acs(ptr nocapture noundef readnone %0, i16 noundef zeroext %1) #12 {
  %3 = and i16 %1, 29
  %4 = icmp eq i16 %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pci_quirk_zhaoxin_pcie_ports_acs(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #13 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %8 = load i16, ptr %7, align 2
  %9 = lshr i16 %8, 4
  %10 = and i16 %9, 15
  %11 = zext i16 %10 to i32
  switch i32 %11, label %19 [
    i32 4, label %12
    i32 6, label %12
  ]

12:                                               ; preds = %6, %6
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %14 = load i16, ptr %13, align 2
  switch i16 %14, label %19 [
    i16 1825, label %15
    i16 1827, label %15
    i16 1828, label %15
    i16 1829, label %15
    i16 1830, label %15
    i16 1831, label %15
    i16 1832, label %15
    i16 1833, label %15
    i16 1834, label %15
    i16 1835, label %15
    i16 1836, label %15
    i16 1837, label %15
    i16 1838, label %15
    i16 1839, label %15
    i16 1840, label %15
    i16 1841, label %15
    i16 1842, label %15
    i16 1808, label %15
    i16 1809, label %15
    i16 1810, label %15
    i16 1811, label %15
    i16 1812, label %15
    i16 1813, label %15
    i16 1814, label %15
    i16 1815, label %15
    i16 1816, label %15
    i16 1817, label %15
    i16 1818, label %15
    i16 1819, label %15
    i16 1820, label %15
    i16 1821, label %15
    i16 1822, label %15
  ]

15:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %16 = and i16 %1, 29
  %17 = icmp eq i16 %16, %1
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %15, %12, %6, %2
  %20 = phi i32 [ %18, %15 ], [ -25, %2 ], [ 0, %12 ], [ -25, %6 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @pci_quirk_intel_spt_pch_acs_match(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 240
  %9 = icmp eq i16 %8, 64
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %12 = load i16, ptr %11, align 2
  switch i16 %12, label %13 [
    i16 -25328, label %14
    i16 -25327, label %14
    i16 -25326, label %14
    i16 -25325, label %14
    i16 -25324, label %14
    i16 -25323, label %14
    i16 -25322, label %14
    i16 -25321, label %14
    i16 -25320, label %14
    i16 -25319, label %14
    i16 -25318, label %14
    i16 -25317, label %14
    i16 -23833, label %14
    i16 -23832, label %14
    i16 -23831, label %14
    i16 -23830, label %14
    i16 -23829, label %14
    i16 -23828, label %14
    i16 -23827, label %14
    i16 -23826, label %14
    i16 -23920, label %14
    i16 -23919, label %14
    i16 -23918, label %14
    i16 -23917, label %14
    i16 -23916, label %14
    i16 -23915, label %14
    i16 -23914, label %14
    i16 -23913, label %14
    i16 -23912, label %14
    i16 -23911, label %14
    i16 -23910, label %14
    i16 -23909, label %14
    i16 -23908, label %14
    i16 -23907, label %14
    i16 -23906, label %14
    i16 -23905, label %14
    i16 -24217, label %14
    i16 -24216, label %14
    i16 -24215, label %14
    i16 -24214, label %14
    i16 -24304, label %14
    i16 -24303, label %14
    i16 -24302, label %14
    i16 -24301, label %14
    i16 -24300, label %14
    i16 -24299, label %14
    i16 -24298, label %14
    i16 -24297, label %14
    i16 -24296, label %14
    i16 -24295, label %14
    i16 -24294, label %14
    i16 -24293, label %14
    i16 -24292, label %14
    i16 -24291, label %14
    i16 -24290, label %14
    i16 -24289, label %14
  ]

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %5, %1
  %15 = phi i1 [ false, %13 ], [ false, %5 ], [ false, %1 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ], [ true, %10 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_quirk_enable_intel_pch_acs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 240
  %11 = icmp eq i16 %10, 64
  br i1 %11, label %12, label %65

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %14 = load i16, ptr %13, align 2
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %19, 1
  %17 = icmp eq i32 %16, 119
  br i1 %17, label %65, label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ 0, %12 ], [ %16, %15 ]
  %20 = getelementptr [119 x i16], ptr @pci_quirk_intel_pch_acs_ids, i32 0, i32 %19
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, %14
  br i1 %22, label %23, label %15

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @pci_bus_read_config_dword(ptr noundef %25, i32 noundef 248, i32 noundef 240, ptr noundef nonnull %3) #16
  %27 = load i32, ptr %3, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %23
  %31 = and i32 %27, -16384
  %32 = call ptr @ioremap(i32 noundef %31, i32 noundef 8192) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %32, i32 4356
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !42
  %37 = and i32 %36, 768
  %38 = icmp eq i32 %37, 768
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %32, i32 4116
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !43
  %42 = and i32 %41, 63
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.115) #17
  %46 = and i32 %41, -64
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !44
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %46) #16, !srcloc !20
  br label %49

47:                                               ; preds = %30, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %48 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.113) #17
  br label %65

49:                                               ; preds = %44, %39, %34
  call void @iounmap(ptr noundef nonnull %32) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %50 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 216, ptr noundef nonnull %2) #16
  %51 = load i32, ptr %2, align 4
  %52 = and i32 %51, 67108864
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.116) #17
  %56 = load i32, ptr %2, align 4
  %57 = or i32 %56, 67108864
  store i32 %57, ptr %2, align 4
  %58 = trunc i32 %56 to i16
  %59 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 216, i16 noundef zeroext %58) #16
  br label %60

60:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %61 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %62 = load i16, ptr %61, align 2
  %63 = or i16 %62, 8
  store i16 %63, ptr %61, align 2
  %64 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.114) #17
  br label %65

65:                                               ; preds = %60, %47, %15, %7, %1
  %66 = phi i32 [ 0, %47 ], [ 0, %60 ], [ -25, %7 ], [ -25, %1 ], [ -25, %15 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_quirk_enable_intel_spt_pch_acs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call fastcc zeroext i1 @pci_quirk_intel_spt_pch_acs_match(ptr noundef %0)
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60
  %7 = load i16, ptr %6, align 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  %10 = zext i16 %7 to i32
  %11 = add nuw nsw i32 %10, 4
  %12 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %2) #16
  %13 = add nuw nsw i32 %10, 8
  %14 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %13, ptr noundef nonnull %3) #16
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 1
  %17 = load i32, ptr %3, align 4
  %18 = or i32 %17, %16
  %19 = and i32 %15, 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, 8
  %22 = or i32 %20, %21
  %23 = and i32 %15, 16
  %24 = or i32 %22, %23
  store i32 %24, ptr %3, align 4
  %25 = call zeroext i1 @pci_ats_disabled() #16
  br i1 %25, label %33, label %26

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %28 = load i40, ptr %27, align 1
  %29 = and i40 %28, 402653184
  %30 = icmp eq i40 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, ptr %3, align 4
  br label %38

33:                                               ; preds = %26, %9
  %34 = load i32, ptr %2, align 4
  %35 = and i32 %34, 2
  %36 = load i32, ptr %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, ptr %3, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %32, %31 ], [ %37, %33 ]
  %40 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %13, i32 noundef %39) #16
  %41 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.117) #17
  br label %42

42:                                               ; preds = %38, %5, %1
  %43 = phi i32 [ 0, %38 ], [ -25, %1 ], [ -25, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_quirk_disable_intel_spt_pch_acs_redir(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call fastcc zeroext i1 @pci_quirk_intel_spt_pch_acs_match(ptr noundef %0)
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60
  %7 = load i16, ptr %6, align 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = zext i16 %7 to i32
  %11 = add nuw nsw i32 %10, 4
  %12 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %2) #16
  %13 = add nuw nsw i32 %10, 8
  %14 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %13, ptr noundef nonnull %3) #16
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, -45
  store i32 %16, ptr %3, align 4
  %17 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %13, i32 noundef %16) #16
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.118) #17
  br label %19

19:                                               ; preds = %9, %5, %1
  %20 = phi i32 [ 0, %9 ], [ -25, %1 ], [ -25, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_dword(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_ats_disabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_saved_cap(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_configure_extended_tags(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_create_device_link(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %43

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 12
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %4, 248
  %16 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %11, i32 noundef %14, i32 noundef %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 11
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, -65536
  %22 = icmp eq i32 %21, 196608
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %7
  tail call void @pci_dev_put(ptr noundef %16) #16
  br label %43

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %26 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %27 = tail call ptr @device_link_add(ptr noundef %25, ptr noundef %26, i32 noundef 5) #16
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %28, label %37, label %32

32:                                               ; preds = %24
  br i1 %31, label %33, label %35

33:                                               ; preds = %32
  %34 = load ptr, ptr %26, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi ptr [ %34, %33 ], [ %30, %32 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.120, ptr noundef %36) #17
  br label %42

37:                                               ; preds = %24
  br i1 %31, label %38, label %40

38:                                               ; preds = %37
  %39 = load ptr, ptr %26, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi ptr [ %39, %38 ], [ %30, %37 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.121, ptr noundef %41) #17
  br label %42

42:                                               ; preds = %40, %35
  tail call void @pm_runtime_allow(ptr noundef %25) #16
  tail call void @pci_dev_put(ptr noundef nonnull %16) #16
  br label %43

43:                                               ; preds = %42, %23, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_reset_supported(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reset_bus(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 4026159}
!11 = !{i64 2154675840}
!12 = !{i64 2154676879}
!13 = !{i64 4025959}
!14 = !{!"branch_weights", i32 -388717296, i32 1956055, i32 1955078, i32 1954101, i32 1953125}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 4026997}
!18 = !{i64 2154804245}
!19 = !{i64 2154804449}
!20 = !{i64 4026579}
!21 = !{i64 4026777}
!22 = !{i64 2154881595}
!23 = !{i64 2154882576}
!24 = !{i64 4026382}
!25 = !{i64 2154998144}
!26 = !{i64 2154999147}
!27 = !{i64 2155038952}
!28 = !{i64 2155039325}
!29 = !{i64 2151565504}
!30 = !{i64 2151566450}
!31 = !{i64 2151565977}
!32 = !{i64 2151567672}
!33 = !{i64 2155057214}
!34 = !{i64 2155057551}
!35 = !{i64 2155057736}
!36 = !{i64 2155058246}
!37 = !{i64 2155059896}
!38 = !{i64 2155060305}
!39 = !{i64 2155060529}
!40 = !{i64 2155061032}
!41 = !{i64 2155061804}
!42 = !{i64 2155127620}
!43 = !{i64 2155127997}
!44 = !{i64 2155128866}
