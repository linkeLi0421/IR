; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.131, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.131 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.96, %struct.anon.97, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.96 = type { ptr, i32 }
%struct.anon.97 = type { ptr, i32 }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.98, %struct.anon.99 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.90, %struct.anon.91, %struct.nvkm_engine }
%struct.anon.90 = type { i32, ptr, i32, i8 }
%struct.anon.91 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.94 }
%struct.anon.94 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.98 = type { %struct.mutex, i32, i32 }
%struct.anon.99 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@nvkm_pmu = internal constant %struct.nvkm_subdev_func { ptr @nvkm_pmu_dtor, ptr @nvkm_pmu_preinit, ptr null, ptr null, ptr @nvkm_pmu_init, ptr @nvkm_pmu_fini, ptr @nvkm_pmu_intr }, align 4
@nvkm_pmu_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [17 x i8] c"&pmu->send.mutex\00", align 1
@nvkm_pmu_ctor.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"&pmu->recv.wait\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Pmu\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hpq\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"lpq\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"msgq\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nvkm_pmu_fan_controlled(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 39
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %6, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 191
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i1 [ %13, %10 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_pmu_pgob(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7(ptr noundef nonnull %0, i1 noundef zeroext %1) #7
  br label %10

10:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pmu_send(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 %11(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7
  br label %15

15:                                               ; preds = %13, %8, %6
  %16 = phi i32 [ %14, %13 ], [ -19, %8 ], [ -19, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pmu_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca [32 x i8], align 1
  %7 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_pmu, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_pmu_ctor.__key) #7
  %9 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 10, i32 2
  store i32 -32, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 10, i32 2, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 10, i32 2, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 10, i32 2, i32 2
  store ptr @nvkm_pmu_recv, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 10, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @nvkm_pmu_ctor.__key.1) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3)
  %15 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @nvkm_longopt(ptr noundef %18, ptr noundef nonnull %6, i32 noundef -2) #7
  %20 = icmp sgt i32 %19, -2
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3)
  br label %37

23:                                               ; preds = %28, %5
  %24 = phi ptr [ %31, %28 ], [ %0, %5 ]
  %25 = getelementptr inbounds %struct.nvkm_pmu_fwif, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %65, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %24, align 4
  %30 = icmp ne i32 %29, %19
  %31 = getelementptr %struct.nvkm_pmu_fwif, ptr %24, i32 1
  %32 = icmp eq ptr %24, null
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %23, label %34

34:                                               ; preds = %28
  %35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3)
  %36 = load i32, ptr %24, align 4
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi ptr [ %24, %34 ], [ null, %21 ]
  %39 = phi ptr [ %24, %34 ], [ %0, %21 ]
  %40 = phi i32 [ %36, %34 ], [ -1, %21 ]
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @nvkm_longopt(ptr noundef %43, ptr noundef nonnull %6, i32 noundef %40) #7
  %45 = getelementptr inbounds %struct.nvkm_pmu_fwif, ptr %39, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %48

48:                                               ; preds = %37
  %49 = icmp sgt i32 %44, -1
  br label %50

50:                                               ; preds = %57, %48
  %51 = phi ptr [ %46, %48 ], [ %60, %57 ]
  %52 = phi ptr [ %39, %48 ], [ %58, %57 ]
  br i1 %49, label %62, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %52, align 4
  %55 = call i32 %51(ptr noundef %4, i32 noundef %54, ptr noundef %52) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = getelementptr %struct.nvkm_pmu_fwif, ptr %52, i32 1
  %59 = getelementptr %struct.nvkm_pmu_fwif, ptr %52, i32 1, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %50

62:                                               ; preds = %50
  %63 = call i32 %46(ptr noundef %4, i32 noundef %44, ptr noundef %39) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62, %57, %23
  %66 = phi i32 [ %63, %62 ], [ %55, %57 ], [ -22, %23 ]
  %67 = inttoptr i32 %66 to ptr
  br label %68

68:                                               ; preds = %65, %62, %53, %37
  %69 = phi ptr [ %67, %65 ], [ %39, %62 ], [ %38, %37 ], [ %52, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = ptrtoint ptr %69 to i32
  br label %103

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.nvkm_pmu_fwif, ptr %69, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  store ptr %75, ptr %4, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 1, i32 4
  %78 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 2
  %79 = call i32 @nvkm_falcon_ctor(ptr noundef %76, ptr noundef %7, ptr noundef %77, i32 noundef 1089536, ptr noundef %78) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 3
  %83 = call i32 @nvkm_falcon_qmgr_new(ptr noundef %78, ptr noundef %82) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load ptr, ptr %82, align 4
  %87 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 4
  %88 = call i32 @nvkm_falcon_cmdq_new(ptr noundef %86, ptr noundef nonnull @.str.6, ptr noundef %87) #7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load ptr, ptr %82, align 4
  %92 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 5
  %93 = call i32 @nvkm_falcon_cmdq_new(ptr noundef %91, ptr noundef nonnull @.str.7, ptr noundef %92) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load ptr, ptr %82, align 4
  %97 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 6
  %98 = call i32 @nvkm_falcon_msgq_new(ptr noundef %96, ptr noundef nonnull @.str.8, ptr noundef %97) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 8
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %102, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #7
  br label %103

103:                                              ; preds = %100, %95, %90, %85, %81, %73, %71
  %104 = phi i32 [ %72, %71 ], [ 0, %100 ], [ %79, %73 ], [ %83, %81 ], [ %88, %85 ], [ %93, %90 ], [ %98, %95 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_pmu_recv(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -324
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_qmgr_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_msgq_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pmu_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 368) #8
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @nvkm_pmu_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7)
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ -12, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_pmu_dtor(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 260
  tail call void @nvkm_falcon_msgq_del(ptr noundef %3) #7
  %4 = getelementptr i8, ptr %0, i32 256
  tail call void @nvkm_falcon_cmdq_del(ptr noundef %4) #7
  %5 = getelementptr i8, ptr %0, i32 252
  tail call void @nvkm_falcon_cmdq_del(ptr noundef %5) #7
  %6 = getelementptr i8, ptr %0, i32 248
  tail call void @nvkm_falcon_qmgr_del(ptr noundef %6) #7
  %7 = getelementptr i8, ptr %0, i32 52
  tail call void @nvkm_falcon_dtor(ptr noundef %7) #7
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_pmu_preinit(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call fastcc void @nvkm_pmu_reset(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_pmu_init(ptr noundef %0) #2 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 %12(ptr noundef %3) #7
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 1089556
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 65535) #7, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %2) #7
  br label %18

18:                                               ; preds = %23, %14
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr i8, ptr %19, i32 1089612
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %18
  %24 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #7
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %18, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.nvkm_timer, ptr %27, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @dev_driver_string(ptr noundef %31) #7
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load ptr, ptr %37, align 4
  br label %43

43:                                               ; preds = %41, %26
  %44 = phi ptr [ %42, %41 ], [ %39, %26 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %32, ptr noundef %44) #7
  br label %45

45:                                               ; preds = %43, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  call fastcc void @nvkm_pmu_reset(ptr noundef %3)
  br label %46

46:                                               ; preds = %45, %10
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %49(ptr noundef %3) #7
  br label %51

51:                                               ; preds = %46, %1
  %52 = phi i32 [ %50, %46 ], [ 0, %1 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_pmu_fini(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %3) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr i8, ptr %0, i32 320
  %11 = tail call zeroext i1 @flush_work(ptr noundef %10) #7
  %12 = getelementptr i8, ptr %0, i32 268
  store i32 0, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 256
  %14 = load ptr, ptr %13, align 4
  tail call void @nvkm_falcon_cmdq_fini(ptr noundef %14) #7
  %15 = getelementptr i8, ptr %0, i32 252
  %16 = load ptr, ptr %15, align 4
  tail call void @nvkm_falcon_cmdq_fini(ptr noundef %16) #7
  %17 = getelementptr i8, ptr %0, i32 264
  store i8 0, ptr %17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_pmu_intr(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %2) #7
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_qmgr_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_pmu_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 %7(ptr noundef %0) #7
  br i1 %8, label %9, label %46

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void %12(ptr noundef %0) #7
  br label %15

15:                                               ; preds = %14, %9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #7
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %17

17:                                               ; preds = %23, %15
  %18 = load ptr, ptr %16, align 4
  %19 = getelementptr i8, ptr %18, i32 1089804
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %21 = and i32 %20, 6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #7
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %17, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.nvkm_timer, ptr %27, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @dev_driver_string(ptr noundef %31) #7
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load ptr, ptr %37, align 4
  br label %43

43:                                               ; preds = %41, %26
  %44 = phi ptr [ %42, %41 ], [ %39, %26 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %32, ptr noundef %44) #7
  br label %45

45:                                               ; preds = %43, %17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 2151486691}
!10 = !{i64 3945598}
!11 = !{i64 3946016}
!12 = !{i64 2151485469}
