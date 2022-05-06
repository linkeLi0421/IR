; ModuleID = '/llk/IR/drivers/soc/qcom/wcnss_ctrl.c_pt.bc'
source_filename = "../drivers/soc/qcom/wcnss_ctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_wcnss_open_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_wcnss_open_channel\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_wcnss_open_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
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
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.wcnss_ctrl = type { ptr, ptr, %struct.completion, %struct.completion, i32, %struct.work_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.wcnss_version_resp = type { %struct.wcnss_msg_hdr, i8, i8, i8, i8 }
%struct.wcnss_msg_hdr = type { i32, i32 }
%struct.wcnss_download_nv_resp = type <{ %struct.wcnss_msg_hdr, i8 }>
%struct.firmware = type { i32, ptr, ptr }
%struct.wcnss_download_nv_req = type { %struct.wcnss_msg_hdr, i16, i16, i32, [0 x i8] }

@__kstrtab_qcom_wcnss_open_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_wcnss_open_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_wcnss_open_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_wcnss_open_channel to i32), ptr @__kstrtab_qcom_wcnss_open_channel, ptr @__kstrtabns_qcom_wcnss_open_channel }, section "___ksymtab+qcom_wcnss_open_channel", align 4
@wcnss_ctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcnss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description206 = internal constant [42 x i8] c"description=Qualcomm WCNSS control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@wcnss_ctrl_driver = internal global %struct.rpmsg_driver { %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @wcnss_ctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr @wcnss_ctrl_probe, ptr @wcnss_ctrl_remove, ptr @wcnss_ctrl_smd_callback }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"qcom_wcnss_ctrl\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"expected cold boot completion\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"timeout waiting for version response\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"wlan/prima/WCNSS_qcom_wlan_nv.bin\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to load nv file %s: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to send smd packet\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"timeout waiting for nv upload ack\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"invalid size of version response\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"WCNSS Version %d.%d %d.%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"invalid size of download response\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"unknown message type %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_description206, ptr @__UNIQUE_ID_license207, ptr @__ksymtab_qcom_wcnss_open_channel], section "llvm.metadata"

@__mod_of__wcnss_ctrl_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @wcnss_ctrl_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @qcom_wcnss_open_channel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.rpmsg_channel_info, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !8
  %6 = call i32 @strscpy(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 32) #8
  %7 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %5, i32 0, i32 1
  store i32 -1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %5, i32 0, i32 2
  store i32 -1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wcnss_ctrl, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %5, align 4
  %13 = insertvalue [10 x i32] poison, i32 %12, 0
  %14 = getelementptr inbounds [10 x i32], ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = insertvalue [10 x i32] %13, i32 %15, 1
  %17 = getelementptr inbounds [10 x i32], ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = insertvalue [10 x i32] %16, i32 %18, 2
  %20 = getelementptr inbounds [10 x i32], ptr %5, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = insertvalue [10 x i32] %19, i32 %21, 3
  %23 = getelementptr inbounds [10 x i32], ptr %5, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = insertvalue [10 x i32] %22, i32 %24, 4
  %26 = getelementptr inbounds [10 x i32], ptr %5, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = insertvalue [10 x i32] %25, i32 %27, 5
  %29 = getelementptr inbounds [10 x i32], ptr %5, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = insertvalue [10 x i32] %28, i32 %30, 6
  %32 = getelementptr inbounds [10 x i32], ptr %5, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = insertvalue [10 x i32] %31, i32 %33, 7
  %35 = insertvalue [10 x i32] %34, i32 -1, 8
  %36 = insertvalue [10 x i32] %35, i32 -1, 9
  %37 = call ptr @rpmsg_create_ept(ptr noundef %11, ptr noundef %2, ptr noundef %3, [10 x i32] %36) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  ret ptr %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_create_ept(ptr noundef, ptr noundef, ptr noundef, [10 x i32]) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @wcnss_ctrl_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @wcnss_ctrl_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wcnss_ctrl_probe(ptr noundef %0) #0 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 60, i32 noundef 3520) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  store ptr %0, ptr %2, align 4
  %5 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wcnss_ctrl, ptr %2, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wcnss_ctrl, ptr %2, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wcnss_ctrl, ptr %2, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #8
  %10 = getelementptr inbounds %struct.wcnss_ctrl, ptr %2, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wcnss_ctrl, ptr %2, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #8
  %12 = getelementptr inbounds %struct.wcnss_ctrl, ptr %2, i32 0, i32 5
  store i32 -32, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wcnss_ctrl, ptr %2, i32 0, i32 5, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wcnss_ctrl, ptr %2, i32 0, i32 5, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wcnss_ctrl, ptr %2, i32 0, i32 5, i32 2
  store ptr @wcnss_async_probe, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %16, align 8
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %12) #8
  br label %19

19:                                               ; preds = %4, %1
  %20 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wcnss_ctrl_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wcnss_ctrl, ptr %3, i32 0, i32 5
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #8
  tail call void @of_platform_depopulate(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wcnss_ctrl_smd_callback(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %1, align 1
  switch i32 %8, label %39 [
    i32 16777217, label %9
    i32 16777219, label %27
    i32 16777228, label %37
  ]

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 12
  %11 = load ptr, ptr %7, align 4
  br i1 %10, label %13, label %12

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9) #9
  br label %41

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wcnss_version_resp, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.wcnss_version_resp, ptr %1, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.wcnss_version_resp, ptr %1, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.wcnss_version_resp, ptr %1, i32 0, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %25) #9
  %26 = getelementptr inbounds %struct.wcnss_ctrl, ptr %7, i32 0, i32 2
  tail call void @complete(ptr noundef %26) #8
  br label %41

27:                                               ; preds = %5
  %28 = icmp eq i32 %2, 9
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.11) #9
  br label %41

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.wcnss_download_nv_resp, ptr %1, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.wcnss_ctrl, ptr %7, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.wcnss_ctrl, ptr %7, i32 0, i32 2
  tail call void @complete(ptr noundef %36) #8
  br label %41

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.wcnss_ctrl, ptr %7, i32 0, i32 3
  tail call void @complete(ptr noundef %38) #8
  br label %41

39:                                               ; preds = %5
  %40 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.12, i32 noundef %8) #9
  br label %41

41:                                               ; preds = %39, %37, %31, %29, %13, %12
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wcnss_async_probe(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.wcnss_msg_hdr, align 8
  %5 = getelementptr i8, ptr %0, i32 -44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 34376515584, ptr %4, align 8, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 -40
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @rpmsg_send(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 8) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -36
  %12 = call i32 @wait_for_completion_timeout(ptr noundef %11, i32 noundef 1000) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.3) #9
  br label %16

16:                                               ; preds = %14, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %95

17:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  %18 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr @.str.4, ptr %3, align 4
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 3088) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %95

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @of_property_read_string(ptr noundef %25, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #8
  %27 = icmp slt i32 %26, 0
  %28 = icmp ne i32 %26, -22
  %29 = and i1 %27, %28
  br i1 %29, label %77, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr %3, align 4
  %32 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef %31, ptr noundef %18) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef %35, i32 noundef %32) #9
  br label %77

36:                                               ; preds = %30
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr inbounds %struct.firmware, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %37, align 4
  store i32 16777218, ptr %20, align 8
  %41 = getelementptr inbounds %struct.wcnss_msg_hdr, ptr %20, i32 0, i32 1
  store i32 3088, ptr %41, align 4
  %42 = getelementptr inbounds %struct.wcnss_download_nv_req, ptr %20, i32 0, i32 2
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.wcnss_download_nv_req, ptr %20, i32 0, i32 3
  store i32 3072, ptr %43, align 4
  %44 = getelementptr inbounds %struct.wcnss_download_nv_req, ptr %20, i32 0, i32 1
  store i16 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.wcnss_download_nv_req, ptr %20, i32 0, i32 4
  br label %46

46:                                               ; preds = %62, %36
  %47 = phi ptr [ %39, %36 ], [ %65, %62 ]
  %48 = phi i32 [ %40, %36 ], [ %66, %62 ]
  %49 = icmp slt i32 %48, 3073
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %43, align 4
  %52 = load i32, ptr %41, align 4
  br label %55

53:                                               ; preds = %46
  store i16 1, ptr %42, align 2
  store i32 %48, ptr %43, align 4
  %54 = add nsw i32 %48, 16
  store i32 %54, ptr %41, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %52, %50 ], [ %54, %53 ]
  %57 = phi i32 [ %51, %50 ], [ %48, %53 ]
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %45, ptr align 1 %47, i32 %57, i1 false) #8
  %58 = load ptr, ptr %6, align 4
  %59 = call i32 @rpmsg_send(ptr noundef %58, ptr noundef nonnull %20, i32 noundef %56) #8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7) #9
  br label %78

62:                                               ; preds = %55
  %63 = load i16, ptr %44, align 8
  %64 = add i16 %63, 1
  store i16 %64, ptr %44, align 8
  %65 = getelementptr i8, ptr %47, i32 3072
  %66 = add i32 %48, -3072
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %46, label %68

68:                                               ; preds = %62
  %69 = call i32 @wait_for_completion_timeout(ptr noundef %11, i32 noundef 500) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.8) #9
  br label %78

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %0, i32 -4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 2
  %76 = zext i1 %75 to i8
  br label %78

77:                                               ; preds = %34, %23
  call void @kfree(ptr noundef nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %95

78:                                               ; preds = %72, %71, %61
  %79 = phi i8 [ 0, %61 ], [ 0, %71 ], [ %76, %72 ]
  %80 = phi i1 [ true, %61 ], [ true, %71 ], [ false, %72 ]
  %81 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %81) #8
  call void @kfree(ptr noundef nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br i1 %80, label %95, label %82

82:                                               ; preds = %78
  %83 = icmp eq i8 %79, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %82
  %85 = getelementptr i8, ptr %0, i32 -20
  %86 = call i32 @wait_for_completion_timeout(ptr noundef %85, i32 noundef 500) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.2) #9
  br label %90

90:                                               ; preds = %88, %84, %82
  %91 = load ptr, ptr %5, align 4
  %92 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 25
  %93 = load ptr, ptr %92, align 8
  %94 = call i32 @of_platform_populate(ptr noundef %93, ptr noundef null, ptr noundef null, ptr noundef %91) #8
  br label %95

95:                                               ; preds = %90, %78, %77, %22, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
