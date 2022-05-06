; ModuleID = '/llk/IR/drivers/mtd/chips/cfi_cmdset_0001.c_pt.bc'
source_filename = "../drivers/mtd/chips/cfi_cmdset_0001.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0001:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0001\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0001:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0003:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0003\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0003:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0200:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0200\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0200:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cfi_fixup = type { i16, i16, ptr }
%struct.lock_class_key = type {}
%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%union.map_word = type { [1 x i32] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>
%struct.cfi_pri_intelext = type <{ [3 x i8], i8, i8, i32, i8, i16, i8, i8, i8, i16, i8, i8, [0 x i8] }>
%struct.cfi_intelext_regioninfo = type { i16, i8, i8, i8, i8, [1 x %struct.cfi_intelext_blockinfo] }
%struct.cfi_intelext_blockinfo = type { i16, i16, i16, i8, i8 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.cfi_intelext_programming_regioninfo = type { i8, i8, i8, i8, i8, i8 }
%struct.flchip_shared = type { %struct.mutex, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.kvec = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.26, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6 }
%struct.llist_node = type { ptr }
%union.anon.6 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.26 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fwh_xxlock_thunk = type { i32, i32 }

@cfi_fixup_table = internal global [10 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 31, i16 -1, ptr @fixup_convert_atmel_pri }, %struct.cfi_fixup { i16 31, i16 734, ptr @fixup_at49bv640dx_lock }, %struct.cfi_fixup { i16 31, i16 731, ptr @fixup_at49bv640dx_lock }, %struct.cfi_fixup { i16 -1, i16 -1, ptr @fixup_use_write_buffers }, %struct.cfi_fixup { i16 32, i16 186, ptr @fixup_st_m28w320ct }, %struct.cfi_fixup { i16 32, i16 187, ptr @fixup_st_m28w320cb }, %struct.cfi_fixup { i16 137, i16 -1, ptr @fixup_unlock_powerup_lock }, %struct.cfi_fixup { i16 176, i16 -1, ptr @fixup_unlock_powerup_lock }, %struct.cfi_fixup { i16 176, i16 -1, ptr @fixup_LH28F640BF }, %struct.cfi_fixup zeroinitializer], align 4
@.str = private unnamed_addr constant [51 x i8] c"\015cfi_cmdset_0001: Erase suspend on write enabled\0A\00", align 1
@jedec_fixup_table = internal global [6 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 137, i16 173, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 137, i16 172, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 32, i16 47, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 32, i16 128, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 32, i16 129, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup zeroinitializer], align 4
@fixup_table = internal global [2 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 -1, i16 -1, ptr @fixup_use_point }, %struct.cfi_fixup zeroinitializer], align 4
@cfi_cmdset_0001.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"&(cfi->chips[i].wq)\00", align 1
@cfi_intelext_chipdrv = internal global %struct.mtd_chip_driver { ptr null, ptr @cfi_intelext_destroy, ptr null, ptr @.str.20, %struct.list_head zeroinitializer }, align 4
@__kstrtab_cfi_cmdset_0001 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0001 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0001 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0001 to i32), ptr @__kstrtab_cfi_cmdset_0001, ptr @__kstrtabns_cfi_cmdset_0001 }, section "___ksymtab_gpl+cfi_cmdset_0001", align 4
@__kstrtab_cfi_cmdset_0003 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0003 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0003 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0001 to i32), ptr @__kstrtab_cfi_cmdset_0003, ptr @__kstrtabns_cfi_cmdset_0003 }, section "___ksymtab_gpl+cfi_cmdset_0003", align 4
@__kstrtab_cfi_cmdset_0200 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0200 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0200 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0001 to i32), ptr @__kstrtab_cfi_cmdset_0200, ptr @__kstrtabns_cfi_cmdset_0200 }, section "___ksymtab_gpl+cfi_cmdset_0200", align 4
@__UNIQUE_ID_file177 = internal constant [55 x i8] c"cfi_cmdset_0001.file=drivers/mtd/chips/cfi_cmdset_0001\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [28 x i8] c"cfi_cmdset_0001.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author179 = internal constant [68 x i8] c"cfi_cmdset_0001.author=David Woodhouse <dwmw2@infradead.org> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description180 = internal constant [72 x i8] c"cfi_cmdset_0001.description=MTD chip driver for Intel/Sharp flash chips\00", section ".modinfo", align 1
@__UNIQUE_ID_alias181 = internal constant [38 x i8] c"cfi_cmdset_0001.alias=cfi_cmdset_0003\00", section ".modinfo", align 1
@__UNIQUE_ID_alias182 = internal constant [38 x i8] c"cfi_cmdset_0001.alias=cfi_cmdset_0200\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Intel/Sharp\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"\013  Unknown Intel/Sharp Extended Query version %c.%c.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\013%s: cfi_pri_intelext is too fat\0A\00", align 1
@__func__.read_pri_intelext = private unnamed_addr constant [18 x i8] c"read_pri_intelext\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\013atmel Features: %02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\016Using buffer write method\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"\014SR.4 or SR.5 bits set in buffer write (status %lx). Clearing.\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"\013%s: Chip not ready for buffer write. Xstatus = %lx, status = %lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\013%s: buffer write error (status timeout)\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\013%s: buffer write error (bad VPP)\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\013%s: buffer write error (status 0x%lx)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [60 x i8] c"\013%s: Chip not ready after erase suspended: status = 0x%lx\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = private unnamed_addr constant [44 x i8] c"\013%s: put_chip() called with oldstate %d!!\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"\016Using auto-unlock on power-up/resume\0A\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"\016Reset Partition Config. Register: 1 Partition of 4 planes\0A\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"\016cfi_cmdset_0001: Simultaneous Operations disabled\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"\015using fwh lock/unlock method\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"\013%s: Error: unpoint called on non pointed region\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"cfi_cmdset_0001\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"\014Sum of regions (%lx) != total size of set of interleaved chips (%lx)\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"\017erase region %d: offset=0x%llx,size=0x%x,blocks=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"\017%s: program region size/ctrl_valid/ctrl_inval = %d/%d/%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"\013%s: bad number of hw partitions (%d)\0A\00", align 1
@__func__.cfi_intelext_partition_fixup = private unnamed_addr constant [29 x i8] c"cfi_intelext_partition_fixup\00", align 1
@cfi_intelext_partition_fixup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"&shared[i].lock\00", align 1
@cfi_intelext_partition_fixup.__key.26 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"&chip->wq\00", align 1
@cfi_intelext_partition_fixup.__key.28 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"&chip->mutex\00", align 1
@.str.30 = private unnamed_addr constant [69 x i8] c"\017%s: %d set(s) of %d interleaved chips --> %d partitions of %d KiB\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"\013%s: word write error (status timeout)\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"\013%s: word write error (bad VPP)\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"\013%s: word write error (status 0x%lx)\0A\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"\013%s: block erase error: (status timeout)\0A\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"\013%s: block erase error: (bad command sequence, status 0x%lx)\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"\013%s: block erase error: (bad VPP)\0A\00", align 1
@.str.37 = private unnamed_addr constant [60 x i8] c"\017block erase failed at 0x%08lx: status 0x%lx. Retrying...\0A\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"\013%s: block erase failed at 0x%08lx (status 0x%lx)\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"\013%s: block unlock error: (status timeout)\0A\00", align 1
@.str.40 = private unnamed_addr constant [71 x i8] c"\015Flash device refused suspend due to pending operation (oldstate %d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"\015Flash device refused suspend due to active operation (state %d)\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias181, ptr @__UNIQUE_ID_alias182, ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description180, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__ksymtab_cfi_cmdset_0001, ptr @__ksymtab_cfi_cmdset_0003, ptr @__ksymtab_cfi_cmdset_0200], section "llvm.metadata"

@cfi_cmdset_0003 = dso_local alias ptr (ptr, i32), ptr @cfi_cmdset_0001
@cfi_cmdset_0200 = dso_local alias ptr (ptr, i32), ptr @cfi_cmdset_0001

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfi_cmdset_0001(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 808) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %600, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 54
  store ptr %0, ptr %9, align 8
  store i8 3, ptr %6, align 8
  %10 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 21
  store ptr @cfi_intelext_erase_varsize, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 24
  store ptr @cfi_intelext_read, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 25
  store ptr @cfi_intelext_write_words, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 37
  store ptr @cfi_intelext_sync, ptr %13, align 8
  %14 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 38
  store ptr @cfi_intelext_lock, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 39
  store ptr @cfi_intelext_unlock, ptr %15, align 8
  %16 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 40
  store ptr @cfi_intelext_is_locked, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 45
  store ptr @cfi_intelext_suspend, ptr %17, align 8
  %18 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 46
  store ptr @cfi_intelext_resume, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 1
  store i32 3072, ptr %19, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 13
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 4
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cfi_ident, ptr %26, i32 0, i32 19
  %28 = load i16, ptr %27, align 1
  %29 = zext i16 %28 to i32
  %30 = shl i32 %24, %29
  %31 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 5
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 51
  store ptr @cfi_intelext_reboot, ptr %32, align 8
  %33 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %147 [
    i32 1, label %35
    i32 0, label %146
  ]

35:                                               ; preds = %8
  %36 = icmp eq i32 %1, 0
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr inbounds %struct.cfi_ident, ptr %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.cfi_ident, ptr %37, i32 0, i32 4
  %40 = select i1 %36, ptr %39, ptr %38
  %41 = load i16, ptr %40, align 1
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.cfi_private, ptr %42, i32 0, i32 9
  %44 = getelementptr inbounds %struct.cfi_private, ptr %42, i32 0, i32 10
  br label %45

45:                                               ; preds = %131, %35
  %46 = phi i32 [ 19, %35 ], [ %133, %131 ]
  %47 = trunc i32 %46 to i16
  %48 = tail call ptr @cfi_read_pri(ptr noundef %0, i16 noundef zeroext %41, i16 noundef zeroext %47, ptr noundef nonnull @.str.2) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %137, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %43, align 4
  %52 = icmp eq i32 %51, 137
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, ptr %44, align 4
  %55 = icmp eq i32 %54, 34844
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %48, i32 0, i32 2
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 51
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i8 49, ptr %57, align 1
  br label %61

61:                                               ; preds = %60, %56, %53, %50
  %62 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %48, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 49
  %65 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %48, i32 0, i32 2
  %66 = load i8, ptr %65, align 1
  br i1 %64, label %69, label %67

67:                                               ; preds = %61
  %68 = zext i8 %63 to i32
  br label %72

69:                                               ; preds = %61
  %70 = add i8 %66, -54
  %71 = icmp ult i8 %70, -6
  br i1 %71, label %72, label %76

72:                                               ; preds = %69, %67
  %73 = phi i32 [ %68, %67 ], [ 49, %69 ]
  %74 = zext i8 %66 to i32
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %73, i32 noundef %74) #15
  tail call void @kfree(ptr noundef nonnull %48) #14
  br label %137

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %48, i32 0, i32 8
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  %80 = zext i8 %78 to i32
  %81 = mul nuw nsw i32 %80, 10
  %82 = add nsw i32 %81, -10
  %83 = select i1 %79, i32 0, i32 %82
  %84 = icmp ugt i8 %66, 48
  br i1 %84, label %85, label %138

85:                                               ; preds = %76
  %86 = add nsw i32 %83, 2
  %87 = add nsw i32 %83, 21
  %88 = icmp ult i32 %46, %87
  br i1 %88, label %131, label %89

89:                                               ; preds = %85
  %90 = or i32 %83, 1
  %91 = getelementptr %struct.cfi_pri_intelext, ptr %48, i32 0, i32 12, i32 %90
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %86, %93
  %95 = icmp ugt i8 %66, 50
  br i1 %95, label %96, label %138

96:                                               ; preds = %89
  %97 = add nsw i32 %94, 1
  %98 = add nsw i32 %94, 20
  %99 = icmp ult i32 %46, %98
  br i1 %99, label %131, label %100

100:                                              ; preds = %96
  %101 = getelementptr %struct.cfi_pri_intelext, ptr %48, i32 0, i32 12, i32 %94
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ugt i8 %66, 51
  %105 = add nsw i32 %94, 3
  %106 = select i1 %104, i32 %105, i32 %97
  %107 = icmp eq i8 %102, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %113, %100
  %109 = phi i32 [ %121, %113 ], [ 0, %100 ]
  %110 = phi i32 [ %120, %113 ], [ %106, %100 ]
  %111 = add i32 %110, 33
  %112 = icmp ult i32 %46, %111
  br i1 %112, label %129, label %113

113:                                              ; preds = %108
  %114 = getelementptr %struct.cfi_pri_intelext, ptr %48, i32 0, i32 12, i32 %110
  %115 = getelementptr inbounds %struct.cfi_intelext_regioninfo, ptr %114, i32 0, i32 4
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 3
  %119 = add i32 %110, 6
  %120 = add i32 %119, %118
  %121 = add nuw nsw i32 %109, 1
  %122 = icmp eq i32 %121, %103
  br i1 %122, label %123, label %108

123:                                              ; preds = %113, %100
  %124 = phi i32 [ %106, %100 ], [ %120, %113 ]
  %125 = add i32 %124, 6
  %126 = select i1 %104, i32 %125, i32 %124
  %127 = add i32 %126, 19
  %128 = icmp ult i32 %46, %127
  br i1 %128, label %131, label %138

129:                                              ; preds = %108
  %130 = add i32 %110, 14
  br label %131

131:                                              ; preds = %129, %123, %96, %85
  %132 = phi i32 [ %86, %85 ], [ %97, %96 ], [ %126, %123 ], [ %130, %129 ]
  %133 = add i32 %132, 19
  tail call void @kfree(ptr noundef nonnull %48) #14
  %134 = icmp ugt i32 %133, 4096
  br i1 %134, label %135, label %45

135:                                              ; preds = %131
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.read_pri_intelext) #15
  br label %137

137:                                              ; preds = %135, %72, %45
  tail call void @kfree(ptr noundef nonnull %6) #14
  br label %600

138:                                              ; preds = %123, %89, %76
  %139 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 1
  store ptr %48, ptr %139, align 4
  tail call void @cfi_fixup(ptr noundef nonnull %6, ptr noundef nonnull @cfi_fixup_table) #14
  %140 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %48, i32 0, i32 4
  %141 = load i8, ptr %140, align 1
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %147

146:                                              ; preds = %8
  tail call void @cfi_fixup(ptr noundef nonnull %6, ptr noundef nonnull @jedec_fixup_table) #14
  br label %147

147:                                              ; preds = %146, %144, %138, %8
  tail call void @cfi_fixup(ptr noundef nonnull %6, ptr noundef nonnull @fixup_table) #14
  %148 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 11
  %149 = load i32, ptr %148, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %229

151:                                              ; preds = %221, %147
  %152 = phi i32 [ %226, %221 ], [ 0, %147 ]
  %153 = load ptr, ptr %25, align 4
  %154 = getelementptr inbounds %struct.cfi_ident, ptr %153, i32 0, i32 9
  %155 = load i8, ptr %154, align 1
  %156 = icmp eq i8 %155, 0
  %157 = zext i8 %155 to i32
  %158 = shl nuw i32 1, %157
  %159 = select i1 %156, i32 50000, i32 %158
  %160 = getelementptr %struct.cfi_private, ptr %4, i32 0, i32 15, i32 %152, i32 9
  store i32 %159, ptr %160, align 4
  %161 = load ptr, ptr %25, align 4
  %162 = getelementptr inbounds %struct.cfi_ident, ptr %161, i32 0, i32 10
  %163 = load i8, ptr %162, align 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %151
  %166 = zext i8 %163 to i32
  %167 = shl nuw i32 1, %166
  %168 = getelementptr %struct.cfi_private, ptr %4, i32 0, i32 15, i32 %152, i32 10
  store i32 %167, ptr %168, align 4
  br label %169

169:                                              ; preds = %165, %151
  %170 = getelementptr inbounds %struct.cfi_ident, ptr %161, i32 0, i32 11
  %171 = load i8, ptr %170, align 1
  %172 = icmp eq i8 %171, 0
  %173 = zext i8 %171 to i32
  %174 = shl i32 1000, %173
  %175 = select i1 %172, i32 2000000, i32 %174
  %176 = getelementptr %struct.cfi_private, ptr %4, i32 0, i32 15, i32 %152, i32 11
  store i32 %175, ptr %176, align 4
  %177 = load ptr, ptr %25, align 4
  %178 = getelementptr inbounds %struct.cfi_ident, ptr %177, i32 0, i32 9
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i8 %179, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %169
  %183 = getelementptr inbounds %struct.cfi_ident, ptr %177, i32 0, i32 13
  %184 = load i8, ptr %183, align 1
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = zext i8 %184 to i32
  %188 = add nuw nsw i32 %187, %180
  %189 = shl nuw i32 1, %188
  br label %190

190:                                              ; preds = %186, %182, %169
  %191 = phi i32 [ %189, %186 ], [ 400000, %182 ], [ 400000, %169 ]
  %192 = getelementptr %struct.cfi_private, ptr %4, i32 0, i32 15, i32 %152, i32 12
  store i32 %191, ptr %192, align 4
  %193 = getelementptr inbounds %struct.cfi_ident, ptr %177, i32 0, i32 10
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp eq i8 %194, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.cfi_ident, ptr %177, i32 0, i32 14
  %199 = load i8, ptr %198, align 1
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %197
  %202 = zext i8 %199 to i32
  %203 = add nuw nsw i32 %202, %195
  %204 = shl nuw i32 1, %203
  %205 = getelementptr %struct.cfi_private, ptr %4, i32 0, i32 15, i32 %152, i32 13
  store i32 %204, ptr %205, align 4
  %206 = load ptr, ptr %25, align 4
  br label %207

207:                                              ; preds = %201, %197, %190
  %208 = phi ptr [ %206, %201 ], [ %177, %197 ], [ %177, %190 ]
  %209 = getelementptr inbounds %struct.cfi_ident, ptr %208, i32 0, i32 11
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i8 %210, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.cfi_ident, ptr %208, i32 0, i32 15
  %215 = load i8, ptr %214, align 1
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = zext i8 %215 to i32
  %219 = add nuw nsw i32 %218, %211
  %220 = shl i32 1000, %219
  br label %221

221:                                              ; preds = %217, %213, %207
  %222 = phi i32 [ %220, %217 ], [ 16000000, %213 ], [ 16000000, %207 ]
  %223 = getelementptr %struct.cfi_private, ptr %4, i32 0, i32 15, i32 %152, i32 14
  store i32 %222, ptr %223, align 4
  %224 = getelementptr %struct.cfi_private, ptr %4, i32 0, i32 15, i32 %152, i32 1
  store i32 0, ptr %224, align 4
  %225 = getelementptr %struct.cfi_private, ptr %4, i32 0, i32 15, i32 %152, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %225, ptr noundef nonnull @.str.1, ptr noundef nonnull @cfi_cmdset_0001.__key) #14
  %226 = add nuw nsw i32 %152, 1
  %227 = load i32, ptr %148, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %151, label %229

229:                                              ; preds = %221, %147
  %230 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 14
  store ptr @cfi_intelext_chipdrv, ptr %230, align 4
  %231 = load ptr, ptr %9, align 8
  %232 = getelementptr inbounds %struct.map_info, ptr %231, i32 0, i32 13
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.cfi_private, ptr %233, i32 0, i32 8
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.cfi_ident, ptr %235, i32 0, i32 17
  %237 = load i8, ptr %236, align 1
  %238 = zext i8 %237 to i32
  %239 = getelementptr inbounds %struct.cfi_private, ptr %233, i32 0, i32 2
  %240 = load i32, ptr %239, align 4
  %241 = shl i32 %240, %238
  %242 = getelementptr inbounds %struct.cfi_private, ptr %233, i32 0, i32 11
  %243 = load i32, ptr %242, align 4
  %244 = mul i32 %241, %243
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 2
  store i64 %245, ptr %246, align 8
  %247 = load ptr, ptr %234, align 4
  %248 = getelementptr inbounds %struct.cfi_ident, ptr %247, i32 0, i32 20
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  %251 = load i32, ptr %242, align 4
  %252 = mul i32 %251, %250
  %253 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 19
  store i32 %252, ptr %253, align 8
  %254 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %252, i32 24) #14
  %255 = extractvalue { i32, i1 } %254, 1
  br i1 %255, label %256, label %258, !prof !8

256:                                              ; preds = %229
  %257 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 20
  store ptr null, ptr %257, align 4
  br label %596

258:                                              ; preds = %229
  %259 = extractvalue { i32, i1 } %254, 0
  %260 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %259, i32 noundef 3520) #16
  %261 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 20
  store ptr %260, ptr %261, align 4
  %262 = icmp eq ptr %260, null
  br i1 %262, label %596, label %263

263:                                              ; preds = %258
  %264 = load ptr, ptr %234, align 4
  %265 = getelementptr inbounds %struct.cfi_ident, ptr %264, i32 0, i32 20
  %266 = load i8, ptr %265, align 1
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %358, label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 3
  br label %270

270:                                              ; preds = %349, %268
  %271 = phi ptr [ %260, %268 ], [ %352, %349 ]
  %272 = phi ptr [ %264, %268 ], [ %351, %349 ]
  %273 = phi i32 [ 0, %268 ], [ %355, %349 ]
  %274 = phi i32 [ 0, %268 ], [ %356, %349 ]
  %275 = getelementptr %struct.cfi_ident, ptr %272, i32 0, i32 21, i32 %274
  %276 = load i32, ptr %275, align 1
  %277 = lshr i32 %276, 8
  %278 = and i32 %277, 16776960
  %279 = load i32, ptr %239, align 4
  %280 = mul i32 %278, %279
  %281 = and i32 %276, 65535
  %282 = add nuw nsw i32 %281, 1
  %283 = load i32, ptr %269, align 8
  %284 = icmp ult i32 %283, %280
  br i1 %284, label %285, label %286

285:                                              ; preds = %270
  store i32 %280, ptr %269, align 8
  br label %286

286:                                              ; preds = %285, %270
  %287 = load i32, ptr %242, align 4
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %286
  %290 = load ptr, ptr %234, align 4
  %291 = getelementptr inbounds %struct.cfi_ident, ptr %290, i32 0, i32 20
  %292 = load i8, ptr %291, align 1
  br label %349

293:                                              ; preds = %286
  %294 = lshr i32 %282, 3
  %295 = add nuw nsw i32 %294, 1
  %296 = load ptr, ptr %234, align 4
  %297 = getelementptr inbounds %struct.cfi_ident, ptr %296, i32 0, i32 20
  %298 = load i8, ptr %297, align 1
  br label %303

299:                                              ; preds = %303
  %300 = add nuw nsw i32 %306, 1
  %301 = load i32, ptr %242, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %349

303:                                              ; preds = %299, %293
  %304 = phi i8 [ %298, %293 ], [ %342, %299 ]
  %305 = phi ptr [ %271, %293 ], [ %339, %299 ]
  %306 = phi i32 [ 0, %293 ], [ %300, %299 ]
  %307 = mul i32 %306, %241
  %308 = add i32 %307, %273
  %309 = zext i32 %308 to i64
  %310 = zext i8 %304 to i32
  %311 = mul i32 %306, %310
  %312 = add i32 %311, %274
  %313 = getelementptr %struct.mtd_erase_region_info, ptr %305, i32 %312
  store i64 %309, ptr %313, align 8
  %314 = load ptr, ptr %261, align 4
  %315 = load ptr, ptr %234, align 4
  %316 = getelementptr inbounds %struct.cfi_ident, ptr %315, i32 0, i32 20
  %317 = load i8, ptr %316, align 1
  %318 = zext i8 %317 to i32
  %319 = mul i32 %306, %318
  %320 = add i32 %319, %274
  %321 = getelementptr %struct.mtd_erase_region_info, ptr %314, i32 %320, i32 1
  store i32 %280, ptr %321, align 8
  %322 = load ptr, ptr %261, align 4
  %323 = load ptr, ptr %234, align 4
  %324 = getelementptr inbounds %struct.cfi_ident, ptr %323, i32 0, i32 20
  %325 = load i8, ptr %324, align 1
  %326 = zext i8 %325 to i32
  %327 = mul i32 %306, %326
  %328 = add i32 %327, %274
  %329 = getelementptr %struct.mtd_erase_region_info, ptr %322, i32 %328, i32 2
  store i32 %282, ptr %329, align 4
  %330 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %295, i32 noundef 3264) #16
  %331 = load ptr, ptr %261, align 4
  %332 = load ptr, ptr %234, align 4
  %333 = getelementptr inbounds %struct.cfi_ident, ptr %332, i32 0, i32 20
  %334 = load i8, ptr %333, align 1
  %335 = zext i8 %334 to i32
  %336 = mul i32 %306, %335
  %337 = add i32 %336, %274
  %338 = getelementptr %struct.mtd_erase_region_info, ptr %331, i32 %337, i32 3
  store ptr %330, ptr %338, align 8
  %339 = load ptr, ptr %261, align 4
  %340 = load ptr, ptr %234, align 4
  %341 = getelementptr inbounds %struct.cfi_ident, ptr %340, i32 0, i32 20
  %342 = load i8, ptr %341, align 1
  %343 = zext i8 %342 to i32
  %344 = mul i32 %306, %343
  %345 = add i32 %344, %274
  %346 = getelementptr %struct.mtd_erase_region_info, ptr %339, i32 %345, i32 3
  %347 = load ptr, ptr %346, align 8
  %348 = icmp eq ptr %347, null
  br i1 %348, label %548, label %299

349:                                              ; preds = %299, %289
  %350 = phi i8 [ %292, %289 ], [ %342, %299 ]
  %351 = phi ptr [ %290, %289 ], [ %340, %299 ]
  %352 = phi ptr [ %271, %289 ], [ %339, %299 ]
  %353 = zext i8 %350 to i32
  %354 = mul i32 %280, %282
  %355 = add i32 %354, %273
  %356 = add nuw nsw i32 %274, 1
  %357 = icmp ult i32 %356, %353
  br i1 %357, label %270, label %358

358:                                              ; preds = %349, %263
  %359 = phi ptr [ %260, %263 ], [ %352, %349 ]
  %360 = phi i32 [ 0, %263 ], [ %355, %349 ]
  %361 = icmp eq i32 %360, %241
  br i1 %361, label %362, label %374

362:                                              ; preds = %358
  %363 = load i32, ptr %253, align 8
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %389

365:                                              ; preds = %362
  %366 = load i64, ptr %359, align 8
  %367 = getelementptr %struct.mtd_erase_region_info, ptr %359, i32 0, i32 1
  %368 = load i32, ptr %367, align 8
  %369 = getelementptr %struct.mtd_erase_region_info, ptr %359, i32 0, i32 2
  %370 = load i32, ptr %369, align 4
  %371 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 0, i64 noundef %366, i32 noundef %368, i32 noundef %370) #15
  %372 = load i32, ptr %253, align 8
  %373 = icmp sgt i32 %372, 1
  br i1 %373, label %376, label %389

374:                                              ; preds = %358
  %375 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %360, i32 noundef %241) #15
  br label %548

376:                                              ; preds = %376, %365
  %377 = phi i32 [ %386, %376 ], [ 1, %365 ]
  %378 = load ptr, ptr %261, align 4
  %379 = getelementptr %struct.mtd_erase_region_info, ptr %378, i32 %377
  %380 = load i64, ptr %379, align 8
  %381 = getelementptr %struct.mtd_erase_region_info, ptr %378, i32 %377, i32 1
  %382 = load i32, ptr %381, align 8
  %383 = getelementptr %struct.mtd_erase_region_info, ptr %378, i32 %377, i32 2
  %384 = load i32, ptr %383, align 4
  %385 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %377, i64 noundef %380, i32 noundef %382, i32 noundef %384) #15
  %386 = add nuw nsw i32 %377, 1
  %387 = load i32, ptr %253, align 8
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %376, label %389

389:                                              ; preds = %376, %365, %362
  %390 = load ptr, ptr %9, align 8
  %391 = getelementptr inbounds %struct.cfi_private, ptr %233, i32 0, i32 1
  %392 = load ptr, ptr %391, align 4
  %393 = icmp eq ptr %392, null
  br i1 %393, label %546, label %394

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %392, i32 0, i32 1
  %396 = load i8, ptr %395, align 1
  %397 = icmp eq i8 %396, 49
  br i1 %397, label %398, label %546

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %392, i32 0, i32 2
  %400 = load i8, ptr %399, align 1
  %401 = icmp ugt i8 %400, 50
  br i1 %401, label %402, label %546

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %392, i32 0, i32 3
  %404 = load i32, ptr %403, align 1
  %405 = and i32 %404, 512
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %546, label %407

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %392, i32 0, i32 8
  %409 = load i8, ptr %408, align 1
  %410 = icmp eq i8 %409, 0
  %411 = zext i8 %409 to i32
  %412 = mul nuw nsw i32 %411, 10
  %413 = add nsw i32 %412, -10
  %414 = select i1 %410, i32 0, i32 %413
  %415 = or i32 %414, 1
  %416 = getelementptr %struct.cfi_pri_intelext, ptr %392, i32 0, i32 12, i32 %415
  %417 = load i8, ptr %416, align 1
  %418 = zext i8 %417 to i32
  %419 = add nuw nsw i32 %418, 2
  %420 = add nsw i32 %419, %414
  %421 = getelementptr %struct.cfi_pri_intelext, ptr %392, i32 0, i32 12, i32 %420
  %422 = load i8, ptr %421, align 1
  %423 = zext i8 %422 to i32
  %424 = icmp ugt i8 %400, 51
  %425 = select i1 %424, i32 3, i32 1
  %426 = add nsw i32 %420, %425
  %427 = icmp eq i8 %422, 0
  br i1 %427, label %446, label %428

428:                                              ; preds = %428, %407
  %429 = phi i32 [ %441, %428 ], [ %426, %407 ]
  %430 = phi i32 [ %442, %428 ], [ 0, %407 ]
  %431 = phi i32 [ %435, %428 ], [ 0, %407 ]
  %432 = getelementptr %struct.cfi_pri_intelext, ptr %392, i32 0, i32 12, i32 %429
  %433 = load i16, ptr %432, align 1
  %434 = zext i16 %433 to i32
  %435 = add i32 %431, %434
  %436 = getelementptr inbounds %struct.cfi_intelext_regioninfo, ptr %432, i32 0, i32 4
  %437 = load i8, ptr %436, align 1
  %438 = zext i8 %437 to i32
  %439 = shl nuw nsw i32 %438, 3
  %440 = add i32 %429, 6
  %441 = add i32 %440, %439
  %442 = add nuw nsw i32 %430, 1
  %443 = icmp eq i32 %442, %423
  br i1 %443, label %444, label %428

444:                                              ; preds = %428
  %445 = icmp eq i32 %435, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %444, %407
  %447 = phi i32 [ %441, %444 ], [ %426, %407 ]
  br label %448

448:                                              ; preds = %446, %444
  %449 = phi i32 [ %447, %446 ], [ %441, %444 ]
  %450 = phi i32 [ 1, %446 ], [ %435, %444 ]
  br i1 %424, label %451, label %470

451:                                              ; preds = %448
  %452 = getelementptr %struct.cfi_pri_intelext, ptr %392, i32 0, i32 12, i32 %449
  %453 = load i32, ptr %239, align 4
  %454 = load i8, ptr %452, align 1
  %455 = zext i8 %454 to i32
  %456 = shl i32 %453, %455
  store i32 %456, ptr %22, align 4
  %457 = load i32, ptr %19, align 4
  %458 = and i32 %457, -2049
  store i32 %458, ptr %19, align 4
  %459 = load ptr, ptr %390, align 4
  %460 = load i32, ptr %239, align 4
  %461 = getelementptr inbounds %struct.cfi_intelext_programming_regioninfo, ptr %452, i32 0, i32 2
  %462 = load i8, ptr %461, align 1
  %463 = zext i8 %462 to i32
  %464 = mul i32 %460, %463
  %465 = getelementptr inbounds %struct.cfi_intelext_programming_regioninfo, ptr %452, i32 0, i32 4
  %466 = load i8, ptr %465, align 1
  %467 = zext i8 %466 to i32
  %468 = mul i32 %460, %467
  %469 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %459, i32 noundef %456, i32 noundef %464, i32 noundef %468) #15
  br label %470

470:                                              ; preds = %451, %448
  %471 = getelementptr inbounds %struct.cfi_private, ptr %233, i32 0, i32 13
  %472 = load i32, ptr %471, align 4
  %473 = tail call i32 @llvm.cttz.i32(i32 %450, i1 false) #14, !range !9
  %474 = sub i32 %472, %473
  %475 = shl nuw i32 1, %474
  %476 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 3
  %477 = load i32, ptr %476, align 8
  %478 = icmp ult i32 %475, %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %470
  %480 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cfi_intelext_partition_fixup, i32 noundef %450) #15
  br label %548

481:                                              ; preds = %470
  %482 = load i32, ptr %242, align 4
  %483 = mul i32 %482, %450
  %484 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %483, i32 88) #14
  %485 = extractvalue { i32, i1 } %484, 1
  %486 = extractvalue { i32, i1 } %484, 0
  %487 = tail call i32 @llvm.uadd.sat.i32(i32 %486, i32 60) #14
  %488 = select i1 %485, i32 -1, i32 %487
  %489 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %488, i32 noundef 3264) #16
  %490 = icmp eq ptr %489, null
  br i1 %490, label %548, label %491

491:                                              ; preds = %481
  %492 = load i32, ptr %242, align 4
  %493 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %492, i32 28) #14
  %494 = extractvalue { i32, i1 } %493, 1
  br i1 %494, label %499, label %495, !prof !8

495:                                              ; preds = %491
  %496 = extractvalue { i32, i1 } %493, 0
  %497 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %496, i32 noundef 3264) #16
  %498 = icmp eq ptr %497, null
  br i1 %498, label %499, label %500

499:                                              ; preds = %495, %491
  tail call void @kfree(ptr noundef nonnull %489) #14
  br label %548

500:                                              ; preds = %495
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(60) %489, ptr noundef align 4 dereferenceable(60) %233, i32 60, i1 false) #14
  %501 = getelementptr inbounds %struct.cfi_private, ptr %489, i32 0, i32 11
  store i32 %483, ptr %501, align 4
  %502 = getelementptr inbounds %struct.cfi_private, ptr %489, i32 0, i32 13
  store i32 %474, ptr %502, align 4
  %503 = load i32, ptr %242, align 4
  %504 = icmp sgt i32 %503, 0
  br i1 %504, label %505, label %536

505:                                              ; preds = %500
  %506 = getelementptr inbounds %struct.cfi_private, ptr %489, i32 0, i32 15
  %507 = icmp sgt i32 %450, 0
  br label %508

508:                                              ; preds = %528, %505
  %509 = phi i32 [ 0, %505 ], [ %530, %528 ]
  %510 = phi ptr [ %506, %505 ], [ %529, %528 ]
  %511 = getelementptr %struct.flchip_shared, ptr %497, i32 %509
  %512 = getelementptr %struct.flchip_shared, ptr %497, i32 %509, i32 2
  store ptr null, ptr %512, align 4
  %513 = getelementptr %struct.flchip_shared, ptr %497, i32 %509, i32 1
  store ptr null, ptr %513, align 4
  tail call void @__mutex_init(ptr noundef %511, ptr noundef nonnull @.str.25, ptr noundef nonnull @cfi_intelext_partition_fixup.__key) #14
  br i1 %507, label %514, label %528

514:                                              ; preds = %508
  %515 = getelementptr %struct.cfi_private, ptr %233, i32 0, i32 15, i32 %509
  br label %516

516:                                              ; preds = %516, %514
  %517 = phi i32 [ 0, %514 ], [ %526, %516 ]
  %518 = phi ptr [ %510, %514 ], [ %525, %516 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(88) %518, ptr noundef align 4 dereferenceable(88) %515, i32 88, i1 false) #14
  %519 = shl i32 %517, %474
  %520 = load i32, ptr %518, align 4
  %521 = add i32 %520, %519
  store i32 %521, ptr %518, align 4
  %522 = getelementptr inbounds %struct.flchip, ptr %518, i32 0, i32 15
  store ptr %511, ptr %522, align 4
  %523 = getelementptr inbounds %struct.flchip, ptr %518, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %523, ptr noundef nonnull @.str.27, ptr noundef nonnull @cfi_intelext_partition_fixup.__key.26) #14
  %524 = getelementptr inbounds %struct.flchip, ptr %518, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %524, ptr noundef nonnull @.str.29, ptr noundef nonnull @cfi_intelext_partition_fixup.__key.28) #14
  %525 = getelementptr %struct.flchip, ptr %518, i32 1
  %526 = add nuw nsw i32 %517, 1
  %527 = icmp eq i32 %526, %450
  br i1 %527, label %528, label %516

528:                                              ; preds = %516, %508
  %529 = phi ptr [ %510, %508 ], [ %525, %516 ]
  %530 = add nuw nsw i32 %509, 1
  %531 = load i32, ptr %242, align 4
  %532 = icmp slt i32 %530, %531
  br i1 %532, label %508, label %533

533:                                              ; preds = %528
  %534 = load i32, ptr %501, align 4
  %535 = load i32, ptr %502, align 4
  br label %536

536:                                              ; preds = %533, %500
  %537 = phi i32 [ %474, %500 ], [ %535, %533 ]
  %538 = phi i32 [ %483, %500 ], [ %534, %533 ]
  %539 = phi i32 [ %503, %500 ], [ %531, %533 ]
  %540 = load ptr, ptr %390, align 4
  %541 = load i32, ptr %239, align 4
  %542 = add i32 %537, -10
  %543 = shl nuw i32 1, %542
  %544 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %540, i32 noundef %539, i32 noundef %541, i32 noundef %538, i32 noundef %543) #15
  %545 = getelementptr inbounds %struct.map_info, ptr %390, i32 0, i32 13
  store ptr %489, ptr %545, align 4
  tail call void @kfree(ptr noundef %233) #14
  br label %546

546:                                              ; preds = %536, %402, %398, %394, %389
  tail call void @__module_get(ptr noundef null) #14
  %547 = tail call i32 @register_reboot_notifier(ptr noundef %32) #14
  br label %600

548:                                              ; preds = %499, %481, %479, %374, %303
  %549 = load ptr, ptr %261, align 4
  %550 = icmp eq ptr %549, null
  br i1 %550, label %596, label %551

551:                                              ; preds = %548
  %552 = load ptr, ptr %234, align 4
  %553 = getelementptr inbounds %struct.cfi_ident, ptr %552, i32 0, i32 20
  %554 = load i8, ptr %553, align 1
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %596, label %556

556:                                              ; preds = %551
  %557 = load i32, ptr %242, align 4
  br label %558

558:                                              ; preds = %586, %556
  %559 = phi ptr [ %552, %556 ], [ %587, %586 ]
  %560 = phi i32 [ %557, %556 ], [ %588, %586 ]
  %561 = phi i32 [ 0, %556 ], [ %589, %586 ]
  %562 = icmp sgt i32 %560, 0
  br i1 %562, label %563, label %586

563:                                              ; preds = %558
  %564 = load ptr, ptr %261, align 4
  %565 = getelementptr %struct.mtd_erase_region_info, ptr %564, i32 %561, i32 3
  %566 = load ptr, ptr %565, align 8
  tail call void @kfree(ptr noundef %566) #14
  %567 = load i32, ptr %242, align 4
  %568 = icmp sgt i32 %567, 1
  br i1 %568, label %569, label %583

569:                                              ; preds = %569, %563
  %570 = phi i32 [ %580, %569 ], [ 1, %563 ]
  %571 = load ptr, ptr %234, align 4
  %572 = load ptr, ptr %261, align 4
  %573 = getelementptr inbounds %struct.cfi_ident, ptr %571, i32 0, i32 20
  %574 = load i8, ptr %573, align 1
  %575 = zext i8 %574 to i32
  %576 = mul i32 %570, %575
  %577 = add i32 %576, %561
  %578 = getelementptr %struct.mtd_erase_region_info, ptr %572, i32 %577, i32 3
  %579 = load ptr, ptr %578, align 8
  tail call void @kfree(ptr noundef %579) #14
  %580 = add nuw nsw i32 %570, 1
  %581 = load i32, ptr %242, align 4
  %582 = icmp slt i32 %580, %581
  br i1 %582, label %569, label %583

583:                                              ; preds = %569, %563
  %584 = phi i32 [ %567, %563 ], [ %581, %569 ]
  %585 = load ptr, ptr %234, align 4
  br label %586

586:                                              ; preds = %583, %558
  %587 = phi ptr [ %585, %583 ], [ %559, %558 ]
  %588 = phi i32 [ %584, %583 ], [ %560, %558 ]
  %589 = add nuw nsw i32 %561, 1
  %590 = getelementptr inbounds %struct.cfi_ident, ptr %587, i32 0, i32 20
  %591 = load i8, ptr %590, align 1
  %592 = zext i8 %591 to i32
  %593 = icmp ult i32 %589, %592
  br i1 %593, label %558, label %594

594:                                              ; preds = %586
  %595 = load ptr, ptr %261, align 4
  br label %596

596:                                              ; preds = %594, %551, %548, %258, %256
  %597 = phi ptr [ null, %548 ], [ null, %256 ], [ null, %258 ], [ %549, %551 ], [ %595, %594 ]
  tail call void @kfree(ptr noundef %597) #14
  tail call void @kfree(ptr noundef %6) #14
  %598 = getelementptr inbounds %struct.cfi_private, ptr %233, i32 0, i32 1
  %599 = load ptr, ptr %598, align 4
  tail call void @kfree(ptr noundef %599) #14
  br label %600

600:                                              ; preds = %596, %546, %137, %2
  %601 = phi ptr [ null, %2 ], [ null, %137 ], [ null, %596 ], [ %6, %546 ]
  ret ptr %601
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_erase_varsize(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @cfi_varsize_frob(ptr noundef %0, ptr noundef nonnull @do_erase_oneblock, i64 noundef %3, i32 noundef %6, ptr noundef null) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_read(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 13
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %85, label %12

12:                                               ; preds = %5
  %13 = trunc i64 %1 to i32
  %14 = load i32, ptr %10, align 4
  %15 = zext i32 %14 to i64
  %16 = ashr i64 %1, %15
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, %14
  %19 = sub i32 %13, %18
  %20 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 11
  %21 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 6
  %22 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 3
  %23 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 4
  br label %24

24:                                               ; preds = %78, %12
  %25 = phi i32 [ %17, %12 ], [ %83, %78 ]
  %26 = phi i32 [ %19, %12 ], [ 0, %78 ]
  %27 = phi ptr [ %4, %12 ], [ %82, %78 ]
  %28 = phi i32 [ %2, %12 ], [ %81, %78 ]
  %29 = load i32, ptr %20, align 4
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %24
  %32 = add i32 %28, -1
  %33 = add i32 %32, %26
  %34 = load i32, ptr %10, align 4
  %35 = lshr i32 %33, %34
  %36 = icmp eq i32 %35, 0
  %37 = shl nuw i32 1, %34
  %38 = sub i32 %37, %26
  %39 = select i1 %36, i32 %28, i32 %38
  %40 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %25
  %41 = load ptr, ptr %8, align 4
  %42 = load i32, ptr %40, align 4
  %43 = load i32, ptr %21, align 4
  %44 = sub i32 0, %43
  %45 = add i32 %42, %26
  %46 = and i32 %45, %44
  %47 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %25, i32 7
  tail call void @mutex_lock(ptr noundef %47) #14
  br label %48

48:                                               ; preds = %48, %31
  %49 = tail call fastcc i32 @chip_ready(ptr noundef %7, ptr noundef %40, i32 noundef %46, i32 noundef 0) #14
  switch i32 %49, label %77 [
    i32 -11, label %48
    i32 0, label %50
  ]

50:                                               ; preds = %48
  %51 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %25, i32 2
  %52 = load i32, ptr %51, align 4
  switch i32 %52, label %53 [
    i32 17, label %69
    i32 0, label %69
  ]

53:                                               ; preds = %50
  %54 = tail call i32 @cfi_build_cmd(i32 noundef 255, ptr noundef %7, ptr noundef %41) #14
  %55 = load i32, ptr %21, align 4
  switch i32 %55, label %67 [
    i32 1, label %56
    i32 2, label %60
    i32 4, label %64
  ]

56:                                               ; preds = %53
  %57 = trunc i32 %54 to i8
  %58 = load ptr, ptr %22, align 4
  %59 = getelementptr i8, ptr %58, i32 %46
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 %57) #14, !srcloc !10
  br label %68

60:                                               ; preds = %53
  %61 = trunc i32 %54 to i16
  %62 = load ptr, ptr %22, align 4
  %63 = getelementptr i8, ptr %62, i32 %46
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 %61) #14, !srcloc !11
  br label %68

64:                                               ; preds = %53
  %65 = load ptr, ptr %22, align 4
  %66 = getelementptr i8, ptr %65, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %54) #14, !srcloc !12
  br label %68

67:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

68:                                               ; preds = %64, %60, %56
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  store i32 0, ptr %51, align 4
  br label %69

69:                                               ; preds = %68, %50, %50
  %70 = load ptr, ptr %23, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = getelementptr i8, ptr %70, i32 %45
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 1 %73, i32 %39, i1 false) #14
  br label %78

74:                                               ; preds = %69
  %75 = load ptr, ptr %22, align 4
  %76 = getelementptr i8, ptr %75, i32 %45
  tail call void @mmiocpy(ptr noundef %27, ptr noundef %76, i32 noundef %39) #14
  br label %78

77:                                               ; preds = %48
  tail call void @mutex_unlock(ptr noundef %47) #14
  br label %85

78:                                               ; preds = %74, %72
  tail call fastcc void @put_chip(ptr noundef %7, ptr noundef %40) #14
  tail call void @mutex_unlock(ptr noundef %47) #14
  %79 = load i32, ptr %3, align 4
  %80 = add i32 %79, %39
  store i32 %80, ptr %3, align 4
  %81 = sub i32 %28, %39
  %82 = getelementptr i8, ptr %27, i32 %39
  %83 = add i32 %25, 1
  %84 = icmp eq i32 %81, 0
  br i1 %84, label %85, label %24

85:                                               ; preds = %78, %77, %24, %5
  %86 = phi i32 [ %49, %77 ], [ 0, %5 ], [ 0, %24 ], [ 0, %78 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_write_words(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = ashr i64 %1, %12
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, %11
  %16 = trunc i64 %1 to i32
  %17 = sub i32 %16, %15
  %18 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %5
  %24 = sub i32 0, %19
  %25 = and i32 %17, %24
  %26 = sub i32 %17, %25
  %27 = sub i32 %19, %26
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %2)
  %29 = icmp slt i32 %19, 4
  %30 = shl i32 %19, 3
  %31 = shl nsw i32 -1, %30
  %32 = xor i32 %31, -1
  %33 = select i1 %29, i32 %32, i32 -1
  %34 = add i32 %28, %26
  %35 = icmp sgt i32 %34, %26
  br i1 %35, label %36, label %51

36:                                               ; preds = %36, %23
  %37 = phi i32 [ %48, %36 ], [ %33, %23 ]
  %38 = phi i32 [ %49, %36 ], [ %26, %23 ]
  %39 = shl i32 %38, 3
  %40 = shl i32 255, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %37, %41
  %43 = sub i32 %38, %26
  %44 = getelementptr i8, ptr %4, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, %39
  %48 = or i32 %47, %42
  %49 = add nsw i32 %38, 1
  %50 = icmp eq i32 %49, %34
  br i1 %50, label %51, label %36

51:                                               ; preds = %36, %23
  %52 = phi i32 [ %33, %23 ], [ %48, %36 ]
  %53 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %14
  %54 = insertvalue [1 x i32] poison, i32 %52, 0
  %55 = tail call fastcc i32 @do_write_oneword(ptr noundef %7, ptr noundef %53, i32 noundef %25, [1 x i32] %54)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %159

57:                                               ; preds = %51
  %58 = sub i32 %2, %28
  %59 = add i32 %28, %17
  %60 = getelementptr i8, ptr %4, i32 %28
  %61 = load i32, ptr %3, align 4
  %62 = add i32 %61, %28
  store i32 %62, ptr %3, align 4
  %63 = load i32, ptr %10, align 4
  %64 = lshr i32 %59, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = add i32 %14, 1
  %68 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 11
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %159, label %71

71:                                               ; preds = %66, %57, %5
  %72 = phi i32 [ %17, %5 ], [ 0, %66 ], [ %59, %57 ]
  %73 = phi i32 [ %14, %5 ], [ %67, %66 ], [ %14, %57 ]
  %74 = phi ptr [ %4, %5 ], [ %60, %66 ], [ %60, %57 ]
  %75 = phi i32 [ %2, %5 ], [ %58, %66 ], [ %58, %57 ]
  %76 = load i32, ptr %18, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %120, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 11
  br label %80

80:                                               ; preds = %116, %78
  %81 = phi i32 [ %76, %78 ], [ %107, %116 ]
  %82 = phi i32 [ %75, %78 ], [ %108, %116 ]
  %83 = phi ptr [ %74, %78 ], [ %104, %116 ]
  %84 = phi i32 [ %73, %78 ], [ %118, %116 ]
  %85 = phi i32 [ %72, %78 ], [ %117, %116 ]
  switch i32 %81, label %94 [
    i32 1, label %86
    i32 2, label %89
    i32 4, label %92
  ]

86:                                               ; preds = %80
  %87 = load i8, ptr %83, align 1
  %88 = zext i8 %87 to i32
  br label %95

89:                                               ; preds = %80
  %90 = load i16, ptr %83, align 1
  %91 = zext i16 %90 to i32
  br label %95

92:                                               ; preds = %80
  %93 = load i32, ptr %83, align 1
  br label %95

94:                                               ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #14, !srcloc !15
  unreachable

95:                                               ; preds = %92, %89, %86
  %96 = phi i32 [ %88, %86 ], [ %91, %89 ], [ %93, %92 ]
  %97 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %84
  %98 = insertvalue [1 x i32] poison, i32 %96, 0
  %99 = tail call fastcc i32 @do_write_oneword(ptr noundef %7, ptr noundef %97, i32 noundef %85, [1 x i32] %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %159

101:                                              ; preds = %95
  %102 = load i32, ptr %18, align 4
  %103 = add i32 %102, %85
  %104 = getelementptr i8, ptr %83, i32 %102
  %105 = load i32, ptr %3, align 4
  %106 = add i32 %105, %102
  store i32 %106, ptr %3, align 4
  %107 = load i32, ptr %18, align 4
  %108 = sub i32 %82, %107
  %109 = load i32, ptr %10, align 4
  %110 = lshr i32 %103, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %101
  %113 = add i32 %84, 1
  %114 = load i32, ptr %79, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %159, label %116

116:                                              ; preds = %112, %101
  %117 = phi i32 [ 0, %112 ], [ %103, %101 ]
  %118 = phi i32 [ %113, %112 ], [ %84, %101 ]
  %119 = icmp ult i32 %108, %107
  br i1 %119, label %120, label %80

120:                                              ; preds = %116, %71
  %121 = phi i32 [ %72, %71 ], [ %117, %116 ]
  %122 = phi i32 [ %73, %71 ], [ %118, %116 ]
  %123 = phi ptr [ %74, %71 ], [ %104, %116 ]
  %124 = phi i32 [ %75, %71 ], [ %108, %116 ]
  %125 = phi i32 [ %76, %71 ], [ %107, %116 ]
  %126 = add i32 %125, -1
  %127 = and i32 %126, %124
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %159, label %129

129:                                              ; preds = %120
  %130 = icmp slt i32 %125, 4
  %131 = shl i32 %125, 3
  %132 = shl nsw i32 -1, %131
  %133 = xor i32 %132, -1
  %134 = select i1 %130, i32 %133, i32 -1
  %135 = icmp sgt i32 %124, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %136, %129
  %137 = phi i32 [ %147, %136 ], [ %134, %129 ]
  %138 = phi i32 [ %148, %136 ], [ 0, %129 ]
  %139 = shl i32 %138, 3
  %140 = shl i32 255, %139
  %141 = xor i32 %140, -1
  %142 = and i32 %137, %141
  %143 = getelementptr i8, ptr %123, i32 %138
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl i32 %145, %139
  %147 = or i32 %146, %142
  %148 = add nuw nsw i32 %138, 1
  %149 = icmp eq i32 %148, %124
  br i1 %149, label %150, label %136

150:                                              ; preds = %136, %129
  %151 = phi i32 [ %134, %129 ], [ %147, %136 ]
  %152 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %122
  %153 = insertvalue [1 x i32] poison, i32 %151, 0
  %154 = tail call fastcc i32 @do_write_oneword(ptr noundef %7, ptr noundef %152, i32 noundef %121, [1 x i32] %153)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32, ptr %3, align 4
  %158 = add i32 %157, %124
  store i32 %158, ptr %3, align 4
  br label %159

159:                                              ; preds = %156, %150, %120, %112, %95, %66, %51
  %160 = phi i32 [ %154, %150 ], [ 0, %156 ], [ 0, %120 ], [ 0, %66 ], [ %55, %51 ], [ %99, %95 ], [ 0, %112 ]
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfi_intelext_sync(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %18, %1
  %10 = phi i32 [ %22, %18 ], [ 0, %1 ]
  %11 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %10
  %12 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %10, i32 7
  tail call void @mutex_lock(ptr noundef %12) #14
  %13 = load i32, ptr %11, align 4
  br label %14

14:                                               ; preds = %14, %9
  %15 = tail call fastcc i32 @chip_ready(ptr noundef %3, ptr noundef %11, i32 noundef %13, i32 noundef 13) #14
  switch i32 %15, label %16 [
    i32 -11, label %14
    i32 0, label %18
  ]

16:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef %12) #14
  %17 = add nuw i32 %10, 1
  br label %25

18:                                               ; preds = %14
  %19 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %10, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %10, i32 3
  store i32 %20, ptr %21, align 4
  store i32 13, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef %12) #14
  %22 = add nuw i32 %10, 1
  %23 = load i32, ptr %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %9, label %25

25:                                               ; preds = %18, %16, %1
  %26 = phi i32 [ %17, %16 ], [ 0, %1 ], [ %22, %18 ]
  %27 = add i32 %26, -1
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %39, %25
  %30 = phi i32 [ %40, %39 ], [ %27, %25 ]
  %31 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %30, i32 7
  tail call void @mutex_lock(ptr noundef %31) #14
  %32 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %30, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 13
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %30, i32 3
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %32, align 4
  store i32 0, ptr %36, align 4
  %38 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %30, i32 8
  tail call void @__wake_up(ptr noundef %38, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %39

39:                                               ; preds = %35, %29
  tail call void @mutex_unlock(ptr noundef %31) #14
  %40 = add i32 %30, -1
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %29, label %42

42:                                               ; preds = %39, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_lock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = trunc i64 %2 to i32
  %5 = tail call i32 @cfi_varsize_frob(ptr noundef %0, ptr noundef nonnull @do_xxlock_oneblock, i64 noundef %1, i32 noundef %4, ptr noundef nonnull inttoptr (i32 1 to ptr)) #14
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_unlock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = trunc i64 %2 to i32
  %5 = tail call i32 @cfi_varsize_frob(ptr noundef %0, ptr noundef nonnull @do_xxlock_oneblock, i64 noundef %1, i32 noundef %4, ptr noundef nonnull inttoptr (i32 2 to ptr)) #14
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_is_locked(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = trunc i64 %2 to i32
  %5 = tail call i32 @cfi_varsize_frob(ptr noundef %0, ptr noundef nonnull @do_getlockstatus_oneblock, i64 noundef %1, i32 noundef %4, ptr noundef null) #14
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8192
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %7, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %62

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 1
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 19
  %21 = load i32, ptr %20, align 8
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 20
  br label %25

25:                                               ; preds = %58, %23
  %26 = phi i32 [ %21, %23 ], [ %59, %58 ]
  %27 = phi i32 [ 0, %23 ], [ %60, %58 ]
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr %struct.mtd_erase_region_info, ptr %28, i32 %27
  %30 = getelementptr %struct.mtd_erase_region_info, ptr %28, i32 %27, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %58, label %33

33:                                               ; preds = %25
  %34 = getelementptr %struct.mtd_erase_region_info, ptr %28, i32 %27, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.mtd_erase_region_info, ptr %28, i32 %27, i32 1
  br label %39

39:                                               ; preds = %52, %37
  %40 = phi i32 [ 0, %37 ], [ %53, %52 ]
  %41 = load i32, ptr %38, align 8
  %42 = load i64, ptr %29, align 8
  %43 = mul i32 %41, %40
  %44 = trunc i64 %42 to i32
  %45 = add i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = tail call i32 @cfi_varsize_frob(ptr noundef %0, ptr noundef nonnull @do_getlockstatus_oneblock, i64 noundef %46, i32 noundef %41, ptr noundef null) #14
  %48 = icmp eq i32 %47, 0
  %49 = load ptr, ptr %30, align 8
  br i1 %48, label %51, label %50

50:                                               ; preds = %39
  tail call void @_set_bit(i32 noundef %40, ptr noundef %49) #14
  br label %52

51:                                               ; preds = %39
  tail call void @_clear_bit(i32 noundef %40, ptr noundef %49) #14
  br label %52

52:                                               ; preds = %51, %50
  %53 = add nuw i32 %40, 1
  %54 = load i32, ptr %34, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %39, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %20, align 8
  br label %58

58:                                               ; preds = %56, %33, %25
  %59 = phi i32 [ %57, %56 ], [ %26, %33 ], [ %26, %25 ]
  %60 = add nuw nsw i32 %27, 1
  %61 = icmp slt i32 %60, %59
  br i1 %61, label %25, label %62

62:                                               ; preds = %58, %19, %14, %1
  %63 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 11
  %64 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 6
  %65 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %66 = load i32, ptr %63, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %69, label %118

68:                                               ; preds = %99, %97
  tail call void @mutex_unlock(ptr noundef %72) #14
  br label %105

69:                                               ; preds = %101, %62
  %70 = phi i32 [ %102, %101 ], [ 0, %62 ]
  %71 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %70
  %72 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %70, i32 7
  tail call void @mutex_lock(ptr noundef %72) #14
  %73 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %70, i32 2
  %74 = load i32, ptr %73, align 4
  switch i32 %74, label %99 [
    i32 0, label %75
    i32 1, label %75
    i32 2, label %75
    i32 3, label %75
    i32 12, label %101
  ]

75:                                               ; preds = %69, %69, %69, %69
  %76 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %70, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = tail call i32 @cfi_build_cmd(i32 noundef 255, ptr noundef %3, ptr noundef %5) #14
  %81 = load i32, ptr %71, align 4
  %82 = load i32, ptr %64, align 4
  switch i32 %82, label %94 [
    i32 1, label %83
    i32 2, label %87
    i32 4, label %91
  ]

83:                                               ; preds = %79
  %84 = trunc i32 %80 to i8
  %85 = load ptr, ptr %65, align 4
  %86 = getelementptr i8, ptr %85, i32 %81
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %84) #14, !srcloc !10
  br label %95

87:                                               ; preds = %79
  %88 = trunc i32 %80 to i16
  %89 = load ptr, ptr %65, align 4
  %90 = getelementptr i8, ptr %89, i32 %81
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %90, i16 %88) #14, !srcloc !11
  br label %95

91:                                               ; preds = %79
  %92 = load ptr, ptr %65, align 4
  %93 = getelementptr i8, ptr %92, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %80) #14, !srcloc !12
  br label %95

94:                                               ; preds = %79
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

95:                                               ; preds = %91, %87, %83
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %96 = load i32, ptr %73, align 4
  store i32 %96, ptr %76, align 4
  store i32 12, ptr %73, align 4
  br label %101

97:                                               ; preds = %75
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %77) #15
  br label %68

99:                                               ; preds = %69
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %74) #15
  br label %68

101:                                              ; preds = %95, %69
  tail call void @mutex_unlock(ptr noundef %72) #14
  %102 = add nuw nsw i32 %70, 1
  %103 = load i32, ptr %63, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %69, label %118

105:                                              ; preds = %115, %68
  %106 = phi i32 [ %116, %115 ], [ %70, %68 ]
  %107 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %106, i32 7
  tail call void @mutex_lock(ptr noundef %107) #14
  %108 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %106, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 12
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %106, i32 3
  %113 = load i32, ptr %112, align 4
  store i32 %113, ptr %108, align 4
  store i32 0, ptr %112, align 4
  %114 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %106, i32 8
  tail call void @__wake_up(ptr noundef %114, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %115

115:                                              ; preds = %111, %105
  tail call void @mutex_unlock(ptr noundef %107) #14
  %116 = add nsw i32 %106, -1
  %117 = icmp sgt i32 %106, 0
  br i1 %117, label %105, label %118

118:                                              ; preds = %115, %101, %62
  %119 = phi i32 [ 0, %62 ], [ -11, %115 ], [ 0, %101 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfi_intelext_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 6
  %13 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  br label %14

14:                                               ; preds = %40, %11
  %15 = phi i32 [ 0, %11 ], [ %41, %40 ]
  %16 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %15, i32 7
  tail call void @mutex_lock(ptr noundef %16) #14
  %17 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %15, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 12
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %15
  tail call void @fixup_LH28F640BF(ptr noundef %0)
  %22 = tail call i32 @cfi_build_cmd(i32 noundef 255, ptr noundef %3, ptr noundef %5) #14
  %23 = load i32, ptr %21, align 4
  %24 = load i32, ptr %12, align 4
  switch i32 %24, label %36 [
    i32 1, label %25
    i32 2, label %29
    i32 4, label %33
  ]

25:                                               ; preds = %20
  %26 = trunc i32 %22 to i8
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr i8, ptr %27, i32 %23
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %26) #14, !srcloc !10
  br label %37

29:                                               ; preds = %20
  %30 = trunc i32 %22 to i16
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr i8, ptr %31, i32 %23
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %30) #14, !srcloc !11
  br label %37

33:                                               ; preds = %20
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr i8, ptr %34, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %22) #14, !srcloc !12
  br label %37

36:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

37:                                               ; preds = %33, %29, %25
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  store i32 0, ptr %17, align 4
  %38 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %15, i32 3
  store i32 0, ptr %38, align 4
  %39 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %15, i32 8
  tail call void @__wake_up(ptr noundef %39, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %40

40:                                               ; preds = %37, %14
  tail call void @mutex_unlock(ptr noundef %16) #14
  %41 = add nuw nsw i32 %15, 1
  %42 = load i32, ptr %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %14, label %44

44:                                               ; preds = %40, %1
  %45 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 8192
  %48 = icmp ne i32 %47, 0
  %49 = icmp ne ptr %7, null
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %96

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %7, i32 0, i32 3
  %53 = load i32, ptr %52, align 1
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %96, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 19
  %58 = load i32, ptr %57, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 20
  br label %62

62:                                               ; preds = %92, %60
  %63 = phi i32 [ 0, %60 ], [ %93, %92 ]
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr %struct.mtd_erase_region_info, ptr %64, i32 %63
  %66 = getelementptr %struct.mtd_erase_region_info, ptr %64, i32 %63, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %92, label %69

69:                                               ; preds = %62
  %70 = getelementptr %struct.mtd_erase_region_info, ptr %64, i32 %63, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @_find_next_zero_bit_le(ptr noundef nonnull %67, i32 noundef %71, i32 noundef 0) #14
  %73 = load i32, ptr %70, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = getelementptr %struct.mtd_erase_region_info, ptr %64, i32 %63, i32 1
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ %72, %75 ], [ %89, %77 ]
  %79 = load i32, ptr %76, align 8
  %80 = load i64, ptr %65, align 8
  %81 = mul i32 %79, %78
  %82 = trunc i64 %80 to i32
  %83 = add i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = tail call i32 @cfi_varsize_frob(ptr noundef %0, ptr noundef nonnull @do_xxlock_oneblock, i64 noundef %84, i32 noundef %79, ptr noundef nonnull inttoptr (i32 2 to ptr)) #14
  %86 = load ptr, ptr %66, align 8
  %87 = load i32, ptr %70, align 4
  %88 = add nuw i32 %78, 1
  %89 = tail call i32 @_find_next_zero_bit_le(ptr noundef %86, i32 noundef %87, i32 noundef %88) #14
  %90 = load i32, ptr %70, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %77, label %92

92:                                               ; preds = %77, %69, %62
  %93 = add nuw nsw i32 %63, 1
  %94 = load i32, ptr %57, align 8
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %62, label %96

96:                                               ; preds = %92, %56, %51, %44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_reboot(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -208
  tail call fastcc void @cfi_intelext_reset(ptr noundef %4)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_fixup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfi_read_pri(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fixup_convert_atmel_pri(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %7, i32 5
  %9 = load i8, ptr %8, align 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(14) %8, i8 0, i32 14, i1 false)
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %10) #15
  %12 = and i32 %10, 7
  %13 = shl nuw nsw i32 %10, 6
  %14 = and i32 %13, 512
  %15 = or i32 %14, %12
  %16 = shl nuw nsw i32 %10, 2
  %17 = and i32 %16, 128
  %18 = or i32 %15, %17
  %19 = lshr i32 %10, 2
  %20 = and i32 %19, 16
  %21 = or i32 %18, %20
  %22 = lshr i32 %10, 1
  %23 = and i32 %22, 64
  %24 = or i32 %21, %23
  store i32 %24, ptr %8, align 1
  %25 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cfi_ident, ptr %26, i32 0, i32 10
  store i8 0, ptr %27, align 1
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.cfi_ident, ptr %28, i32 0, i32 14
  store i8 0, ptr %29, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fixup_at49bv640dx_lock(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 1
  %10 = or i32 %9, 32
  store i32 %10, ptr %8, align 1
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 8192
  store i32 %13, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fixup_use_write_buffers(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 10
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 25
  store ptr @cfi_intelext_write_buffers, ptr %13, align 8
  %14 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 36
  store ptr @cfi_intelext_writev, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fixup_st_m28w320ct(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 10
  store i8 0, ptr %8, align 1
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.cfi_ident, ptr %9, i32 0, i32 14
  store i8 0, ptr %10, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fixup_st_m28w320cb(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 21
  %9 = getelementptr [0 x i32], ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 1
  %11 = and i32 %10, -65536
  %12 = or i32 %11, 62
  store i32 %12, ptr %9, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fixup_unlock_powerup_lock(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 1
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  %14 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 8192
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fixup_LH28F640BF(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 176
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -4
  %15 = icmp eq i32 %14, 176
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #15
  %18 = tail call i32 @cfi_build_cmd(i32 noundef 96, ptr noundef %3, ptr noundef %5) #14
  %19 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %32 [
    i32 1, label %21
    i32 2, label %25
    i32 4, label %29
  ]

21:                                               ; preds = %16
  %22 = trunc i32 %18 to i8
  %23 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %22) #14, !srcloc !10
  br label %33

25:                                               ; preds = %16
  %26 = trunc i32 %18 to i16
  %27 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %26) #14, !srcloc !11
  br label %33

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %18) #14, !srcloc !12
  br label %33

32:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

33:                                               ; preds = %29, %25, %21
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %34 = tail call i32 @cfi_build_cmd(i32 noundef 4, ptr noundef %3, ptr noundef %5) #14
  %35 = load i32, ptr %19, align 4
  switch i32 %35, label %47 [
    i32 1, label %36
    i32 2, label %40
    i32 4, label %44
  ]

36:                                               ; preds = %33
  %37 = trunc i32 %34 to i8
  %38 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 %37) #14, !srcloc !10
  br label %48

40:                                               ; preds = %33
  %41 = trunc i32 %34 to i16
  %42 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %41) #14, !srcloc !11
  br label %48

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %34) #14, !srcloc !12
  br label %48

47:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

48:                                               ; preds = %44, %40, %36
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  %50 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %7, i32 0, i32 3
  %51 = load i32, ptr %50, align 1
  %52 = and i32 %51, -513
  store i32 %52, ptr %50, align 1
  br label %53

53:                                               ; preds = %48, %11, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_write_buffers(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.kvec, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds %struct.kvec, ptr %6, i32 0, i32 1
  store i32 %2, ptr %7, align 4
  %8 = call i32 @cfi_intelext_writev(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 1, i64 noundef %1, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_writev(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cfi_ident, ptr %13, i32 0, i32 19
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i32
  %17 = shl i32 %11, %16
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %518, label %19

19:                                               ; preds = %19, %5
  %20 = phi i32 [ %24, %19 ], [ 0, %5 ]
  %21 = phi i32 [ %25, %19 ], [ 0, %5 ]
  %22 = getelementptr %struct.kvec, ptr %1, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %20
  %25 = add nuw i32 %21, 1
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %19

27:                                               ; preds = %19
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %518, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = ashr i64 %3, %32
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, %31
  %36 = trunc i64 %3 to i32
  %37 = sub i32 %36, %35
  %38 = add i32 %17, -1
  %39 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 8
  %40 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 6
  %41 = getelementptr inbounds %struct.map_info, ptr %7, i32 0, i32 3
  %42 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 11
  br label %43

43:                                               ; preds = %510, %29
  %44 = phi i16 [ %15, %29 ], [ %517, %510 ]
  %45 = phi ptr [ %13, %29 ], [ %515, %510 ]
  %46 = phi i32 [ %11, %29 ], [ %513, %510 ]
  %47 = phi ptr [ %9, %29 ], [ %511, %510 ]
  %48 = phi ptr [ %1, %29 ], [ %485, %510 ]
  %49 = phi i32 [ 0, %29 ], [ %486, %510 ]
  %50 = phi i32 [ %34, %29 ], [ %506, %510 ]
  %51 = phi i32 [ %37, %29 ], [ %507, %510 ]
  %52 = phi i32 [ %24, %29 ], [ %497, %510 ]
  %53 = and i32 %51, %38
  %54 = sub i32 %17, %53
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 %52)
  %56 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %50
  %57 = zext i16 %44 to i32
  %58 = shl i32 %46, %57
  %59 = load i32, ptr %56, align 4
  %60 = add i32 %59, %51
  %61 = sub i32 0, %58
  %62 = and i32 %60, %61
  %63 = getelementptr inbounds %struct.cfi_private, ptr %47, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 176
  br i1 %65, label %66, label %71

66:                                               ; preds = %43
  %67 = getelementptr inbounds %struct.cfi_private, ptr %47, i32 0, i32 10
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, -4
  %70 = icmp eq i32 %69, 176
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %43
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi i32 [ %62, %71 ], [ %60, %66 ]
  %74 = getelementptr inbounds %struct.cfi_ident, ptr %45, i32 0, i32 1
  %75 = load i16, ptr %74, align 1
  %76 = icmp eq i16 %75, 512
  %77 = select i1 %76, i32 233, i32 232
  %78 = tail call i32 @cfi_build_cmd(i32 noundef %77, ptr noundef %7, ptr noundef %47) #14
  %79 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %50, i32 7
  tail call void @mutex_lock(ptr noundef %79) #14
  %80 = tail call fastcc i32 @get_chip(ptr noundef %7, ptr noundef %56, i32 noundef %73, i32 noundef 7) #14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  tail call void @mutex_unlock(ptr noundef %79) #14
  br label %518

83:                                               ; preds = %72
  %84 = load ptr, ptr %39, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void %84(ptr noundef %7, i32 noundef 1) #14
  br label %87

87:                                               ; preds = %86, %83
  %88 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %50, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %107, label %91

91:                                               ; preds = %87
  %92 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %7, ptr noundef %47) #14
  %93 = load i32, ptr %40, align 4
  switch i32 %93, label %105 [
    i32 1, label %94
    i32 2, label %98
    i32 4, label %102
  ]

94:                                               ; preds = %91
  %95 = trunc i32 %92 to i8
  %96 = load ptr, ptr %41, align 4
  %97 = getelementptr i8, ptr %96, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %97, i8 %95) #14, !srcloc !10
  br label %106

98:                                               ; preds = %91
  %99 = trunc i32 %92 to i16
  %100 = load ptr, ptr %41, align 4
  %101 = getelementptr i8, ptr %100, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %101, i16 %99) #14, !srcloc !11
  br label %106

102:                                              ; preds = %91
  %103 = load ptr, ptr %41, align 4
  %104 = getelementptr i8, ptr %103, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %92) #14, !srcloc !12
  br label %106

105:                                              ; preds = %91
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

106:                                              ; preds = %102, %98, %94
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  store i32 1, ptr %88, align 4
  br label %107

107:                                              ; preds = %106, %87
  %108 = load i32, ptr %40, align 4
  switch i32 %108, label %123 [
    i32 1, label %109
    i32 2, label %114
    i32 4, label %119
  ]

109:                                              ; preds = %107
  %110 = load ptr, ptr %41, align 4
  %111 = getelementptr i8, ptr %110, i32 %73
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %111) #14, !srcloc !16
  %113 = zext i8 %112 to i32
  br label %124

114:                                              ; preds = %107
  %115 = load ptr, ptr %41, align 4
  %116 = getelementptr i8, ptr %115, i32 %73
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %116) #14, !srcloc !17
  %118 = zext i16 %117 to i32
  br label %124

119:                                              ; preds = %107
  %120 = load ptr, ptr %41, align 4
  %121 = getelementptr i8, ptr %120, i32 %73
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #14, !srcloc !18
  br label %124

123:                                              ; preds = %107
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

124:                                              ; preds = %119, %114, %109
  %125 = phi i32 [ %113, %109 ], [ %118, %114 ], [ %122, %119 ]
  %126 = tail call i32 @cfi_build_cmd(i32 noundef 48, ptr noundef %7, ptr noundef %47) #14
  %127 = and i32 %126, %125
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %161, label %129

129:                                              ; preds = %124
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %125) #15
  %131 = tail call i32 @cfi_build_cmd(i32 noundef 80, ptr noundef %7, ptr noundef %47) #14
  %132 = load i32, ptr %40, align 4
  switch i32 %132, label %144 [
    i32 1, label %133
    i32 2, label %137
    i32 4, label %141
  ]

133:                                              ; preds = %129
  %134 = trunc i32 %131 to i8
  %135 = load ptr, ptr %41, align 4
  %136 = getelementptr i8, ptr %135, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %136, i8 %134) #14, !srcloc !10
  br label %145

137:                                              ; preds = %129
  %138 = trunc i32 %131 to i16
  %139 = load ptr, ptr %41, align 4
  %140 = getelementptr i8, ptr %139, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %140, i16 %138) #14, !srcloc !11
  br label %145

141:                                              ; preds = %129
  %142 = load ptr, ptr %41, align 4
  %143 = getelementptr i8, ptr %142, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %131) #14, !srcloc !12
  br label %145

144:                                              ; preds = %129
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

145:                                              ; preds = %141, %137, %133
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %146 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %7, ptr noundef %47) #14
  %147 = load i32, ptr %40, align 4
  switch i32 %147, label %159 [
    i32 1, label %148
    i32 2, label %152
    i32 4, label %156
  ]

148:                                              ; preds = %145
  %149 = trunc i32 %146 to i8
  %150 = load ptr, ptr %41, align 4
  %151 = getelementptr i8, ptr %150, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %151, i8 %149) #14, !srcloc !10
  br label %160

152:                                              ; preds = %145
  %153 = trunc i32 %146 to i16
  %154 = load ptr, ptr %41, align 4
  %155 = getelementptr i8, ptr %154, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %155, i16 %153) #14, !srcloc !11
  br label %160

156:                                              ; preds = %145
  %157 = load ptr, ptr %41, align 4
  %158 = getelementptr i8, ptr %157, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %146) #14, !srcloc !12
  br label %160

159:                                              ; preds = %145
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

160:                                              ; preds = %156, %152, %148
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  br label %161

161:                                              ; preds = %160, %124
  store i32 8, ptr %88, align 4
  %162 = load i32, ptr %40, align 4
  switch i32 %162, label %174 [
    i32 1, label %163
    i32 2, label %167
    i32 4, label %171
  ]

163:                                              ; preds = %161
  %164 = trunc i32 %78 to i8
  %165 = load ptr, ptr %41, align 4
  %166 = getelementptr i8, ptr %165, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %166, i8 %164) #14, !srcloc !10
  br label %175

167:                                              ; preds = %161
  %168 = trunc i32 %78 to i16
  %169 = load ptr, ptr %41, align 4
  %170 = getelementptr i8, ptr %169, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %170, i16 %168) #14, !srcloc !11
  br label %175

171:                                              ; preds = %161
  %172 = load ptr, ptr %41, align 4
  %173 = getelementptr i8, ptr %172, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %78) #14, !srcloc !12
  br label %175

174:                                              ; preds = %161
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

175:                                              ; preds = %171, %167, %163
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %176 = tail call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %7, ptr noundef %56, i32 noundef %73, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %262, label %178

178:                                              ; preds = %175
  %179 = load i32, ptr %40, align 4
  switch i32 %179, label %194 [
    i32 1, label %180
    i32 2, label %185
    i32 4, label %190
  ]

180:                                              ; preds = %178
  %181 = load ptr, ptr %41, align 4
  %182 = getelementptr i8, ptr %181, i32 %73
  %183 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %182) #14, !srcloc !16
  %184 = zext i8 %183 to i32
  br label %195

185:                                              ; preds = %178
  %186 = load ptr, ptr %41, align 4
  %187 = getelementptr i8, ptr %186, i32 %73
  %188 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %187) #14, !srcloc !17
  %189 = zext i16 %188 to i32
  br label %195

190:                                              ; preds = %178
  %191 = load ptr, ptr %41, align 4
  %192 = getelementptr i8, ptr %191, i32 %73
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #14, !srcloc !18
  br label %195

194:                                              ; preds = %178
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

195:                                              ; preds = %190, %185, %180
  %196 = phi i32 [ %184, %180 ], [ %189, %185 ], [ %193, %190 ]
  %197 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %7, ptr noundef %47) #14
  %198 = load i32, ptr %40, align 4
  switch i32 %198, label %210 [
    i32 1, label %199
    i32 2, label %203
    i32 4, label %207
  ]

199:                                              ; preds = %195
  %200 = trunc i32 %197 to i8
  %201 = load ptr, ptr %41, align 4
  %202 = getelementptr i8, ptr %201, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %202, i8 %200) #14, !srcloc !10
  br label %211

203:                                              ; preds = %195
  %204 = trunc i32 %197 to i16
  %205 = load ptr, ptr %41, align 4
  %206 = getelementptr i8, ptr %205, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %206, i16 %204) #14, !srcloc !11
  br label %211

207:                                              ; preds = %195
  %208 = load ptr, ptr %41, align 4
  %209 = getelementptr i8, ptr %208, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %197) #14, !srcloc !12
  br label %211

210:                                              ; preds = %195
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

211:                                              ; preds = %207, %203, %199
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  store i32 1, ptr %88, align 4
  %212 = load i32, ptr %40, align 4
  switch i32 %212, label %227 [
    i32 1, label %213
    i32 2, label %218
    i32 4, label %223
  ]

213:                                              ; preds = %211
  %214 = load ptr, ptr %41, align 4
  %215 = getelementptr i8, ptr %214, i32 %73
  %216 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %215) #14, !srcloc !16
  %217 = zext i8 %216 to i32
  br label %228

218:                                              ; preds = %211
  %219 = load ptr, ptr %41, align 4
  %220 = getelementptr i8, ptr %219, i32 %73
  %221 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %220) #14, !srcloc !17
  %222 = zext i16 %221 to i32
  br label %228

223:                                              ; preds = %211
  %224 = load ptr, ptr %41, align 4
  %225 = getelementptr i8, ptr %224, i32 %73
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #14, !srcloc !18
  br label %228

227:                                              ; preds = %211
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

228:                                              ; preds = %223, %218, %213
  %229 = phi i32 [ %217, %213 ], [ %222, %218 ], [ %226, %223 ]
  %230 = tail call i32 @cfi_build_cmd(i32 noundef 80, ptr noundef %7, ptr noundef %47) #14
  %231 = load i32, ptr %40, align 4
  switch i32 %231, label %243 [
    i32 1, label %232
    i32 2, label %236
    i32 4, label %240
  ]

232:                                              ; preds = %228
  %233 = trunc i32 %230 to i8
  %234 = load ptr, ptr %41, align 4
  %235 = getelementptr i8, ptr %234, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %235, i8 %233) #14, !srcloc !10
  br label %244

236:                                              ; preds = %228
  %237 = trunc i32 %230 to i16
  %238 = load ptr, ptr %41, align 4
  %239 = getelementptr i8, ptr %238, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %239, i16 %237) #14, !srcloc !11
  br label %244

240:                                              ; preds = %228
  %241 = load ptr, ptr %41, align 4
  %242 = getelementptr i8, ptr %241, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %230) #14, !srcloc !12
  br label %244

243:                                              ; preds = %228
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

244:                                              ; preds = %240, %236, %232
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %245 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %7, ptr noundef %47) #14
  %246 = load i32, ptr %40, align 4
  switch i32 %246, label %258 [
    i32 1, label %247
    i32 2, label %251
    i32 4, label %255
  ]

247:                                              ; preds = %244
  %248 = trunc i32 %245 to i8
  %249 = load ptr, ptr %41, align 4
  %250 = getelementptr i8, ptr %249, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %250, i8 %248) #14, !srcloc !10
  br label %259

251:                                              ; preds = %244
  %252 = trunc i32 %245 to i16
  %253 = load ptr, ptr %41, align 4
  %254 = getelementptr i8, ptr %253, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %254, i16 %252) #14, !srcloc !11
  br label %259

255:                                              ; preds = %244
  %256 = load ptr, ptr %41, align 4
  %257 = getelementptr i8, ptr %256, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %245) #14, !srcloc !12
  br label %259

258:                                              ; preds = %244
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

259:                                              ; preds = %255, %251, %247
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %260 = load ptr, ptr %7, align 4
  %261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %260, i32 noundef %196, i32 noundef %229) #15
  br label %484

262:                                              ; preds = %175
  %263 = sub i32 0, %60
  %264 = load i32, ptr %40, align 4
  %265 = add i32 %264, -1
  %266 = and i32 %265, %263
  %267 = add i32 %265, %55
  %268 = sub i32 %267, %266
  %269 = sdiv i32 %268, %264
  %270 = icmp eq i32 %266, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %262
  %272 = add i32 %269, -1
  br label %281

273:                                              ; preds = %262
  %274 = sub i32 %264, %266
  %275 = sub i32 %60, %274
  %276 = icmp slt i32 %264, 4
  %277 = shl i32 %264, 3
  %278 = shl nsw i32 -1, %277
  %279 = xor i32 %278, -1
  %280 = select i1 %276, i32 %279, i32 -1
  br label %281

281:                                              ; preds = %273, %271
  %282 = phi i32 [ %269, %273 ], [ %272, %271 ]
  %283 = phi i32 [ %274, %273 ], [ 0, %271 ]
  %284 = phi i32 [ %280, %273 ], [ 0, %271 ]
  %285 = phi i32 [ %275, %273 ], [ %60, %271 ]
  %286 = tail call i32 @cfi_build_cmd(i32 noundef %282, ptr noundef %7, ptr noundef %47) #14
  %287 = load i32, ptr %40, align 4
  switch i32 %287, label %299 [
    i32 1, label %288
    i32 2, label %292
    i32 4, label %296
  ]

288:                                              ; preds = %281
  %289 = trunc i32 %286 to i8
  %290 = load ptr, ptr %41, align 4
  %291 = getelementptr i8, ptr %290, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %291, i8 %289) #14, !srcloc !10
  br label %300

292:                                              ; preds = %281
  %293 = trunc i32 %286 to i16
  %294 = load ptr, ptr %41, align 4
  %295 = getelementptr i8, ptr %294, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %295, i16 %293) #14, !srcloc !11
  br label %300

296:                                              ; preds = %281
  %297 = load ptr, ptr %41, align 4
  %298 = getelementptr i8, ptr %297, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %286) #14, !srcloc !12
  br label %300

299:                                              ; preds = %281
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

300:                                              ; preds = %296, %292, %288
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %301 = load i32, ptr %40, align 4
  br label %302

302:                                              ; preds = %369, %300
  %303 = phi i32 [ %301, %300 ], [ %371, %369 ]
  %304 = phi i32 [ %49, %300 ], [ %376, %369 ]
  %305 = phi ptr [ %48, %300 ], [ %378, %369 ]
  %306 = phi i32 [ %283, %300 ], [ %372, %369 ]
  %307 = phi i32 [ %284, %300 ], [ %347, %369 ]
  %308 = phi i32 [ %55, %300 ], [ %348, %369 ]
  %309 = phi i32 [ %285, %300 ], [ %373, %369 ]
  %310 = sub i32 %303, %306
  %311 = getelementptr inbounds %struct.kvec, ptr %305, i32 0, i32 1
  %312 = load i32, ptr %311, align 4
  %313 = sub i32 %312, %304
  %314 = tail call i32 @llvm.umin.i32(i32 %310, i32 %313) #14
  %315 = tail call i32 @llvm.smin.i32(i32 %314, i32 %308) #14
  %316 = icmp eq i32 %306, 0
  %317 = icmp slt i32 %308, %303
  %318 = select i1 %316, i1 %317, i1 false
  br i1 %318, label %319, label %325

319:                                              ; preds = %302
  %320 = icmp slt i32 %303, 4
  %321 = shl i32 %303, 3
  %322 = shl nsw i32 -1, %321
  %323 = xor i32 %322, -1
  %324 = select i1 %320, i32 %323, i32 -1
  br label %325

325:                                              ; preds = %319, %302
  %326 = phi i32 [ %307, %302 ], [ %324, %319 ]
  %327 = load ptr, ptr %305, align 4
  %328 = getelementptr i8, ptr %327, i32 %304
  %329 = add i32 %315, %306
  %330 = icmp sgt i32 %329, %306
  br i1 %330, label %331, label %346

331:                                              ; preds = %331, %325
  %332 = phi i32 [ %343, %331 ], [ %326, %325 ]
  %333 = phi i32 [ %344, %331 ], [ %306, %325 ]
  %334 = shl i32 %333, 3
  %335 = shl i32 255, %334
  %336 = xor i32 %335, -1
  %337 = and i32 %332, %336
  %338 = sub i32 %333, %306
  %339 = getelementptr i8, ptr %328, i32 %338
  %340 = load i8, ptr %339, align 1
  %341 = zext i8 %340 to i32
  %342 = shl i32 %341, %334
  %343 = or i32 %342, %337
  %344 = add nsw i32 %333, 1
  %345 = icmp eq i32 %344, %329
  br i1 %345, label %346, label %331

346:                                              ; preds = %331, %325
  %347 = phi i32 [ %326, %325 ], [ %343, %331 ]
  %348 = sub i32 %308, %315
  %349 = icmp eq i32 %348, 0
  %350 = icmp eq i32 %329, %303
  %351 = select i1 %349, i1 true, i1 %350
  br i1 %351, label %352, label %369

352:                                              ; preds = %346
  switch i32 %303, label %364 [
    i32 1, label %353
    i32 2, label %357
    i32 4, label %361
  ]

353:                                              ; preds = %352
  %354 = trunc i32 %347 to i8
  %355 = load ptr, ptr %41, align 4
  %356 = getelementptr i8, ptr %355, i32 %309
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %356, i8 %354) #14, !srcloc !10
  br label %365

357:                                              ; preds = %352
  %358 = trunc i32 %347 to i16
  %359 = load ptr, ptr %41, align 4
  %360 = getelementptr i8, ptr %359, i32 %309
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %360, i16 %358) #14, !srcloc !11
  br label %365

361:                                              ; preds = %352
  %362 = load ptr, ptr %41, align 4
  %363 = getelementptr i8, ptr %362, i32 %309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %363, i32 %347) #14, !srcloc !12
  br label %365

364:                                              ; preds = %352
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

365:                                              ; preds = %361, %357, %353
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %366 = load i32, ptr %40, align 4
  %367 = add i32 %366, %309
  %368 = load i32, ptr %311, align 4
  br label %369

369:                                              ; preds = %365, %346
  %370 = phi i32 [ %368, %365 ], [ %312, %346 ]
  %371 = phi i32 [ %366, %365 ], [ %303, %346 ]
  %372 = phi i32 [ 0, %365 ], [ %329, %346 ]
  %373 = phi i32 [ %367, %365 ], [ %309, %346 ]
  %374 = add i32 %315, %304
  %375 = icmp eq i32 %374, %370
  %376 = select i1 %375, i32 0, i32 %374
  %377 = zext i1 %375 to i32
  %378 = getelementptr %struct.kvec, ptr %305, i32 %377
  br i1 %349, label %379, label %302

379:                                              ; preds = %369
  %380 = tail call i32 @cfi_build_cmd(i32 noundef 208, ptr noundef %7, ptr noundef %47) #14
  %381 = load i32, ptr %40, align 4
  switch i32 %381, label %393 [
    i32 1, label %382
    i32 2, label %386
    i32 4, label %390
  ]

382:                                              ; preds = %379
  %383 = trunc i32 %380 to i8
  %384 = load ptr, ptr %41, align 4
  %385 = getelementptr i8, ptr %384, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %385, i8 %383) #14, !srcloc !10
  br label %394

386:                                              ; preds = %379
  %387 = trunc i32 %380 to i16
  %388 = load ptr, ptr %41, align 4
  %389 = getelementptr i8, ptr %388, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %389, i16 %387) #14, !srcloc !11
  br label %394

390:                                              ; preds = %379
  %391 = load ptr, ptr %41, align 4
  %392 = getelementptr i8, ptr %391, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %392, i32 %380) #14, !srcloc !12
  br label %394

393:                                              ; preds = %379
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

394:                                              ; preds = %390, %386, %382
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  store i32 7, ptr %88, align 4
  %395 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %50, i32 10
  %396 = load i32, ptr %395, align 4
  %397 = getelementptr %struct.cfi_private, ptr %9, i32 0, i32 15, i32 %50, i32 13
  %398 = load i32, ptr %397, align 4
  %399 = tail call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %7, ptr noundef %56, i32 noundef %73, i32 noundef %60, i32 noundef %55, i32 noundef %396, i32 noundef %398) #14
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %419, label %401

401:                                              ; preds = %394
  %402 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %7, ptr noundef %47) #14
  %403 = load i32, ptr %40, align 4
  switch i32 %403, label %415 [
    i32 1, label %404
    i32 2, label %408
    i32 4, label %412
  ]

404:                                              ; preds = %401
  %405 = trunc i32 %402 to i8
  %406 = load ptr, ptr %41, align 4
  %407 = getelementptr i8, ptr %406, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %407, i8 %405) #14, !srcloc !10
  br label %416

408:                                              ; preds = %401
  %409 = trunc i32 %402 to i16
  %410 = load ptr, ptr %41, align 4
  %411 = getelementptr i8, ptr %410, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %411, i16 %409) #14, !srcloc !11
  br label %416

412:                                              ; preds = %401
  %413 = load ptr, ptr %41, align 4
  %414 = getelementptr i8, ptr %413, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %414, i32 %402) #14, !srcloc !12
  br label %416

415:                                              ; preds = %401
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

416:                                              ; preds = %412, %408, %404
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  store i32 1, ptr %88, align 4
  %417 = load ptr, ptr %7, align 4
  %418 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %417) #15
  br label %484

419:                                              ; preds = %394
  %420 = load i32, ptr %40, align 4
  switch i32 %420, label %435 [
    i32 1, label %421
    i32 2, label %426
    i32 4, label %431
  ]

421:                                              ; preds = %419
  %422 = load ptr, ptr %41, align 4
  %423 = getelementptr i8, ptr %422, i32 %73
  %424 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %423) #14, !srcloc !16
  %425 = zext i8 %424 to i32
  br label %436

426:                                              ; preds = %419
  %427 = load ptr, ptr %41, align 4
  %428 = getelementptr i8, ptr %427, i32 %73
  %429 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %428) #14, !srcloc !17
  %430 = zext i16 %429 to i32
  br label %436

431:                                              ; preds = %419
  %432 = load ptr, ptr %41, align 4
  %433 = getelementptr i8, ptr %432, i32 %73
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %433) #14, !srcloc !18
  br label %436

435:                                              ; preds = %419
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

436:                                              ; preds = %431, %426, %421
  %437 = phi i32 [ %425, %421 ], [ %430, %426 ], [ %434, %431 ]
  %438 = tail call i32 @cfi_build_cmd(i32 noundef 26, ptr noundef %7, ptr noundef %47) #14
  %439 = and i32 %438, %437
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %484, label %441

441:                                              ; preds = %436
  %442 = insertvalue [1 x i32] poison, i32 %437, 0
  %443 = tail call i32 @cfi_merge_status([1 x i32] %442, ptr noundef %7, ptr noundef %47) #14
  %444 = tail call i32 @cfi_build_cmd(i32 noundef 80, ptr noundef %7, ptr noundef %47) #14
  %445 = load i32, ptr %40, align 4
  switch i32 %445, label %457 [
    i32 1, label %446
    i32 2, label %450
    i32 4, label %454
  ]

446:                                              ; preds = %441
  %447 = trunc i32 %444 to i8
  %448 = load ptr, ptr %41, align 4
  %449 = getelementptr i8, ptr %448, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %449, i8 %447) #14, !srcloc !10
  br label %458

450:                                              ; preds = %441
  %451 = trunc i32 %444 to i16
  %452 = load ptr, ptr %41, align 4
  %453 = getelementptr i8, ptr %452, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %453, i16 %451) #14, !srcloc !11
  br label %458

454:                                              ; preds = %441
  %455 = load ptr, ptr %41, align 4
  %456 = getelementptr i8, ptr %455, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %456, i32 %444) #14, !srcloc !12
  br label %458

457:                                              ; preds = %441
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

458:                                              ; preds = %454, %450, %446
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %459 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %7, ptr noundef %47) #14
  %460 = load i32, ptr %40, align 4
  switch i32 %460, label %472 [
    i32 1, label %461
    i32 2, label %465
    i32 4, label %469
  ]

461:                                              ; preds = %458
  %462 = trunc i32 %459 to i8
  %463 = load ptr, ptr %41, align 4
  %464 = getelementptr i8, ptr %463, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %464, i8 %462) #14, !srcloc !10
  br label %473

465:                                              ; preds = %458
  %466 = trunc i32 %459 to i16
  %467 = load ptr, ptr %41, align 4
  %468 = getelementptr i8, ptr %467, i32 %73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %468, i16 %466) #14, !srcloc !11
  br label %473

469:                                              ; preds = %458
  %470 = load ptr, ptr %41, align 4
  %471 = getelementptr i8, ptr %470, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %471, i32 %459) #14, !srcloc !12
  br label %473

472:                                              ; preds = %458
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

473:                                              ; preds = %469, %465, %461
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %474 = and i32 %443, 2
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %484

476:                                              ; preds = %473
  %477 = and i32 %443, 8
  %478 = icmp eq i32 %477, 0
  %479 = load ptr, ptr %7, align 4
  br i1 %478, label %482, label %480

480:                                              ; preds = %476
  %481 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %479) #15
  br label %484

482:                                              ; preds = %476
  %483 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %479, i32 noundef %443) #15
  br label %484

484:                                              ; preds = %482, %480, %473, %436, %416, %259
  %485 = phi ptr [ %378, %436 ], [ %378, %482 ], [ %378, %480 ], [ %378, %473 ], [ %378, %416 ], [ %48, %259 ]
  %486 = phi i32 [ %376, %436 ], [ %376, %482 ], [ %376, %480 ], [ %376, %473 ], [ %376, %416 ], [ %49, %259 ]
  %487 = phi i32 [ 0, %436 ], [ -22, %482 ], [ -5, %480 ], [ -30, %473 ], [ %399, %416 ], [ %176, %259 ]
  %488 = load ptr, ptr %39, align 4
  %489 = icmp eq ptr %488, null
  br i1 %489, label %491, label %490

490:                                              ; preds = %484
  tail call void %488(ptr noundef %7, i32 noundef 0) #14
  br label %491

491:                                              ; preds = %490, %484
  tail call fastcc void @put_chip(ptr noundef %7, ptr noundef %56) #14
  tail call void @mutex_unlock(ptr noundef %79) #14
  %492 = icmp eq i32 %487, 0
  br i1 %492, label %493, label %518

493:                                              ; preds = %491
  %494 = add i32 %55, %51
  %495 = load i32, ptr %4, align 4
  %496 = add i32 %495, %55
  store i32 %496, ptr %4, align 4
  %497 = sub i32 %52, %55
  %498 = load i32, ptr %30, align 4
  %499 = lshr i32 %494, %498
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %505, label %501

501:                                              ; preds = %493
  %502 = add i32 %50, 1
  %503 = load i32, ptr %42, align 4
  %504 = icmp eq i32 %502, %503
  br i1 %504, label %518, label %505

505:                                              ; preds = %501, %493
  %506 = phi i32 [ %502, %501 ], [ %50, %493 ]
  %507 = phi i32 [ 0, %501 ], [ %494, %493 ]
  %508 = tail call i32 @__cond_resched() #14
  %509 = icmp eq i32 %497, 0
  br i1 %509, label %518, label %510

510:                                              ; preds = %505
  %511 = load ptr, ptr %8, align 4
  %512 = getelementptr inbounds %struct.cfi_private, ptr %511, i32 0, i32 2
  %513 = load i32, ptr %512, align 4
  %514 = getelementptr inbounds %struct.cfi_private, ptr %511, i32 0, i32 8
  %515 = load ptr, ptr %514, align 4
  %516 = getelementptr inbounds %struct.cfi_ident, ptr %515, i32 0, i32 19
  %517 = load i16, ptr %516, align 1
  br label %43

518:                                              ; preds = %505, %501, %491, %82, %27, %5
  %519 = phi i32 [ 0, %27 ], [ %80, %82 ], [ 0, %5 ], [ %487, %491 ], [ 0, %501 ], [ 0, %505 ]
  ret i32 %519
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_build_cmd(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_chip(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #14
  store i32 0, ptr %5, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @default_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 15
  %12 = icmp eq i32 %3, 4
  %13 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  %15 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %16 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 8
  br label %17

17:                                               ; preds = %38, %4
  %18 = load ptr, ptr %11, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %17
  switch i32 %3, label %58 [
    i32 20, label %21
    i32 9, label %21
    i32 7, label %21
    i32 4, label %21
  ]

21:                                               ; preds = %20, %20, %20, %20
  %22 = load i32, ptr %13, align 4
  %23 = icmp eq i32 %22, 13
  br i1 %23, label %58, label %24

24:                                               ; preds = %21
  call void @mutex_lock(ptr noundef nonnull %18) #14
  %25 = getelementptr inbounds %struct.flchip_shared, ptr %18, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = icmp eq ptr %26, %1
  %29 = or i1 %27, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.flchip, ptr %26, i32 0, i32 7
  %32 = call i32 @mutex_trylock(ptr noundef %31) #14
  call void @mutex_unlock(ptr noundef nonnull %18) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  call void @mutex_unlock(ptr noundef %14) #14
  %35 = load i32, ptr %26, align 4
  %36 = call fastcc i32 @chip_ready(ptr noundef %0, ptr noundef nonnull %26, i32 noundef %35, i32 noundef %3)
  call void @mutex_lock(ptr noundef %14) #14
  switch i32 %36, label %39 [
    i32 -11, label %37
    i32 0, label %40
  ]

37:                                               ; preds = %34
  call void @mutex_unlock(ptr noundef %31) #14
  br label %38

38:                                               ; preds = %58, %54, %43, %37, %30
  br label %17

39:                                               ; preds = %34
  call void @mutex_unlock(ptr noundef %31) #14
  br label %61

40:                                               ; preds = %34
  call void @mutex_lock(ptr noundef nonnull %18) #14
  %41 = load i32, ptr %13, align 4
  %42 = icmp eq i32 %41, 13
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call fastcc void @put_chip(ptr noundef %0, ptr noundef nonnull %26)
  call void @mutex_unlock(ptr noundef %31) #14
  br label %38

44:                                               ; preds = %40
  call void @mutex_unlock(ptr noundef %31) #14
  br label %45

45:                                               ; preds = %44, %24
  br i1 %12, label %46, label %56

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.flchip_shared, ptr %18, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.flchip, ptr %48, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @mutex_unlock(ptr noundef nonnull %18) #14
  store volatile i32 2, ptr %15, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  call void @add_wait_queue(ptr noundef %16, ptr noundef nonnull %5) #14
  call void @mutex_unlock(ptr noundef %14) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %16, ptr noundef nonnull %5) #14
  call void @mutex_lock(ptr noundef %14) #14
  br label %38

55:                                               ; preds = %50, %46
  store ptr %1, ptr %25, align 4
  br label %56

56:                                               ; preds = %55, %45
  %57 = phi ptr [ %47, %55 ], [ %25, %45 ]
  store ptr %1, ptr %57, align 4
  call void @mutex_unlock(ptr noundef nonnull %18) #14
  br label %58

58:                                               ; preds = %56, %21, %20, %17
  %59 = call fastcc i32 @chip_ready(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %60 = icmp eq i32 %59, -11
  br i1 %60, label %38, label %61

61:                                               ; preds = %58, %39
  %62 = phi i32 [ %36, %39 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inline_map_write(ptr nocapture noundef readonly %0, [1 x i32] %1, i32 noundef %2) unnamed_addr #9 {
  %4 = extractvalue [1 x i32] %1, 0
  %5 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %21 [
    i32 1, label %7
    i32 2, label %12
    i32 4, label %17
  ]

7:                                                ; preds = %3
  %8 = trunc i32 %4 to i8
  %9 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %8) #14, !srcloc !10
  br label %22

12:                                               ; preds = %3
  %13 = trunc i32 %4 to i16
  %14 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 %13) #14, !srcloc !11
  br label %22

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %4) #14, !srcloc !12
  br label %22

21:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

22:                                               ; preds = %17, %12, %7
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.wait_queue_entry, align 4
  %9 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @cfi_build_cmd(i32 noundef 128, ptr noundef %0, ptr noundef %10) #14
  %12 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %14) #14
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0, i32 noundef %3, i32 noundef %4) #14
  br label %21

21:                                               ; preds = %20, %16, %7
  tail call void @mutex_lock(ptr noundef %14) #14
  %22 = icmp eq i32 %6, 0
  %23 = select i1 %22, i32 500000, i32 %6
  %24 = lshr i32 %5, 1
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %8, i32 0, i32 1
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %8, i32 0, i32 2
  %27 = getelementptr inbounds %struct.wait_queue_entry, ptr %8, i32 0, i32 3
  %28 = getelementptr inbounds %struct.wait_queue_entry, ptr %8, i32 0, i32 3, i32 1
  %29 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 8
  %30 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %32 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 4
  %33 = icmp eq i32 %13, 4
  %34 = icmp eq i32 %13, 7
  br label %35

35:                                               ; preds = %107, %21
  %36 = phi i32 [ %108, %107 ], [ %24, %21 ]
  %37 = phi i32 [ %109, %107 ], [ %23, %21 ]
  %38 = load i32, ptr %12, align 4
  %39 = icmp eq i32 %38, %13
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = tail call ptr @llvm.thread.pointer() #14
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 1
  br label %43

43:                                               ; preds = %43, %40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4
  store ptr %41, ptr %25, align 4
  store ptr @default_wake_function, ptr %26, align 4
  store ptr null, ptr %27, align 4
  store ptr null, ptr %28, align 4
  store volatile i32 2, ptr %42, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  call void @add_wait_queue(ptr noundef %29, ptr noundef nonnull %8) #14
  call void @mutex_unlock(ptr noundef %14) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %29, ptr noundef nonnull %8) #14
  call void @mutex_lock(ptr noundef %14) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #14
  %44 = load i32, ptr %12, align 4
  %45 = icmp eq i32 %44, %13
  br i1 %45, label %46, label %43

46:                                               ; preds = %43, %35
  %47 = load i32, ptr %30, align 4
  switch i32 %47, label %62 [
    i32 1, label %48
    i32 2, label %53
    i32 4, label %58
  ]

48:                                               ; preds = %46
  %49 = load ptr, ptr %31, align 4
  %50 = getelementptr i8, ptr %49, i32 %2
  %51 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %50) #14, !srcloc !16
  %52 = zext i8 %51 to i32
  br label %63

53:                                               ; preds = %46
  %54 = load ptr, ptr %31, align 4
  %55 = getelementptr i8, ptr %54, i32 %2
  %56 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %55) #14, !srcloc !17
  %57 = zext i16 %56 to i32
  br label %63

58:                                               ; preds = %46
  %59 = load ptr, ptr %31, align 4
  %60 = getelementptr i8, ptr %59, i32 %2
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #14, !srcloc !18
  br label %63

62:                                               ; preds = %46
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

63:                                               ; preds = %58, %53, %48
  %64 = phi i32 [ %52, %48 ], [ %57, %53 ], [ %61, %58 ]
  %65 = and i32 %64, %11
  %66 = icmp eq i32 %65, %11
  br i1 %66, label %110, label %67

67:                                               ; preds = %63
  %68 = load i8, ptr %32, align 4
  %69 = and i8 %68, 2
  %70 = icmp ne i8 %69, 0
  %71 = select i1 %70, i1 %33, i1 false
  br i1 %71, label %94, label %72

72:                                               ; preds = %67
  %73 = and i8 %68, 1
  %74 = icmp ne i8 %73, 0
  %75 = select i1 %74, i1 %34, i1 false
  br i1 %75, label %94, label %76

76:                                               ; preds = %72
  %77 = icmp eq i32 %37, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %76
  %79 = call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %0, ptr noundef %10) #14
  %80 = load i32, ptr %30, align 4
  switch i32 %80, label %92 [
    i32 1, label %81
    i32 2, label %85
    i32 4, label %89
  ]

81:                                               ; preds = %78
  %82 = trunc i32 %79 to i8
  %83 = load ptr, ptr %31, align 4
  %84 = getelementptr i8, ptr %83, i32 %2
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %84, i8 %82) #14, !srcloc !10
  br label %93

85:                                               ; preds = %78
  %86 = trunc i32 %79 to i16
  %87 = load ptr, ptr %31, align 4
  %88 = getelementptr i8, ptr %87, i32 %2
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %88, i16 %86) #14, !srcloc !11
  br label %93

89:                                               ; preds = %78
  %90 = load ptr, ptr %31, align 4
  %91 = getelementptr i8, ptr %90, i32 %2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %79) #14, !srcloc !12
  br label %93

92:                                               ; preds = %78
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

93:                                               ; preds = %89, %85, %81
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  call void @arm_heavy_mb() #14
  br label %110

94:                                               ; preds = %72, %67
  %95 = phi i8 [ -3, %67 ], [ -2, %72 ]
  %96 = and i8 %68, %95
  store i8 %96, ptr %32, align 4
  br label %97

97:                                               ; preds = %94, %76
  %98 = phi i32 [ %37, %76 ], [ %23, %94 ]
  call void @mutex_unlock(ptr noundef %14) #14
  %99 = icmp ugt i32 %36, 9999
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = udiv i32 %36, 1000
  call void @msleep(i32 noundef %101) #14
  %102 = sub i32 %98, %36
  br label %107

103:                                              ; preds = %97
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 214748) #14
  %105 = call i32 @__cond_resched() #14
  %106 = add i32 %98, -1
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i32 [ 10000, %100 ], [ %36, %103 ]
  %109 = phi i32 [ %102, %100 ], [ %106, %103 ]
  call void @mutex_lock(ptr noundef %14) #14
  br label %35

110:                                              ; preds = %93, %63
  %111 = phi i32 [ -62, %93 ], [ 0, %63 ]
  store i32 1, ptr %12, align 4
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_merge_status([1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_chip(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull %6) #14
  %9 = getelementptr inbounds %struct.flchip_shared, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.flchip_shared, ptr %6, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %9, align 4
  %19 = icmp eq ptr %18, null
  %20 = icmp eq ptr %18, %1
  %21 = or i1 %19, %20
  br i1 %21, label %27, label %24

22:                                               ; preds = %81, %79, %77, %34, %34, %34, %32, %24
  %23 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %23, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.flchip, ptr %18, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %25) #14
  tail call void @mutex_unlock(ptr noundef nonnull %6) #14
  %26 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %26) #14
  tail call fastcc void @put_chip(ptr noundef %0, ptr noundef nonnull %18)
  tail call void @mutex_lock(ptr noundef %26) #14
  tail call void @mutex_unlock(ptr noundef %25) #14
  br label %22

27:                                               ; preds = %16
  store ptr null, ptr %17, align 4
  store ptr null, ptr %9, align 4
  br label %33

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.flchip_shared, ptr %6, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef nonnull %6) #14
  br label %22

33:                                               ; preds = %28, %27, %12
  tail call void @mutex_unlock(ptr noundef nonnull %6) #14
  br label %34

34:                                               ; preds = %33, %2
  %35 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %81 [
    i32 4, label %37
    i32 18, label %79
    i32 0, label %22
    i32 1, label %22
    i32 3, label %22
  ]

37:                                               ; preds = %34
  %38 = tail call i32 @cfi_build_cmd(i32 noundef 208, ptr noundef %0, ptr noundef %4) #14
  %39 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %57 [
    i32 1, label %43
    i32 2, label %48
    i32 4, label %53
  ]

43:                                               ; preds = %37
  %44 = trunc i32 %38 to i8
  %45 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 %44) #14, !srcloc !10
  br label %58

48:                                               ; preds = %37
  %49 = trunc i32 %38 to i16
  %50 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %49) #14, !srcloc !11
  br label %58

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %38) #14, !srcloc !12
  br label %58

57:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

58:                                               ; preds = %53, %48, %43
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %59 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %0, ptr noundef %4) #14
  %60 = load i32, ptr %39, align 4
  %61 = load i32, ptr %41, align 4
  switch i32 %61, label %76 [
    i32 1, label %62
    i32 2, label %67
    i32 4, label %72
  ]

62:                                               ; preds = %58
  %63 = trunc i32 %59 to i8
  %64 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 %60
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 %63) #14, !srcloc !10
  br label %77

67:                                               ; preds = %58
  %68 = trunc i32 %59 to i16
  %69 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %71, i16 %68) #14, !srcloc !11
  br label %77

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %59) #14, !srcloc !12
  br label %77

76:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

77:                                               ; preds = %72, %67, %62
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  store i32 0, ptr %35, align 4
  %78 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  store i32 4, ptr %78, align 4
  br label %22

79:                                               ; preds = %34
  %80 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  store i32 18, ptr %80, align 4
  store i32 0, ptr %35, align 4
  br label %22

81:                                               ; preds = %34
  %82 = load ptr, ptr %0, align 4
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %82, i32 noundef %36) #15
  br label %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @chip_ready(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #14
  store i32 0, ptr %5, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @default_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @cfi_build_cmd(i32 noundef 128, ptr noundef %0, ptr noundef %12) #14
  %14 = tail call i32 @cfi_build_cmd(i32 noundef 1, ptr noundef %0, ptr noundef %12) #14
  %15 = getelementptr inbounds %struct.cfi_private, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = add i32 %17, 100
  %19 = icmp eq i32 %3, 13
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %155

24:                                               ; preds = %20, %4
  %25 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %155 [
    i32 1, label %27
    i32 0, label %159
    i32 2, label %159
    i32 3, label %159
    i32 4, label %61
    i32 18, label %136
    i32 20, label %148
    i32 17, label %149
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %47 [
    i32 1, label %30
    i32 2, label %36
    i32 4, label %42
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %2
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #14, !srcloc !16
  %35 = zext i8 %34 to i32
  br label %48

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %2
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %39) #14, !srcloc !17
  %41 = zext i16 %40 to i32
  br label %48

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 %2
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #14, !srcloc !18
  br label %48

47:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

48:                                               ; preds = %42, %36, %30
  %49 = phi i32 [ %35, %30 ], [ %41, %36 ], [ %46, %42 ]
  %50 = and i32 %49, %13
  %51 = icmp eq i32 %50, %13
  br i1 %51, label %159, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = icmp ne ptr %54, null
  %56 = and i32 %49, %14
  %57 = icmp eq i32 %56, %14
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %159, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %60) #14
  tail call void @cfi_udelay(i32 noundef 1) #14
  tail call void @mutex_lock(ptr noundef %60) #14
  br label %159

61:                                               ; preds = %24
  %62 = icmp eq ptr %16, null
  br i1 %62, label %155, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %16, i32 0, i32 3
  %65 = load i32, ptr %64, align 1
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %155, label %68

68:                                               ; preds = %63
  switch i32 %3, label %155 [
    i32 17, label %74
    i32 0, label %74
    i32 7, label %69
  ]

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %16, i32 0, i32 4
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %155, label %74

74:                                               ; preds = %69, %68, %68
  %75 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, %2
  %78 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %155, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.cfi_private, ptr %12, i32 0, i32 9
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 137
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.cfi_private, ptr %12, i32 0, i32 10
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 35171
  %89 = icmp eq i32 %76, -32768
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %155, label %91

91:                                               ; preds = %85, %81
  %92 = tail call i32 @cfi_build_cmd(i32 noundef 176, ptr noundef %0, ptr noundef %12) #14
  %93 = load i32, ptr %78, align 4
  %94 = insertvalue [1 x i32] poison, i32 %92, 0
  tail call fastcc void @inline_map_write(ptr noundef %0, [1 x i32] %94, i32 noundef %93)
  %95 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %0, ptr noundef %12) #14
  %96 = load i32, ptr %78, align 4
  %97 = insertvalue [1 x i32] poison, i32 %95, 0
  tail call fastcc void @inline_map_write(ptr noundef %0, [1 x i32] %97, i32 noundef %96)
  %98 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 3
  store i32 4, ptr %98, align 4
  store i32 5, ptr %25, align 4
  %99 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 4
  %100 = load i8, ptr %99, align 4
  %101 = or i8 %100, 2
  store i8 %101, ptr %99, align 4
  %102 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %104 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  br label %105

105:                                              ; preds = %134, %91
  %106 = load i32, ptr %78, align 4
  %107 = load i32, ptr %102, align 4
  switch i32 %107, label %122 [
    i32 1, label %108
    i32 2, label %113
    i32 4, label %118
  ]

108:                                              ; preds = %105
  %109 = load ptr, ptr %103, align 4
  %110 = getelementptr i8, ptr %109, i32 %106
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %110) #14, !srcloc !16
  %112 = zext i8 %111 to i32
  br label %123

113:                                              ; preds = %105
  %114 = load ptr, ptr %103, align 4
  %115 = getelementptr i8, ptr %114, i32 %106
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %115) #14, !srcloc !17
  %117 = zext i16 %116 to i32
  br label %123

118:                                              ; preds = %105
  %119 = load ptr, ptr %103, align 4
  %120 = getelementptr i8, ptr %119, i32 %106
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #14, !srcloc !18
  br label %123

122:                                              ; preds = %105
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

123:                                              ; preds = %118, %113, %108
  %124 = phi i32 [ %112, %108 ], [ %117, %113 ], [ %121, %118 ]
  %125 = and i32 %124, %13
  %126 = icmp eq i32 %125, %13
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load volatile i32, ptr @jiffies, align 64
  %129 = sub i32 %18, %128
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  tail call fastcc void @put_chip(ptr noundef %0, ptr noundef %1)
  %132 = load ptr, ptr %0, align 4
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %132, i32 noundef %124) #15
  br label %159

134:                                              ; preds = %127
  tail call void @mutex_unlock(ptr noundef %104) #14
  tail call void @cfi_udelay(i32 noundef 1) #14
  tail call void @mutex_lock(ptr noundef %104) #14
  br label %105

135:                                              ; preds = %123
  store i32 1, ptr %25, align 4
  br label %159

136:                                              ; preds = %24
  switch i32 %3, label %137 [
    i32 17, label %146
    i32 0, label %146
  ]

137:                                              ; preds = %136
  %138 = icmp eq i32 %3, 7
  %139 = icmp ne ptr %16, null
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %155

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %16, i32 0, i32 4
  %143 = load i8, ptr %142, align 1
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %141, %136, %136
  %147 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 3
  store i32 18, ptr %147, align 4
  store i32 0, ptr %25, align 4
  br label %159

148:                                              ; preds = %24
  br label %159

149:                                              ; preds = %24
  %150 = icmp eq i32 %3, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %151, %149, %141, %137, %85, %74, %69, %68, %63, %61, %24, %20
  %156 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  store volatile i32 2, ptr %156, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %157 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 8
  call void @add_wait_queue(ptr noundef %157, ptr noundef nonnull %5) #14
  %158 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %158) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %157, ptr noundef nonnull %5) #14
  call void @mutex_lock(ptr noundef %158) #14
  br label %159

159:                                              ; preds = %155, %151, %148, %146, %135, %131, %59, %52, %48, %24, %24, %24
  %160 = phi i32 [ -11, %155 ], [ -5, %148 ], [ 0, %146 ], [ 0, %135 ], [ -5, %131 ], [ -11, %59 ], [ 0, %24 ], [ 0, %24 ], [ 0, %24 ], [ 0, %151 ], [ 0, %48 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  ret i32 %160
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_udelay(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fixup_use_fwh_lock(ptr nocapture noundef writeonly %0) #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #15
  %3 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 38
  store ptr @fwh_lock_varsize, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 39
  store ptr @fwh_unlock_varsize, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fwh_lock_varsize(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.fwh_xxlock_thunk, align 4
  %5 = trunc i64 %2 to i32
  store i32 1, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fwh_xxlock_thunk, ptr %4, i32 0, i32 1
  store i32 15, ptr %6, align 4
  %7 = call i32 @cfi_varsize_frob(ptr noundef %0, ptr noundef nonnull @fwh_xxlock_oneblock, i64 noundef %1, i32 noundef %5, ptr noundef nonnull %4) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fwh_unlock_varsize(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.fwh_xxlock_thunk, align 4
  %5 = trunc i64 %2 to i32
  store i32 0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fwh_xxlock_thunk, ptr %4, i32 0, i32 1
  store i32 16, ptr %6, align 4
  %7 = call i32 @cfi_varsize_frob(ptr noundef %0, ptr noundef nonnull @fwh_xxlock_oneblock, i64 noundef %1, i32 noundef %5, ptr noundef nonnull %4) #14
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_varsize_frob(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fwh_xxlock_oneblock(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %1, align 4
  %9 = icmp ult i32 %8, 4194304
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = and i32 %2, -65536
  %12 = add i32 %11, -4194302
  %13 = add i32 %12, %8
  %14 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %14) #14
  br label %15

15:                                               ; preds = %15, %10
  %16 = tail call fastcc i32 @chip_ready(ptr noundef %0, ptr noundef %1, i32 noundef %13, i32 noundef 15) #14
  switch i32 %16, label %44 [
    i32 -11, label %15
    i32 0, label %17
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fwh_xxlock_thunk, ptr %4, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %18, align 4
  %23 = load i32, ptr %4, align 4
  %24 = tail call i32 @cfi_build_cmd(i32 noundef %23, ptr noundef %0, ptr noundef %7) #14
  %25 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %41 [
    i32 1, label %27
    i32 2, label %32
    i32 4, label %37
  ]

27:                                               ; preds = %17
  %28 = trunc i32 %24 to i8
  %29 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %28) #14, !srcloc !10
  br label %42

32:                                               ; preds = %17
  %33 = trunc i32 %24 to i16
  %34 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %33) #14, !srcloc !11
  br label %42

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %24) #14, !srcloc !12
  br label %42

41:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

42:                                               ; preds = %37, %32, %27
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %43 = load i32, ptr %20, align 4
  store i32 %43, ptr %18, align 4
  tail call fastcc void @put_chip(ptr noundef %0, ptr noundef %1)
  br label %44

44:                                               ; preds = %42, %15
  %45 = phi i32 [ 0, %42 ], [ %16, %15 ]
  tail call void @mutex_unlock(ptr noundef %14) #14
  br label %46

46:                                               ; preds = %44, %5
  %47 = phi i32 [ -5, %5 ], [ %45, %44 ]
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fixup_use_point(ptr nocapture noundef %0) #11 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  store ptr @cfi_intelext_point, ptr %2, align 4
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 23
  store ptr @cfi_intelext_unpoint, ptr %6, align 8
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_point(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr noundef writeonly %5) #0 {
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.map_info, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.map_info, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %103, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.cfi_private, ptr %10, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = ashr i64 %1, %17
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, %16
  %21 = trunc i64 %1 to i32
  %22 = sub i32 %21, %20
  %23 = getelementptr %struct.cfi_private, ptr %10, i32 0, i32 15, i32 %19
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %12, i32 %24
  %26 = getelementptr i8, ptr %25, i32 %22
  store ptr %26, ptr %4, align 4
  %27 = icmp eq ptr %5, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.map_info, ptr %8, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %23, align 4
  %32 = add i32 %30, %22
  %33 = add i32 %32, %31
  store i32 %33, ptr %5, align 4
  br label %34

34:                                               ; preds = %28, %14
  %35 = icmp eq i32 %2, 0
  br i1 %35, label %103, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.cfi_private, ptr %10, i32 0, i32 11
  %38 = getelementptr inbounds %struct.map_info, ptr %8, i32 0, i32 6
  br label %39

39:                                               ; preds = %91, %36
  %40 = phi i32 [ %19, %36 ], [ %101, %91 ]
  %41 = phi i32 [ 0, %36 ], [ %100, %91 ]
  %42 = phi i32 [ %22, %36 ], [ 0, %91 ]
  %43 = phi i32 [ %2, %36 ], [ %97, %91 ]
  %44 = load i32, ptr %37, align 4
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %103

46:                                               ; preds = %39
  %47 = icmp eq i32 %41, 0
  %48 = getelementptr %struct.cfi_private, ptr %10, i32 0, i32 15, i32 %40
  %49 = load i32, ptr %48, align 4
  br i1 %47, label %52, label %50

50:                                               ; preds = %46
  %51 = icmp eq i32 %49, %41
  br i1 %51, label %52, label %103

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %41, %50 ], [ %49, %46 ]
  %54 = add i32 %43, -1
  %55 = add i32 %54, %42
  %56 = load i32, ptr %15, align 4
  %57 = lshr i32 %55, %56
  %58 = icmp eq i32 %57, 0
  %59 = shl nuw i32 1, %56
  %60 = sub i32 %59, %42
  %61 = select i1 %58, i32 %43, i32 %60
  %62 = getelementptr %struct.cfi_private, ptr %10, i32 0, i32 15, i32 %40
  %63 = load ptr, ptr %9, align 4
  %64 = load i32, ptr %38, align 4
  %65 = sub i32 0, %64
  %66 = add i32 %53, %42
  %67 = and i32 %66, %65
  %68 = getelementptr %struct.cfi_private, ptr %10, i32 0, i32 15, i32 %40, i32 7
  tail call void @mutex_lock(ptr noundef %68) #14
  br label %69

69:                                               ; preds = %69, %52
  %70 = tail call fastcc i32 @chip_ready(ptr noundef %8, ptr noundef %62, i32 noundef %67, i32 noundef 17) #14
  switch i32 %70, label %90 [
    i32 -11, label %69
    i32 0, label %71
  ]

71:                                               ; preds = %69
  %72 = getelementptr %struct.cfi_private, ptr %10, i32 0, i32 15, i32 %40, i32 2
  %73 = load i32, ptr %72, align 4
  switch i32 %73, label %74 [
    i32 17, label %91
    i32 0, label %91
  ]

74:                                               ; preds = %71
  %75 = tail call i32 @cfi_build_cmd(i32 noundef 255, ptr noundef %8, ptr noundef %63) #14
  %76 = load i32, ptr %38, align 4
  switch i32 %76, label %88 [
    i32 1, label %77
    i32 2, label %81
    i32 4, label %85
  ]

77:                                               ; preds = %74
  %78 = trunc i32 %75 to i8
  %79 = load ptr, ptr %11, align 4
  %80 = getelementptr i8, ptr %79, i32 %67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 %78) #14, !srcloc !10
  br label %89

81:                                               ; preds = %74
  %82 = trunc i32 %75 to i16
  %83 = load ptr, ptr %11, align 4
  %84 = getelementptr i8, ptr %83, i32 %67
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %84, i16 %82) #14, !srcloc !11
  br label %89

85:                                               ; preds = %74
  %86 = load ptr, ptr %11, align 4
  %87 = getelementptr i8, ptr %86, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %75) #14, !srcloc !12
  br label %89

88:                                               ; preds = %74
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

89:                                               ; preds = %85, %81, %77
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  br label %91

90:                                               ; preds = %69
  tail call void @mutex_unlock(ptr noundef %68) #14
  br label %103

91:                                               ; preds = %89, %71, %71
  store i32 17, ptr %72, align 4
  %92 = getelementptr %struct.cfi_private, ptr %10, i32 0, i32 15, i32 %40, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  tail call void @mutex_unlock(ptr noundef %68) #14
  %95 = load i32, ptr %3, align 4
  %96 = add i32 %95, %61
  store i32 %96, ptr %3, align 4
  %97 = sub i32 %43, %61
  %98 = load i32, ptr %15, align 4
  %99 = shl nuw i32 1, %98
  %100 = add i32 %99, %53
  %101 = add i32 %40, 1
  %102 = icmp eq i32 %97, 0
  br i1 %102, label %103, label %39

103:                                              ; preds = %91, %90, %50, %39, %34, %6
  %104 = phi i32 [ -22, %6 ], [ 0, %90 ], [ 0, %34 ], [ 0, %50 ], [ 0, %39 ], [ 0, %91 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfi_intelext_unpoint(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.map_info, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_private, ptr %7, i32 0, i32 13
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %8, align 4
  %12 = zext i32 %11 to i64
  %13 = ashr i64 %1, %12
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.cfi_private, ptr %7, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, %14
  br i1 %17, label %18, label %56

18:                                               ; preds = %10
  %19 = trunc i64 %1 to i32
  %20 = shl i32 %14, %11
  %21 = sub i32 %19, %20
  br label %26

22:                                               ; preds = %50
  %23 = add nsw i32 %28, 1
  %24 = load i32, ptr %15, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ 0, %22 ]
  %28 = phi i32 [ %14, %18 ], [ %23, %22 ]
  %29 = phi i32 [ %2, %18 ], [ %52, %22 ]
  %30 = getelementptr %struct.cfi_private, ptr %7, i32 0, i32 15, i32 %28
  %31 = add i32 %29, %27
  %32 = add i32 %31, -1
  %33 = load i32, ptr %8, align 4
  %34 = lshr i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = shl nsw i32 -1, %33
  %37 = getelementptr %struct.cfi_private, ptr %7, i32 0, i32 15, i32 %28, i32 7
  tail call void @mutex_lock(ptr noundef %37) #14
  %38 = getelementptr %struct.cfi_private, ptr %7, i32 0, i32 15, i32 %28, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 17
  br i1 %40, label %41, label %47

41:                                               ; preds = %26
  %42 = getelementptr %struct.cfi_private, ptr %7, i32 0, i32 15, i32 %28, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  store i32 0, ptr %38, align 4
  br label %50

47:                                               ; preds = %26
  %48 = load ptr, ptr %5, align 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %48) #15
  br label %50

50:                                               ; preds = %47, %46, %41
  %51 = phi i32 [ 0, %46 ], [ 0, %41 ], [ -22, %47 ]
  tail call fastcc void @put_chip(ptr noundef %5, ptr noundef %30)
  tail call void @mutex_unlock(ptr noundef %37) #14
  %52 = add i32 %31, %36
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %35, i1 %53, i1 false
  %55 = and i1 %40, %54
  br i1 %55, label %22, label %56

56:                                               ; preds = %50, %22, %10, %3
  %57 = phi i32 [ 0, %3 ], [ 0, %10 ], [ %51, %50 ], [ %51, %22 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfi_intelext_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @cfi_intelext_reset(ptr noundef %0)
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 51
  %7 = tail call i32 @unregister_reboot_notifier(ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #14
  %10 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #14
  %12 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 2, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #14
  tail call void @kfree(ptr noundef %5) #14
  %14 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 19
  %15 = load i32, ptr %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 20
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %24, %19 ]
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr %struct.mtd_erase_region_info, ptr %21, i32 %20, i32 3
  %23 = load ptr, ptr %22, align 8
  tail call void @kfree(ptr noundef %23) #14
  %24 = add nuw nsw i32 %20, 1
  %25 = load i32, ptr %14, align 8
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %19, label %27

27:                                               ; preds = %19, %1
  %28 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 20
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cfi_intelext_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 6
  %11 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 3
  br label %12

12:                                               ; preds = %37, %9
  %13 = phi i32 [ 0, %9 ], [ %38, %37 ]
  %14 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %13
  %15 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %13, i32 7
  tail call void @mutex_lock(ptr noundef %15) #14
  %16 = load i32, ptr %14, align 4
  %17 = tail call fastcc i32 @get_chip(ptr noundef %3, ptr noundef %14, i32 noundef %16, i32 noundef 20)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = tail call i32 @cfi_build_cmd(i32 noundef 255, ptr noundef %3, ptr noundef %5) #14
  %21 = load i32, ptr %14, align 4
  %22 = load i32, ptr %10, align 4
  switch i32 %22, label %34 [
    i32 1, label %23
    i32 2, label %27
    i32 4, label %31
  ]

23:                                               ; preds = %19
  %24 = trunc i32 %20 to i8
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 %21
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %24) #14, !srcloc !10
  br label %35

27:                                               ; preds = %19
  %28 = trunc i32 %20 to i16
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr i8, ptr %29, i32 %21
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %28) #14, !srcloc !11
  br label %35

31:                                               ; preds = %19
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr i8, ptr %32, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %20) #14, !srcloc !12
  br label %35

34:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

35:                                               ; preds = %31, %27, %23
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %36 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %13, i32 2
  store i32 20, ptr %36, align 4
  tail call fastcc void @put_chip(ptr noundef %3, ptr noundef %14)
  br label %37

37:                                               ; preds = %35, %12
  tail call void @mutex_unlock(ptr noundef %15) #14
  %38 = add nuw nsw i32 %13, 1
  %39 = load i32, ptr %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %12, label %41

41:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_write_oneword(ptr noundef %0, ptr noundef %1, i32 noundef %2, [1 x i32] %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = add i32 %7, %2
  %9 = getelementptr inbounds %struct.cfi_private, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cfi_ident, ptr %10, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = icmp eq i16 %12, 512
  %14 = select i1 %13, i32 65, i32 64
  %15 = tail call i32 @cfi_build_cmd(i32 noundef %14, ptr noundef %0, ptr noundef %6) #14
  %16 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %16) #14
  %17 = tail call fastcc i32 @get_chip(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef 7)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %152

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef %0, i32 noundef 1) #14
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %41 [
    i32 1, label %27
    i32 2, label %32
    i32 4, label %37
  ]

27:                                               ; preds = %24
  %28 = trunc i32 %15 to i8
  %29 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %28) #14, !srcloc !10
  br label %42

32:                                               ; preds = %24
  %33 = trunc i32 %15 to i16
  %34 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %33) #14, !srcloc !11
  br label %42

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %15) #14, !srcloc !12
  br label %42

41:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

42:                                               ; preds = %37, %32, %27
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %43 = extractvalue [1 x i32] %3, 0
  %44 = load i32, ptr %25, align 4
  switch i32 %44, label %59 [
    i32 1, label %45
    i32 2, label %50
    i32 4, label %55
  ]

45:                                               ; preds = %42
  %46 = trunc i32 %43 to i8
  %47 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 %46) #14, !srcloc !10
  br label %60

50:                                               ; preds = %42
  %51 = trunc i32 %43 to i16
  %52 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 %8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %51) #14, !srcloc !11
  br label %60

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %43) #14, !srcloc !12
  br label %60

59:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

60:                                               ; preds = %55, %50, %45
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %61 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  store i32 7, ptr %61, align 4
  %62 = load i32, ptr %25, align 4
  %63 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 12
  %66 = load i32, ptr %65, align 4
  %67 = tail call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef %8, i32 noundef %62, i32 noundef %64, i32 noundef %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load ptr, ptr %0, align 4
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %70) #15
  br label %146

72:                                               ; preds = %60
  %73 = load i32, ptr %25, align 4
  switch i32 %73, label %91 [
    i32 1, label %74
    i32 2, label %80
    i32 4, label %86
  ]

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 %8
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %77) #14, !srcloc !16
  %79 = zext i8 %78 to i32
  br label %92

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 %8
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %83) #14, !srcloc !17
  %85 = zext i16 %84 to i32
  br label %92

86:                                               ; preds = %72
  %87 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 %8
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #14, !srcloc !18
  br label %92

91:                                               ; preds = %72
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

92:                                               ; preds = %86, %80, %74
  %93 = phi i32 [ %79, %74 ], [ %85, %80 ], [ %90, %86 ]
  %94 = tail call i32 @cfi_build_cmd(i32 noundef 26, ptr noundef %0, ptr noundef %6) #14
  %95 = and i32 %94, %93
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %146, label %97

97:                                               ; preds = %92
  %98 = insertvalue [1 x i32] poison, i32 %93, 0
  %99 = tail call i32 @cfi_merge_status([1 x i32] %98, ptr noundef %0, ptr noundef %6) #14
  %100 = tail call i32 @cfi_build_cmd(i32 noundef 80, ptr noundef %0, ptr noundef %6) #14
  %101 = load i32, ptr %25, align 4
  switch i32 %101, label %116 [
    i32 1, label %102
    i32 2, label %107
    i32 4, label %112
  ]

102:                                              ; preds = %97
  %103 = trunc i32 %100 to i8
  %104 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %105, i32 %8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %106, i8 %103) #14, !srcloc !10
  br label %117

107:                                              ; preds = %97
  %108 = trunc i32 %100 to i16
  %109 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 %8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %111, i16 %108) #14, !srcloc !11
  br label %117

112:                                              ; preds = %97
  %113 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %114, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %100) #14, !srcloc !12
  br label %117

116:                                              ; preds = %97
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

117:                                              ; preds = %112, %107, %102
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %118 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %0, ptr noundef %6) #14
  %119 = load i32, ptr %25, align 4
  switch i32 %119, label %134 [
    i32 1, label %120
    i32 2, label %125
    i32 4, label %130
  ]

120:                                              ; preds = %117
  %121 = trunc i32 %118 to i8
  %122 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 %8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %124, i8 %121) #14, !srcloc !10
  br label %135

125:                                              ; preds = %117
  %126 = trunc i32 %118 to i16
  %127 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %128, i32 %8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %129, i16 %126) #14, !srcloc !11
  br label %135

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %118) #14, !srcloc !12
  br label %135

134:                                              ; preds = %117
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

135:                                              ; preds = %130, %125, %120
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %136 = and i32 %99, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = and i32 %99, 8
  %140 = icmp eq i32 %139, 0
  %141 = load ptr, ptr %0, align 4
  br i1 %140, label %144, label %142

142:                                              ; preds = %138
  %143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %141) #15
  br label %146

144:                                              ; preds = %138
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %141, i32 noundef %99) #15
  br label %146

146:                                              ; preds = %144, %142, %135, %92, %69
  %147 = phi i32 [ %67, %69 ], [ -5, %142 ], [ -22, %144 ], [ -30, %135 ], [ 0, %92 ]
  %148 = load ptr, ptr %20, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call void %148(ptr noundef %0, i32 noundef 0) #14
  br label %151

151:                                              ; preds = %150, %146
  tail call fastcc void @put_chip(ptr noundef %0, ptr noundef %1)
  br label %152

152:                                              ; preds = %151, %4
  %153 = phi i32 [ %147, %151 ], [ %17, %4 ]
  tail call void @mutex_unlock(ptr noundef %16) #14
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_erase_oneblock(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %8, %2
  %10 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %10) #14
  %11 = tail call fastcc i32 @get_chip(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef 4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %192

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 8
  %15 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 4
  %19 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 5
  %20 = sub i32 0, %3
  %21 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 6
  %22 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 11
  %23 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 14
  br label %24

24:                                               ; preds = %183, %13
  %25 = phi i32 [ 3, %13 ], [ %173, %183 ]
  %26 = load ptr, ptr %14, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %0, i32 noundef 1) #14
  br label %29

29:                                               ; preds = %28, %24
  %30 = tail call i32 @cfi_build_cmd(i32 noundef 80, ptr noundef %0, ptr noundef %7) #14
  %31 = load i32, ptr %15, align 4
  switch i32 %31, label %43 [
    i32 1, label %32
    i32 2, label %36
    i32 4, label %40
  ]

32:                                               ; preds = %29
  %33 = trunc i32 %30 to i8
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr i8, ptr %34, i32 %9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %33) #14, !srcloc !10
  br label %44

36:                                               ; preds = %29
  %37 = trunc i32 %30 to i16
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr i8, ptr %38, i32 %9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #14, !srcloc !11
  br label %44

40:                                               ; preds = %29
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i8, ptr %41, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %30) #14, !srcloc !12
  br label %44

43:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

44:                                               ; preds = %40, %36, %32
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %45 = tail call i32 @cfi_build_cmd(i32 noundef 32, ptr noundef %0, ptr noundef %7) #14
  %46 = load i32, ptr %15, align 4
  switch i32 %46, label %58 [
    i32 1, label %47
    i32 2, label %51
    i32 4, label %55
  ]

47:                                               ; preds = %44
  %48 = trunc i32 %45 to i8
  %49 = load ptr, ptr %16, align 4
  %50 = getelementptr i8, ptr %49, i32 %9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 %48) #14, !srcloc !10
  br label %59

51:                                               ; preds = %44
  %52 = trunc i32 %45 to i16
  %53 = load ptr, ptr %16, align 4
  %54 = getelementptr i8, ptr %53, i32 %9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %52) #14, !srcloc !11
  br label %59

55:                                               ; preds = %44
  %56 = load ptr, ptr %16, align 4
  %57 = getelementptr i8, ptr %56, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %45) #14, !srcloc !12
  br label %59

58:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

59:                                               ; preds = %55, %51, %47
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %60 = tail call i32 @cfi_build_cmd(i32 noundef 208, ptr noundef %0, ptr noundef %7) #14
  %61 = load i32, ptr %15, align 4
  switch i32 %61, label %73 [
    i32 1, label %62
    i32 2, label %66
    i32 4, label %70
  ]

62:                                               ; preds = %59
  %63 = trunc i32 %60 to i8
  %64 = load ptr, ptr %16, align 4
  %65 = getelementptr i8, ptr %64, i32 %9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %63) #14, !srcloc !10
  br label %74

66:                                               ; preds = %59
  %67 = trunc i32 %60 to i16
  %68 = load ptr, ptr %16, align 4
  %69 = getelementptr i8, ptr %68, i32 %9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %67) #14, !srcloc !11
  br label %74

70:                                               ; preds = %59
  %71 = load ptr, ptr %16, align 4
  %72 = getelementptr i8, ptr %71, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %60) #14, !srcloc !12
  br label %74

73:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

74:                                               ; preds = %70, %66, %62
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  store i32 4, ptr %17, align 4
  %75 = load i8, ptr %18, align 4
  %76 = and i8 %75, -3
  store i8 %76, ptr %18, align 4
  store i32 %9, ptr %19, align 4
  store i32 %20, ptr %21, align 4
  %77 = load i32, ptr %22, align 4
  %78 = load i32, ptr %23, align 4
  %79 = tail call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %9, i32 noundef %3, i32 noundef %77, i32 noundef %78)
  %80 = icmp eq i32 %79, 0
  %81 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %0, ptr noundef %7) #14
  br i1 %80, label %86, label %82

82:                                               ; preds = %74
  %83 = insertvalue [1 x i32] poison, i32 %81, 0
  tail call fastcc void @inline_map_write(ptr noundef %0, [1 x i32] %83, i32 noundef %9)
  store i32 1, ptr %17, align 4
  %84 = load ptr, ptr %0, align 4
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %84) #15
  br label %186

86:                                               ; preds = %74
  %87 = load i32, ptr %15, align 4
  switch i32 %87, label %99 [
    i32 1, label %88
    i32 2, label %92
    i32 4, label %96
  ]

88:                                               ; preds = %86
  %89 = trunc i32 %81 to i8
  %90 = load ptr, ptr %16, align 4
  %91 = getelementptr i8, ptr %90, i32 %9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 %89) #14, !srcloc !10
  br label %100

92:                                               ; preds = %86
  %93 = trunc i32 %81 to i16
  %94 = load ptr, ptr %16, align 4
  %95 = getelementptr i8, ptr %94, i32 %9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %95, i16 %93) #14, !srcloc !11
  br label %100

96:                                               ; preds = %86
  %97 = load ptr, ptr %16, align 4
  %98 = getelementptr i8, ptr %97, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %81) #14, !srcloc !12
  br label %100

99:                                               ; preds = %86
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

100:                                              ; preds = %96, %92, %88
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  store i32 1, ptr %17, align 4
  %101 = load i32, ptr %15, align 4
  switch i32 %101, label %116 [
    i32 1, label %102
    i32 2, label %107
    i32 4, label %112
  ]

102:                                              ; preds = %100
  %103 = load ptr, ptr %16, align 4
  %104 = getelementptr i8, ptr %103, i32 %9
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %104) #14, !srcloc !16
  %106 = zext i8 %105 to i32
  br label %117

107:                                              ; preds = %100
  %108 = load ptr, ptr %16, align 4
  %109 = getelementptr i8, ptr %108, i32 %9
  %110 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %109) #14, !srcloc !17
  %111 = zext i16 %110 to i32
  br label %117

112:                                              ; preds = %100
  %113 = load ptr, ptr %16, align 4
  %114 = getelementptr i8, ptr %113, i32 %9
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #14, !srcloc !18
  br label %117

116:                                              ; preds = %100
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

117:                                              ; preds = %112, %107, %102
  %118 = phi i32 [ %106, %102 ], [ %111, %107 ], [ %115, %112 ]
  %119 = tail call i32 @cfi_build_cmd(i32 noundef 58, ptr noundef %0, ptr noundef %7) #14
  %120 = and i32 %119, %118
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %186, label %122

122:                                              ; preds = %117
  %123 = insertvalue [1 x i32] poison, i32 %118, 0
  %124 = tail call i32 @cfi_merge_status([1 x i32] %123, ptr noundef %0, ptr noundef %7) #14
  %125 = tail call i32 @cfi_build_cmd(i32 noundef 80, ptr noundef %0, ptr noundef %7) #14
  %126 = load i32, ptr %15, align 4
  switch i32 %126, label %138 [
    i32 1, label %127
    i32 2, label %131
    i32 4, label %135
  ]

127:                                              ; preds = %122
  %128 = trunc i32 %125 to i8
  %129 = load ptr, ptr %16, align 4
  %130 = getelementptr i8, ptr %129, i32 %9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %130, i8 %128) #14, !srcloc !10
  br label %139

131:                                              ; preds = %122
  %132 = trunc i32 %125 to i16
  %133 = load ptr, ptr %16, align 4
  %134 = getelementptr i8, ptr %133, i32 %9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %134, i16 %132) #14, !srcloc !11
  br label %139

135:                                              ; preds = %122
  %136 = load ptr, ptr %16, align 4
  %137 = getelementptr i8, ptr %136, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %125) #14, !srcloc !12
  br label %139

138:                                              ; preds = %122
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

139:                                              ; preds = %135, %131, %127
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %140 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %0, ptr noundef %7) #14
  %141 = load i32, ptr %15, align 4
  switch i32 %141, label %153 [
    i32 1, label %142
    i32 2, label %146
    i32 4, label %150
  ]

142:                                              ; preds = %139
  %143 = trunc i32 %140 to i8
  %144 = load ptr, ptr %16, align 4
  %145 = getelementptr i8, ptr %144, i32 %9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %145, i8 %143) #14, !srcloc !10
  br label %154

146:                                              ; preds = %139
  %147 = trunc i32 %140 to i16
  %148 = load ptr, ptr %16, align 4
  %149 = getelementptr i8, ptr %148, i32 %9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %149, i16 %147) #14, !srcloc !11
  br label %154

150:                                              ; preds = %139
  %151 = load ptr, ptr %16, align 4
  %152 = getelementptr i8, ptr %151, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %140) #14, !srcloc !12
  br label %154

153:                                              ; preds = %139
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

154:                                              ; preds = %150, %146, %142
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %155 = and i32 %124, 48
  %156 = icmp eq i32 %155, 48
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load ptr, ptr %0, align 4
  %159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %158, i32 noundef %124) #15
  br label %186

160:                                              ; preds = %154
  %161 = and i32 %124, 2
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %160
  %164 = and i32 %124, 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %0, align 4
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %167) #15
  br label %186

169:                                              ; preds = %163
  %170 = and i32 %124, 32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %169
  %173 = add nsw i32 %25, -1
  %174 = icmp eq i32 %25, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %172
  %176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %9, i32 noundef %124) #15
  %177 = load ptr, ptr %14, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  tail call void %177(ptr noundef %0, i32 noundef 0) #14
  br label %183

180:                                              ; preds = %172, %169
  %181 = load ptr, ptr %0, align 4
  %182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %181, i32 noundef %9, i32 noundef %124) #15
  br label %186

183:                                              ; preds = %179, %175
  tail call fastcc void @put_chip(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %10) #14
  tail call void @mutex_lock(ptr noundef %10) #14
  %184 = tail call fastcc i32 @get_chip(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef 4)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %24, label %192

186:                                              ; preds = %180, %166, %160, %157, %117, %82
  %187 = phi i32 [ %79, %82 ], [ -5, %180 ], [ -5, %166 ], [ -22, %157 ], [ -30, %160 ], [ 0, %117 ]
  %188 = load ptr, ptr %14, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  tail call void %188(ptr noundef %0, i32 noundef 0) #14
  br label %191

191:                                              ; preds = %190, %186
  tail call fastcc void @put_chip(ptr noundef %0, ptr noundef %1)
  br label %192

192:                                              ; preds = %191, %183, %5
  %193 = phi i32 [ %187, %191 ], [ %11, %5 ], [ %184, %183 ]
  tail call void @mutex_unlock(ptr noundef %10) #14
  ret i32 %193
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_xxlock_oneblock(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %1, align 4
  %11 = add i32 %10, %2
  %12 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %12) #14
  br label %13

13:                                               ; preds = %13, %5
  %14 = tail call fastcc i32 @chip_ready(ptr noundef %0, ptr noundef %1, i32 noundef %11, i32 noundef 15) #14
  switch i32 %14, label %122 [
    i32 -11, label %13
    i32 0, label %15
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %0, i32 noundef 1) #14
  br label %20

20:                                               ; preds = %19, %15
  %21 = tail call i32 @cfi_build_cmd(i32 noundef 96, ptr noundef %0, ptr noundef %7) #14
  %22 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %38 [
    i32 1, label %24
    i32 2, label %29
    i32 4, label %34
  ]

24:                                               ; preds = %20
  %25 = trunc i32 %21 to i8
  %26 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %25) #14, !srcloc !10
  br label %39

29:                                               ; preds = %20
  %30 = trunc i32 %21 to i16
  %31 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %30) #14, !srcloc !11
  br label %39

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %21) #14, !srcloc !12
  br label %39

38:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

39:                                               ; preds = %34, %29, %24
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %40 = ptrtoint ptr %4 to i32
  switch i32 %40, label %79 [
    i32 1, label %41
    i32 2, label %60
  ]

41:                                               ; preds = %39
  %42 = tail call i32 @cfi_build_cmd(i32 noundef 1, ptr noundef %0, ptr noundef %7) #14
  %43 = load i32, ptr %22, align 4
  switch i32 %43, label %58 [
    i32 1, label %44
    i32 2, label %49
    i32 4, label %54
  ]

44:                                               ; preds = %41
  %45 = trunc i32 %42 to i8
  %46 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 %45) #14, !srcloc !10
  br label %59

49:                                               ; preds = %41
  %50 = trunc i32 %42 to i16
  %51 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 %50) #14, !srcloc !11
  br label %59

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %42) #14, !srcloc !12
  br label %59

58:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

59:                                               ; preds = %54, %49, %44
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  br label %80

60:                                               ; preds = %39
  %61 = tail call i32 @cfi_build_cmd(i32 noundef 208, ptr noundef %0, ptr noundef %7) #14
  %62 = load i32, ptr %22, align 4
  switch i32 %62, label %77 [
    i32 1, label %63
    i32 2, label %68
    i32 4, label %73
  ]

63:                                               ; preds = %60
  %64 = trunc i32 %61 to i8
  %65 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 %11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 %64) #14, !srcloc !10
  br label %78

68:                                               ; preds = %60
  %69 = trunc i32 %61 to i16
  %70 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 %11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %72, i16 %69) #14, !srcloc !11
  br label %78

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %61) #14, !srcloc !12
  br label %78

77:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

78:                                               ; preds = %73, %68, %63
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  br label %80

79:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_cmdset_0001.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2132, 0\0A.popsection", ""() #14, !srcloc !23
  unreachable

80:                                               ; preds = %78, %59
  %81 = phi i32 [ 16, %78 ], [ 15, %59 ]
  tail call void @arm_heavy_mb() #14
  %82 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  store i32 %81, ptr %82, align 4
  %83 = icmp eq ptr %9, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %9, i32 0, i32 3
  %86 = load i32, ptr %85, align 1
  %87 = and i32 %86, 32
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 1500, i32 0
  br label %90

90:                                               ; preds = %84, %80
  %91 = phi i32 [ 1500, %80 ], [ %89, %84 ]
  %92 = mul nuw nsw i32 %91, 1000
  %93 = tail call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %0, ptr noundef %1, i32 noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef %91, i32 noundef %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %117, label %95

95:                                               ; preds = %90
  %96 = tail call i32 @cfi_build_cmd(i32 noundef 112, ptr noundef %0, ptr noundef %7) #14
  %97 = load i32, ptr %22, align 4
  switch i32 %97, label %112 [
    i32 1, label %98
    i32 2, label %103
    i32 4, label %108
  ]

98:                                               ; preds = %95
  %99 = trunc i32 %96 to i8
  %100 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 %11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %102, i8 %99) #14, !srcloc !10
  br label %113

103:                                              ; preds = %95
  %104 = trunc i32 %96 to i16
  %105 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 %11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %107, i16 %104) #14, !srcloc !11
  br label %113

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %96) #14, !srcloc !12
  br label %113

112:                                              ; preds = %95
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

113:                                              ; preds = %108, %103, %98
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %114 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  store i32 1, ptr %114, align 4
  %115 = load ptr, ptr %0, align 4
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %115) #15
  br label %117

117:                                              ; preds = %113, %90
  %118 = load ptr, ptr %16, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  tail call void %118(ptr noundef %0, i32 noundef 0) #14
  br label %121

121:                                              ; preds = %120, %117
  tail call fastcc void @put_chip(ptr noundef %0, ptr noundef %1)
  br label %122

122:                                              ; preds = %121, %13
  %123 = phi i32 [ %93, %121 ], [ %14, %13 ]
  tail call void @mutex_unlock(ptr noundef %12) #14
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_getlockstatus_oneblock(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_private, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfi_private, ptr %7, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %1, align 4
  %13 = add i32 %12, %2
  %14 = tail call i32 @cfi_build_cmd(i32 noundef 144, ptr noundef %0, ptr noundef %7) #14
  %15 = shl i32 %9, 1
  %16 = mul i32 %15, %11
  %17 = add i32 %13, %16
  %18 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %34 [
    i32 1, label %20
    i32 2, label %25
    i32 4, label %30
  ]

20:                                               ; preds = %5
  %21 = trunc i32 %14 to i8
  %22 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %21) #14, !srcloc !10
  br label %35

25:                                               ; preds = %5
  %26 = trunc i32 %14 to i16
  %27 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 %26) #14, !srcloc !11
  br label %35

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %14) #14, !srcloc !12
  br label %35

34:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

35:                                               ; preds = %30, %25, %20
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %36 = getelementptr inbounds %struct.flchip, ptr %1, i32 0, i32 2
  store i32 3, ptr %36, align 4
  %37 = load i32, ptr %18, align 4
  switch i32 %37, label %55 [
    i32 1, label %38
    i32 2, label %44
    i32 4, label %50
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %17
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #14, !srcloc !16
  %43 = zext i8 %42 to i32
  br label %56

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %17
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %47) #14, !srcloc !17
  %49 = zext i16 %48 to i32
  br label %56

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %17
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #14, !srcloc !18
  br label %56

55:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

56:                                               ; preds = %50, %44, %38
  %57 = phi i32 [ %43, %38 ], [ %49, %44 ], [ %54, %50 ]
  %58 = load i32, ptr %18, align 4
  switch i32 %58, label %71 [
    i32 1, label %79
    i32 2, label %59
  ]

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %61, 2
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  %64 = icmp eq i32 %61, 3
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = trunc i32 %57 to i16
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #14
  %68 = zext i16 %67 to i32
  br label %79

69:                                               ; preds = %63
  %70 = and i32 %57, 65535
  br label %79

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp ult i32 %73, 2
  %75 = icmp eq i32 %73, 3
  %76 = tail call i32 @llvm.bswap.i32(i32 %57) #14
  %77 = select i1 %75, i32 %76, i32 %57
  %78 = select i1 %74, i32 %57, i32 %77
  br label %79

79:                                               ; preds = %71, %69, %65, %59, %56
  %80 = phi i32 [ %78, %71 ], [ %57, %56 ], [ %68, %65 ], [ %70, %69 ], [ %57, %59 ]
  %81 = and i32 %80, 255
  ret i32 %81
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i32 0, i32 33}
!10 = !{i64 3439965}
!11 = !{i64 3439542}
!12 = !{i64 3440162}
!13 = !{i64 2151387979, i64 2151388467, i64 2151388016, i64 2151388072, i64 2151388106, i64 2151388130, i64 2151388171, i64 2151388192, i64 2151388220, i64 2151388254}
!14 = !{i64 2151388806}
!15 = !{i64 2151384857, i64 2151385345, i64 2151384894, i64 2151384950, i64 2151384984, i64 2151385008, i64 2151385049, i64 2151385070, i64 2151385098, i64 2151385132}
!16 = !{i64 3440360}
!17 = !{i64 3439742}
!18 = !{i64 3440580}
!19 = !{i64 2151386615, i64 2151387103, i64 2151386652, i64 2151386708, i64 2151386742, i64 2151386766, i64 2151386807, i64 2151386828, i64 2151386856, i64 2151386890}
!20 = !{i64 2151877005}
!21 = !{i64 2151881261}
!22 = !{i64 2151873934}
!23 = !{i64 2151896730, i64 2151897231, i64 2151896767, i64 2151896823, i64 2151896857, i64 2151896881, i64 2151896922, i64 2151896943, i64 2151896971, i64 2151897005}
