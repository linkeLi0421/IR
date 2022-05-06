; ModuleID = '/llk/IR/drivers/gpu/vga/vgaarb.c_pt.bc'
source_filename = "../drivers/gpu/vga/vgaarb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_default_device:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_default_device\22\09\09\09\09\09"
module asm "__kstrtabns_vga_default_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_remove_vgacon:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_remove_vgacon\22\09\09\09\09\09"
module asm "__kstrtabns_vga_remove_vgacon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_get:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_get\22\09\09\09\09\09"
module asm "__kstrtabns_vga_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_put:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_put\22\09\09\09\09\09"
module asm "__kstrtabns_vga_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_set_legacy_decoding:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_set_legacy_decoding\22\09\09\09\09\09"
module asm "__kstrtabns_vga_set_legacy_decoding:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_client_register:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_client_register\22\09\09\09\09\09"
module asm "__kstrtabns_vga_client_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vga_device = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vga_arb_private = type { %struct.list_head, ptr, [16 x %struct.vga_arb_user_card], %struct.spinlock }
%struct.vga_arb_user_card = type { ptr, i32, i32 }

@vga_default = internal unnamed_addr global ptr null, align 4
@__kstrtab_vga_default_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_default_device = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_default_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_default_device to i32), ptr @__kstrtab_vga_default_device, ptr @__kstrtabns_vga_default_device }, section "___ksymtab_gpl+vga_default_device", align 4
@__kstrtab_vga_remove_vgacon = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_remove_vgacon = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_remove_vgacon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_remove_vgacon to i32), ptr @__kstrtab_vga_remove_vgacon, ptr @__kstrtabns_vga_remove_vgacon }, section "___ksymtab+vga_remove_vgacon", align 4
@vga_lock = internal global %struct.spinlock zeroinitializer, align 4
@vga_wait_queue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vga_wait_queue, i64 4), ptr getelementptr (i8, ptr @vga_wait_queue, i64 4) } }, align 4
@__kstrtab_vga_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_get = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_get to i32), ptr @__kstrtab_vga_get, ptr @__kstrtabns_vga_get }, section "___ksymtab+vga_get", align 4
@__kstrtab_vga_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_put = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_put to i32), ptr @__kstrtab_vga_put, ptr @__kstrtabns_vga_put }, section "___ksymtab+vga_put", align 4
@__kstrtab_vga_set_legacy_decoding = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_set_legacy_decoding = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_set_legacy_decoding = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_set_legacy_decoding to i32), ptr @__kstrtab_vga_set_legacy_decoding, ptr @__kstrtabns_vga_set_legacy_decoding }, section "___ksymtab+vga_set_legacy_decoding", align 4
@__kstrtab_vga_client_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_client_register = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_client_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_client_register to i32), ptr @__kstrtab_vga_client_register, ptr @__kstrtabns_vga_client_register }, section "___ksymtab+vga_client_register", align 4
@__initcall__kmod_vgaarb__231_1567_vga_arb_device_init4 = internal global ptr @vga_arb_device_init, section ".initcall4.init", align 4
@vga_arbiter_used = internal unnamed_addr global i1 false, align 1
@vga_list = internal global %struct.list_head { ptr @vga_list, ptr @vga_list }, align 4
@vga_count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"vgaarb: changed VGA decodes: olddecodes=%s,decodes=%s:owns=%s\0A\00", align 1
@vga_decode_count = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"io+mem\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@vga_arb_device = internal global %struct.miscdevice { i32 255, ptr @.str.9, ptr @vga_arb_device_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"\013vgaarb: error %d registering device\0A\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@pci_notifier = internal global %struct.notifier_block { ptr @pci_notify, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"vgaarb: bridge control possible\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"vgaarb: no bridge control possible\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"\016vgaarb: loaded\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"vga_arbiter\00", align 1
@vga_arb_device_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @vga_arb_read, ptr @vga_arb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vga_arb_fpoll, ptr null, ptr null, ptr null, i32 0, ptr @vga_arb_open, ptr null, ptr @vga_arb_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [52 x i8] c"count:%d,PCI:%s,decodes=%s,owns=%s,locks=%s(%d:%d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"lock \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"unlock \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"trylock \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"target \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"decodes \00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"PCI:%x:%x:%x.%x\00", align 1
@vga_user_lock = internal global %struct.spinlock zeroinitializer, align 4
@vga_user_list = internal global %struct.list_head { ptr @vga_user_list, ptr @vga_user_list }, align 4
@.str.22 = private unnamed_addr constant [45 x i8] c"vgaarb: failed to allocate VGA arbiter data\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"vgaarb: setting as boot VGA device\0A\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"vgaarb: VGA device added: decodes=%s,owns=%s,locks=%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"vgaarb: setting as boot device (VGA legacy resources not available)\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_vgaarb__231_1567_vga_arb_device_init4, ptr @__ksymtab_vga_client_register, ptr @__ksymtab_vga_default_device, ptr @__ksymtab_vga_get, ptr @__ksymtab_vga_put, ptr @__ksymtab_vga_remove_vgacon, ptr @__ksymtab_vga_set_legacy_decoding], section "llvm.metadata"
@switch.table.vga_arb_read.31 = private unnamed_addr constant [3 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.1], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @vga_default_device() #0 {
  %1 = load ptr, ptr @vga_default, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vga_set_default_device(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @vga_default, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @pci_dev_put(ptr noundef %2) #17
  %5 = tail call ptr @pci_dev_get(ptr noundef %0) #17
  store ptr %5, ptr @vga_default, align 4
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @vga_remove_vgacon(ptr nocapture readnone %0) #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vga_get(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  %5 = load i1, ptr @vga_arbiter_used, align 1
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  store i1 true, ptr @vga_arbiter_used, align 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  %8 = load ptr, ptr @vga_list, align 4
  %9 = icmp eq ptr %8, @vga_list
  br i1 %9, label %24, label %10

10:                                               ; preds = %21, %6
  %11 = phi ptr [ %22, %21 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.vga_device, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr @vga_count, align 4
  %17 = icmp slt i32 %16, 2
  %18 = getelementptr inbounds %struct.vga_device, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %13(ptr noundef %19, i1 noundef zeroext %17) #17
  tail call fastcc void @vga_update_device_decodes(ptr noundef %11, i32 noundef %20) #17
  br label %21

21:                                               ; preds = %15, %10
  %22 = load ptr, ptr %11, align 4
  %23 = icmp eq ptr %22, @vga_list
  br i1 %23, label %24, label %10

24:                                               ; preds = %21, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %7) #17
  br label %25

25:                                               ; preds = %24, %3
  %26 = icmp eq ptr %0, null
  %27 = load ptr, ptr @vga_default, align 4
  %28 = select i1 %26, ptr %27, ptr %0
  %29 = icmp eq ptr %28, null
  br i1 %29, label %65, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  %33 = icmp eq i32 %2, 0
  %34 = select i1 %33, i32 2, i32 1
  br label %35

35:                                               ; preds = %64, %30
  %36 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %37

37:                                               ; preds = %41, %35
  %38 = phi ptr [ @vga_list, %35 ], [ %39, %41 ]
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, @vga_list
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.vga_device, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %28
  br i1 %44, label %45, label %37

45:                                               ; preds = %41
  %46 = icmp eq ptr %39, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %45, %37
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %36) #17
  br label %65

48:                                               ; preds = %45
  %49 = call fastcc ptr @__vga_tryget(ptr noundef nonnull %39, i32 noundef %1)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %36) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #17
  store i32 0, ptr %4, align 4
  store ptr %52, ptr %31, align 4
  store ptr @default_wake_function, ptr %32, align 4
  call void @add_wait_queue(ptr noundef nonnull @vga_wait_queue, ptr noundef nonnull %4) #17
  %53 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 1
  store volatile i32 %34, ptr %53, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  br i1 %33, label %64, label %54

54:                                               ; preds = %51
  %55 = load volatile i32, ptr %52, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62, !prof !10

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %52, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %54
  %63 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 1
  store volatile i32 0, ptr %63, align 8
  call void @remove_wait_queue(ptr noundef nonnull @vga_wait_queue, ptr noundef nonnull %4) #17
  br label %65

64:                                               ; preds = %58, %51
  call void @schedule() #17
  call void @remove_wait_queue(ptr noundef nonnull @vga_wait_queue, ptr noundef nonnull %4) #17
  br label %35

65:                                               ; preds = %62, %48, %47, %25
  %66 = phi i32 [ 0, %25 ], [ -19, %47 ], [ -512, %62 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__vga_tryget(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 1
  %4 = and i32 %1, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = or i32 %9, %1
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %1, %2 ], [ %10, %6 ]
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2
  %19 = or i32 %18, %12
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i32 [ %12, %11 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %113, label %27

27:                                               ; preds = %20
  %28 = and i32 %25, 3
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr @vga_list, align 4
  %31 = icmp eq ptr %30, @vga_list
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %91, label %33

33:                                               ; preds = %88, %27
  %34 = phi ptr [ %89, %88 ], [ %30, %27 ]
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %88, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.vga_device, ptr %34, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %39, %43
  %45 = select i1 %44, i32 %28, i32 3
  %46 = getelementptr inbounds %struct.vga_device, ptr %34, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %45, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %145

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.vga_device, ptr %34, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, %45
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %88, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.vga_device, ptr %34, i32 0, i32 9
  %57 = load i8, ptr %56, align 4, !range !11
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.vga_device, ptr %34, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, %53
  %63 = and i32 %62, 2
  %64 = and i32 %62, 1
  %65 = icmp eq i32 %64, 0
  %66 = or i32 %62, 1
  %67 = select i1 %65, i32 %63, i32 %66
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 0, i32 2
  br label %70

70:                                               ; preds = %59, %55
  %71 = phi i32 [ 0, %55 ], [ %67, %59 ]
  %72 = phi i32 [ 0, %55 ], [ %69, %59 ]
  %73 = xor i1 %44, true
  %74 = zext i1 %73 to i32
  %75 = or i32 %72, %74
  %76 = tail call i32 @pci_set_vga_state(ptr noundef %41, i1 noundef zeroext false, i32 noundef %71, i32 noundef %75) #17
  %77 = xor i32 %53, -1
  %78 = load i32, ptr %51, align 4
  %79 = and i32 %78, %77
  %80 = and i32 %71, 2
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %79, -9
  %83 = select i1 %81, i32 %79, i32 %82
  store i32 %83, ptr %51, align 4
  %84 = and i32 %71, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %70
  %87 = and i32 %83, -5
  store i32 %87, ptr %51, align 4
  br label %88

88:                                               ; preds = %86, %70, %50, %33
  %89 = load ptr, ptr %34, align 4
  %90 = icmp eq ptr %89, @vga_list
  br i1 %90, label %91, label %33

91:                                               ; preds = %88, %27
  %92 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 9
  %93 = load i8, ptr %92, align 4, !range !11
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = and i32 %25, 10
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 0, i32 2
  %99 = and i32 %25, 5
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = or i32 %98, %101
  br label %103

103:                                              ; preds = %95, %91
  %104 = phi i32 [ 0, %91 ], [ %102, %95 ]
  %105 = phi i32 [ 0, %91 ], [ 2, %95 ]
  %106 = xor i1 %29, true
  %107 = zext i1 %106 to i32
  %108 = or i32 %105, %107
  %109 = load ptr, ptr %3, align 4
  %110 = tail call i32 @pci_set_vga_state(ptr noundef %109, i1 noundef zeroext true, i32 noundef %104, i32 noundef %108) #17
  %111 = load i32, ptr %22, align 4
  %112 = or i32 %111, %25
  store i32 %112, ptr %22, align 4
  br label %113

113:                                              ; preds = %103, %20
  %114 = and i32 %21, 3
  %115 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, ptr %115, align 4
  %118 = and i32 %21, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 4
  br label %124

124:                                              ; preds = %120, %113
  %125 = and i32 %21, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %128, align 4
  br label %131

131:                                              ; preds = %127, %124
  %132 = and i32 %21, 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 7
  %136 = load i32, ptr %135, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %135, align 4
  br label %138

138:                                              ; preds = %134, %131
  %139 = and i32 %21, 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 8
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, 1
  store i32 %144, ptr %142, align 4
  br label %145

145:                                              ; preds = %141, %138, %36
  %146 = phi ptr [ null, %141 ], [ null, %138 ], [ %34, %36 ]
  ret ptr %146
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vga_put(ptr noundef readnone %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @vga_default, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %5, %4 ], [ %0, %2 ]
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %10

10:                                               ; preds = %14, %7
  %11 = phi ptr [ @vga_list, %7 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @vga_list
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.vga_device, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %8
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = icmp eq ptr %12, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call fastcc void @__vga_put(ptr noundef nonnull %12, i32 noundef %1)
  br label %21

21:                                               ; preds = %20, %18, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %9) #17
  br label %22

22:                                               ; preds = %21, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__vga_put(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %1, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = add i32 %9, -1
  store i32 %12, ptr %8, align 4
  %13 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = or i32 %15, %1
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = phi i32 [ %1, %7 ], [ %1, %2 ], [ %16, %11 ]
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = add i32 %23, -1
  store i32 %26, ptr %22, align 4
  %27 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = or i32 %29, %18
  br label %31

31:                                               ; preds = %25, %21, %17
  %32 = phi i32 [ %18, %21 ], [ %18, %17 ], [ %30, %25 ]
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = add i32 %37, -1
  store i32 %40, ptr %36, align 4
  br label %41

41:                                               ; preds = %39, %35, %31
  %42 = and i32 %32, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = add i32 %46, -1
  store i32 %49, ptr %45, align 4
  br label %50

50:                                               ; preds = %48, %44, %41
  %51 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = and i32 %4, -2
  store i32 %55, ptr %3, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %55, %54 ], [ %4, %50 ]
  %58 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = and i32 %57, -3
  store i32 %62, ptr %3, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ %57, %56 ]
  %65 = icmp eq i32 %4, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @__wake_up(ptr noundef nonnull @vga_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #17
  br label %67

67:                                               ; preds = %66, %63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vga_set_legacy_decoding(ptr noundef readnone %0, i32 noundef %1) #1 {
  %3 = and i32 %1, 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ @vga_list, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @vga_list
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.vga_device, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = icmp eq ptr %7, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call fastcc void @vga_update_device_decodes(ptr noundef nonnull %7, i32 noundef %3) #17
  br label %16

16:                                               ; preds = %15, %13, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__vga_set_legacy_decoding(ptr noundef readnone %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = and i32 %1, 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ @vga_list, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @vga_list
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vga_device, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = icmp eq ptr %8, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  br i1 %2, label %17, label %21

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.vga_device, ptr %8, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %16
  tail call fastcc void @vga_update_device_decodes(ptr noundef nonnull %8, i32 noundef %4)
  br label %22

22:                                               ; preds = %21, %17, %14, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vga_client_register(ptr noundef readnone %0, ptr noundef %1) #1 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ @vga_list, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @vga_list
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vga_device, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = icmp eq ptr %6, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.vga_device, ptr %6, i32 0, i32 10
  store ptr %1, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %12, %4
  %17 = phi i32 [ 0, %14 ], [ -19, %12 ], [ -19, %4 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %3) #17
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vga_arb_device_init() #6 section ".init.text" {
  %1 = tail call i32 @misc_register(ptr noundef nonnull @vga_arb_device) #17
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #18
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @bus_register_notifier(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @pci_notifier) #17
  %7 = tail call ptr @pci_get_subsys(i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef null) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %12, %5
  %10 = load ptr, ptr @vga_list, align 4
  %11 = icmp eq ptr %10, @vga_list
  br i1 %11, label %28, label %17

12:                                               ; preds = %12, %5
  %13 = phi ptr [ %15, %12 ], [ %7, %5 ]
  %14 = tail call fastcc zeroext i1 @vga_arbiter_add_pci_device(ptr noundef nonnull %13)
  %15 = tail call ptr @pci_get_subsys(i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %13) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %12

17:                                               ; preds = %17, %9
  %18 = phi ptr [ %26, %17 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct.vga_device, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %22 = getelementptr inbounds %struct.vga_device, ptr %18, i32 0, i32 9
  %23 = load i8, ptr %22, align 4, !range !11
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, ptr @.str.7, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull %25) #18
  %26 = load ptr, ptr %18, align 4
  %27 = icmp eq ptr %26, @vga_list
  br i1 %27, label %28, label %17

28:                                               ; preds = %17, %9
  tail call fastcc void @vga_arb_select_default_device() #19
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #18
  ret i32 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vga_update_device_decodes(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %6 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %1, -1
  %9 = and i32 %7, %8
  %10 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, %11
  store i32 %1, ptr %6, align 4
  %13 = and i32 %7, 3
  %14 = add nsw i32 %13, -1
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.31, i32 0, i32 %14
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %18, %16 ], [ @.str.4, %2 ]
  %21 = and i32 %1, 3
  %22 = add nsw i32 %21, -1
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.31, i32 0, i32 %22
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi ptr [ %26, %24 ], [ @.str.4, %19 ]
  %29 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 3
  %32 = add nsw i32 %31, -1
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.31, i32 0, i32 %32
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi ptr [ %36, %34 ], [ @.str.4, %27 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull %20, ptr noundef nonnull %28, ptr noundef nonnull %38) #18
  %39 = icmp eq i32 %12, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = and i32 %12, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = and i32 %12, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.vga_device, ptr %0, i32 0, i32 6
  store i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %45
  tail call fastcc void @__vga_put(ptr noundef %0, i32 noundef %12)
  br label %51

51:                                               ; preds = %50, %37
  %52 = icmp ne i32 %13, 0
  %53 = icmp eq i32 %21, 0
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, ptr @vga_decode_count, align 4
  %57 = add i32 %56, -1
  store i32 %57, ptr @vga_decode_count, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = or i1 %53, %52
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = load i32, ptr @vga_decode_count, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr @vga_decode_count, align 4
  br label %63

63:                                               ; preds = %60, %58
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_vga_state(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_subsys(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vga_arbiter_add_pci_device(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #17
  store i16 0, ptr %2, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -256
  %7 = icmp eq i32 %6, 196608
  br i1 %7, label %8, label %161

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 48) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22) #18
  br label %161

14:                                               ; preds = %8
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ @vga_list, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @vga_list
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.vga_device, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %16

24:                                               ; preds = %20
  %25 = icmp eq ptr %18, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/vga/vgaarb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 659, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

27:                                               ; preds = %24, %16
  %28 = getelementptr inbounds %struct.vga_device, ptr %10, i32 0, i32 1
  store ptr %0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.vga_device, ptr %10, i32 0, i32 2
  store i32 15, ptr %29, align 4
  %30 = load i32, ptr @vga_decode_count, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr @vga_decode_count, align 4
  %32 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #17
  %33 = load i16, ptr %2, align 2
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.vga_device, ptr %10, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 8
  br label %40

40:                                               ; preds = %36, %27
  %41 = and i16 %33, 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.vga_device, ptr %10, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = or i32 %45, 2
  store i32 %46, ptr %44, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %64, %47
  %52 = phi ptr [ %66, %64 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.pci_bus, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #17
  store i16 0, ptr %3, align 2, !annotation !8
  %57 = call i32 @pci_read_config_word(ptr noundef nonnull %54, i32 noundef 62, ptr noundef nonnull %3) #17
  %58 = load i16, ptr %3, align 2
  %59 = and i16 %58, 8
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #17
  br label %64

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.vga_device, ptr %10, i32 0, i32 3
  store i32 0, ptr %63, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #17
  br label %68

64:                                               ; preds = %61, %51
  %65 = getelementptr inbounds %struct.pci_bus, ptr %52, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %51

68:                                               ; preds = %64, %62, %47
  %69 = load ptr, ptr @vga_default, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.vga_device, ptr %10, i32 0, i32 3
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 3
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.23) #18
  call void @vga_set_default_device(ptr noundef %0)
  br label %78

78:                                               ; preds = %76, %71, %68
  %79 = getelementptr inbounds %struct.vga_device, ptr %10, i32 0, i32 9
  store i8 1, ptr %79, align 8
  %80 = load volatile ptr, ptr @vga_list, align 4
  %81 = icmp eq ptr %80, @vga_list
  br i1 %81, label %126, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %48, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %126, label %85

85:                                               ; preds = %122, %82
  %86 = phi ptr [ %124, %122 ], [ %83, %82 ]
  %87 = getelementptr inbounds %struct.pci_bus, ptr %86, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  br label %92

89:                                               ; preds = %118, %103
  %90 = load ptr, ptr %93, align 4
  %91 = icmp eq ptr %90, @vga_list
  br i1 %91, label %122, label %92

92:                                               ; preds = %89, %85
  %93 = phi ptr [ %90, %89 ], [ %80, %85 ]
  %94 = getelementptr inbounds %struct.vga_device, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.pci_bus, ptr %97, i32 0, i32 4
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %88, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.vga_device, ptr %93, i32 0, i32 9
  store i8 0, ptr %102, align 4
  br label %103

103:                                              ; preds = %101, %92
  %104 = icmp eq ptr %97, null
  br i1 %104, label %89, label %105

105:                                              ; preds = %118, %103
  %106 = phi ptr [ %120, %118 ], [ %97, %103 ]
  %107 = getelementptr inbounds %struct.pci_bus, ptr %106, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %28, align 8
  %112 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.pci_bus, ptr %113, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %108, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i8 0, ptr %79, align 8
  br label %118

118:                                              ; preds = %117, %110, %105
  %119 = getelementptr inbounds %struct.pci_bus, ptr %106, i32 0, i32 1
  %120 = load ptr, ptr %119, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %89, label %105

122:                                              ; preds = %89
  %123 = getelementptr inbounds %struct.pci_bus, ptr %86, i32 0, i32 1
  %124 = load ptr, ptr %123, align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %85

126:                                              ; preds = %122, %82, %78
  %127 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vga_list, i32 0, i32 1), align 4
  store ptr %10, ptr getelementptr inbounds (%struct.list_head, ptr @vga_list, i32 0, i32 1), align 4
  store ptr @vga_list, ptr %10, align 8
  %128 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %127, ptr %128, align 4
  store volatile ptr %10, ptr %127, align 4
  %129 = load i32, ptr @vga_count, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr @vga_count, align 4
  %131 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %132 = load i32, ptr %29, align 4
  %133 = and i32 %132, 3
  %134 = add nsw i32 %133, -1
  %135 = icmp ult i32 %134, 3
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.31, i32 0, i32 %134
  %138 = load ptr, ptr %137, align 4
  br label %139

139:                                              ; preds = %136, %126
  %140 = phi ptr [ %138, %136 ], [ @.str.4, %126 ]
  %141 = getelementptr inbounds %struct.vga_device, ptr %10, i32 0, i32 3
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 3
  %144 = add nsw i32 %143, -1
  %145 = icmp ult i32 %144, 3
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.31, i32 0, i32 %144
  %148 = load ptr, ptr %147, align 4
  br label %149

149:                                              ; preds = %146, %139
  %150 = phi ptr [ %148, %146 ], [ @.str.4, %139 ]
  %151 = getelementptr inbounds %struct.vga_device, ptr %10, i32 0, i32 4
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, 3
  %154 = add nsw i32 %153, -1
  %155 = icmp ult i32 %154, 3
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.31, i32 0, i32 %154
  %158 = load ptr, ptr %157, align 4
  br label %159

159:                                              ; preds = %156, %149
  %160 = phi ptr [ %158, %156 ], [ @.str.4, %149 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %131, ptr noundef nonnull @.str.24, ptr noundef nonnull %140, ptr noundef nonnull %150, ptr noundef nonnull %160) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %15) #17
  br label %161

161:                                              ; preds = %159, %12, %1
  %162 = phi i1 [ false, %12 ], [ true, %159 ], [ false, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #17
  ret i1 %162
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @vga_arb_select_default_device() unnamed_addr #6 section ".init.text" {
  %1 = alloca i16, align 2
  %2 = load ptr, ptr @vga_default, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %37

4:                                                ; preds = %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vga_list, i32 0, i32 1), align 4
  %6 = icmp eq ptr %5, @vga_list
  br i1 %6, label %27, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %18, %7 ], [ %5, %4 ]
  %9 = phi ptr [ %16, %7 ], [ null, %4 ]
  %10 = getelementptr inbounds %struct.vga_device, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %1) #17
  store i16 0, ptr %1, align 2, !annotation !8
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 4, ptr noundef nonnull %1) #17
  %13 = load i16, ptr %1, align 2
  %14 = and i16 %13, 3
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, ptr %9, ptr %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #17
  %17 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @vga_list
  br i1 %19, label %20, label %7

20:                                               ; preds = %7
  %21 = icmp eq ptr %16, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.25) #18
  call void @vga_set_default_device(ptr noundef nonnull %16)
  br label %37

24:                                               ; preds = %20
  %25 = load ptr, ptr @vga_default, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24, %4
  %28 = load volatile ptr, ptr @vga_list, align 4
  %29 = icmp eq ptr %28, @vga_list
  %30 = icmp eq ptr %28, null
  %31 = or i1 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.vga_device, ptr %28, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.25) #18
  %36 = load ptr, ptr %33, align 4
  call void @vga_set_default_device(ptr noundef %36)
  br label %37

37:                                               ; preds = %32, %27, %24, %22, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vga_arb_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 1024) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %92, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  %12 = getelementptr inbounds %struct.vga_arb_private, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  switch i32 %14, label %16 [
    i32 -1, label %15
    i32 0, label %15
  ]

15:                                               ; preds = %10, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %11) #17
  store i64 28263411883601513, ptr %8, align 8
  br label %72

16:                                               ; preds = %20, %10
  %17 = phi ptr [ %18, %20 ], [ @vga_list, %10 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @vga_list
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.vga_device, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %13
  br i1 %23, label %24, label %16

24:                                               ; preds = %20
  %25 = icmp eq ptr %18, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %24, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %11) #17
  store i64 28263411883601513, ptr %8, align 8
  br label %72

27:                                               ; preds = %24
  %28 = load i32, ptr @vga_decode_count, align 4
  %29 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi ptr [ %34, %32 ], [ %30, %27 ]
  %37 = getelementptr inbounds %struct.vga_device, ptr %18, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 3
  %40 = add nsw i32 %39, -1
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.31, i32 0, i32 %40
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi ptr [ %44, %42 ], [ @.str.4, %35 ]
  %47 = getelementptr inbounds %struct.vga_device, ptr %18, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 3
  %50 = add nsw i32 %49, -1
  %51 = icmp ult i32 %50, 3
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.31, i32 0, i32 %50
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = phi ptr [ %54, %52 ], [ @.str.4, %45 ]
  %57 = getelementptr inbounds %struct.vga_device, ptr %18, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 3
  %60 = add nsw i32 %59, -1
  %61 = icmp ult i32 %60, 3
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.31, i32 0, i32 %60
  %64 = load ptr, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %55
  %66 = phi ptr [ %64, %62 ], [ @.str.4, %55 ]
  %67 = getelementptr inbounds %struct.vga_device, ptr %18, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.vga_device, ptr %18, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %8, i32 noundef 1024, ptr noundef nonnull @.str.11, i32 noundef %28, ptr noundef %36, ptr noundef nonnull %46, ptr noundef nonnull %56, ptr noundef nonnull %66, i32 noundef %68, i32 noundef %70)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %11) #17
  br label %72

72:                                               ; preds = %65, %26, %15
  %73 = phi i32 [ 7, %15 ], [ 7, %26 ], [ %71, %65 ]
  %74 = tail call i32 @llvm.umin.i32(i32 %73, i32 %2)
  %75 = icmp ugt i32 %74, 1024
  br i1 %75, label %76, label %77, !prof !13

76:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef 1024, i32 noundef %74) #17
  tail call void @kfree(ptr noundef nonnull %8) #17
  br label %92

77:                                               ; preds = %72
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %74, i32 -1090519040) #21, !srcloc !14
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = tail call ptr @llvm.thread.pointer() #17
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %84 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %83) #22, !srcloc !15
  %85 = and i32 %84, -13
  %86 = or i32 %85, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #17, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !17
  %87 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %74) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #17, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !17
  br label %88

88:                                               ; preds = %81, %77
  %89 = phi i32 [ %87, %81 ], [ %74, %77 ]
  tail call void @kfree(ptr noundef nonnull %8) #17
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 %74, i32 -14
  br label %92

92:                                               ; preds = %88, %76, %4
  %93 = phi i32 [ -12, %4 ], [ -14, %76 ], [ %91, %88 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vga_arb_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  %12 = icmp ugt i32 %2, 63
  br i1 %12, label %494, label %13

13:                                               ; preds = %4
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #21, !srcloc !18
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24, !prof !10

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #17
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #22, !srcloc !15
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #17, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !17
  %23 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #17, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !17
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i32 [ %23, %17 ], [ %2, %13 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27, !prof !10

27:                                               ; preds = %24
  %28 = sub i32 %2, %25
  %29 = getelementptr i8, ptr %6, i32 %28
  call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %25, i1 false) #17
  br label %494

30:                                               ; preds = %24
  %31 = getelementptr [64 x i8], ptr %6, i32 0, i32 %2
  store i8 0, ptr %31, align 1
  %32 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %6, ptr noundef nonnull dereferenceable(5) @.str.14, i32 5)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %124

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %6, i32 5
  %36 = call i32 @bcmp(ptr noundef dereferenceable(4) %35, ptr noundef nonnull dereferenceable(4) @.str.4, i32 4)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %494, label %38

38:                                               ; preds = %34
  %39 = call i32 @bcmp(ptr noundef dereferenceable(6) %35, ptr noundef nonnull dereferenceable(6) @.str.1, i32 6)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = call i32 @bcmp(ptr noundef dereferenceable(2) %35, ptr noundef nonnull dereferenceable(2) @.str.2, i32 2)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 @bcmp(ptr noundef dereferenceable(3) %35, ptr noundef nonnull dereferenceable(3) @.str.3, i32 3)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %494

47:                                               ; preds = %44, %41, %38
  %48 = getelementptr inbounds %struct.vga_arb_private, ptr %11, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %494, label %51

51:                                               ; preds = %47
  %52 = call i32 @vga_get(ptr noundef nonnull %49, i32 noundef 3, i32 noundef 0) #17
  %53 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 0
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %49
  br i1 %55, label %56, label %64

56:                                               ; preds = %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %51
  %57 = phi i32 [ 0, %51 ], [ 1, %64 ], [ 2, %68 ], [ 3, %72 ], [ 4, %76 ], [ 5, %80 ], [ 6, %84 ], [ 7, %88 ], [ 8, %92 ], [ 9, %96 ], [ 10, %100 ], [ 11, %104 ], [ 12, %108 ], [ 13, %112 ], [ 14, %116 ], [ 15, %120 ]
  %58 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 %57, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  %61 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 %57, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  br label %494

64:                                               ; preds = %51
  %65 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %49
  br i1 %67, label %56, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %49
  br i1 %71, label %56, label %72

72:                                               ; preds = %68
  %73 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %49
  br i1 %75, label %56, label %76

76:                                               ; preds = %72
  %77 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %49
  br i1 %79, label %56, label %80

80:                                               ; preds = %76
  %81 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %49
  br i1 %83, label %56, label %84

84:                                               ; preds = %80
  %85 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %49
  br i1 %87, label %56, label %88

88:                                               ; preds = %84
  %89 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 7
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %49
  br i1 %91, label %56, label %92

92:                                               ; preds = %88
  %93 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 8
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %49
  br i1 %95, label %56, label %96

96:                                               ; preds = %92
  %97 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 9
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %49
  br i1 %99, label %56, label %100

100:                                              ; preds = %96
  %101 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 10
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %49
  br i1 %103, label %56, label %104

104:                                              ; preds = %100
  %105 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 11
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, %49
  br i1 %107, label %56, label %108

108:                                              ; preds = %104
  %109 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 12
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %49
  br i1 %111, label %56, label %112

112:                                              ; preds = %108
  %113 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 13
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %49
  br i1 %115, label %56, label %116

116:                                              ; preds = %112
  %117 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 14
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, %49
  br i1 %119, label %56, label %120

120:                                              ; preds = %116
  %121 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 15
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %49
  br i1 %123, label %56, label %494

124:                                              ; preds = %30
  %125 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %6, ptr noundef nonnull dereferenceable(7) @.str.15, i32 7)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %238

127:                                              ; preds = %124
  %128 = getelementptr inbounds i8, ptr %6, i32 7
  %129 = call i32 @bcmp(ptr noundef dereferenceable(3) %128, ptr noundef nonnull dereferenceable(3) @.str.16, i32 3)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %127
  %132 = call i32 @bcmp(ptr noundef dereferenceable(4) %128, ptr noundef nonnull dereferenceable(4) @.str.4, i32 4)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = call i32 @bcmp(ptr noundef dereferenceable(6) %128, ptr noundef nonnull dereferenceable(6) @.str.1, i32 6)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = call i32 @bcmp(ptr noundef dereferenceable(2) %128, ptr noundef nonnull dereferenceable(2) @.str.2, i32 2)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = call i32 @bcmp(ptr noundef dereferenceable(3) %128, ptr noundef nonnull dereferenceable(3) @.str.3, i32 3)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %494

143:                                              ; preds = %140, %137, %134, %131, %127
  %144 = phi i32 [ 3, %127 ], [ 0, %131 ], [ 3, %140 ], [ 3, %137 ], [ 3, %134 ]
  %145 = getelementptr inbounds %struct.vga_arb_private, ptr %11, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %494, label %148

148:                                              ; preds = %143
  %149 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 0
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %146
  %152 = select i1 %151, ptr %149, ptr null
  %153 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %146
  %156 = select i1 %155, ptr %153, ptr %152
  %157 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 2
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, %146
  %160 = select i1 %159, ptr %157, ptr %156
  %161 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, %146
  %164 = select i1 %163, ptr %161, ptr %160
  %165 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 4
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, %146
  %168 = select i1 %167, ptr %165, ptr %164
  %169 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 5
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, %146
  %172 = select i1 %171, ptr %169, ptr %168
  %173 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 6
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, %146
  %176 = select i1 %175, ptr %173, ptr %172
  %177 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 7
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, %146
  %180 = select i1 %179, ptr %177, ptr %176
  %181 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 8
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %146
  %184 = select i1 %183, ptr %181, ptr %180
  %185 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 9
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, %146
  %188 = select i1 %187, ptr %185, ptr %184
  %189 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 10
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, %146
  %192 = select i1 %191, ptr %189, ptr %188
  %193 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 11
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, %146
  %196 = select i1 %195, ptr %193, ptr %192
  %197 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 12
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, %146
  %200 = select i1 %199, ptr %197, ptr %196
  %201 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 13
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, %146
  %204 = select i1 %203, ptr %201, ptr %200
  %205 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 14
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, %146
  %208 = select i1 %207, ptr %205, ptr %204
  %209 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 15
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, %146
  %212 = select i1 %211, ptr %209, ptr %208
  %213 = icmp eq ptr %212, null
  br i1 %213, label %494, label %214

214:                                              ; preds = %148
  %215 = and i32 %144, 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.vga_arb_user_card, ptr %212, i32 0, i32 2
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %494, label %221

221:                                              ; preds = %217, %214
  %222 = and i32 %144, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.vga_arb_user_card, ptr %212, i32 0, i32 1
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %494, label %228

228:                                              ; preds = %224, %221
  call void @vga_put(ptr noundef nonnull %146, i32 noundef %144)
  br i1 %216, label %233, label %229

229:                                              ; preds = %228
  %230 = getelementptr inbounds %struct.vga_arb_user_card, ptr %212, i32 0, i32 2
  %231 = load i32, ptr %230, align 4
  %232 = add i32 %231, -1
  store i32 %232, ptr %230, align 4
  br label %233

233:                                              ; preds = %229, %228
  br i1 %223, label %494, label %234

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.vga_arb_user_card, ptr %212, i32 0, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = add i32 %236, -1
  store i32 %237, ptr %235, align 4
  br label %494

238:                                              ; preds = %124
  %239 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %6, ptr noundef nonnull dereferenceable(8) @.str.17, i32 8)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %341

241:                                              ; preds = %238
  %242 = getelementptr inbounds i8, ptr %6, i32 8
  %243 = call i32 @bcmp(ptr noundef dereferenceable(4) %242, ptr noundef nonnull dereferenceable(4) @.str.4, i32 4)
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %241
  %246 = call i32 @bcmp(ptr noundef dereferenceable(6) %242, ptr noundef nonnull dereferenceable(6) @.str.1, i32 6)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %245
  %249 = call i32 @bcmp(ptr noundef dereferenceable(2) %242, ptr noundef nonnull dereferenceable(2) @.str.2, i32 2)
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = call i32 @bcmp(ptr noundef dereferenceable(3) %242, ptr noundef nonnull dereferenceable(3) @.str.3, i32 3)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %494

254:                                              ; preds = %251, %248, %245, %241
  %255 = phi i32 [ 0, %241 ], [ 3, %251 ], [ 3, %248 ], [ 3, %245 ]
  store i32 %255, ptr %5, align 4
  %256 = getelementptr inbounds %struct.vga_arb_private, ptr %11, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %494, label %259

259:                                              ; preds = %254
  %260 = call fastcc i32 @vga_tryget(ptr noundef nonnull %257, i32 noundef %255)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %494, label %262

262:                                              ; preds = %259
  %263 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 0
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, %257
  br i1 %265, label %266, label %281

266:                                              ; preds = %337, %333, %329, %325, %321, %317, %313, %309, %305, %301, %297, %293, %289, %285, %281, %262
  %267 = phi i32 [ 0, %262 ], [ 1, %281 ], [ 2, %285 ], [ 3, %289 ], [ 4, %293 ], [ 5, %297 ], [ 6, %301 ], [ 7, %305 ], [ 8, %309 ], [ 9, %313 ], [ 10, %317 ], [ 11, %321 ], [ 12, %325 ], [ 13, %329 ], [ 14, %333 ], [ 15, %337 ]
  %268 = and i32 %255, 1
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %266
  %271 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 %267, i32 2
  %272 = load i32, ptr %271, align 4
  %273 = add i32 %272, 1
  store i32 %273, ptr %271, align 4
  br label %274

274:                                              ; preds = %270, %266
  %275 = and i32 %255, 2
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %494, label %277

277:                                              ; preds = %274
  %278 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 %267, i32 1
  %279 = load i32, ptr %278, align 4
  %280 = add i32 %279, 1
  store i32 %280, ptr %278, align 4
  br label %494

281:                                              ; preds = %262
  %282 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, %257
  br i1 %284, label %266, label %285

285:                                              ; preds = %281
  %286 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 2
  %287 = load ptr, ptr %286, align 4
  %288 = icmp eq ptr %287, %257
  br i1 %288, label %266, label %289

289:                                              ; preds = %285
  %290 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 3
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, %257
  br i1 %292, label %266, label %293

293:                                              ; preds = %289
  %294 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 4
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, %257
  br i1 %296, label %266, label %297

297:                                              ; preds = %293
  %298 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 5
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, %257
  br i1 %300, label %266, label %301

301:                                              ; preds = %297
  %302 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 6
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, %257
  br i1 %304, label %266, label %305

305:                                              ; preds = %301
  %306 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 7
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, %257
  br i1 %308, label %266, label %309

309:                                              ; preds = %305
  %310 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 8
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, %257
  br i1 %312, label %266, label %313

313:                                              ; preds = %309
  %314 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 9
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, %257
  br i1 %316, label %266, label %317

317:                                              ; preds = %313
  %318 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 10
  %319 = load ptr, ptr %318, align 4
  %320 = icmp eq ptr %319, %257
  br i1 %320, label %266, label %321

321:                                              ; preds = %317
  %322 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 11
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, %257
  br i1 %324, label %266, label %325

325:                                              ; preds = %321
  %326 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 12
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, %257
  br i1 %328, label %266, label %329

329:                                              ; preds = %325
  %330 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 13
  %331 = load ptr, ptr %330, align 4
  %332 = icmp eq ptr %331, %257
  br i1 %332, label %266, label %333

333:                                              ; preds = %329
  %334 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 14
  %335 = load ptr, ptr %334, align 4
  %336 = icmp eq ptr %335, %257
  br i1 %336, label %266, label %337

337:                                              ; preds = %333
  %338 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 15
  %339 = load ptr, ptr %338, align 4
  %340 = icmp eq ptr %339, %257
  br i1 %340, label %266, label %494

341:                                              ; preds = %238
  %342 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %6, ptr noundef nonnull dereferenceable(7) @.str.18, i32 7)
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %481

344:                                              ; preds = %341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 0, ptr %9, align 4, !annotation !8
  %345 = getelementptr inbounds i8, ptr %6, i32 7
  %346 = call i32 @bcmp(ptr noundef dereferenceable(7) %345, ptr noundef nonnull dereferenceable(7) @.str.19, i32 7)
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %344
  %349 = load ptr, ptr @vga_default, align 4
  %350 = call ptr @pci_dev_get(ptr noundef %349) #17
  br label %360

351:                                              ; preds = %344
  %352 = call fastcc i32 @vga_pci_str_to_vars(ptr noundef %345, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %479, label %354

354:                                              ; preds = %351
  %355 = load i32, ptr %7, align 4
  %356 = load i32, ptr %8, align 4
  %357 = load i32, ptr %9, align 4
  %358 = call ptr @pci_get_domain_bus_and_slot(i32 noundef %355, i32 noundef %356, i32 noundef %357) #17
  %359 = icmp eq ptr %358, null
  br i1 %359, label %479, label %360

360:                                              ; preds = %354, %348
  %361 = phi ptr [ %350, %348 ], [ %358, %354 ]
  br label %362

362:                                              ; preds = %366, %360
  %363 = phi ptr [ @vga_list, %360 ], [ %364, %366 ]
  %364 = load ptr, ptr %363, align 4
  %365 = icmp eq ptr %364, @vga_list
  br i1 %365, label %372, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.vga_device, ptr %364, i32 0, i32 1
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, %361
  br i1 %369, label %370, label %362

370:                                              ; preds = %366
  %371 = icmp eq ptr %364, null
  br i1 %371, label %372, label %375

372:                                              ; preds = %370, %362
  %373 = icmp eq ptr %361, null
  br i1 %373, label %479, label %374

374:                                              ; preds = %372
  call void @pci_dev_put(ptr noundef nonnull %361) #17
  br label %479

375:                                              ; preds = %370
  %376 = getelementptr inbounds %struct.vga_arb_private, ptr %11, i32 0, i32 1
  store ptr %361, ptr %376, align 4
  %377 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 0
  %378 = load ptr, ptr %377, align 4
  %379 = icmp eq ptr %378, %361
  br i1 %379, label %478, label %380

380:                                              ; preds = %375
  %381 = icmp eq ptr %378, null
  br i1 %381, label %382, label %387

382:                                              ; preds = %475, %469, %463, %457, %451, %445, %439, %433, %427, %421, %415, %409, %403, %397, %391, %380
  %383 = phi i32 [ 0, %380 ], [ 1, %391 ], [ 2, %397 ], [ 3, %403 ], [ 4, %409 ], [ 5, %415 ], [ 6, %421 ], [ 7, %427 ], [ 8, %433 ], [ 9, %439 ], [ 10, %445 ], [ 11, %451 ], [ 12, %457 ], [ 13, %463 ], [ 14, %469 ], [ 15, %475 ]
  %384 = phi ptr [ %377, %380 ], [ %388, %391 ], [ %394, %397 ], [ %400, %403 ], [ %406, %409 ], [ %412, %415 ], [ %418, %421 ], [ %424, %427 ], [ %430, %433 ], [ %436, %439 ], [ %442, %445 ], [ %448, %451 ], [ %454, %457 ], [ %460, %463 ], [ %466, %469 ], [ %472, %475 ]
  store ptr %361, ptr %384, align 4
  %385 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 %383, i32 2
  store i32 0, ptr %385, align 4
  %386 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 %383, i32 1
  store i32 0, ptr %386, align 4
  br label %478

387:                                              ; preds = %380
  %388 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 1
  %389 = load ptr, ptr %388, align 4
  %390 = icmp eq ptr %389, %361
  br i1 %390, label %478, label %391

391:                                              ; preds = %387
  %392 = icmp eq ptr %389, null
  br i1 %392, label %382, label %393

393:                                              ; preds = %391
  %394 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 2
  %395 = load ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, %361
  br i1 %396, label %478, label %397

397:                                              ; preds = %393
  %398 = icmp eq ptr %395, null
  br i1 %398, label %382, label %399

399:                                              ; preds = %397
  %400 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 3
  %401 = load ptr, ptr %400, align 4
  %402 = icmp eq ptr %401, %361
  br i1 %402, label %478, label %403

403:                                              ; preds = %399
  %404 = icmp eq ptr %401, null
  br i1 %404, label %382, label %405

405:                                              ; preds = %403
  %406 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 4
  %407 = load ptr, ptr %406, align 4
  %408 = icmp eq ptr %407, %361
  br i1 %408, label %478, label %409

409:                                              ; preds = %405
  %410 = icmp eq ptr %407, null
  br i1 %410, label %382, label %411

411:                                              ; preds = %409
  %412 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 5
  %413 = load ptr, ptr %412, align 4
  %414 = icmp eq ptr %413, %361
  br i1 %414, label %478, label %415

415:                                              ; preds = %411
  %416 = icmp eq ptr %413, null
  br i1 %416, label %382, label %417

417:                                              ; preds = %415
  %418 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 6
  %419 = load ptr, ptr %418, align 4
  %420 = icmp eq ptr %419, %361
  br i1 %420, label %478, label %421

421:                                              ; preds = %417
  %422 = icmp eq ptr %419, null
  br i1 %422, label %382, label %423

423:                                              ; preds = %421
  %424 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 7
  %425 = load ptr, ptr %424, align 4
  %426 = icmp eq ptr %425, %361
  br i1 %426, label %478, label %427

427:                                              ; preds = %423
  %428 = icmp eq ptr %425, null
  br i1 %428, label %382, label %429

429:                                              ; preds = %427
  %430 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 8
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, %361
  br i1 %432, label %478, label %433

433:                                              ; preds = %429
  %434 = icmp eq ptr %431, null
  br i1 %434, label %382, label %435

435:                                              ; preds = %433
  %436 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 9
  %437 = load ptr, ptr %436, align 4
  %438 = icmp eq ptr %437, %361
  br i1 %438, label %478, label %439

439:                                              ; preds = %435
  %440 = icmp eq ptr %437, null
  br i1 %440, label %382, label %441

441:                                              ; preds = %439
  %442 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 10
  %443 = load ptr, ptr %442, align 4
  %444 = icmp eq ptr %443, %361
  br i1 %444, label %478, label %445

445:                                              ; preds = %441
  %446 = icmp eq ptr %443, null
  br i1 %446, label %382, label %447

447:                                              ; preds = %445
  %448 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 11
  %449 = load ptr, ptr %448, align 4
  %450 = icmp eq ptr %449, %361
  br i1 %450, label %478, label %451

451:                                              ; preds = %447
  %452 = icmp eq ptr %449, null
  br i1 %452, label %382, label %453

453:                                              ; preds = %451
  %454 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 12
  %455 = load ptr, ptr %454, align 4
  %456 = icmp eq ptr %455, %361
  br i1 %456, label %478, label %457

457:                                              ; preds = %453
  %458 = icmp eq ptr %455, null
  br i1 %458, label %382, label %459

459:                                              ; preds = %457
  %460 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 13
  %461 = load ptr, ptr %460, align 4
  %462 = icmp eq ptr %461, %361
  br i1 %462, label %478, label %463

463:                                              ; preds = %459
  %464 = icmp eq ptr %461, null
  br i1 %464, label %382, label %465

465:                                              ; preds = %463
  %466 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 14
  %467 = load ptr, ptr %466, align 4
  %468 = icmp eq ptr %467, %361
  br i1 %468, label %478, label %469

469:                                              ; preds = %465
  %470 = icmp eq ptr %467, null
  br i1 %470, label %382, label %471

471:                                              ; preds = %469
  %472 = getelementptr %struct.vga_arb_private, ptr %11, i32 0, i32 2, i32 15
  %473 = load ptr, ptr %472, align 4
  %474 = icmp eq ptr %473, %361
  br i1 %474, label %478, label %475

475:                                              ; preds = %471
  %476 = icmp eq ptr %473, null
  br i1 %476, label %382, label %477

477:                                              ; preds = %475
  call void @pci_dev_put(ptr noundef %361) #17
  br label %479

478:                                              ; preds = %471, %465, %459, %453, %447, %441, %435, %429, %423, %417, %411, %405, %399, %393, %387, %382, %375
  call void @pci_dev_put(ptr noundef %361) #17
  br label %479

479:                                              ; preds = %478, %477, %374, %372, %354, %351
  %480 = phi i32 [ -12, %477 ], [ %2, %478 ], [ -71, %351 ], [ -19, %354 ], [ -19, %374 ], [ -19, %372 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  br label %494

481:                                              ; preds = %341
  %482 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %6, ptr noundef nonnull dereferenceable(8) @.str.20, i32 8)
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %494

484:                                              ; preds = %481
  %485 = getelementptr inbounds i8, ptr %6, i32 8
  %486 = call fastcc i32 @vga_str_to_iostate(ptr noundef %485, ptr noundef nonnull %5)
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.vga_arb_private, ptr %11, i32 0, i32 1
  %490 = load ptr, ptr %489, align 4
  %491 = icmp eq ptr %490, null
  br i1 %491, label %494, label %492

492:                                              ; preds = %488
  %493 = load i32, ptr %5, align 4
  call fastcc void @__vga_set_legacy_decoding(ptr noundef nonnull %490, i32 noundef %493, i1 noundef zeroext true)
  br label %494

494:                                              ; preds = %492, %488, %484, %481, %479, %337, %277, %274, %259, %254, %251, %234, %233, %224, %217, %148, %143, %140, %120, %56, %47, %44, %34, %27, %4
  %495 = phi i32 [ -22, %4 ], [ -71, %481 ], [ %480, %479 ], [ %2, %492 ], [ -19, %47 ], [ %2, %56 ], [ -19, %143 ], [ -22, %148 ], [ -22, %217 ], [ -22, %224 ], [ %2, %234 ], [ %2, %233 ], [ -19, %254 ], [ %2, %274 ], [ %2, %277 ], [ -16, %259 ], [ -71, %484 ], [ -19, %488 ], [ -14, %27 ], [ -71, %44 ], [ -71, %140 ], [ -71, %251 ], [ %2, %120 ], [ %2, %337 ], [ -71, %34 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %495
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vga_arb_fpoll(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %5(ptr noundef %0, ptr noundef nonnull @vga_wait_queue, ptr noundef nonnull %1) #17
  br label %8

8:                                                ; preds = %7, %4, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vga_arb_open(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 208) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vga_arb_private, ptr %4, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %8, align 8
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_user_lock) #17
  %10 = load ptr, ptr @vga_user_list, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %4, ptr %11, align 4
  store ptr %10, ptr %4, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr @vga_user_list, ptr %12, align 4
  store volatile ptr %4, ptr @vga_user_list, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_user_lock, i32 noundef %9) #17
  %13 = load ptr, ptr @vga_default, align 4
  %14 = getelementptr inbounds %struct.vga_arb_private, ptr %4, i32 0, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.vga_arb_private, ptr %4, i32 0, i32 2
  store ptr %13, ptr %15, align 4
  %16 = getelementptr inbounds %struct.vga_arb_private, ptr %4, i32 0, i32 2, i32 0, i32 2
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vga_arb_private, ptr %4, i32 0, i32 2, i32 0, i32 1
  store i32 0, ptr %17, align 8
  br label %18

18:                                               ; preds = %6, %2
  %19 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vga_arb_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_user_lock) #17
  %6 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  br label %10

10:                                               ; preds = %124, %2
  %11 = phi i32 [ 0, %2 ], [ %125, %124 ]
  %12 = getelementptr %struct.vga_arb_private, ptr %4, i32 0, i32 2, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %124, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.vga_arb_private, ptr %4, i32 0, i32 2, i32 %11, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %69, %15
  %21 = getelementptr %struct.vga_arb_private, ptr %4, i32 0, i32 2, i32 %11, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 4
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %124, label %75

25:                                               ; preds = %73, %15
  %26 = phi i32 [ %71, %73 ], [ %18, %15 ]
  %27 = phi ptr [ %74, %73 ], [ %13, %15 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load ptr, ptr @vga_default, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %69, label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %30, %29 ], [ %27, %25 ]
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %35

35:                                               ; preds = %39, %32
  %36 = phi ptr [ @vga_list, %32 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, @vga_list
  br i1 %38, label %67, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.vga_device, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %33
  br i1 %42, label %43, label %35

43:                                               ; preds = %39
  %44 = icmp eq ptr %37, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.vga_device, ptr %37, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.vga_device, ptr %37, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = add i32 %49, -1
  store i32 %52, ptr %48, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %45
  %55 = and i32 %47, -2
  store i32 %55, ptr %46, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ %47, %51 ]
  %58 = getelementptr inbounds %struct.vga_device, ptr %37, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = and i32 %57, -3
  store i32 %62, ptr %46, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ %57, %56 ]
  %65 = icmp eq i32 %47, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @__wake_up(ptr noundef nonnull @vga_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #17
  br label %67

67:                                               ; preds = %66, %63, %43, %35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %34) #17
  %68 = load i32, ptr %16, align 4
  br label %69

69:                                               ; preds = %67, %29
  %70 = phi i32 [ %26, %29 ], [ %68, %67 ]
  %71 = add i32 %70, -1
  store i32 %71, ptr %16, align 4
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %20, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %12, align 4
  br label %25

75:                                               ; preds = %120, %20
  %76 = phi i32 [ %122, %120 ], [ %23, %20 ]
  %77 = load ptr, ptr %12, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load ptr, ptr @vga_default, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %120, label %82

82:                                               ; preds = %79, %75
  %83 = phi ptr [ %80, %79 ], [ %77, %75 ]
  %84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %85

85:                                               ; preds = %89, %82
  %86 = phi ptr [ @vga_list, %82 ], [ %87, %89 ]
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, @vga_list
  br i1 %88, label %118, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.vga_device, ptr %87, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %83
  br i1 %92, label %93, label %85

93:                                               ; preds = %89
  %94 = icmp eq ptr %87, null
  br i1 %94, label %118, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.vga_device, ptr %87, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.vga_device, ptr %87, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = add i32 %99, -1
  store i32 %102, ptr %98, align 4
  br label %103

103:                                              ; preds = %101, %95
  %104 = phi i32 [ %102, %101 ], [ 0, %95 ]
  %105 = getelementptr inbounds %struct.vga_device, ptr %87, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  %108 = and i32 %97, -2
  %109 = select i1 %107, i32 %108, i32 %97
  %110 = icmp eq i32 %104, 0
  %111 = and i32 %109, -3
  %112 = select i1 %110, i32 %111, i32 %109
  %113 = or i1 %107, %110
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  store i32 %112, ptr %96, align 4
  br label %115

115:                                              ; preds = %114, %103
  %116 = icmp eq i32 %97, %112
  br i1 %116, label %118, label %117

117:                                              ; preds = %115
  tail call void @__wake_up(ptr noundef nonnull @vga_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #17
  br label %118

118:                                              ; preds = %117, %115, %93, %85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %84) #17
  %119 = load i32, ptr %21, align 4
  br label %120

120:                                              ; preds = %118, %79
  %121 = phi i32 [ %76, %79 ], [ %119, %118 ]
  %122 = add i32 %121, -1
  store i32 %122, ptr %21, align 4
  %123 = icmp eq i32 %121, 0
  br i1 %123, label %124, label %75

124:                                              ; preds = %120, %20, %10
  %125 = add nuw nsw i32 %11, 1
  %126 = icmp eq i32 %125, 16
  br i1 %126, label %127, label %10

127:                                              ; preds = %124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_user_lock, i32 noundef %5) #17
  tail call void @kfree(ptr noundef %4) #17
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @vga_str_to_iostate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #13 {
  %3 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.4, i32 noundef 4)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(7) @.str.1, i32 noundef 6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(3) @.str.2, i32 noundef 2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.3, i32 noundef 3)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %8, %5, %2
  %15 = phi i32 [ 0, %2 ], [ 3, %11 ], [ 3, %8 ], [ 3, %5 ]
  store i32 %15, ptr %1, align 4
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 0, %11 ], [ 1, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vga_tryget(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load i1, ptr @vga_arbiter_used, align 1
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  store i1 true, ptr @vga_arbiter_used, align 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  %6 = load ptr, ptr @vga_list, align 4
  %7 = icmp eq ptr %6, @vga_list
  br i1 %7, label %22, label %8

8:                                                ; preds = %19, %4
  %9 = phi ptr [ %20, %19 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.vga_device, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr @vga_count, align 4
  %15 = icmp slt i32 %14, 2
  %16 = getelementptr inbounds %struct.vga_device, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %11(ptr noundef %17, i1 noundef zeroext %15) #17
  tail call fastcc void @vga_update_device_decodes(ptr noundef %9, i32 noundef %18) #17
  br label %19

19:                                               ; preds = %13, %8
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, @vga_list
  br i1 %21, label %22, label %8

22:                                               ; preds = %19, %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %5) #17
  br label %23

23:                                               ; preds = %22, %2
  %24 = icmp eq ptr %0, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load ptr, ptr @vga_default, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %25, %23
  %29 = phi ptr [ %26, %25 ], [ %0, %23 ]
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %31

31:                                               ; preds = %35, %28
  %32 = phi ptr [ @vga_list, %28 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, @vga_list
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.vga_device, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %29
  br i1 %38, label %39, label %31

39:                                               ; preds = %35
  %40 = icmp eq ptr %33, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = tail call fastcc ptr @__vga_tryget(ptr noundef nonnull %33, i32 noundef %1)
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, i32 0, i32 -16
  br label %45

45:                                               ; preds = %41, %39, %31
  %46 = phi i32 [ -19, %39 ], [ %44, %41 ], [ -19, %31 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %30) #17
  br label %47

47:                                               ; preds = %45, %25
  %48 = phi i32 [ %46, %45 ], [ 0, %25 ]
  ret i32 %48
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vga_pci_str_to_vars(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #14 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = shl i32 %10, 3
  %12 = and i32 %11, 248
  %13 = load i32, ptr %6, align 4
  %14 = and i32 %13, 7
  %15 = or i32 %12, %14
  store i32 %15, ptr %3, align 4
  br label %16

16:                                               ; preds = %9, %4
  %17 = phi i32 [ 1, %9 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %2, i32 -136
  switch i32 %1, label %64 [
    i32 1, label %5
    i32 2, label %7
  ]

5:                                                ; preds = %3
  %6 = tail call fastcc zeroext i1 @vga_arbiter_add_pci_device(ptr noundef %4)
  br i1 %6, label %42, label %64

7:                                                ; preds = %3
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ @vga_list, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @vga_list
  br i1 %12, label %41, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vga_device, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  %18 = icmp eq ptr %11, null
  br i1 %18, label %63, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @vga_default, align 4
  %21 = icmp ne ptr %20, %4
  %22 = icmp eq ptr %20, null
  %23 = or i1 %21, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  tail call void @pci_dev_put(ptr noundef nonnull %4) #17
  %25 = tail call ptr @pci_dev_get(ptr noundef null) #17
  store ptr %25, ptr @vga_default, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds %struct.vga_device, ptr %11, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr @vga_decode_count, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr @vga_decode_count, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  %39 = load i32, ptr @vga_count, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr @vga_count, align 4
  tail call void @__wake_up(ptr noundef nonnull @vga_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %8) #17
  tail call void @kfree(ptr noundef nonnull %11) #17
  br label %42

41:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %8) #17
  tail call void @kfree(ptr noundef null) #17
  br label %64

42:                                               ; preds = %34, %5
  %43 = load i1, ptr @vga_arbiter_used, align 1
  br i1 %43, label %44, label %64

44:                                               ; preds = %42
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #17
  %46 = load ptr, ptr @vga_list, align 4
  %47 = icmp eq ptr %46, @vga_list
  br i1 %47, label %62, label %48

48:                                               ; preds = %59, %44
  %49 = phi ptr [ %60, %59 ], [ %46, %44 ]
  %50 = getelementptr inbounds %struct.vga_device, ptr %49, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr @vga_count, align 4
  %55 = icmp slt i32 %54, 2
  %56 = getelementptr inbounds %struct.vga_device, ptr %49, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %51(ptr noundef %57, i1 noundef zeroext %55) #17
  tail call fastcc void @vga_update_device_decodes(ptr noundef %49, i32 noundef %58) #17
  br label %59

59:                                               ; preds = %53, %48
  %60 = load ptr, ptr %49, align 4
  %61 = icmp eq ptr %60, @vga_list
  br i1 %61, label %62, label %48

62:                                               ; preds = %59, %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %45) #17
  br label %64

63:                                               ; preds = %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %8) #17
  tail call void @kfree(ptr noundef null) #17
  br label %64

64:                                               ; preds = %63, %62, %42, %41, %5, %3
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind readonly }

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
!9 = !{i64 2153837312}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i8 0, i8 2}
!12 = !{i64 2153848110, i64 2153848599, i64 2153848147, i64 2153848203, i64 2153848237, i64 2153848261, i64 2153848302, i64 2153848323, i64 2153848351, i64 2153848385}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2152678742, i64 2152678767}
!15 = !{i64 5174276}
!16 = !{i64 5174473}
!17 = !{i64 2152659752}
!18 = !{i64 2152678164, i64 2152678189}
