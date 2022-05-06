; ModuleID = '/llk/IR/drivers/reset/sti/reset-syscfg.c_pt.bc'
source_filename = "../drivers/reset/sti/reset-syscfg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscfg_reset_controller_data = type { i8, i8, i32, ptr }
%struct.syscfg_reset_controller = type { %struct.reset_controller_dev, i8, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.syscfg_reset_channel_data = type { ptr, %struct.reg_field, %struct.reg_field }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.syscfg_reset_channel = type { ptr, ptr }

@syscfg_reset_ops = internal constant %struct.reset_control_ops { ptr @syscfg_reset_dev, ptr @syscfg_reset_assert, ptr @syscfg_reset_deassert, ptr @syscfg_reset_status }, align 4
@.str = private unnamed_addr constant [12 x i8] c"registered\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @syscfg_reset_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = icmp eq ptr %3, null
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %113, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %113, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @of_match_device(ptr noundef %12, ptr noundef nonnull %3) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %113, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %113, label %19

19:                                               ; preds = %15
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %3, i32 noundef 52, i32 noundef 3520) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %113, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.syscfg_reset_controller_data, ptr %17, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 8) #5
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %27, label %29, !prof !8

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.syscfg_reset_controller, ptr %20, i32 0, i32 2
  store ptr null, ptr %28, align 4
  br label %113

29:                                               ; preds = %22
  %30 = extractvalue { i32, i1 } %25, 0
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %3, i32 noundef %30, i32 noundef 3520) #5
  %32 = getelementptr inbounds %struct.syscfg_reset_controller, ptr %20, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %113, label %34

34:                                               ; preds = %29
  store ptr @syscfg_reset_ops, ptr %20, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.reset_controller_dev, ptr %20, i32 0, i32 5
  store ptr %36, ptr %37, align 4
  %38 = load i32, ptr %23, align 4
  %39 = getelementptr inbounds %struct.reset_controller_dev, ptr %20, i32 0, i32 8
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.syscfg_reset_controller_data, ptr %17, i32 0, i32 1
  %41 = load i8, ptr %40, align 1, !range !9
  %42 = getelementptr inbounds %struct.syscfg_reset_controller, ptr %20, i32 0, i32 1
  store i8 %41, ptr %42, align 4
  %43 = icmp sgt i32 %38, 0
  br i1 %43, label %44, label %109

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.syscfg_reset_controller_data, ptr %17, i32 0, i32 3
  br label %46

46:                                               ; preds = %105, %44
  %47 = phi i32 [ 0, %44 ], [ %106, %105 ]
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr %struct.syscfg_reset_channel_data, ptr %48, i32 %47
  %50 = load ptr, ptr %49, align 4
  %51 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef %50) #5
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = ptrtoint ptr %51 to i32
  br label %113

55:                                               ; preds = %46
  %56 = load ptr, ptr %45, align 4
  %57 = getelementptr %struct.syscfg_reset_channel_data, ptr %56, i32 %47, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = insertvalue [5 x i32] undef, i32 %58, 0
  %60 = getelementptr inbounds [5 x i32], ptr %57, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = insertvalue [5 x i32] %59, i32 %61, 1
  %63 = getelementptr inbounds [5 x i32], ptr %57, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = insertvalue [5 x i32] %62, i32 %64, 2
  %66 = getelementptr inbounds [5 x i32], ptr %57, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = insertvalue [5 x i32] %65, i32 %67, 3
  %69 = getelementptr inbounds [5 x i32], ptr %57, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = insertvalue [5 x i32] %68, i32 %70, 4
  %72 = tail call ptr @devm_regmap_field_alloc(ptr noundef %3, ptr noundef %51, [5 x i32] %71) #5
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %55
  %75 = ptrtoint ptr %72 to i32
  br label %113

76:                                               ; preds = %55
  %77 = load ptr, ptr %32, align 4
  %78 = getelementptr %struct.syscfg_reset_channel, ptr %77, i32 %47
  store ptr %72, ptr %78, align 4
  %79 = load i8, ptr %17, align 4, !range !9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %105, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %45, align 4
  %83 = getelementptr %struct.syscfg_reset_channel_data, ptr %82, i32 %47, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = insertvalue [5 x i32] undef, i32 %84, 0
  %86 = getelementptr inbounds [5 x i32], ptr %83, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = insertvalue [5 x i32] %85, i32 %87, 1
  %89 = getelementptr inbounds [5 x i32], ptr %83, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = insertvalue [5 x i32] %88, i32 %90, 2
  %92 = getelementptr inbounds [5 x i32], ptr %83, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = insertvalue [5 x i32] %91, i32 %93, 3
  %95 = getelementptr inbounds [5 x i32], ptr %83, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = insertvalue [5 x i32] %94, i32 %96, 4
  %98 = tail call ptr @devm_regmap_field_alloc(ptr noundef %3, ptr noundef %51, [5 x i32] %97) #5
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %81
  %101 = ptrtoint ptr %98 to i32
  br label %113

102:                                              ; preds = %81
  %103 = load ptr, ptr %32, align 4
  %104 = getelementptr %struct.syscfg_reset_channel, ptr %103, i32 %47, i32 1
  store ptr %98, ptr %104, align 4
  br label %105

105:                                              ; preds = %102, %76
  %106 = add nuw nsw i32 %47, 1
  %107 = load i32, ptr %23, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %46, label %109

109:                                              ; preds = %105, %34
  %110 = tail call i32 @reset_controller_register(ptr noundef nonnull %20) #5
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str) #6
  br label %113

113:                                              ; preds = %112, %109, %100, %74, %53, %29, %27, %19, %15, %10, %6, %1
  %114 = phi i32 [ -19, %6 ], [ -19, %1 ], [ -22, %15 ], [ -22, %10 ], [ -12, %19 ], [ -12, %29 ], [ 0, %112 ], [ %110, %109 ], [ -12, %27 ], [ %101, %100 ], [ %75, %74 ], [ %54, %53 ]
  ret i32 %114
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syscfg_reset_dev(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @syscfg_reset_program_hw(ptr noundef %0, i32 noundef %1, i32 noundef 1) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @syscfg_reset_program_hw(ptr noundef %0, i32 noundef %1, i32 noundef 0) #5
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syscfg_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @syscfg_reset_program_hw(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syscfg_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @syscfg_reset_program_hw(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syscfg_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.syscfg_reset_controller, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.syscfg_reset_channel, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = call i32 @regmap_field_read(ptr noundef nonnull %11, ptr noundef nonnull %3) #5
  br label %19

15:                                               ; preds = %7
  %16 = getelementptr %struct.syscfg_reset_channel, ptr %9, i32 %1
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_field_read(ptr noundef %17, ptr noundef nonnull %3) #5
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.syscfg_reset_controller, ptr %0, i32 0, i32 1
  %24 = load i8, ptr %23, align 4, !range !9
  %25 = icmp eq i8 %24, 0
  %26 = load i32, ptr %3, align 4
  %27 = icmp eq i32 %26, 0
  %28 = icmp ne i32 %26, 0
  %29 = select i1 %25, i1 %28, i1 %27
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %22, %19, %2
  %32 = phi i32 [ %30, %22 ], [ -22, %2 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @syscfg_reset_program_hw(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.syscfg_reset_controller, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = icmp eq i32 %2, 0
  %9 = icmp ne i32 %2, 0
  %10 = select i1 %7, i1 %9, i1 %8
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %46

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.syscfg_reset_controller, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.syscfg_reset_channel, ptr %17, i32 %1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %15
  %23 = getelementptr %struct.syscfg_reset_channel, ptr %17, i32 %1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = add i32 %27, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !10
  %29 = load ptr, ptr %23, align 4
  %30 = call i32 @regmap_field_read(ptr noundef %29, ptr noundef nonnull %4) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %39, %26
  %33 = load i32, ptr %4, align 4
  %34 = icmp eq i32 %33, %11
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = sub i32 %28, %36
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !12
  %40 = load ptr, ptr %23, align 4
  %41 = call i32 @regmap_field_read(ptr noundef %40, ptr noundef nonnull %4) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %32, label %43

43:                                               ; preds = %39, %35, %26
  %44 = phi i32 [ %30, %26 ], [ %41, %39 ], [ -62, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %46

45:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %46

46:                                               ; preds = %45, %43, %22, %15, %3
  %47 = phi i32 [ -22, %3 ], [ %20, %15 ], [ %44, %43 ], [ 0, %45 ], [ 0, %22 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{i64 2151426059}
!12 = !{i64 2151425901}
