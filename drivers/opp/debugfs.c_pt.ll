; ModuleID = '/llk/IR/drivers/opp/debugfs.c_pt.bc'
source_filename = "../drivers/opp/debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_opp = type { %struct.list_head, %struct.kref, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.opp_table = type { %struct.list_head, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, ptr, ptr, ptr, ptr, [255 x i8] }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_pm_opp_supply = type { i32, i32, i32, i32 }
%struct.dev_pm_opp_icc_bw = type { i32, i32 }
%struct.opp_device = type { %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"opp:%lu\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"turbo\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"performance_state\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"rate_hz\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"clock_latency_ns\00", align 1
@__initcall__kmod_debugfs__206_249_opp_debug_init1 = internal global ptr @opp_debug_init, section ".initcall1.init", align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"supply-%d\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"u_volt_target\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"u_volt_min\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"u_volt_max\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"u_amp\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"icc-path-%.1d\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@bw_name_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @bw_name_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"peak_bw\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"avg_bw\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%.62s\0A\00", align 1
@rootdir = internal unnamed_addr global ptr null, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"%s: Failed to rename link from: %s to %s\0A\00", align 1
@__func__.opp_migrate_dentry = private unnamed_addr constant [19 x i8] c"opp_migrate_dentry\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"opp\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_debugfs__206_249_opp_debug_init1], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @opp_debug_remove_one(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @opp_debug_create_one(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [11 x i8], align 1
  %4 = alloca [15 x i8], align 1
  %5 = alloca [25 x i8], align 1
  %6 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 33
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %5, i8 0, i32 25, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !9

11:                                               ; preds = %2
  %12 = tail call i32 @_get_opp_count(ptr noundef %1) #7
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ %9, %2 ]
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 25, ptr noundef nonnull @.str, i32 noundef %14)
  %16 = call ptr @debugfs_create_dir(ptr noundef nonnull %5, ptr noundef %7) #7
  %17 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 2
  call void @debugfs_create_bool(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %17) #7
  %18 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 3
  call void @debugfs_create_bool(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 5
  call void @debugfs_create_bool(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %20) #7
  %21 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 7
  call void @debugfs_create_u32(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %21) #7
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %8) #7
  %22 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 12
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %22) #7
  %23 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 24
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 10
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ 0, %26 ], [ %40, %28 ]
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %4, i8 0, i32 15, i1 false) #7, !annotation !8
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 15, ptr noundef nonnull @.str.8, i32 noundef %29) #7
  %31 = call ptr @debugfs_create_dir(ptr noundef nonnull %4, ptr noundef %16) #7
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr %struct.dev_pm_opp_supply, ptr %32, i32 %29
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %31, ptr noundef %33) #7
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr %struct.dev_pm_opp_supply, ptr %34, i32 %29, i32 1
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %31, ptr noundef %35) #7
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr %struct.dev_pm_opp_supply, ptr %36, i32 %29, i32 2
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %31, ptr noundef %37) #7
  %38 = load ptr, ptr %27, align 4
  %39 = getelementptr %struct.dev_pm_opp_supply, ptr %38, i32 %29, i32 3
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %31, ptr noundef %39) #7
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %4) #7
  %40 = add nuw nsw i32 %29, 1
  %41 = load i32, ptr %23, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %28, label %43

43:                                               ; preds = %28, %13
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false) #7, !annotation !8
  %44 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 26
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 25
  %49 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 11
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi i32 [ 0, %47 ], [ %62, %50 ]
  %52 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 11, ptr noundef nonnull @.str.13, i32 noundef %51) #7
  %53 = call ptr @debugfs_create_dir(ptr noundef nonnull %3, ptr noundef %16) #7
  %54 = load ptr, ptr %48, align 4
  %55 = getelementptr ptr, ptr %54, i32 %51
  %56 = load ptr, ptr %55, align 4
  %57 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef %53, ptr noundef %56, ptr noundef nonnull @bw_name_fops) #7
  %58 = load ptr, ptr %49, align 4
  %59 = getelementptr %struct.dev_pm_opp_icc_bw, ptr %58, i32 %51, i32 1
  call void @debugfs_create_u32(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %53, ptr noundef %59) #7
  %60 = load ptr, ptr %49, align 4
  %61 = getelementptr %struct.dev_pm_opp_icc_bw, ptr %60, i32 %51
  call void @debugfs_create_u32(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %53, ptr noundef %61) #7
  %62 = add nuw i32 %51, 1
  %63 = load i32, ptr %44, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %50, label %65

65:                                               ; preds = %50, %43
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #7
  %66 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 16
  store ptr %16, ptr %66, align 4
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_ulong(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @opp_debug_register(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [255 x i8], align 1
  %4 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 33
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(255) %3, i8 0, i32 255, i1 false) #7, !annotation !8
  %8 = getelementptr inbounds %struct.opp_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr %11, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %21 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load ptr, ptr %9, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %25, %24 ], [ %22, %19 ]
  %28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 255, ptr noundef nonnull @.str.18, ptr noundef %20, ptr noundef %27) #7
  br label %38

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load ptr, ptr %9, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %31, %29 ]
  %37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 255, ptr noundef nonnull @.str.19, ptr noundef %36) #7
  br label %38

38:                                               ; preds = %35, %26
  %39 = load ptr, ptr @rootdir, align 4
  %40 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 34
  %41 = call ptr @debugfs_create_symlink(ptr noundef nonnull %3, ptr noundef %39, ptr noundef %40) #7
  %42 = getelementptr inbounds %struct.opp_device, ptr %0, i32 0, i32 2
  store ptr %41, ptr %42, align 4
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #7
  br label %79

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.opp_device, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 34
  %47 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load ptr, ptr %48, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi ptr [ %55, %54 ], [ %52, %50 ]
  %58 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load ptr, ptr %45, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi ptr [ %62, %61 ], [ %59, %56 ]
  %65 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %46, i32 noundef 255, ptr noundef nonnull @.str.18, ptr noundef %57, ptr noundef %64) #7
  br label %75

66:                                               ; preds = %43
  %67 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load ptr, ptr %45, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi ptr [ %71, %70 ], [ %68, %66 ]
  %74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %46, i32 noundef 255, ptr noundef nonnull @.str.19, ptr noundef %73) #7
  br label %75

75:                                               ; preds = %72, %63
  %76 = load ptr, ptr @rootdir, align 4
  %77 = tail call ptr @debugfs_create_dir(ptr noundef %46, ptr noundef %76) #7
  %78 = getelementptr inbounds %struct.opp_device, ptr %0, i32 0, i32 2
  store ptr %77, ptr %78, align 4
  store ptr %77, ptr %4, align 4
  br label %79

79:                                               ; preds = %75, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @opp_debug_unregister(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.opp_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 33
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %86

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 3
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 3, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %10, %14
  br i1 %15, label %84, label %16

16:                                               ; preds = %12, %8
  %17 = icmp ne ptr %10, %9
  %18 = icmp eq ptr %10, %0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  %22 = icmp ne ptr %21, %9
  %23 = icmp eq ptr %21, %0
  %24 = and i1 %22, %23
  br label %25

25:                                               ; preds = %25, %20
  br i1 %24, label %25, label %26, !llvm.loop !10

26:                                               ; preds = %25, %16
  %27 = phi ptr [ %10, %16 ], [ %21, %25 ]
  %28 = getelementptr inbounds %struct.opp_device, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.opp_device, ptr %27, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void @debugfs_remove(ptr noundef %31) #7
  %32 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 34
  %33 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %34, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %38, %36 ]
  %44 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load ptr, ptr %29, align 4
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi ptr [ %48, %47 ], [ %45, %42 ]
  %51 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %32, i32 noundef 255, ptr noundef nonnull @.str.18, ptr noundef %43, ptr noundef %50) #7
  br label %61

52:                                               ; preds = %26
  %53 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %29, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi ptr [ %57, %56 ], [ %54, %52 ]
  %60 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %32, i32 noundef 255, ptr noundef nonnull @.str.19, ptr noundef %59) #7
  br label %61

61:                                               ; preds = %58, %49
  %62 = load ptr, ptr @rootdir, align 4
  %63 = load ptr, ptr %3, align 4
  %64 = tail call ptr @debugfs_rename(ptr noundef %62, ptr noundef %63, ptr noundef %62, ptr noundef %32) #7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.opp_device, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load ptr, ptr %68, align 4
  br label %74

74:                                               ; preds = %72, %66
  %75 = phi ptr [ %73, %72 ], [ %70, %66 ]
  %76 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr %29, align 4
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi ptr [ %80, %79 ], [ %77, %74 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.opp_migrate_dentry, ptr noundef %75, ptr noundef %82) #8
  br label %88

83:                                               ; preds = %61
  store ptr %64, ptr %30, align 4
  store ptr %64, ptr %5, align 4
  br label %88

84:                                               ; preds = %12
  store ptr null, ptr %5, align 4
  %85 = load ptr, ptr %3, align 4
  br label %86

86:                                               ; preds = %84, %2
  %87 = phi ptr [ %85, %84 ], [ %4, %2 ]
  tail call void @debugfs_remove(ptr noundef %87) #7
  br label %88

88:                                               ; preds = %86, %83, %81
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @opp_debug_init() #5 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.21, ptr noundef null) #7
  store ptr %1, ptr @rootdir, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bw_name_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [64 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  %8 = tail call ptr @icc_get_name(ptr noundef %7) #7
  %9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef %8) #7
  %10 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %9) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
