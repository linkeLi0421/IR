; ModuleID = '/llk/IR/drivers/mfd/max8998-irq.c_pt.bc'
source_filename = "../drivers/mfd/max8998-irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max8998_irq_data = type { i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.max8998_dev = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i32, [4 x i8], [4 x i8], i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"No interrupt specified, no interrupts\0A\00", align 1
@max8998_irq_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"&max8998->irqlock\00", align 1
@max8998_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @max8998_irq_domain_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not create irq domain\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"max8998-irq\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"max8998-ono\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to read interrupt register: %d\0A\00", align 1
@max8998_irqs = internal unnamed_addr constant [18 x %struct.max8998_irq_data] [%struct.max8998_irq_data { i32 1, i32 4 }, %struct.max8998_irq_data { i32 1, i32 8 }, %struct.max8998_irq_data { i32 1, i32 16 }, %struct.max8998_irq_data { i32 1, i32 32 }, %struct.max8998_irq_data { i32 1, i32 64 }, %struct.max8998_irq_data { i32 1, i32 128 }, %struct.max8998_irq_data { i32 2, i32 1 }, %struct.max8998_irq_data { i32 2, i32 2 }, %struct.max8998_irq_data { i32 2, i32 4 }, %struct.max8998_irq_data { i32 2, i32 8 }, %struct.max8998_irq_data { i32 3, i32 1 }, %struct.max8998_irq_data { i32 3, i32 4 }, %struct.max8998_irq_data { i32 3, i32 8 }, %struct.max8998_irq_data { i32 3, i32 16 }, %struct.max8998_irq_data { i32 3, i32 32 }, %struct.max8998_irq_data { i32 3, i32 128 }, %struct.max8998_irq_data { i32 4, i32 1 }, %struct.max8998_irq_data { i32 4, i32 2 }], align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"drivers/mfd/max8998-irq.c\00", align 1
@max8998_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_irq_mask, ptr null, ptr @max8998_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_irq_lock, ptr @max8998_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"max8998\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8998_irq_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @max8998_irq_thread(i32 noundef %3, ptr noundef %0)
  br label %11

11:                                               ; preds = %9, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_irq_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @max8998_bulk_read(ptr noundef %6, i8 noundef zeroext 0, i32 noundef 4, ptr noundef nonnull %4) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = xor i8 %11, -1
  %13 = load i8, ptr %4, align 4
  %14 = and i8 %13, %12
  store i8 %14, ptr %4, align 4
  %15 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = xor i8 %16, -1
  %18 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, %17
  store i8 %20, ptr %18, align 1
  %21 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = xor i8 %22, -1
  %24 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, %23
  store i8 %26, ptr %24, align 2
  %27 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = xor i8 %28, -1
  %30 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, %29
  store i8 %32, ptr %30, align 1
  %33 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 7
  br label %36

34:                                               ; preds = %2
  %35 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.6, i32 noundef %7) #6
  br label %62

36:                                               ; preds = %59, %9
  %37 = phi i32 [ 0, %9 ], [ %60, %59 ]
  %38 = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  %41 = getelementptr [4 x i8], ptr %4, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %37, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %36
  %49 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %50 = call ptr @__irq_resolve_mapping(ptr noundef %49, i32 noundef %37, ptr noundef nonnull %3) #5
  %51 = icmp eq ptr %50, null
  %52 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %58, !prof !9

55:                                               ; preds = %48
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 174, i32 noundef 9, ptr noundef null) #5
  %56 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  call void @disable_irq_nosync(i32 noundef %57) #5
  br label %62

58:                                               ; preds = %48
  call void @handle_nested_irq(i32 noundef %52) #5
  br label %59

59:                                               ; preds = %58, %36
  %60 = add nuw nsw i32 %37, 1
  %61 = icmp eq i32 %60, 18
  br i1 %61, label %62, label %36

62:                                               ; preds = %59, %55, %34
  %63 = phi i32 [ 0, %34 ], [ 0, %55 ], [ 1, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8998_irq_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str) #6
  br label %54

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8998_irq_init.__key) #5
  %9 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 2
  %10 = getelementptr %struct.max8998_dev, ptr %0, i32 0, i32 10, i32 0
  store i8 -1, ptr %10, align 1
  %11 = getelementptr %struct.max8998_dev, ptr %0, i32 0, i32 11, i32 0
  store i8 -1, ptr %11, align 1
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 @max8998_write_reg(ptr noundef %12, i8 noundef zeroext 4, i8 noundef zeroext -1) #5
  %14 = getelementptr %struct.max8998_dev, ptr %0, i32 0, i32 10, i32 1
  store i8 -1, ptr %14, align 1
  %15 = getelementptr %struct.max8998_dev, ptr %0, i32 0, i32 11, i32 1
  store i8 -1, ptr %15, align 1
  %16 = load ptr, ptr %9, align 4
  %17 = tail call i32 @max8998_write_reg(ptr noundef %16, i8 noundef zeroext 5, i8 noundef zeroext -1) #5
  %18 = getelementptr %struct.max8998_dev, ptr %0, i32 0, i32 10, i32 2
  store i8 -1, ptr %18, align 1
  %19 = getelementptr %struct.max8998_dev, ptr %0, i32 0, i32 11, i32 2
  store i8 -1, ptr %19, align 1
  %20 = load ptr, ptr %9, align 4
  %21 = tail call i32 @max8998_write_reg(ptr noundef %20, i8 noundef zeroext 6, i8 noundef zeroext -1) #5
  %22 = getelementptr %struct.max8998_dev, ptr %0, i32 0, i32 10, i32 3
  store i8 -1, ptr %22, align 1
  %23 = getelementptr %struct.max8998_dev, ptr %0, i32 0, i32 11, i32 3
  store i8 -1, ptr %23, align 1
  %24 = load ptr, ptr %9, align 4
  %25 = tail call i32 @max8998_write_reg(ptr noundef %24, i8 noundef zeroext 7, i8 noundef zeroext -1) #5
  %26 = load ptr, ptr %9, align 4
  %27 = tail call i32 @max8998_write_reg(ptr noundef %26, i8 noundef zeroext 10, i8 noundef zeroext -1) #5
  %28 = load ptr, ptr %9, align 4
  %29 = tail call i32 @max8998_write_reg(ptr noundef %28, i8 noundef zeroext 11, i8 noundef zeroext -1) #5
  %30 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = tail call ptr @irq_domain_create_simple(ptr noundef null, i32 noundef 18, i32 noundef %31, ptr noundef nonnull @max8998_irq_domain_ops, ptr noundef %0) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %7
  %35 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.2) #6
  br label %54

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 7
  store ptr %32, ptr %37, align 4
  %38 = load i32, ptr %2, align 4
  %39 = tail call i32 @request_threaded_irq(i32 noundef %38, ptr noundef null, ptr noundef nonnull @max8998_irq_thread, i32 noundef 8194, ptr noundef nonnull @.str.3, ptr noundef %0) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %0, align 4
  %43 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.4, i32 noundef %43, i32 noundef %39) #6
  br label %54

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @request_threaded_irq(i32 noundef %46, ptr noundef null, ptr noundef nonnull @max8998_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.5, ptr noundef %0) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %0, align 4
  %53 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.4, i32 noundef %53, i32 noundef %49) #6
  br label %54

54:                                               ; preds = %51, %48, %44, %41, %34, %5
  %55 = phi i32 [ %39, %41 ], [ -19, %34 ], [ 0, %5 ], [ 0, %44 ], [ 0, %51 ], [ 0, %48 ]
  ret i32 %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @max8998_irq_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %0) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.max8998_dev, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %0) #5
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_irq_domain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @max8998_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #5
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @max8998_irq_mask(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %5
  %7 = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %5, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = add i32 %9, -1
  %11 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 10, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = trunc i32 %8 to i8
  %14 = or i8 %12, %13
  store i8 %14, ptr %11, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @max8998_irq_unmask(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %5
  %7 = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %5, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = add i32 %9, -1
  %11 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 10, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = trunc i32 %8 to i8
  %14 = xor i8 %13, -1
  %15 = and i8 %12, %14
  store i8 %15, ptr %11, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8998_irq_lock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8998_irq_sync_unlock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 2
  %5 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 10, i32 0
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 11, i32 0
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %6, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  store i8 %6, ptr %7, align 1
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 @max8998_write_reg(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext %6) #5
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 10, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 11, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %15, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  store i8 %15, ptr %16, align 1
  %20 = load ptr, ptr %4, align 4
  %21 = tail call i32 @max8998_write_reg(ptr noundef %20, i8 noundef zeroext 5, i8 noundef zeroext %15) #5
  br label %22

22:                                               ; preds = %19, %13
  %23 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 10, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 11, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %24, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  store i8 %24, ptr %25, align 1
  %29 = load ptr, ptr %4, align 4
  %30 = tail call i32 @max8998_write_reg(ptr noundef %29, i8 noundef zeroext 6, i8 noundef zeroext %24) #5
  br label %31

31:                                               ; preds = %28, %22
  %32 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 10, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr %struct.max8998_dev, ptr %3, i32 0, i32 11, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %33, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  store i8 %33, ptr %34, align 1
  %38 = load ptr, ptr %4, align 4
  %39 = tail call i32 @max8998_write_reg(ptr noundef %38, i8 noundef zeroext 7, i8 noundef zeroext %33) #5
  br label %40

40:                                               ; preds = %37, %31
  %41 = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %41) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
