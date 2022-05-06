; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-prg.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-prg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_prg_max_active_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_prg_max_active_channels\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_prg_max_active_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_prg_present:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_prg_present\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_prg_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_prg_format_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_prg_format_supported\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_prg_format_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_prg_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_prg_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_prg_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_prg_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_prg_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_prg_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_prg_channel_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_prg_channel_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_prg_channel_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_prg_channel_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_prg_channel_configure\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_prg_channel_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_prg_channel_configure_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_prg_channel_configure_pending\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_prg_channel_configure_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ipu_prg = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, [3 x ptr], [3 x %struct.ipu_prg_channel] }
%struct.ipu_prg_channel = type { i8, i32 }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.71, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.71 = type { [4 x i8] }
%struct.ipuv3_channel = type { i32, ptr, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@ipu_prg_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipu_prg_list_mutex, i64 12), ptr getelementptr (i8, ptr @ipu_prg_list_mutex, i64 12) } }, align 4
@ipu_prg_list = internal global %struct.list_head { ptr @ipu_prg_list, ptr @ipu_prg_list }, align 4
@__kstrtab_ipu_prg_max_active_channels = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_prg_max_active_channels = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_prg_max_active_channels = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_prg_max_active_channels to i32), ptr @__kstrtab_ipu_prg_max_active_channels, ptr @__kstrtabns_ipu_prg_max_active_channels }, section "___ksymtab_gpl+ipu_prg_max_active_channels", align 4
@__kstrtab_ipu_prg_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_prg_present = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_prg_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_prg_present to i32), ptr @__kstrtab_ipu_prg_present, ptr @__kstrtabns_ipu_prg_present }, section "___ksymtab_gpl+ipu_prg_present", align 4
@__kstrtab_ipu_prg_format_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_prg_format_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_prg_format_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_prg_format_supported to i32), ptr @__kstrtab_ipu_prg_format_supported, ptr @__kstrtabns_ipu_prg_format_supported }, section "___ksymtab_gpl+ipu_prg_format_supported", align 4
@__kstrtab_ipu_prg_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_prg_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_prg_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_prg_enable to i32), ptr @__kstrtab_ipu_prg_enable, ptr @__kstrtabns_ipu_prg_enable }, section "___ksymtab_gpl+ipu_prg_enable", align 4
@__kstrtab_ipu_prg_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_prg_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_prg_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_prg_disable to i32), ptr @__kstrtab_ipu_prg_disable, ptr @__kstrtabns_ipu_prg_disable }, section "___ksymtab_gpl+ipu_prg_disable", align 4
@__kstrtab_ipu_prg_channel_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_prg_channel_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_prg_channel_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_prg_channel_disable to i32), ptr @__kstrtab_ipu_prg_channel_disable, ptr @__kstrtabns_ipu_prg_channel_disable }, section "___ksymtab_gpl+ipu_prg_channel_disable", align 4
@__kstrtab_ipu_prg_channel_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_prg_channel_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_prg_channel_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_prg_channel_configure to i32), ptr @__kstrtab_ipu_prg_channel_configure, ptr @__kstrtabns_ipu_prg_channel_configure }, section "___ksymtab_gpl+ipu_prg_channel_configure", align 4
@.str = private unnamed_addr constant [29 x i8] c"drivers/gpu/ipu-v3/ipu-prg.c\00", align 1
@__kstrtab_ipu_prg_channel_configure_pending = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_prg_channel_configure_pending = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_prg_channel_configure_pending = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_prg_channel_configure_pending to i32), ptr @__kstrtab_ipu_prg_channel_configure_pending, ptr @__kstrtabns_ipu_prg_channel_configure_pending }, section "___ksymtab_gpl+ipu_prg_channel_configure_pending", align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"imx-ipu-prg\00", align 1
@ipu_prg_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-prg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@prg_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prg_suspend, ptr @prg_resume, ptr null }, align 4
@ipu_prg_drv = dso_local local_unnamed_addr global %struct.platform_driver { ptr @ipu_prg_probe, ptr @ipu_prg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ipu_prg_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"could not get PRE for PRG chan %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"fsl,pres\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ipu_prg_channel_configure, ptr @__ksymtab_ipu_prg_channel_configure_pending, ptr @__ksymtab_ipu_prg_channel_disable, ptr @__ksymtab_ipu_prg_disable, ptr @__ksymtab_ipu_prg_enable, ptr @__ksymtab_ipu_prg_format_supported, ptr @__ksymtab_ipu_prg_max_active_channels, ptr @__ksymtab_ipu_prg_present], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_prg_lookup_by_phandle(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #7, !annotation !8
  %7 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #7
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %4, align 4
  %10 = select i1 %8, ptr %9, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  call void @mutex_lock(ptr noundef nonnull @ipu_prg_list_mutex) #7
  br label %11

11:                                               ; preds = %15, %3
  %12 = phi ptr [ @ipu_prg_list, %3 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @ipu_prg_list
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ipu_prg, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %10, %19
  br i1 %20, label %21, label %11

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ipu_prg, ptr %13, i32 0, i32 1
  call void @mutex_unlock(ptr noundef nonnull @ipu_prg_list_mutex) #7
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr @device_link_add(ptr noundef %0, ptr noundef %23, i32 noundef 2) #7
  %25 = getelementptr inbounds %struct.ipu_prg, ptr %13, i32 0, i32 2
  store i32 %2, ptr %25, align 4
  br label %27

26:                                               ; preds = %11
  call void @mutex_unlock(ptr noundef nonnull @ipu_prg_list_mutex) #7
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi ptr [ %13, %21 ], [ null, %26 ]
  call void @of_node_put(ptr noundef %10) #7
  ret ptr %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_prg_max_active_channels() #0 {
  %1 = tail call i32 @ipu_pre_get_available_count() #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_pre_get_available_count() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ipu_prg_present(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipu_prg_format_supported(ptr nocapture readnone %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = tail call ptr @drm_format_info(i32 noundef %1) #7
  %5 = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  switch i64 %2, label %9 [
    i64 0, label %10
    i64 432345564227567617, label %10
    i64 432345564227567618, label %10
  ]

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9, %8, %8, %8, %3
  %11 = phi i1 [ false, %9 ], [ false, %3 ], [ true, %8 ], [ true, %8 ], [ true, %8 ]
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_prg_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_prg_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #7
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_prg_channel_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  switch i32 %2, label %32 [
    i32 23, label %5
    i32 27, label %3
    i32 28, label %4
  ]

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3, %1
  %6 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 2, %4 ]
  %7 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ipu_soc, ptr %8, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.ipu_prg, ptr %10, i32 0, i32 8, i32 %6
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ipu_prg, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #7
  %18 = getelementptr inbounds %struct.ipu_prg, ptr %10, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %21 = shl nuw nsw i32 1, %6
  %22 = or i32 %20, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %23 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #7, !srcloc !13
  %26 = load ptr, ptr %15, align 4
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 5) #7
  %28 = getelementptr %struct.ipu_prg, ptr %10, i32 0, i32 8, i32 %6, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.ipu_prg, ptr %10, i32 0, i32 7, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call void @ipu_pre_put(ptr noundef %31) #7
  store i32 -1, ptr %28, align 4
  store i8 0, ptr %11, align 4
  br label %32

32:                                               ; preds = %14, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_prg_channel_configure(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, ptr nocapture noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = load i32, ptr %0, align 4
  switch i32 %10, label %164 [
    i32 23, label %21
    i32 27, label %12
    i32 28, label %11
  ]

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ 2, %11 ], [ 1, %8 ]
  %14 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ipu_soc, ptr %15, i32 0, i32 24
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.ipu_prg, ptr %17, i32 0, i32 8, i32 %13
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %37, label %29

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ipu_soc, ptr %23, i32 0, i32 24
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.ipu_prg, ptr %25, i32 0, i32 8, i32 0
  %27 = load i8, ptr %26, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %21, %12
  %30 = phi ptr [ %25, %21 ], [ %17, %12 ]
  %31 = phi i32 [ 0, %21 ], [ %13, %12 ]
  %32 = getelementptr %struct.ipu_prg, ptr %30, i32 0, i32 8, i32 %31, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.ipu_prg, ptr %30, i32 0, i32 7, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %7, align 4
  tail call void @ipu_pre_update(ptr noundef %35, i32 noundef %36) #7
  br label %164

37:                                               ; preds = %12
  %38 = getelementptr %struct.ipu_prg, ptr %17, i32 0, i32 7, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @ipu_pre_get(ptr noundef %39) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %78

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct.ipu_prg, ptr %25, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @ipu_pre_get(ptr noundef %44) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ipu_prg, ptr %25, i32 0, i32 8, i32 0, i32 1
  store i32 0, ptr %48, align 4
  br label %89

49:                                               ; preds = %78, %37
  %50 = phi i32 [ 12, %78 ], [ 14, %37 ]
  %51 = phi i32 [ 14, %78 ], [ 12, %37 ]
  %52 = phi i32 [ 2, %78 ], [ 1, %37 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !8
  %53 = getelementptr %struct.ipu_prg, ptr %17, i32 0, i32 8, i32 %13, i32 1
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ipu_prg, ptr %17, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %55, 1
  %57 = add nsw i32 %13, -1
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.ipu_prg, ptr %17, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = shl nuw nsw i32 3, %51
  %62 = shl i32 %58, %51
  %63 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 20, i32 noundef %61, i32 noundef %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %64 = load ptr, ptr %59, align 4
  %65 = call i32 @regmap_read(ptr noundef %64, i32 noundef 20, ptr noundef nonnull %9) #7
  %66 = load i32, ptr %9, align 4
  %67 = lshr i32 %66, %50
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, %58
  br i1 %69, label %70, label %76

70:                                               ; preds = %49
  %71 = load ptr, ptr %59, align 4
  %72 = shl nuw nsw i32 3, %50
  %73 = xor i32 %58, 1
  %74 = shl i32 %73, %50
  %75 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 20, i32 noundef %72, i32 noundef %74, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %76

76:                                               ; preds = %70, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  %77 = load i32, ptr %53, align 4
  br label %89

78:                                               ; preds = %37
  %79 = getelementptr %struct.ipu_prg, ptr %17, i32 0, i32 7, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @ipu_pre_get(ptr noundef %80) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %49, label %83

83:                                               ; preds = %78, %42
  %84 = phi ptr [ %25, %42 ], [ %17, %78 ]
  %85 = phi i32 [ 0, %42 ], [ %13, %78 ]
  %86 = phi i32 [ %45, %42 ], [ %81, %78 ]
  %87 = getelementptr inbounds %struct.ipu_prg, ptr %84, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.2, i32 noundef %85) #8
  br label %164

89:                                               ; preds = %76, %47
  %90 = phi i32 [ %77, %76 ], [ 0, %47 ]
  %91 = phi ptr [ %18, %76 ], [ %26, %47 ]
  %92 = phi ptr [ %17, %76 ], [ %25, %47 ]
  %93 = phi i32 [ %13, %76 ], [ 0, %47 ]
  %94 = getelementptr %struct.ipu_prg, ptr %92, i32 0, i32 8, i32 %93, i32 1
  %95 = getelementptr %struct.ipu_prg, ptr %92, i32 0, i32 7, i32 %90
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %7, align 4
  call void @ipu_pre_configure(ptr noundef %96, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i32 noundef %97) #7
  %98 = getelementptr inbounds %struct.ipu_prg, ptr %92, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 @__pm_runtime_resume(ptr noundef %99, i32 noundef 4) #7
  %101 = add i32 %4, 16383
  %102 = and i32 %101, 16383
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  call void @arm_heavy_mb() #7
  %103 = getelementptr inbounds %struct.ipu_prg, ptr %92, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = shl nuw nsw i32 %93, 2
  %106 = add nuw nsw i32 %105, 16
  %107 = getelementptr i8, ptr %104, i32 %106
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %102) #7, !srcloc !13
  %108 = and i32 %3, 4095
  %109 = mul nuw nsw i32 %108, 65537
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  call void @arm_heavy_mb() #7
  %110 = load ptr, ptr %103, align 4
  %111 = add nuw nsw i32 %105, 72
  %112 = getelementptr i8, ptr %110, i32 %111
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %109) #7, !srcloc !13
  %113 = load i32, ptr %94, align 4
  %114 = getelementptr %struct.ipu_prg, ptr %92, i32 0, i32 7, i32 %113
  %115 = load ptr, ptr %114, align 4
  %116 = call i32 @ipu_pre_get_baddr(ptr noundef %115) #7
  store i32 %116, ptr %7, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  call void @arm_heavy_mb() #7
  %117 = load ptr, ptr %103, align 4
  %118 = add nuw nsw i32 %105, 36
  %119 = getelementptr i8, ptr %117, i32 %118
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %116) #7, !srcloc !13
  %120 = load ptr, ptr %103, align 4
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %122 = shl nuw nsw i32 %93, 1
  %123 = add nuw nsw i32 %122, 8
  %124 = shl nuw nsw i32 768, %122
  %125 = xor i32 %124, -1
  %126 = and i32 %121, %125
  %127 = and i32 %1, 3
  %128 = shl nuw nsw i32 %127, %123
  %129 = or i32 %126, %128
  %130 = shl nuw nsw i32 1, %93
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  call void @arm_heavy_mb() #7
  %133 = load ptr, ptr %103, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %132) #7, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  call void @arm_heavy_mb() #7
  %134 = load ptr, ptr %103, align 4
  %135 = getelementptr i8, ptr %134, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 1) #7, !srcloc !13
  %136 = call i64 @ktime_get() #7
  %137 = add i64 %136, 1000000
  %138 = shl nuw nsw i32 1, %122
  %139 = or i32 %122, 1
  %140 = shl nuw i32 1, %139
  %141 = freeze i32 %140
  %142 = or i32 %138, %141
  %143 = load ptr, ptr %103, align 4
  %144 = getelementptr i8, ptr %143, i32 4
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %146 = and i32 %145, %142
  %147 = icmp eq i32 %146, %142
  br i1 %147, label %161, label %148

148:                                              ; preds = %155, %89
  %149 = call i64 @ktime_get() #7
  %150 = icmp sgt i64 %149, %137
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load ptr, ptr %103, align 4
  %153 = getelementptr i8, ptr %152, i32 4
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  br label %161

155:                                              ; preds = %148
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #7
  %156 = load ptr, ptr %103, align 4
  %157 = getelementptr i8, ptr %156, i32 4
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %159 = and i32 %158, %142
  %160 = icmp eq i32 %159, %142
  br i1 %160, label %161, label %148

161:                                              ; preds = %155, %151, %89
  %162 = load ptr, ptr %98, align 4
  %163 = call i32 @__pm_runtime_idle(ptr noundef %162, i32 noundef 5) #7
  store i8 1, ptr %91, align 4
  br label %164

164:                                              ; preds = %161, %83, %29, %8
  %165 = phi i32 [ 0, %29 ], [ 0, %161 ], [ %86, %83 ], [ -22, %8 ]
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_pre_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_pre_configure(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_pre_get_baddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipu_prg_channel_configure_pending(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  switch i32 %2, label %21 [
    i32 23, label %5
    i32 27, label %3
    i32 28, label %4
  ]

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3, %1
  %6 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 2, %4 ]
  %7 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ipu_soc, ptr %8, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.ipu_prg, ptr %10, i32 0, i32 8, i32 %6
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15, !prof !23

14:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 9, ptr noundef null) #7
  br label %15

15:                                               ; preds = %14, %5
  %16 = getelementptr %struct.ipu_prg, ptr %10, i32 0, i32 8, i32 %6, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.ipu_prg, ptr %10, i32 0, i32 7, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i1 @ipu_pre_update_pending(ptr noundef %19) #7
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i1 [ %20, %15 ], [ false, %1 ]
  ret i1 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_pre_update_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_prg_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 68, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %59

12:                                               ; preds = %5
  %13 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  %14 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  br label %59

18:                                               ; preds = %12
  %19 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  %20 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 5
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  br label %59

24:                                               ; preds = %18
  %25 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.5) #7
  %26 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 6
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @ipu_pre_lookup_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 0) #7
  %30 = getelementptr %struct.ipu_prg, ptr %3, i32 0, i32 7, i32 0
  store ptr %29, ptr %30, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %59, label %34

32:                                               ; preds = %24
  %33 = ptrtoint ptr %25 to i32
  br label %59

34:                                               ; preds = %28
  %35 = tail call ptr @ipu_pre_lookup_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 1) #7
  %36 = getelementptr %struct.ipu_prg, ptr %3, i32 0, i32 7, i32 1
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @ipu_pre_lookup_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 2) #7
  %40 = getelementptr %struct.ipu_prg, ptr %3, i32 0, i32 7, i32 2
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %13)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %19)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %59

49:                                               ; preds = %45
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %51 = or i32 %50, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %51) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %52 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 -1) #7, !srcloc !13
  %53 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %2) #7
  %54 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 1
  store ptr %2, ptr %54, align 4
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %55, align 8
  tail call void @mutex_lock(ptr noundef nonnull @ipu_prg_list_mutex) #7
  %56 = load ptr, ptr @ipu_prg_list, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %3, ptr %57, align 4
  store ptr %56, ptr %3, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr @ipu_prg_list, ptr %58, align 4
  store volatile ptr %3, ptr @ipu_prg_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ipu_prg_list_mutex) #7
  br label %59

59:                                               ; preds = %49, %48, %42, %38, %34, %32, %28, %22, %16, %10, %1
  %60 = phi i32 [ %11, %10 ], [ %17, %16 ], [ %23, %22 ], [ %33, %32 ], [ %46, %48 ], [ 0, %49 ], [ -12, %1 ], [ %43, %42 ], [ -517, %38 ], [ -517, %34 ], [ -517, %28 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_prg_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @ipu_prg_list_mutex) #7
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ipu_prg_list_mutex) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_pre_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_pre_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_pre_lookup_by_phandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @prg_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @prg_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ipu_prg, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi i32 [ %17, %19 ], [ %14, %11 ]
  %22 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  br label %23

23:                                               ; preds = %20, %8
  %24 = phi ptr [ %22, %20 ], [ %5, %8 ]
  %25 = phi i32 [ %21, %20 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %24) #7
  br label %26

26:                                               ; preds = %23, %16, %1
  %27 = phi i32 [ 0, %16 ], [ %6, %1 ], [ %25, %23 ]
  ret i32 %27
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2681572}
!11 = !{i64 2154973343}
!12 = !{i64 2154973556}
!13 = !{i64 2681154}
!14 = !{i64 2154973882}
!15 = !{i64 2154979708}
!16 = !{i64 2154980101}
!17 = !{i64 2154980477}
!18 = !{i64 2154980960}
!19 = !{i64 2154981241}
!20 = !{i64 2154981567}
!21 = !{i64 2154983346}
!22 = !{i64 2154983677}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2154987788}
!25 = !{i64 2154987987}
!26 = !{i64 2154988311}
