; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_aux.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_aux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.dp_aux_private = type { ptr, ptr, %struct.mutex, %struct.completion, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.drm_dp_aux }

@.str = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dpu_dp_aux\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: failed to register drm aux: %d\0A\00", align 1
@__func__.dp_aux_register = private unnamed_addr constant [16 x i8] c"dp_aux_register\00", align 1
@dp_aux_get.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&aux->mutex\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: invalid msg: size(%zu), request(%x)\0A\00", align 1
@__func__.dp_aux_transfer = private unnamed_addr constant [16 x i8] c"dp_aux_transfer\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"buf size greater than allowed size of 128 bytes\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_aux_isr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %79

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -68
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @dp_catalog_aux_get_irq(ptr noundef %6) #3
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %79, label %11

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %0, i32 -19
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = and i32 %7, 8
  %16 = icmp eq i32 %15, 0
  br i1 %14, label %39, label %17

17:                                               ; preds = %11
  br i1 %16, label %18, label %24

18:                                               ; preds = %17
  %19 = and i32 %7, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = and i32 %7, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %18, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %18 ], [ 2, %21 ]
  %26 = getelementptr i8, ptr %0, i32 -28
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = and i32 %7, 4096
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %0, i32 -28
  store i32 3, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = and i32 %7, 134217728
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %77, label %35

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %0, i32 -28
  store i32 6, ptr %36, align 4
  %37 = load ptr, ptr %5, align 4
  %38 = tail call i32 @dp_catalog_aux_clear_hw_interrupts(ptr noundef %37) #3
  br label %77

39:                                               ; preds = %11
  br i1 %16, label %46, label %40

40:                                               ; preds = %39
  %41 = and i32 %7, 2359296
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr i8, ptr %0, i32 -28
  br i1 %42, label %45, label %44

44:                                               ; preds = %40
  store i32 3, ptr %43, align 4
  br label %77

45:                                               ; preds = %40
  store i32 0, ptr %43, align 4
  br label %77

46:                                               ; preds = %39
  %47 = and i32 %7, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = and i32 %7, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ 1, %46 ], [ 2, %49 ]
  %54 = getelementptr i8, ptr %0, i32 -28
  store i32 %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = and i32 %7, 4096
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %0, i32 -28
  store i32 5, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = and i32 %7, 262144
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %0, i32 -28
  store i32 3, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = and i32 %7, 2097152
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = getelementptr i8, ptr %0, i32 -28
  store i32 4, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = and i32 %7, 134217728
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr i8, ptr %0, i32 -28
  store i32 6, ptr %74, align 4
  %75 = load ptr, ptr %5, align 4
  %76 = tail call i32 @dp_catalog_aux_clear_hw_interrupts(ptr noundef %75) #3
  br label %77

77:                                               ; preds = %73, %70, %45, %44, %35, %32
  %78 = getelementptr i8, ptr %0, i32 -44
  tail call void @complete(ptr noundef %78) #3
  br label %79

79:                                               ; preds = %77, %4, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_get_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_aux_reconfig(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -68
  %3 = load ptr, ptr %2, align 4
  tail call void @dp_catalog_aux_update_cfg(ptr noundef %3) #3
  %4 = load ptr, ptr %2, align 4
  tail call void @dp_catalog_aux_reset(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_aux_update_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_aux_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_aux_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %10

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -64
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr i8, ptr %0, i32 -68
  %7 = load ptr, ptr %6, align 4
  tail call void @dp_catalog_aux_enable(ptr noundef %7, i1 noundef zeroext true) #3
  %8 = getelementptr i8, ptr %0, i32 -24
  store i32 0, ptr %8, align 8
  %9 = getelementptr i8, ptr %0, i32 -15
  store i8 1, ptr %9, align 1
  tail call void @mutex_unlock(ptr noundef %5) #3
  br label %10

10:                                               ; preds = %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_aux_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_aux_deinit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  tail call void @mutex_lock(ptr noundef %2) #3
  %3 = getelementptr i8, ptr %0, i32 -15
  store i8 0, ptr %3, align 1
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load ptr, ptr %4, align 4
  tail call void @dp_catalog_aux_enable(ptr noundef %5, i1 noundef zeroext false) #3
  tail call void @mutex_unlock(ptr noundef %2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_aux_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %12

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -72
  store ptr @.str.1, ptr %0, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 2
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 8
  store ptr @dp_aux_transfer, ptr %8, align 4
  %9 = tail call i32 @drm_dp_aux_register(ptr noundef nonnull %0) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dp_aux_register, i32 noundef %9) #3
  br label %12

12:                                               ; preds = %11, %4, %3
  %13 = phi i32 [ %9, %11 ], [ -22, %3 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_aux_transfer(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.drm_dp_aux_msg, align 4
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 8
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr i8, ptr %0, i32 -19
  %10 = lshr exact i8 %7, 3
  store i8 %10, ptr %9, align 1
  %11 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  store i8 0, ptr %19, align 1
  br label %144

20:                                               ; preds = %14
  %21 = icmp ugt i32 %12, 16
  %22 = select i1 %8, i1 %21, i1 false
  %23 = icmp ugt i32 %12, 128
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8, ptr %5, align 4
  %27 = zext i8 %26 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dp_aux_transfer, i32 noundef %12, i32 noundef %27) #3
  br label %144

28:                                               ; preds = %20
  %29 = getelementptr i8, ptr %0, i32 -64
  tail call void @mutex_lock(ptr noundef %29) #3
  %30 = getelementptr i8, ptr %0, i32 -15
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %142, label %33

33:                                               ; preds = %28
  %34 = load i8, ptr %9, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i8, ptr %5, align 4
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, ptr %1, align 4
  switch i32 %41, label %51 [
    i32 80, label %42
    i32 48, label %42
  ]

42:                                               ; preds = %40, %40
  %43 = load ptr, ptr %15, align 4
  %44 = icmp eq i32 %41, 48
  %45 = load i8, ptr %43, align 1
  %46 = zext i8 %45 to i32
  br i1 %44, label %47, label %49

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %0, i32 -8
  store i32 %46, ptr %48, align 8
  br label %51

49:                                               ; preds = %42
  %50 = getelementptr i8, ptr %0, i32 -12
  store i32 %46, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %47, %40, %36, %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #3
  %52 = load i8, ptr %5, align 4
  %53 = and i8 %52, 5
  %54 = icmp eq i8 %53, 5
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = load i32, ptr %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %88, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %0, i32 -12
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 127
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %0, i32 -18
  store i8 0, ptr %64, align 2
  %65 = getelementptr i8, ptr %0, i32 -20
  store i8 1, ptr %65, align 4
  %66 = getelementptr i8, ptr %0, i32 -17
  store i8 1, ptr %66, align 1
  %67 = getelementptr i8, ptr %0, i32 -16
  store i8 1, ptr %67, align 8
  %68 = getelementptr i8, ptr %0, i32 -8
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %72, align 4
  store i32 48, ptr %3, align 4
  %73 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %3, i32 0, i32 3
  store ptr %68, ptr %73, align 4
  %74 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %3, i32 0, i32 4
  store i32 1, ptr %74, align 4
  %75 = call fastcc i32 @dp_aux_cmd_fifo_tx(ptr noundef %4, ptr noundef nonnull %3) #3
  br label %76

76:                                               ; preds = %71, %63
  %77 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %77, align 4
  %78 = load i32, ptr %1, align 4
  store i32 %78, ptr %3, align 4
  %79 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %3, i32 0, i32 3
  store ptr %59, ptr %79, align 4
  %80 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %3, i32 0, i32 4
  store i32 1, ptr %80, align 4
  %81 = call fastcc i32 @dp_aux_cmd_fifo_tx(ptr noundef %4, ptr noundef nonnull %3) #3
  %82 = load i32, ptr %59, align 4
  br label %83

83:                                               ; preds = %76, %58
  %84 = phi i32 [ %60, %58 ], [ %82, %76 ]
  %85 = add i32 %84, 16
  store i32 %85, ptr %59, align 4
  switch i32 %84, label %88 [
    i32 112, label %86
    i32 240, label %86
  ]

86:                                               ; preds = %83, %83
  %87 = getelementptr i8, ptr %0, i32 -8
  store i32 0, ptr %87, align 8
  br label %88

88:                                               ; preds = %86, %83, %55, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #3
  %89 = load i8, ptr %5, align 4
  %90 = and i8 %89, 1
  %91 = getelementptr i8, ptr %0, i32 -18
  store i8 %90, ptr %91, align 2
  %92 = getelementptr i8, ptr %0, i32 -20
  store i8 1, ptr %92, align 4
  %93 = xor i8 %90, 1
  %94 = getelementptr i8, ptr %0, i32 -17
  store i8 1, ptr %94, align 1
  %95 = getelementptr i8, ptr %0, i32 -16
  store i8 %93, ptr %95, align 8
  %96 = tail call fastcc i32 @dp_aux_cmd_fifo_tx(ptr noundef %4, ptr noundef %1)
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %88
  %99 = load i8, ptr %9, align 1, !range !8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = getelementptr i8, ptr %0, i32 -24
  %103 = load i32, ptr %102, align 8
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 8
  %105 = urem i32 %104, 5
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = getelementptr i8, ptr %0, i32 -68
  %109 = load ptr, ptr %108, align 4
  tail call void @dp_catalog_aux_update_cfg(ptr noundef %109) #3
  br label %110

110:                                              ; preds = %107, %101, %98
  %111 = getelementptr i8, ptr %0, i32 -68
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @dp_catalog_link_is_connected(ptr noundef %112) #3
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr %111, align 4
  tail call void @dp_catalog_aux_reset(ptr noundef %116) #3
  br label %140

117:                                              ; preds = %88
  %118 = getelementptr i8, ptr %0, i32 -24
  store i32 0, ptr %118, align 8
  %119 = getelementptr i8, ptr %0, i32 -28
  %120 = load i32, ptr %119, align 4
  switch i32 %120, label %140 [
    i32 0, label %121
    i32 4, label %129
    i32 6, label %134
    i32 1, label %134
    i32 3, label %134
    i32 5, label %134
    i32 2, label %139
  ]

121:                                              ; preds = %117
  %122 = load i8, ptr %91, align 2, !range !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = tail call fastcc i32 @dp_aux_cmd_fifo_rx(ptr noundef %4, ptr noundef %1)
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi i32 [ %125, %124 ], [ %96, %121 ]
  %128 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  store i8 0, ptr %128, align 1
  br label %140

129:                                              ; preds = %117
  %130 = load i8, ptr %9, align 1, !range !8
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, i8 8, i8 2
  %133 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  store i8 %132, ptr %133, align 1
  br label %140

134:                                              ; preds = %117, %117, %117, %117
  %135 = load i8, ptr %9, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = select i1 %136, i8 4, i8 1
  %138 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  store i8 %137, ptr %138, align 1
  br label %140

139:                                              ; preds = %117
  br label %140

140:                                              ; preds = %139, %134, %129, %126, %117, %115, %110
  %141 = phi i32 [ %96, %115 ], [ %96, %110 ], [ %96, %117 ], [ -110, %139 ], [ %96, %134 ], [ %96, %129 ], [ %127, %126 ]
  store i8 0, ptr %92, align 4
  br label %142

142:                                              ; preds = %140, %28
  %143 = phi i32 [ %141, %140 ], [ -5, %28 ]
  tail call void @mutex_unlock(ptr noundef %29) #3
  br label %144

144:                                              ; preds = %142, %25, %18
  %145 = phi i32 [ %12, %18 ], [ -22, %25 ], [ %143, %142 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_aux_unregister(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @drm_dp_aux_unregister(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_aux_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %16

5:                                                ; preds = %2
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 880, i32 noundef 3520) #3
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.dp_aux_private, ptr %6, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dp_aux_private, ptr %6, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #3
  %11 = getelementptr inbounds %struct.dp_aux_private, ptr %6, i32 0, i32 6
  store i8 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dp_aux_private, ptr %6, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @dp_aux_get.__key) #3
  store ptr %0, ptr %6, align 8
  %13 = getelementptr inbounds %struct.dp_aux_private, ptr %6, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dp_aux_private, ptr %6, i32 0, i32 5
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.dp_aux_private, ptr %6, i32 0, i32 14
  br label %16

16:                                               ; preds = %8, %5, %4
  %17 = phi ptr [ %15, %8 ], [ inttoptr (i32 -19 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_aux_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = load ptr, ptr %4, align 8
  tail call void @devm_kfree(ptr noundef %5, ptr noundef %4) #3
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_clear_hw_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_aux_cmd_fifo_tx(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.dp_aux_private, ptr %0, i32 0, i32 3
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  %5 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dp_aux_private, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 124
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %1, align 4
  %16 = lshr i32 %15, 16
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 15
  br label %28

19:                                               ; preds = %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  br label %93

20:                                               ; preds = %2
  %21 = load i32, ptr %1, align 4
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 15
  %25 = or i8 %24, 16
  %26 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %20, %14
  %29 = phi i32 [ %27, %20 ], [ %12, %14 ]
  %30 = phi i8 [ %25, %20 ], [ %18, %14 ]
  %31 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %32 = phi i32 [ 0, %20 ], [ %12, %14 ]
  store i8 %30, ptr %3, align 4
  %33 = lshr i32 %31, 8
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = trunc i32 %31 to i8
  %37 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %36, ptr %37, align 2
  %38 = trunc i32 %29 to i8
  %39 = add i8 %38, -1
  %40 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 %39, ptr %40, align 1
  %41 = icmp sgt i32 %32, -4
  br i1 %41, label %42, label %63

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.dp_aux_private, ptr %0, i32 0, i32 1
  %44 = add nsw i32 %32, 3
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi i32 [ 0, %42 ], [ %61, %45 ]
  %47 = icmp ult i32 %46, 4
  %48 = getelementptr [4 x i8], ptr %3, i32 0, i32 %46
  %49 = add nsw i32 %46, -4
  %50 = getelementptr i8, ptr %6, i32 %49
  %51 = select i1 %47, ptr %48, ptr %50
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = icmp eq i32 %46, 0
  %56 = or i32 %54, -2147483648
  %57 = select i1 %55, i32 %56, i32 %54
  %58 = load ptr, ptr %43, align 4
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %43, align 4
  %60 = tail call i32 @dp_catalog_aux_write_data(ptr noundef %59) #3
  %61 = add nuw nsw i32 %46, 1
  %62 = icmp eq i32 %46, %44
  br i1 %62, label %63, label %45

63:                                               ; preds = %45, %28
  %64 = getelementptr inbounds %struct.dp_aux_private, ptr %0, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @dp_catalog_aux_clear_trans(ptr noundef %65, i1 noundef zeroext false) #3
  %67 = load ptr, ptr %64, align 4
  %68 = tail call i32 @dp_catalog_aux_clear_hw_interrupts(ptr noundef %67) #3
  %69 = getelementptr inbounds %struct.dp_aux_private, ptr %0, i32 0, i32 7
  %70 = load i8, ptr %69, align 1, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.dp_aux_private, ptr %0, i32 0, i32 9
  %74 = load i8, ptr %73, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 256, i32 1280
  %77 = getelementptr inbounds %struct.dp_aux_private, ptr %0, i32 0, i32 10
  %78 = load i8, ptr %77, align 8, !range !8
  %79 = icmp eq i8 %78, 0
  %80 = or i32 %76, 2048
  %81 = select i1 %79, i32 %76, i32 %80
  %82 = or i32 %81, 512
  br label %83

83:                                               ; preds = %72, %63
  %84 = phi i32 [ 512, %63 ], [ %82, %72 ]
  %85 = load ptr, ptr %64, align 4
  store i32 %84, ptr %85, align 4
  %86 = load ptr, ptr %64, align 4
  %87 = tail call i32 @dp_catalog_aux_write_trans(ptr noundef %86) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  %88 = icmp slt i32 %32, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = tail call i32 @wait_for_completion_timeout(ptr noundef %4, i32 noundef 25) #3
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 -110, i32 %32
  br label %93

93:                                               ; preds = %89, %83, %19
  %94 = phi i32 [ %32, %83 ], [ %92, %89 ], [ -22, %19 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_link_is_connected(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_aux_cmd_fifo_rx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dp_aux_private, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @dp_catalog_aux_clear_trans(ptr noundef %6, i1 noundef zeroext true) #3
  %8 = load ptr, ptr %5, align 4
  store i32 -2147483647, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = tail call i32 @dp_catalog_aux_write_data(ptr noundef %9) #3
  %11 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = tail call i32 @dp_catalog_aux_read_data(ptr noundef %13) #3
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %26, %2
  %17 = phi i32 [ %28, %26 ], [ 0, %2 ]
  %18 = phi ptr [ %27, %26 ], [ %12, %2 ]
  %19 = load ptr, ptr %5, align 4
  %20 = tail call i32 @dp_catalog_aux_read_data(ptr noundef %19) #3
  %21 = lshr i32 %20, 8
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %18, align 1
  %23 = lshr i32 %20, 16
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %17, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = getelementptr i8, ptr %18, i32 1
  %28 = add nuw i32 %17, 1
  %29 = icmp eq i32 %28, %4
  br i1 %29, label %30, label %16

30:                                               ; preds = %26, %16, %2
  %31 = phi i32 [ 0, %2 ], [ %17, %16 ], [ %4, %26 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_write_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_clear_trans(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_write_trans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_read_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
