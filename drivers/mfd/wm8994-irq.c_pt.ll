; ModuleID = '/llk/IR/drivers/mfd/wm8994-irq.c_pt.bc'
source_filename = "../drivers/mfd/wm8994-irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8994_irq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8994_irq_init\22\09\09\09\09\09"
module asm "__kstrtabns_wm8994_irq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8994_irq_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8994_irq_exit\22\09\09\09\09\09"
module asm "__kstrtabns_wm8994_irq_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = private unnamed_addr constant [39 x i8] c"No interrupt specified, no interrupts\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"IRQ %d is not GPIO %d (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"WM8994 IRQ\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to get IRQ GPIO: %d\0A\00", align 1
@wm8994_edge_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @wm8994_edge_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to get IRQ: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"WM8994 edge\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to register IRQ chip: %d\0A\00", align 1
@__kstrtab_wm8994_irq_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8994_irq_init = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8994_irq_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8994_irq_init to i32), ptr @__kstrtab_wm8994_irq_init, ptr @__kstrtabns_wm8994_irq_init }, section "___ksymtab+wm8994_irq_init", align 4
@__kstrtab_wm8994_irq_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8994_irq_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8994_irq_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8994_irq_exit to i32), ptr @__kstrtab_wm8994_irq_exit, ptr @__kstrtabns_wm8994_irq_exit }, section "___ksymtab+wm8994_irq_exit", align 4
@wm8994_edge_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr @wm8994_edge_irq_enable, ptr @wm8994_edge_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"wm8994_edge\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"wm8994\00", align 1
@wm8994_irqs = internal constant [27 x %struct.regmap_irq] [%struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 256, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1024, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2048, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4096, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8192, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16384, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32768, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 512, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 1024, %struct.regmap_irq_type zeroinitializer }], align 4
@wm8994_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.8, i32 0, i32 0, ptr null, i32 0, i32 1840, i32 1848, i32 0, i32 1840, i32 0, i32 0, ptr null, i32 0, i8 -128, i8 0, i32 2, ptr @wm8994_irqs, i32 27, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_wm8994_irq_exit, ptr @__ksymtab_wm8994_irq_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm8994_irq_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str) #5
  %8 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 8
  store i32 0, ptr %8, align 4
  br label %73

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.wm8994_pdata, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 8196, i32 %11
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.wm8994_pdata, ptr %0, i32 0, i32 32
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @gpio_to_desc(i32 noundef %18) #6
  %20 = tail call i32 @gpiod_to_irq(ptr noundef %19) #6
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %17, align 4
  %27 = tail call ptr @gpio_to_desc(i32 noundef %26) #6
  %28 = tail call i32 @gpiod_to_irq(ptr noundef %27) #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %26, i32 noundef %28) #5
  %29 = load i32, ptr %17, align 4
  %30 = tail call ptr @gpio_to_desc(i32 noundef %29) #6
  %31 = tail call i32 @gpiod_to_irq(ptr noundef %30) #6
  store i32 %31, ptr %2, align 4
  br label %32

32:                                               ; preds = %23, %16
  %33 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %17, align 4
  %36 = tail call i32 @devm_gpio_request_one(ptr noundef %34, i32 noundef %35, i32 noundef 1, ptr noundef nonnull @.str.2) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.3, i32 noundef %36) #5
  br label %73

40:                                               ; preds = %32
  %41 = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @wm8994_edge_irq_ops, ptr noundef %0) #6
  %42 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 11
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @irq_create_mapping_affinity(ptr noundef %41, i32 noundef 0, ptr noundef null) #6
  %46 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 10
  %49 = tail call i32 @regmap_add_irq_chip(ptr noundef %44, i32 noundef %45, i32 noundef 8192, i32 noundef %47, ptr noundef nonnull @wm8994_irq_chip, ptr noundef %48) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  %52 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.4, i32 noundef %49) #5
  br label %73

53:                                               ; preds = %40
  %54 = load i32, ptr %2, align 4
  %55 = tail call i32 @request_threaded_irq(i32 noundef %54, ptr noundef null, ptr noundef nonnull @wm8994_edge_irq, i32 noundef %13, ptr noundef nonnull @.str.5, ptr noundef %0) #6
  br label %63

56:                                               ; preds = %9
  %57 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 10
  %62 = tail call i32 @regmap_add_irq_chip(ptr noundef %58, i32 noundef %3, i32 noundef %13, i32 noundef %60, ptr noundef nonnull @wm8994_irq_chip, ptr noundef %61) #6
  br label %63

63:                                               ; preds = %56, %53
  %64 = phi i32 [ %55, %53 ], [ %62, %56 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.6, i32 noundef %64) #5
  br label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 1856, i32 noundef 0) #6
  br label %73

73:                                               ; preds = %69, %66, %51, %38, %5
  %74 = phi i32 [ %36, %38 ], [ %49, %51 ], [ %64, %66 ], [ 0, %69 ], [ 0, %5 ]
  ret i32 %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_edge_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.wm8994_pdata, ptr %1, i32 0, i32 32
  %5 = load i32, ptr %4, align 4
  %6 = call ptr @gpio_to_desc(i32 noundef %5) #6
  %7 = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 11
  br label %11

11:                                               ; preds = %11, %9
  %12 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %13 = call ptr @__irq_resolve_mapping(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %3) #6
  %14 = icmp eq ptr %13, null
  %15 = load i32, ptr %3, align 4
  %16 = select i1 %14, i32 0, i32 %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @handle_nested_irq(i32 noundef %16) #6
  %17 = load i32, ptr %4, align 4
  %18 = call ptr @gpio_to_desc(i32 noundef %17) #6
  %19 = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %18) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %2
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm8994_irq_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %3, ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_edge_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @wm8994_edge_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #6
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @wm8994_edge_irq_enable(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @wm8994_edge_irq_disable(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }

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
