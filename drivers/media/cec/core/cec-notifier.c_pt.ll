; ModuleID = '/llk/IR/drivers/media/cec/core/cec-notifier.c_pt.bc'
source_filename = "../drivers/media/cec/core/cec-notifier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_notifier_conn_register:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_notifier_conn_register\22\09\09\09\09\09"
module asm "__kstrtabns_cec_notifier_conn_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_notifier_conn_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_notifier_conn_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_cec_notifier_conn_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_notifier_cec_adap_register:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_notifier_cec_adap_register\22\09\09\09\09\09"
module asm "__kstrtabns_cec_notifier_cec_adap_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_notifier_cec_adap_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_notifier_cec_adap_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_cec_notifier_cec_adap_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_notifier_set_phys_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_notifier_set_phys_addr\22\09\09\09\09\09"
module asm "__kstrtabns_cec_notifier_set_phys_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_notifier_set_phys_addr_from_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_notifier_set_phys_addr_from_edid\22\09\09\09\09\09"
module asm "__kstrtabns_cec_notifier_set_phys_addr_from_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_notifier_parse_hdmi_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_notifier_parse_hdmi_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_cec_notifier_parse_hdmi_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.cec_notifier = type { %struct.mutex, %struct.list_head, %struct.kref, ptr, %struct.cec_connector_info, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cec_connector_info = type { i32, %union.anon.65 }
%union.anon.65 = type { [16 x i32] }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.74 }
%union.anon.74 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__kstrtab_cec_notifier_conn_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_notifier_conn_register = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_notifier_conn_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_notifier_conn_register to i32), ptr @__kstrtab_cec_notifier_conn_register, ptr @__kstrtabns_cec_notifier_conn_register }, section "___ksymtab_gpl+cec_notifier_conn_register", align 4
@__kstrtab_cec_notifier_conn_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_notifier_conn_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_notifier_conn_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_notifier_conn_unregister to i32), ptr @__kstrtab_cec_notifier_conn_unregister, ptr @__kstrtabns_cec_notifier_conn_unregister }, section "___ksymtab_gpl+cec_notifier_conn_unregister", align 4
@.str = private unnamed_addr constant [38 x i8] c"drivers/media/cec/core/cec-notifier.c\00", align 1
@__kstrtab_cec_notifier_cec_adap_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_notifier_cec_adap_register = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_notifier_cec_adap_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_notifier_cec_adap_register to i32), ptr @__kstrtab_cec_notifier_cec_adap_register, ptr @__kstrtabns_cec_notifier_cec_adap_register }, section "___ksymtab_gpl+cec_notifier_cec_adap_register", align 4
@__kstrtab_cec_notifier_cec_adap_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_notifier_cec_adap_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_notifier_cec_adap_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_notifier_cec_adap_unregister to i32), ptr @__kstrtab_cec_notifier_cec_adap_unregister, ptr @__kstrtabns_cec_notifier_cec_adap_unregister }, section "___ksymtab_gpl+cec_notifier_cec_adap_unregister", align 4
@__kstrtab_cec_notifier_set_phys_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_notifier_set_phys_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_notifier_set_phys_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_notifier_set_phys_addr to i32), ptr @__kstrtab_cec_notifier_set_phys_addr, ptr @__kstrtabns_cec_notifier_set_phys_addr }, section "___ksymtab_gpl+cec_notifier_set_phys_addr", align 4
@__kstrtab_cec_notifier_set_phys_addr_from_edid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_notifier_set_phys_addr_from_edid = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_notifier_set_phys_addr_from_edid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_notifier_set_phys_addr_from_edid to i32), ptr @__kstrtab_cec_notifier_set_phys_addr_from_edid, ptr @__kstrtabns_cec_notifier_set_phys_addr_from_edid }, section "___ksymtab_gpl+cec_notifier_set_phys_addr_from_edid", align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"hdmi-phandle\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to find HDMI node in device tree\0A\00", align 1
@__kstrtab_cec_notifier_parse_hdmi_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_notifier_parse_hdmi_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_notifier_parse_hdmi_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_notifier_parse_hdmi_phandle to i32), ptr @__kstrtab_cec_notifier_parse_hdmi_phandle, ptr @__kstrtabns_cec_notifier_parse_hdmi_phandle }, section "___ksymtab_gpl+cec_notifier_parse_hdmi_phandle", align 4
@cec_notifiers_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cec_notifiers_lock, i64 12), ptr getelementptr (i8, ptr @cec_notifiers_lock, i64 12) } }, align 4
@cec_notifiers = internal global %struct.list_head { ptr @cec_notifiers, ptr @cec_notifiers }, align 4
@cec_notifier_get_conn.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&n->lock\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_cec_notifier_cec_adap_register, ptr @__ksymtab_cec_notifier_cec_adap_unregister, ptr @__ksymtab_cec_notifier_conn_register, ptr @__ksymtab_cec_notifier_conn_unregister, ptr @__ksymtab_cec_notifier_parse_hdmi_phandle, ptr @__ksymtab_cec_notifier_set_phys_addr, ptr @__ksymtab_cec_notifier_set_phys_addr_from_edid], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cec_notifier_conn_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc ptr @cec_notifier_get_conn(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull %4) #8
  %7 = getelementptr inbounds %struct.cec_notifier, ptr %4, i32 0, i32 7
  store i16 -1, ptr %7, align 4
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.cec_notifier, ptr %4, i32 0, i32 4
  br i1 %8, label %11, label %10

10:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %9, ptr noundef nonnull align 4 dereferenceable(68) %2, i32 68, i1 false)
  br label %12

11:                                               ; preds = %6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %9, i8 0, i32 68, i1 false)
  br label %12

12:                                               ; preds = %11, %10
  %13 = getelementptr inbounds %struct.cec_notifier, ptr %4, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cec_adapter, ptr %14, i32 0, i32 23
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  tail call void @cec_s_phys_addr(ptr noundef nonnull %14, i16 noundef zeroext -1, i1 noundef zeroext false) #8
  %21 = load ptr, ptr %13, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %14, %16 ]
  tail call void @cec_s_conn_info(ptr noundef %23, ptr noundef %2) #8
  br label %24

24:                                               ; preds = %22, %12
  tail call void @mutex_unlock(ptr noundef nonnull %4) #8
  br label %25

25:                                               ; preds = %24, %3
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @cec_notifier_get_conn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cec_notifiers_lock) #8
  %3 = load ptr, ptr @cec_notifiers, align 4
  %4 = icmp eq ptr %3, @cec_notifiers
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br label %7

7:                                                ; preds = %32, %5
  %8 = phi ptr [ %3, %5 ], [ %33, %32 ]
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  br i1 %6, label %20, label %13

13:                                               ; preds = %12
  %14 = getelementptr i8, ptr %8, i32 84
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @strcmp(ptr noundef nonnull %15, ptr noundef nonnull %1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17, %12
  %21 = getelementptr i8, ptr %8, i32 -20
  %22 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #8, !srcloc !9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #8, !srcloc !10
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !11

26:                                               ; preds = %20
  %27 = add i32 %24, 1
  %28 = or i32 %27, %24
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %53, label %30, !prof !12

30:                                               ; preds = %26, %20
  %31 = phi i32 [ 2, %20 ], [ 1, %26 ]
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef %31) #8
  br label %53

32:                                               ; preds = %17, %13, %7
  %33 = load ptr, ptr %8, align 4
  %34 = icmp eq ptr %33, @cec_notifiers
  br i1 %34, label %35, label %7

35:                                               ; preds = %32, %2
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 116) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.cec_notifier, ptr %37, i32 0, i32 3
  store ptr %0, ptr %40, align 8
  %41 = icmp eq ptr %1, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = tail call noalias ptr @kstrdup(ptr noundef nonnull %1, i32 noundef 3264) #8
  %44 = getelementptr inbounds %struct.cec_notifier, ptr %37, i32 0, i32 5
  store ptr %43, ptr %44, align 8
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @kfree(ptr noundef nonnull %37) #8
  br label %53

47:                                               ; preds = %42, %39
  %48 = getelementptr inbounds %struct.cec_notifier, ptr %37, i32 0, i32 7
  store i16 -1, ptr %48, align 8
  tail call void @__mutex_init(ptr noundef nonnull %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @cec_notifier_get_conn.__key) #8
  %49 = getelementptr inbounds %struct.cec_notifier, ptr %37, i32 0, i32 2
  store volatile i32 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.cec_notifier, ptr %37, i32 0, i32 1
  %51 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cec_notifiers, i32 0, i32 1), align 4
  store ptr %50, ptr getelementptr inbounds (%struct.list_head, ptr @cec_notifiers, i32 0, i32 1), align 4
  store ptr @cec_notifiers, ptr %50, align 4
  %52 = getelementptr inbounds %struct.cec_notifier, ptr %37, i32 0, i32 1, i32 1
  store ptr %51, ptr %52, align 8
  store volatile ptr %50, ptr %51, align 4
  br label %53

53:                                               ; preds = %47, %46, %35, %30, %26
  %54 = phi ptr [ %21, %26 ], [ %21, %30 ], [ %37, %47 ], [ null, %46 ], [ null, %35 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cec_notifiers_lock) #8
  ret ptr %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_conn_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cec_notifier_conn_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull %0) #8
  %4 = getelementptr inbounds %struct.cec_notifier, ptr %0, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false)
  %5 = getelementptr inbounds %struct.cec_notifier, ptr %0, i32 0, i32 7
  store i16 -1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cec_notifier, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cec_adapter, ptr %7, i32 0, i32 23
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  tail call void @cec_s_phys_addr(ptr noundef nonnull %7, i16 noundef zeroext -1, i1 noundef zeroext false) #8
  %14 = load ptr, ptr %6, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %7, %9 ]
  tail call void @cec_s_conn_info(ptr noundef %16, ptr noundef null) #8
  br label %17

17:                                               ; preds = %15, %3
  tail call void @mutex_unlock(ptr noundef nonnull %0) #8
  tail call fastcc void @cec_notifier_put(ptr noundef nonnull %0)
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cec_notifier_put(ptr noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cec_notifiers_lock) #8
  %2 = getelementptr inbounds %struct.cec_notifier, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !14
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %17, label %8, !prof !12

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #8
  br label %17

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %10 = getelementptr %struct.cec_notifier, ptr %0, i32 0, i32 1
  %11 = getelementptr %struct.cec_notifier, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %15 = getelementptr %struct.cec_notifier, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #8
  tail call void @kfree(ptr noundef %0) #8
  br label %17

17:                                               ; preds = %9, %8, %6
  tail call void @mutex_unlock(ptr noundef nonnull @cec_notifiers_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cec_notifier_cec_adap_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef null) #8
  br label %21

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @cec_notifier_get_conn(ptr noundef %0, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull %7) #8
  %10 = getelementptr inbounds %struct.cec_notifier, ptr %7, i32 0, i32 6
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cec_adapter, ptr %2, i32 0, i32 32
  %12 = getelementptr inbounds %struct.cec_notifier, ptr %7, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %11, ptr noundef align 4 dereferenceable(68) %12, i32 68, i1 false)
  %13 = getelementptr inbounds %struct.cec_adapter, ptr %2, i32 0, i32 34
  store ptr %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cec_adapter, ptr %2, i32 0, i32 23
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.cec_notifier, ptr %7, i32 0, i32 7
  %19 = load i16, ptr %18, align 4
  tail call void @cec_s_phys_addr(ptr noundef nonnull %2, i16 noundef zeroext %19, i1 noundef zeroext false) #8
  br label %20

20:                                               ; preds = %17, %9
  tail call void @mutex_unlock(ptr noundef nonnull %7) #8
  br label %21

21:                                               ; preds = %20, %6, %5
  %22 = phi ptr [ null, %5 ], [ %7, %20 ], [ null, %6 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cec_notifier_cec_adap_unregister(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull %0) #8
  %5 = getelementptr inbounds %struct.cec_adapter, ptr %1, i32 0, i32 34
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cec_notifier, ptr %0, i32 0, i32 6
  store ptr null, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef nonnull %0) #8
  tail call fastcc void @cec_notifier_put(ptr noundef nonnull %0)
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cec_notifier_set_phys_addr(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull %0) #8
  %5 = getelementptr inbounds %struct.cec_notifier, ptr %0, i32 0, i32 7
  store i16 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cec_notifier, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cec_adapter, ptr %7, i32 0, i32 23
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @cec_s_phys_addr(ptr noundef nonnull %7, i16 noundef zeroext %1, i1 noundef zeroext false) #8
  br label %14

14:                                               ; preds = %13, %9, %4
  tail call void @mutex_unlock(ptr noundef nonnull %0) #8
  br label %15

15:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cec_notifier_set_phys_addr_from_edid(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.edid, ptr %1, i32 0, i32 26
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = zext i8 %8 to i32
  %12 = shl nuw nsw i32 %11, 7
  %13 = add nuw nsw i32 %12, 128
  %14 = tail call zeroext i16 @cec_get_edid_phys_addr(ptr noundef nonnull %1, i32 noundef %13, ptr noundef null) #8
  br label %15

15:                                               ; preds = %10, %6, %4
  %16 = phi i16 [ %14, %10 ], [ -1, %6 ], [ -1, %4 ]
  tail call void @mutex_lock(ptr noundef nonnull %0) #8
  %17 = getelementptr inbounds %struct.cec_notifier, ptr %0, i32 0, i32 7
  store i16 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cec_notifier, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.cec_adapter, ptr %19, i32 0, i32 23
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @cec_s_phys_addr(ptr noundef nonnull %19, i16 noundef zeroext %16, i1 noundef zeroext false) #8
  br label %26

26:                                               ; preds = %25, %21, %15
  tail call void @mutex_unlock(ptr noundef nonnull %0) #8
  br label %27

27:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cec_get_edid_phys_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cec_notifier_parse_hdmi_phandle(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !16
  %5 = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %6 = icmp ne i32 %5, 0
  %7 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #10
  br label %27

11:                                               ; preds = %1
  %12 = call ptr @of_find_device_by_node(ptr noundef nonnull %7) #8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %15 = icmp eq ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  call void @of_node_put(ptr noundef nonnull %7) #8
  br label %25

18:                                               ; preds = %11
  %19 = call ptr @of_find_i2c_device_by_node(ptr noundef nonnull %7) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @of_node_put(ptr noundef nonnull %7) #8
  br label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void @of_node_put(ptr noundef nonnull %7) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %14, %17 ], [ %23, %22 ]
  call void @put_device(ptr noundef nonnull %26) #8
  br label %27

27:                                               ; preds = %25, %22, %21, %10
  %28 = phi ptr [ %26, %25 ], [ inttoptr (i32 -19 to ptr), %10 ], [ inttoptr (i32 -517 to ptr), %21 ], [ inttoptr (i32 -517 to ptr), %22 ]
  ret ptr %28
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 775119, i64 2148265090, i64 2148265116, i64 2148265163, i64 2148265185, i64 2148265213, i64 2148265233}
!10 = !{i64 2148277963, i64 2148277995, i64 2148278024, i64 2148278058, i64 2148278089, i64 2148278112}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148378185}
!14 = !{i64 2148280320, i64 2148280352, i64 2148280381, i64 2148280415, i64 2148280446, i64 2148280469}
!15 = !{i64 2149277726}
!16 = !{!"auto-init"}
