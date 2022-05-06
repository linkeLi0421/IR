; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.116, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.116 = type { i64, i64, i8 }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.40 }
%union.anon.40 = type { [4 x i32] }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [27 x i8] c"%s: Creating iovar failed\0A\00", align 1
@__func__.brcmf_fil_iovar_data_set = private unnamed_addr constant [25 x i8] c"brcmf_fil_iovar_data_set\00", align 1
@__func__.brcmf_fil_iovar_data_get = private unnamed_addr constant [25 x i8] c"brcmf_fil_iovar_data_get\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Creating bsscfg failed\0A\00", align 1
@__func__.brcmf_fil_bsscfg_data_set = private unnamed_addr constant [26 x i8] c"brcmf_fil_bsscfg_data_set\00", align 1
@__func__.brcmf_fil_bsscfg_data_get = private unnamed_addr constant [26 x i8] c"brcmf_fil_bsscfg_data_get\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: Creating xtlv failed\0A\00", align 1
@__func__.brcmf_fil_xtlv_data_set = private unnamed_addr constant [24 x i8] c"brcmf_fil_xtlv_data_set\00", align 1
@__func__.brcmf_fil_xtlv_data_get = private unnamed_addr constant [24 x i8] c"brcmf_fil_xtlv_data_get\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: bus is down. we have nothing to do.\0A\00", align 1
@__func__.brcmf_fil_cmd_data = private unnamed_addr constant [19 x i8] c"brcmf_fil_cmd_data\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bsscfg:\00", align 1
@__func__.brcmf_create_bsscfg = private unnamed_addr constant [20 x i8] c"brcmf_create_bsscfg\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"buffer is too short\0A\00", align 1
@__func__.brcmf_create_xtlv = private unnamed_addr constant [18 x i8] c"brcmf_create_xtlv\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_cmd_data_set(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_bus, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = tail call i32 @net_ratelimit() #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %40

20:                                               ; preds = %4
  %21 = icmp eq ptr %2, null
  %22 = tail call i32 @llvm.umin.i32(i32 %3, i32 8192) #7
  %23 = select i1 %21, i32 %3, i32 %22
  %24 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.brcmf_proto, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %8, i32 noundef %25, i32 noundef %1, ptr noundef %2, i32 noundef %23, ptr noundef nonnull %5) #7
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %5, align 4
  %33 = icmp slt i32 %32, 0
  %34 = select i1 %33, i32 -52, i32 0
  %35 = select i1 %31, i32 %34, i32 %30
  %36 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %37 = load i8, ptr %36, align 1, !range !9
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 %35, i32 %32
  br label %40

40:                                               ; preds = %20, %16, %13
  %41 = phi i32 [ -5, %16 ], [ -5, %13 ], [ %39, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.brcmf_pub, ptr %42, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %43) #7
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_cmd_data_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_bus, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = tail call i32 @net_ratelimit() #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %40

20:                                               ; preds = %4
  %21 = icmp eq ptr %2, null
  %22 = tail call i32 @llvm.umin.i32(i32 %3, i32 8192) #7
  %23 = select i1 %21, i32 %3, i32 %22
  %24 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.brcmf_proto, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %8, i32 noundef %25, i32 noundef %1, ptr noundef %2, i32 noundef %23, ptr noundef nonnull %5) #7
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %5, align 4
  %33 = icmp slt i32 %32, 0
  %34 = select i1 %33, i32 -52, i32 0
  %35 = select i1 %31, i32 %34, i32 %30
  %36 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %37 = load i8, ptr %36, align 1, !range !9
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 %35, i32 %32
  br label %40

40:                                               ; preds = %20, %16, %13
  %41 = phi i32 [ -5, %16 ], [ -5, %13 ], [ %39, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.brcmf_pub, ptr %42, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %43) #7
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_cmd_int_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 %2, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_bus, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = tail call i32 @net_ratelimit() #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %37

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.brcmf_proto, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %8, i32 noundef %22, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %4) #7
  %28 = icmp eq i32 %27, 0
  %29 = load i32, ptr %4, align 4
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, i32 -52, i32 0
  %32 = select i1 %28, i32 %31, i32 %27
  %33 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %34 = load i8, ptr %33, align 1, !range !9
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 %32, i32 %29
  br label %37

37:                                               ; preds = %20, %16, %13
  %38 = phi i32 [ -5, %16 ], [ -5, %13 ], [ %36, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.brcmf_pub, ptr %39, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %40) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_cmd_int_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %6 = load i32, ptr %2, align 4
  store i32 %6, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_bus, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = tail call i32 @net_ratelimit() #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %38

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_proto, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 %27(ptr noundef %9, i32 noundef %23, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %4) #7
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 %30, 0
  %32 = select i1 %31, i32 -52, i32 0
  %33 = select i1 %29, i32 %32, i32 %28
  %34 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %35 = load i8, ptr %34, align 1, !range !9
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i32 %33, i32 %30
  br label %38

38:                                               ; preds = %21, %17, %14
  %39 = phi i32 [ -5, %17 ], [ -5, %14 ], [ %37, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.brcmf_pub, ptr %40, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %41) #7
  %42 = load i32, ptr %5, align 4
  store i32 %42, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_iovar_data_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 13
  %9 = tail call i32 @strlen(ptr noundef %1) #7
  %10 = add i32 %9, 1
  %11 = add i32 %10, %3
  %12 = icmp ugt i32 %11, 8192
  br i1 %12, label %53, label %13

13:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 1 %1, i32 %10, i1 false) #7
  %14 = icmp ne ptr %2, null
  %15 = icmp ne i32 %3, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %8, i32 %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr nonnull align 1 %2, i32 %3, i1 false) #7
  br label %19

19:                                               ; preds = %17, %13
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.brcmf_bus, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @net_ratelimit() #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.brcmf_pub, ptr %22, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %51

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.brcmf_pub, ptr %22, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.brcmf_proto, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 %40(ptr noundef %22, i32 noundef %36, i32 noundef 263, ptr noundef %8, i32 noundef %11, ptr noundef nonnull %5) #7
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %5, align 4
  %44 = icmp slt i32 %43, 0
  %45 = select i1 %44, i32 -52, i32 0
  %46 = select i1 %42, i32 %45, i32 %41
  %47 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %48 = load i8, ptr %47, align 1, !range !9
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 %46, i32 %43
  br label %51

51:                                               ; preds = %34, %30, %27
  %52 = phi i32 [ -5, %30 ], [ -5, %27 ], [ %50, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %60

53:                                               ; preds = %19, %4
  %54 = tail call i32 @net_ratelimit() #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.brcmf_fil_iovar_data_set) #8
  br label %60

60:                                               ; preds = %56, %53, %51
  %61 = phi i32 [ %52, %51 ], [ -1, %56 ], [ -1, %53 ]
  call void @mutex_unlock(ptr noundef %7) #7
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_iovar_data_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 13
  %9 = tail call i32 @strlen(ptr noundef %1) #7
  %10 = add i32 %9, 1
  %11 = add i32 %10, %3
  %12 = icmp ugt i32 %11, 8192
  br i1 %12, label %54, label %13

13:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 1 %1, i32 %10, i1 false) #7
  %14 = icmp ne ptr %2, null
  %15 = icmp ne i32 %3, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %8, i32 %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr nonnull align 1 %2, i32 %3, i1 false) #7
  br label %19

19:                                               ; preds = %17, %13
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.brcmf_bus, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @net_ratelimit() #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.brcmf_pub, ptr %22, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %34

34:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %61

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.brcmf_pub, ptr %22, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.brcmf_proto, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %22, i32 noundef %37, i32 noundef 262, ptr noundef %8, i32 noundef %11, ptr noundef nonnull %5) #7
  %43 = icmp eq i32 %42, 0
  %44 = load i32, ptr %5, align 4
  %45 = icmp slt i32 %44, 0
  %46 = select i1 %45, i32 -52, i32 0
  %47 = select i1 %43, i32 %46, i32 %42
  %48 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %49 = load i8, ptr %48, align 1, !range !9
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 %47, i32 %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 4 %8, i32 %3, i1 false)
  br label %61

54:                                               ; preds = %19, %4
  %55 = tail call i32 @net_ratelimit() #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.wiphy, ptr %59, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.brcmf_fil_iovar_data_get) #8
  br label %61

61:                                               ; preds = %57, %54, %53, %35, %34
  %62 = phi i32 [ 0, %53 ], [ %51, %35 ], [ -1, %57 ], [ -1, %54 ], [ -5, %34 ]
  call void @mutex_unlock(ptr noundef %7) #7
  ret i32 %62
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_iovar_int_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 %2, ptr %4, align 4
  %5 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_iovar_int_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %5 = load i32, ptr %2, align 4
  store i32 %5, ptr %4, align 4
  %6 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  store i32 %9, ptr %2, align 4
  br label %10

10:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_bsscfg_data_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 13
  %11 = icmp eq i32 %9, 0
  %12 = tail call i32 @strlen(ptr noundef %1) #7
  br i1 %11, label %13, label %23

13:                                               ; preds = %4
  %14 = add i32 %12, 1
  %15 = add i32 %14, %3
  %16 = icmp ugt i32 %15, 8192
  br i1 %16, label %73, label %17

17:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %10, ptr align 1 %1, i32 %14, i1 false) #7
  %18 = icmp ne ptr %2, null
  %19 = icmp ne i32 %3, 0
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %10, i32 %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr nonnull align 1 %2, i32 %3, i1 false) #7
  br label %38

23:                                               ; preds = %4
  %24 = add i32 %3, 12
  %25 = add i32 %24, %12
  %26 = icmp ugt i32 %25, 8192
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = tail call i32 @net_ratelimit() #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %27
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_create_bsscfg, ptr noundef nonnull @.str.5) #7
  br label %73

31:                                               ; preds = %23
  %32 = add i32 %12, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %10, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i32 7, i1 false) #7
  %33 = getelementptr %struct.brcmf_pub, ptr %6, i32 0, i32 13, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr align 1 %1, i32 %32, i1 false) #7
  %34 = getelementptr i8, ptr %33, i32 %32
  store i32 %9, ptr %34, align 1
  %35 = icmp eq i32 %3, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %34, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %2, i32 %3, i1 false) #7
  br label %38

38:                                               ; preds = %36, %31, %21, %17
  %39 = phi i32 [ %25, %36 ], [ %25, %31 ], [ %15, %21 ], [ %15, %17 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %73, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.brcmf_bus, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = tail call i32 @net_ratelimit() #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.brcmf_pub, ptr %42, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %71

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.brcmf_pub, ptr %42, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.brcmf_proto, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 %60(ptr noundef %42, i32 noundef %56, i32 noundef 263, ptr noundef %10, i32 noundef %39, ptr noundef nonnull %5) #7
  %62 = icmp eq i32 %61, 0
  %63 = load i32, ptr %5, align 4
  %64 = icmp slt i32 %63, 0
  %65 = select i1 %64, i32 -52, i32 0
  %66 = select i1 %62, i32 %65, i32 %61
  %67 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %68 = load i8, ptr %67, align 1, !range !9
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i32 %66, i32 %63
  br label %71

71:                                               ; preds = %54, %50, %47
  %72 = phi i32 [ -5, %50 ], [ -5, %47 ], [ %70, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %80

73:                                               ; preds = %38, %30, %27, %13
  %74 = tail call i32 @net_ratelimit() #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.wiphy, ptr %78, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_fil_bsscfg_data_set) #8
  br label %80

80:                                               ; preds = %76, %73, %71
  %81 = phi i32 [ %72, %71 ], [ -1, %76 ], [ -1, %73 ]
  call void @mutex_unlock(ptr noundef %7) #7
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_bsscfg_data_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 13
  %11 = icmp eq i32 %9, 0
  %12 = tail call i32 @strlen(ptr noundef %1) #7
  br i1 %11, label %13, label %23

13:                                               ; preds = %4
  %14 = add i32 %12, 1
  %15 = add i32 %14, %3
  %16 = icmp ugt i32 %15, 8192
  br i1 %16, label %74, label %17

17:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %10, ptr align 1 %1, i32 %14, i1 false) #7
  %18 = icmp ne ptr %2, null
  %19 = icmp ne i32 %3, 0
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %10, i32 %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr nonnull align 1 %2, i32 %3, i1 false) #7
  br label %38

23:                                               ; preds = %4
  %24 = add i32 %3, 12
  %25 = add i32 %24, %12
  %26 = icmp ugt i32 %25, 8192
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = tail call i32 @net_ratelimit() #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %74, label %30

30:                                               ; preds = %27
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_create_bsscfg, ptr noundef nonnull @.str.5) #7
  br label %74

31:                                               ; preds = %23
  %32 = add i32 %12, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %10, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i32 7, i1 false) #7
  %33 = getelementptr %struct.brcmf_pub, ptr %6, i32 0, i32 13, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr align 1 %1, i32 %32, i1 false) #7
  %34 = getelementptr i8, ptr %33, i32 %32
  store i32 %9, ptr %34, align 1
  %35 = icmp eq i32 %3, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %34, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %2, i32 %3, i1 false) #7
  br label %38

38:                                               ; preds = %36, %31, %21, %17
  %39 = phi i32 [ %25, %36 ], [ %25, %31 ], [ %15, %21 ], [ %15, %17 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %74, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.brcmf_bus, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = tail call i32 @net_ratelimit() #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.brcmf_pub, ptr %42, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %54

54:                                               ; preds = %50, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %81

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.brcmf_pub, ptr %42, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.brcmf_proto, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %42, i32 noundef %57, i32 noundef 262, ptr noundef %10, i32 noundef %39, ptr noundef nonnull %5) #7
  %63 = icmp eq i32 %62, 0
  %64 = load i32, ptr %5, align 4
  %65 = icmp slt i32 %64, 0
  %66 = select i1 %65, i32 -52, i32 0
  %67 = select i1 %63, i32 %66, i32 %62
  %68 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %69 = load i8, ptr %68, align 1, !range !9
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 %67, i32 %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %55
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 4 %10, i32 %3, i1 false)
  br label %81

74:                                               ; preds = %38, %30, %27, %13
  %75 = tail call i32 @net_ratelimit() #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.wiphy, ptr %79, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_fil_bsscfg_data_get) #8
  br label %81

81:                                               ; preds = %77, %74, %73, %55, %54
  %82 = phi i32 [ 0, %73 ], [ %71, %55 ], [ -1, %77 ], [ -1, %74 ], [ -5, %54 ]
  call void @mutex_unlock(ptr noundef %7) #7
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_bsscfg_int_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 %2, ptr %4, align 4
  %5 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_bsscfg_int_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %5 = load i32, ptr %2, align 4
  store i32 %5, ptr %4, align 4
  %6 = call i32 @brcmf_fil_bsscfg_data_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  store i32 %9, ptr %2, align 4
  br label %10

10:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_data_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 13
  %10 = tail call i32 @strlen(ptr noundef %1) #7
  %11 = add i32 %10, 1
  %12 = tail call i32 @brcmf_xtlv_data_size(i32 noundef %4, i16 noundef zeroext 1) #7
  %13 = add i32 %11, %12
  %14 = icmp ugt i32 %13, 8192
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = tail call i32 @net_ratelimit() #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %15
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_create_xtlv, ptr noundef nonnull @.str.5) #7
  br label %55

19:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr align 1 %1, i32 %11, i1 false) #7
  %20 = getelementptr i8, ptr %9, i32 %11
  %21 = trunc i32 %4 to i16
  tail call void @brcmf_xtlv_pack_header(ptr noundef %20, i16 noundef zeroext %2, i16 noundef zeroext %21, ptr noundef %3, i16 noundef zeroext 1) #7
  %22 = icmp eq i32 %13, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_bus, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = tail call i32 @net_ratelimit() #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.brcmf_pub, ptr %24, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %53

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.brcmf_pub, ptr %24, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.brcmf_proto, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef %24, i32 noundef %38, i32 noundef 263, ptr noundef %9, i32 noundef %13, ptr noundef nonnull %6) #7
  %44 = icmp eq i32 %43, 0
  %45 = load i32, ptr %6, align 4
  %46 = icmp slt i32 %45, 0
  %47 = select i1 %46, i32 -52, i32 0
  %48 = select i1 %44, i32 %47, i32 %43
  %49 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %50 = load i8, ptr %49, align 1, !range !9
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i32 %48, i32 %45
  br label %53

53:                                               ; preds = %36, %32, %29
  %54 = phi i32 [ -5, %32 ], [ -5, %29 ], [ %52, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %62

55:                                               ; preds = %19, %18, %15
  %56 = tail call i32 @net_ratelimit() #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.wiphy, ptr %60, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.brcmf_fil_xtlv_data_set) #8
  br label %62

62:                                               ; preds = %58, %55, %53
  %63 = phi i32 [ %54, %53 ], [ -1, %58 ], [ -1, %55 ]
  call void @mutex_unlock(ptr noundef %8) #7
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_data_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 13
  %10 = tail call i32 @strlen(ptr noundef %1) #7
  %11 = add i32 %10, 1
  %12 = tail call i32 @brcmf_xtlv_data_size(i32 noundef %4, i16 noundef zeroext 1) #7
  %13 = add i32 %11, %12
  %14 = icmp ugt i32 %13, 8192
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = tail call i32 @net_ratelimit() #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %56, label %18

18:                                               ; preds = %15
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_create_xtlv, ptr noundef nonnull @.str.5) #7
  br label %56

19:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr align 1 %1, i32 %11, i1 false) #7
  %20 = getelementptr i8, ptr %9, i32 %11
  %21 = trunc i32 %4 to i16
  tail call void @brcmf_xtlv_pack_header(ptr noundef %20, i16 noundef zeroext %2, i16 noundef zeroext %21, ptr noundef %3, i16 noundef zeroext 1) #7
  %22 = icmp eq i32 %13, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_bus, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = tail call i32 @net_ratelimit() #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.brcmf_pub, ptr %24, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fil_cmd_data) #8
  br label %36

36:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %63

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.brcmf_pub, ptr %24, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.brcmf_proto, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %24, i32 noundef %39, i32 noundef 262, ptr noundef %9, i32 noundef %13, ptr noundef nonnull %6) #7
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr %6, align 4
  %47 = icmp slt i32 %46, 0
  %48 = select i1 %47, i32 -52, i32 0
  %49 = select i1 %45, i32 %48, i32 %44
  %50 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 15
  %51 = load i8, ptr %50, align 1, !range !9
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 %49, i32 %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 4 %9, i32 %4, i1 false)
  br label %63

56:                                               ; preds = %19, %18, %15
  %57 = tail call i32 @net_ratelimit() #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.wiphy, ptr %61, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_fil_xtlv_data_get) #8
  br label %63

63:                                               ; preds = %59, %56, %55, %37, %36
  %64 = phi i32 [ 0, %55 ], [ %53, %37 ], [ -1, %59 ], [ -1, %56 ], [ -5, %36 ]
  call void @mutex_unlock(ptr noundef %8) #7
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_int_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 %3, ptr %5, align 4
  %6 = call i32 @brcmf_fil_xtlv_data_set(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef nonnull %5, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_int_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %6 = load i32, ptr %3, align 4
  store i32 %6, ptr %5, align 4
  %7 = call i32 @brcmf_fil_xtlv_data_get(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef nonnull %5, i32 noundef 4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  store i32 %10, ptr %3, align 4
  br label %11

11:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_int8_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @brcmf_fil_xtlv_data_get(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_int16_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #7
  %6 = load i16, ptr %3, align 2
  store i16 %6, ptr %5, align 2
  %7 = call i32 @brcmf_fil_xtlv_data_get(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef nonnull %5, i32 noundef 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load i16, ptr %5, align 2
  store i16 %10, ptr %3, align 2
  br label %11

11:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_xtlv_data_size(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_xtlv_pack_header(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
