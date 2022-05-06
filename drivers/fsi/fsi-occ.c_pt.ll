; ModuleID = '/llk/IR/drivers/fsi/fsi-occ.c_pt.bc'
source_filename = "../drivers/fsi/fsi-occ.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_occ_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_occ_submit\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_occ_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.occ = type { ptr, ptr, [32 x i8], i32, i8, ptr, ptr, i32, i32, i32, %struct.miscdevice, %struct.mutex }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.occ_response = type <{ i8, i8, i8, i16, [4091 x i8] }>
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
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.occ_client = type { ptr, %struct.mutex, i32, i32, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [55 x i8] c"resp timeout status=%02x resp seq_no=%d our seq_no=%d\0A\00", align 1
@__kstrtab_fsi_occ_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_occ_submit = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_occ_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_occ_submit to i32), ptr @__kstrtab_fsi_occ_submit, ptr @__kstrtabns_fsi_occ_submit }, section "___ksymtab_gpl+fsi_occ_submit", align 4
@occ_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ibm,p9-occ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ibm,p10-occ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author225 = internal constant [43 x i8] c"author=Eddie James <eajames@linux.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [30 x i8] c"description=BMC P9 OCC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"SRAM write returned failure status: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"SRAM write response length invalid: %zd\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"SRAM write expected %d bytes got %zd\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"SRAM attn returned failure status: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"SRAM attn response length invalid: %zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"SRAM attn expected 8 bytes got %zd\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"SRAM read returned failure status: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"SRAM read expected %d bytes got %zd\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Bad checksum: %04x!=%04x\0A\00", align 1
@occ_driver = internal global %struct.platform_driver { ptr @occ_probe, ptr @occ_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @occ_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.10 = private unnamed_addr constant [4 x i8] c"occ\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"occ-hwmon\00", align 1
@occ_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"&occ->occ_lock\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@occ_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"occ%d\00", align 1
@occ_fops = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr @occ_read, ptr @occ_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @occ_open, ptr null, ptr @occ_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"failed to register miscdevice: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"failed to create hwmon device\0A\00", align 1
@occ_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"drivers/fsi/fsi-occ.c\00", align 1
@occ_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"&client->lock\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_license227, ptr @__ksymtab_fsi_occ_submit], section "llvm.metadata"

@__mod_of__occ_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @occ_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_occ_submit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %4, align 4
  store i32 0, ptr %4, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %215, label %14

14:                                               ; preds = %5
  %15 = icmp ult i32 %12, 7
  br i1 %15, label %215, label %16

16:                                               ; preds = %14
  %17 = add i32 %2, -2
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %19, %16
  %20 = phi i32 [ %26, %19 ], [ 1, %16 ]
  %21 = phi i32 [ %27, %19 ], [ 0, %16 ]
  %22 = getelementptr i8, ptr %1, i32 %20
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add nuw nsw i32 %21, %24
  %26 = add nuw i32 %20, 1
  %27 = and i32 %25, 65535
  %28 = icmp eq i32 %26, %17
  br i1 %28, label %29, label %19

29:                                               ; preds = %19, %16
  %30 = phi i32 [ 0, %16 ], [ %27, %19 ]
  %31 = getelementptr inbounds %struct.occ, ptr %11, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %31) #11
  %32 = getelementptr inbounds %struct.occ, ptr %11, i32 0, i32 6
  store ptr %3, ptr %32, align 4
  %33 = getelementptr inbounds %struct.occ, ptr %11, i32 0, i32 7
  store i32 %12, ptr %33, align 4
  %34 = getelementptr inbounds %struct.occ, ptr %11, i32 0, i32 8
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.occ, ptr %11, i32 0, i32 4
  %36 = load i8, ptr %35, align 4
  %37 = add i8 %36, 1
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i8 1, i8 %37
  store i8 %39, ptr %35, align 4
  %40 = zext i8 %36 to i32
  %41 = add nuw nsw i32 %30, %40
  %42 = add i32 %2, 7
  %43 = sdiv i32 %42, 8
  %44 = shl nsw i32 %43, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 2048, ptr %9, align 4
  %45 = getelementptr inbounds %struct.occ, ptr %11, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.occ, ptr %11, i32 0, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 1
  %50 = select i1 %49, i32 6, i32 5
  %51 = lshr exact i32 %44, 2
  %52 = add nuw nsw i32 %50, %51
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  store i32 %53, ptr %46, align 4
  %54 = getelementptr i32, ptr %46, i32 1
  store i32 77856768, ptr %54, align 4
  %55 = load i32, ptr %47, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %29
  %58 = getelementptr i32, ptr %46, i32 4
  store i32 13697023, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %29
  %60 = phi i32 [ 1476395008, %57 ], [ 16777216, %29 ]
  %61 = phi i32 [ 0, %57 ], [ 14744575, %29 ]
  %62 = phi i32 [ 1, %57 ], [ 0, %29 ]
  %63 = getelementptr i32, ptr %46, i32 2
  store i32 %60, ptr %63, align 4
  %64 = getelementptr i32, ptr %46, i32 3
  store i32 %61, ptr %64, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  %66 = or i32 %62, 4
  %67 = getelementptr i32, ptr %46, i32 %66
  store i32 %65, ptr %67, align 4
  %68 = add nuw nsw i32 %62, 5
  %69 = getelementptr i32, ptr %46, i32 %68
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %69, ptr align 1 %1, i32 %2, i1 false) #11
  store i8 %36, ptr %69, align 1
  %70 = lshr i32 %41, 8
  %71 = trunc i32 %70 to i8
  %72 = getelementptr i8, ptr %69, i32 %17
  store i8 %71, ptr %72, align 1
  %73 = trunc i32 %41 to i8
  %74 = add i32 %2, -1
  %75 = getelementptr i8, ptr %69, i32 %74
  store i8 %73, ptr %75, align 1
  %76 = getelementptr inbounds %struct.occ, ptr %11, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @sbefifo_submit(ptr noundef %77, ptr noundef %46, i32 noundef %52, ptr noundef %46, ptr noundef nonnull %9) #11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %59
  %81 = load ptr, ptr %76, align 4
  %82 = load i32, ptr %9, align 4
  %83 = call i32 @sbefifo_parse_status(ptr noundef %81, i16 noundef zeroext -23548, ptr noundef %46, i32 noundef %82, ptr noundef nonnull %8) #11
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.1, i32 noundef %83) #12
  %87 = load i32, ptr %8, align 4
  %88 = load i32, ptr %9, align 4
  %89 = icmp ugt i32 %88, %87
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  %91 = xor i32 %87, -1
  %92 = add i32 %88, %91
  %93 = shl i32 %92, 2
  %94 = getelementptr i32, ptr %46, i32 %87
  %95 = load i32, ptr %33, align 4
  %96 = call i32 @llvm.umin.i32(i32 %93, i32 %95) #11
  %97 = load ptr, ptr %32, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %97, ptr align 4 %94, i32 %96, i1 false) #11
  store i32 %96, ptr %34, align 4
  br label %111

98:                                               ; preds = %80
  %99 = icmp eq i32 %83, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %98
  %101 = load i32, ptr %8, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.2, i32 noundef %101) #12
  br label %111

105:                                              ; preds = %100
  %106 = load i32, ptr %46, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #11
  %108 = icmp eq i32 %107, %44
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.3, i32 noundef %44, i32 noundef %107) #12
  br label %111

111:                                              ; preds = %109, %103, %98, %90, %85, %59
  %112 = phi i32 [ -70, %90 ], [ -70, %85 ], [ -74, %109 ], [ -74, %103 ], [ %83, %98 ], [ %78, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %212

113:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  %114 = load ptr, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 2048, ptr %7, align 4
  %115 = load i32, ptr %47, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = getelementptr i32, ptr %114, i32 4
  store i32 0, ptr %118, align 4
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i32 [ -805306368, %117 ], [ 50331648, %113 ]
  %121 = phi i32 [ 8, %117 ], [ 7, %113 ]
  %122 = phi i32 [ 1, %117 ], [ 0, %113 ]
  %123 = getelementptr i32, ptr %114, i32 2
  store i32 %120, ptr %123, align 4
  %124 = getelementptr i32, ptr %114, i32 3
  store i32 0, ptr %124, align 4
  %125 = shl nuw nsw i32 %121, 24
  store i32 %125, ptr %114, align 4
  %126 = getelementptr i32, ptr %114, i32 1
  store i32 77856768, ptr %126, align 4
  %127 = or i32 %122, 4
  %128 = getelementptr i32, ptr %114, i32 %127
  store i32 134217728, ptr %128, align 4
  %129 = add nuw nsw i32 %122, 5
  %130 = getelementptr i32, ptr %114, i32 %129
  store i32 288, ptr %130, align 4
  %131 = or i32 %122, 6
  %132 = getelementptr i32, ptr %114, i32 %131
  store i32 0, ptr %132, align 4
  %133 = load ptr, ptr %76, align 4
  %134 = call i32 @sbefifo_submit(ptr noundef %133, ptr noundef %114, i32 noundef %121, ptr noundef %114, ptr noundef nonnull %7) #11
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %167

136:                                              ; preds = %119
  %137 = load ptr, ptr %76, align 4
  %138 = load i32, ptr %7, align 4
  %139 = call i32 @sbefifo_parse_status(ptr noundef %137, i16 noundef zeroext -23548, ptr noundef %114, i32 noundef %138, ptr noundef nonnull %6) #11
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %136
  %142 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.4, i32 noundef %139) #12
  %143 = load i32, ptr %6, align 4
  %144 = load i32, ptr %7, align 4
  %145 = icmp ugt i32 %144, %143
  br i1 %145, label %146, label %167

146:                                              ; preds = %141
  %147 = xor i32 %143, -1
  %148 = add i32 %144, %147
  %149 = shl i32 %148, 2
  %150 = getelementptr i32, ptr %114, i32 %143
  %151 = load i32, ptr %33, align 4
  %152 = call i32 @llvm.umin.i32(i32 %149, i32 %151) #11
  %153 = load ptr, ptr %32, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %153, ptr align 4 %150, i32 %152, i1 false) #11
  store i32 %152, ptr %34, align 4
  br label %167

154:                                              ; preds = %136
  %155 = icmp eq i32 %139, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %154
  %157 = load i32, ptr %6, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.5, i32 noundef %157) #12
  br label %167

161:                                              ; preds = %156
  %162 = load i32, ptr %114, align 4
  %163 = icmp eq i32 %162, 134217728
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = call i32 @llvm.bswap.i32(i32 %162) #11
  %166 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.6, i32 noundef %165) #12
  br label %167

167:                                              ; preds = %164, %159, %154, %146, %141, %119
  %168 = phi i32 [ -70, %146 ], [ -70, %141 ], [ -74, %164 ], [ -74, %159 ], [ %139, %154 ], [ %134, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %212

169:                                              ; preds = %161
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %170 = load volatile i32, ptr @jiffies, align 64
  %171 = call fastcc i32 @occ_getsram(ptr noundef nonnull %11, i32 noundef 0, ptr noundef %3, i32 noundef 8)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %212

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.occ_response, ptr %3, i32 0, i32 2
  %175 = add i32 %170, 100
  br label %176

176:                                              ; preds = %190, %173
  %177 = load i8, ptr %174, align 1
  switch i8 %177, label %178 [
    i8 -1, label %181
    i8 -31, label %181
  ]

178:                                              ; preds = %176
  %179 = load i8, ptr %3, align 1
  %180 = icmp eq i8 %179, %36
  br i1 %180, label %196, label %181

181:                                              ; preds = %178, %176, %176
  %182 = load volatile i32, ptr @jiffies, align 64
  %183 = sub i32 %175, %182
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load ptr, ptr %11, align 4
  %187 = zext i8 %177 to i32
  %188 = load i8, ptr %3, align 1
  %189 = zext i8 %188 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str, i32 noundef %187, i32 noundef %189, i32 noundef %40) #12
  br label %212

190:                                              ; preds = %181
  %191 = tail call ptr @llvm.thread.pointer() #11
  %192 = getelementptr inbounds %struct.task_struct, ptr %191, i32 0, i32 1
  store volatile i32 2, ptr %192, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %193 = call i32 @schedule_timeout(i32 noundef 5) #11
  %194 = call fastcc i32 @occ_getsram(ptr noundef nonnull %11, i32 noundef 0, ptr noundef %3, i32 noundef 8)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %176, label %212

196:                                              ; preds = %178
  %197 = getelementptr inbounds %struct.occ_response, ptr %3, i32 0, i32 3
  %198 = load i16, ptr %197, align 1
  %199 = call i16 @llvm.bswap.i16(i16 %198) #11
  %200 = zext i16 %199 to i32
  %201 = add nuw nsw i32 %200, 7
  %202 = icmp ugt i32 %201, %12
  br i1 %202, label %212, label %203

203:                                              ; preds = %196
  %204 = icmp ugt i16 %199, 1
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = getelementptr %struct.occ_response, ptr %3, i32 0, i32 4, i32 3
  %207 = add nsw i32 %200, -1
  %208 = call fastcc i32 @occ_getsram(ptr noundef nonnull %11, i32 noundef 8, ptr noundef %206, i32 noundef %207)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205, %203
  store i32 %201, ptr %34, align 4
  %211 = call fastcc i32 @occ_verify_checksum(ptr noundef nonnull %11, ptr noundef %3, i16 noundef zeroext %199)
  br label %212

212:                                              ; preds = %210, %205, %196, %190, %185, %169, %167, %111
  %213 = phi i32 [ -110, %185 ], [ %208, %205 ], [ %211, %210 ], [ -90, %196 ], [ %112, %111 ], [ %168, %167 ], [ %171, %169 ], [ %194, %190 ]
  %214 = load i32, ptr %34, align 4
  store i32 %214, ptr %4, align 4
  call void @mutex_unlock(ptr noundef %31) #11
  br label %215

215:                                              ; preds = %212, %14, %5
  %216 = phi i32 [ %213, %212 ], [ -19, %5 ], [ -22, %14 ]
  ret i32 %216
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @occ_getsram(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 4
  %8 = add i32 %3, 7
  %9 = sdiv i32 %8, 8
  %10 = shl nsw i32 %9, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 2048, ptr %6, align 4
  %11 = getelementptr inbounds %struct.occ, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  %13 = getelementptr inbounds i8, ptr %7, i32 16
  store i64 0, ptr %13, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.occ, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = add i32 %1, -266240
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %24

20:                                               ; preds = %4
  %21 = add i32 %1, -8192
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = getelementptr inbounds [6 x i32], ptr %7, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ 1476395008, %20 ], [ 16777216, %17 ]
  %26 = phi i32 [ 0, %20 ], [ %19, %17 ]
  %27 = phi i32 [ 6, %20 ], [ 5, %17 ]
  %28 = phi i32 [ 5, %20 ], [ 4, %17 ]
  %29 = getelementptr inbounds [6 x i32], ptr %7, i32 0, i32 2
  store i32 %25, ptr %29, align 4
  %30 = getelementptr inbounds [6 x i32], ptr %7, i32 0, i32 3
  store i32 %26, ptr %30, align 4
  %31 = shl nuw nsw i32 %27, 24
  store i32 %31, ptr %7, align 4
  %32 = getelementptr inbounds [6 x i32], ptr %7, i32 0, i32 1
  store i32 61079552, ptr %32, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %10)
  %34 = getelementptr [6 x i32], ptr %7, i32 0, i32 %28
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.occ, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @sbefifo_submit(ptr noundef %36, ptr noundef nonnull %7, i32 noundef %27, ptr noundef %12, ptr noundef nonnull %6) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %24
  %40 = load ptr, ptr %35, align 4
  %41 = load i32, ptr %6, align 4
  %42 = call i32 @sbefifo_parse_status(ptr noundef %40, i16 noundef zeroext -23549, ptr noundef %12, i32 noundef %41, ptr noundef nonnull %5) #11
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.7, i32 noundef %42) #12
  %46 = load i32, ptr %5, align 4
  %47 = load i32, ptr %6, align 4
  %48 = icmp ugt i32 %47, %46
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = xor i32 %46, -1
  %51 = add i32 %47, %50
  %52 = shl i32 %51, 2
  %53 = getelementptr i32, ptr %12, i32 %46
  %54 = getelementptr inbounds %struct.occ, ptr %0, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = call i32 @llvm.umin.i32(i32 %52, i32 %55) #11
  %57 = getelementptr inbounds %struct.occ, ptr %0, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %58, ptr align 4 %53, i32 %56, i1 false) #11
  %59 = getelementptr inbounds %struct.occ, ptr %0, i32 0, i32 8
  store i32 %56, ptr %59, align 4
  br label %72

60:                                               ; preds = %39
  %61 = icmp eq i32 %42, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %60
  %63 = load i32, ptr %5, align 4
  %64 = add i32 %63, -1
  %65 = getelementptr i32, ptr %12, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %68 = icmp eq i32 %67, %10
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.8, i32 noundef %10, i32 noundef %67) #12
  br label %72

71:                                               ; preds = %62
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 4 %12, i32 %3, i1 false)
  br label %72

72:                                               ; preds = %71, %69, %60, %49, %44, %24
  %73 = phi i32 [ %37, %24 ], [ %42, %60 ], [ -74, %69 ], [ 0, %71 ], [ -70, %44 ], [ -70, %49 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %73
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @occ_verify_checksum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = zext i16 %2 to i32
  %5 = getelementptr %struct.occ_response, ptr %1, i32 0, i32 4, i32 %4
  %6 = load i16, ptr %5, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #11
  %8 = load i8, ptr %1, align 1
  %9 = getelementptr inbounds %struct.occ_response, ptr %1, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i16
  %12 = zext i8 %8 to i16
  %13 = getelementptr inbounds %struct.occ_response, ptr %1, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i16
  %16 = lshr i16 %2, 8
  %17 = and i16 %2, 255
  %18 = add nuw nsw i16 %16, %17
  %19 = add nuw nsw i16 %18, %12
  %20 = add nuw nsw i16 %19, %11
  %21 = add nuw nsw i16 %20, %15
  %22 = icmp eq i16 %2, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %23, %3
  %24 = phi i32 [ %30, %23 ], [ 0, %3 ]
  %25 = phi i16 [ %29, %23 ], [ %21, %3 ]
  %26 = getelementptr %struct.occ_response, ptr %1, i32 0, i32 4, i32 %24
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i16
  %29 = add i16 %25, %28
  %30 = add nuw nsw i32 %24, 1
  %31 = icmp eq i32 %30, %4
  br i1 %31, label %32, label %23

32:                                               ; preds = %23, %3
  %33 = phi i16 [ %21, %3 ], [ %29, %23 ]
  %34 = icmp eq i16 %33, %7
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = zext i16 %7 to i32
  %37 = zext i16 %33 to i32
  %38 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.9, i32 noundef %37, i32 noundef %36) #12
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i32 [ -74, %35 ], [ 0, %32 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @occ_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 {
  tail call void @platform_driver_unregister(ptr noundef nonnull @occ_driver) #11
  tail call void @ida_destroy(ptr noundef nonnull @occ_ida) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbefifo_submit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbefifo_parse_status(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @occ_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %4, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  store ptr @.str.11, ptr %5, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 128, i32 noundef 3520) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %61, label %8

8:                                                ; preds = %1
  %9 = tail call noalias ptr @kvmalloc_node(i32 noundef 8192, i32 noundef 3264, i32 noundef -1) #13
  %10 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 5
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @of_device_get_match_data(ptr noundef %4) #11
  %14 = ptrtoint ptr %13 to i32
  %15 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 9
  store i32 %14, ptr %15, align 4
  store ptr %4, ptr %6, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 4
  store i8 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.12, ptr noundef nonnull @occ_probe.__key) #11
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %12
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %22, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, ptr %2, align 4
  %29 = call i32 @ida_alloc_range(ptr noundef nonnull @occ_ida, i32 noundef %28, i32 noundef %28, i32 noundef 3264) #11
  %30 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = icmp slt i32 %29, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = call i32 @ida_alloc_range(ptr noundef nonnull @occ_ida, i32 noundef 1, i32 noundef 2147483646, i32 noundef 3264) #11
  store i32 %33, ptr %30, align 4
  br label %40

34:                                               ; preds = %24
  %35 = call i32 @ida_alloc_range(ptr noundef nonnull @occ_ida, i32 noundef 1, i32 noundef 2147483646, i32 noundef 3264) #11
  %36 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  br label %40

37:                                               ; preds = %12
  %38 = tail call i32 @ida_alloc_range(ptr noundef nonnull @occ_ida, i32 noundef 1, i32 noundef 2147483646, i32 noundef 3264) #11
  %39 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %37, %34, %32, %27
  %41 = phi i32 [ %35, %34 ], [ %33, %32 ], [ %29, %27 ], [ %38, %37 ]
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %42, align 8
  %43 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 2
  %44 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 3
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %43, i32 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %41)
  %46 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 10
  %47 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 10, i32 2
  store ptr @occ_fops, ptr %47, align 4
  store i32 255, ptr %46, align 4
  %48 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 10, i32 1
  store ptr %43, ptr %48, align 4
  %49 = getelementptr inbounds %struct.occ, ptr %6, i32 0, i32 10, i32 4
  store ptr %4, ptr %49, align 4
  %50 = call i32 @misc_register(ptr noundef %46) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %50) #12
  %53 = load i32, ptr %44, align 4
  call void @ida_free(ptr noundef nonnull @occ_ida, i32 noundef %53) #11
  %54 = load ptr, ptr %10, align 4
  call void @kvfree(ptr noundef %54) #11
  br label %61

55:                                               ; preds = %40
  %56 = load i32, ptr %44, align 4
  %57 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 %56, ptr %57, align 8
  %58 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #11
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.16) #12
  br label %61

61:                                               ; preds = %60, %55, %52, %8, %1
  %62 = phi i32 [ %50, %52 ], [ -12, %1 ], [ -12, %8 ], [ 0, %60 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @occ_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.occ, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @kvfree(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.occ, ptr %3, i32 0, i32 10
  tail call void @misc_deregister(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call i32 @device_for_each_child(ptr noundef %7, ptr noundef null, ptr noundef nonnull @occ_unregister_child) #11
  %9 = getelementptr inbounds %struct.occ, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  tail call void @ida_free(ptr noundef nonnull @occ_ida, i32 noundef %10) #11
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @occ_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %4
  %9 = icmp ugt i32 %2, 4096
  br i1 %9, label %48, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.occ_client, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.occ_client, ptr %6, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.occ_client, ptr %6, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %13, %15
  %17 = load i1, ptr @occ_read.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !10

20:                                               ; preds = %10
  store i1 true, ptr @occ_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 120, i32 noundef 9, ptr noundef null) #11
  br label %21

21:                                               ; preds = %20, %10
  br i1 %16, label %46, label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %14, align 4
  %24 = load i32, ptr %12, align 4
  %25 = sub i32 %23, %24
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %2)
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %26, i32 -1090519040) #14, !srcloc !11
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.occ_client, ptr %6, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %24
  %34 = tail call ptr @llvm.thread.pointer() #11
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #15, !srcloc !12
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #11, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !14
  %39 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %33, i32 noundef %26) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #11, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !14
  br label %40

40:                                               ; preds = %30, %22
  %41 = phi i32 [ %39, %30 ], [ %26, %22 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, ptr %12, align 4
  %45 = add i32 %44, %26
  store i32 %45, ptr %12, align 4
  br label %46

46:                                               ; preds = %43, %40, %21
  %47 = phi i32 [ %26, %43 ], [ -5, %21 ], [ -14, %40 ]
  tail call void @mutex_unlock(ptr noundef %11) #11
  br label %48

48:                                               ; preds = %46, %8, %4
  %49 = phi i32 [ %47, %46 ], [ -19, %4 ], [ -22, %8 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @occ_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %4
  %10 = add i32 %2, -4094
  %11 = icmp ult i32 %10, -4091
  br i1 %11, label %54, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.occ_client, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.occ_client, ptr %7, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 1
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #14, !srcloc !15
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28, !prof !16

20:                                               ; preds = %12
  %21 = tail call ptr @llvm.thread.pointer() #11
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #15, !srcloc !12
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #11, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !14
  %26 = tail call i32 @arm_copy_from_user(ptr noundef %16, ptr noundef %1, i32 noundef %2) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #11, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !16

28:                                               ; preds = %20, %12
  %29 = phi i32 [ %26, %20 ], [ %2, %12 ]
  %30 = sub i32 %2, %29
  %31 = getelementptr i8, ptr %16, i32 %30
  tail call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %29, i1 false) #11
  br label %52

32:                                               ; preds = %20
  %33 = getelementptr i8, ptr %15, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = getelementptr i8, ptr %15, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = icmp ugt i32 %40, 4090
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  store i32 4096, ptr %5, align 4
  %43 = load ptr, ptr %7, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = add nuw nsw i32 %40, 6
  %46 = call i32 @fsi_occ_submit(ptr noundef %44, ptr noundef %15, i32 noundef %45, ptr noundef %15, ptr noundef nonnull %5)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, ptr %5, align 4
  %50 = getelementptr inbounds %struct.occ_client, ptr %7, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.occ_client, ptr %7, i32 0, i32 3
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %42, %32, %28
  %53 = phi i32 [ %46, %42 ], [ %2, %48 ], [ -22, %32 ], [ -14, %28 ]
  tail call void @mutex_unlock(ptr noundef %13) #11
  br label %54

54:                                               ; preds = %52, %9, %4
  %55 = phi i32 [ %53, %52 ], [ -19, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @occ_open(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #16
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -68
  %8 = icmp eq ptr %4, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.occ_client, ptr %4, i32 0, i32 4
  store ptr %11, ptr %12, align 8
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %17

15:                                               ; preds = %9
  store ptr %7, ptr %4, align 8
  %16 = getelementptr inbounds %struct.occ_client, ptr %4, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.20, ptr noundef nonnull @occ_open.__key) #11
  store ptr %4, ptr %5, align 8
  br label %17

17:                                               ; preds = %15, %14, %2
  %18 = phi i32 [ 0, %15 ], [ -12, %14 ], [ -12, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @occ_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.occ_client, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @occ_unregister_child(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @platform_device_unregister(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind allocsize(2) }

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
!9 = !{i64 2152653777}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151479510, i64 2151479535}
!12 = !{i64 3975044}
!13 = !{i64 3975241}
!14 = !{i64 2151460520}
!15 = !{i64 2151478932, i64 2151478957}
!16 = !{!"branch_weights", i32 2000, i32 1}
