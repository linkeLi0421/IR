; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-sun9i-core.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun9i-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.factors_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_factors_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.factors_request = type { i32, i32, i8, i8, i8, i8, i8 }

@__of_table_sun9i_a80_pll4 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-pll4-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_pll4_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_gt = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-gt-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_gt_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-ahb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_ahb_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-apb0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_apb0_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-apb1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_apb1_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [51 x i8] c"\013Could not get registers for a80-pll4-clk: %pOFn\0A\00", align 1
@sun9i_a80_pll4_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun9i_a80_pll4_config, ptr @sun9i_a80_get_pll4_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_pll4_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@sun9i_a80_pll4_config = internal constant %struct.clk_factors_config { i8 8, i8 8, i8 0, i8 0, i8 18, i8 1, i8 16, i8 1, i8 0 }, align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\013Could not get registers for a80-gt-clk: %pOFn\0A\00", align 1
@sun9i_a80_gt_data = internal constant %struct.factors_data { i32 0, i32 24, i32 3, ptr @sun9i_a80_gt_config, ptr @sun9i_a80_get_gt_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_gt_lock = internal global %struct.spinlock zeroinitializer, align 4
@sun9i_a80_gt_config = internal constant %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0 }, align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\013Could not get registers for a80-ahb-clk: %pOFn\0A\00", align 1
@sun9i_a80_ahb_data = internal constant %struct.factors_data { i32 0, i32 24, i32 3, ptr @sun9i_a80_ahb_config, ptr @sun9i_a80_get_ahb_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_ahb_lock = internal global %struct.spinlock zeroinitializer, align 4
@sun9i_a80_ahb_config = internal constant %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0 }, align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\013Could not get registers for a80-apb0-clk: %pOFn\0A\00", align 1
@sun9i_a80_apb0_data = internal constant %struct.factors_data { i32 0, i32 24, i32 1, ptr @sun9i_a80_ahb_config, ptr @sun9i_a80_get_ahb_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_apb0_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"\013Could not get registers for a80-apb1-clk: %pOFn\0A\00", align 1
@sun9i_a80_apb1_data = internal constant %struct.factors_data { i32 0, i32 24, i32 1, ptr @sun9i_a80_apb1_config, ptr @sun9i_a80_get_apb1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_apb1_lock = internal global %struct.spinlock zeroinitializer, align 4
@sun9i_a80_apb1_config = internal constant %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i8 16, i8 2, i8 0 }, align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__of_table_sun9i_a80_ahb, ptr @__of_table_sun9i_a80_apb0, ptr @__of_table_sun9i_a80_apb1, ptr @__of_table_sun9i_a80_gt, ptr @__of_table_sun9i_a80_pll4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_pll4_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.1, %1 ]
  %8 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %7) #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #6
  br label %14

12:                                               ; preds = %6
  %13 = tail call ptr @sunxi_factors_register(ptr noundef %0, ptr noundef nonnull @sun9i_a80_pll4_data, ptr noundef nonnull @sun9i_a80_pll4_lock, ptr noundef %8) #5
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_gt_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.1, %1 ]
  %8 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %7) #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #6
  br label %14

12:                                               ; preds = %6
  %13 = tail call ptr @sunxi_factors_register_critical(ptr noundef %0, ptr noundef nonnull @sun9i_a80_gt_data, ptr noundef nonnull @sun9i_a80_gt_lock, ptr noundef %8) #5
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_ahb_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.1, %1 ]
  %8 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %7) #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #6
  br label %14

12:                                               ; preds = %6
  %13 = tail call ptr @sunxi_factors_register(ptr noundef %0, ptr noundef nonnull @sun9i_a80_ahb_data, ptr noundef nonnull @sun9i_a80_ahb_lock, ptr noundef %8) #5
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_apb0_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.1, %1 ]
  %8 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %7) #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %0) #6
  br label %14

12:                                               ; preds = %6
  %13 = tail call ptr @sunxi_factors_register(ptr noundef %0, ptr noundef nonnull @sun9i_a80_apb0_data, ptr noundef nonnull @sun9i_a80_apb0_lock, ptr noundef %8) #5
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_apb1_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.1, %1 ]
  %8 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %7) #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #6
  br label %14

12:                                               ; preds = %6
  %13 = tail call ptr @sunxi_factors_register(ptr noundef %0, ptr noundef nonnull @sun9i_a80_apb1_data, ptr noundef nonnull @sun9i_a80_apb1_lock, ptr noundef %8) #5
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun9i_a80_get_pll4_factors(ptr nocapture noundef %0) #3 {
  %2 = load i32, ptr %0, align 4
  %3 = add i32 %2, 5999999
  %4 = udiv i32 %3, 6000000
  %5 = icmp ugt i32 %3, 1535999999
  %6 = add nuw nsw i32 %4, 1
  %7 = lshr i32 %6, 1
  %8 = select i1 %5, i32 %7, i32 %4
  %9 = xor i1 %5, true
  %10 = icmp ugt i32 %8, 255
  %11 = add nuw nsw i32 %8, 1
  %12 = lshr i32 %11, 1
  %13 = select i1 %10, i32 %12, i32 %8
  %14 = xor i1 %10, true
  %15 = zext i1 %14 to i32
  %16 = tail call i32 @llvm.smax.i32(i32 %13, i32 12)
  %17 = mul i32 %16, 24000000
  %18 = ashr i32 %17, %15
  %19 = select i1 %5, i32 1, i32 2
  %20 = sdiv i32 %18, %19
  store i32 %20, ptr %0, align 4
  %21 = trunc i32 %16 to i8
  %22 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 3
  store i8 %21, ptr %22, align 1
  %23 = zext i1 %9 to i8
  %24 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 %23, ptr %24, align 1
  %25 = zext i1 %14 to i8
  %26 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %25, ptr %26, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register_critical(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun9i_a80_get_gt_factors(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = call i32 @llvm.umin.i32(i32 %3, i32 %4)
  %6 = add i32 %3, -1
  %7 = add i32 %6, %5
  %8 = udiv i32 %7, %5
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 4)
  %10 = udiv i32 %3, %9
  store i32 %10, ptr %0, align 4
  %11 = trunc i32 %9 to i8
  %12 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 %11, ptr %12, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun9i_a80_get_ahb_factors(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = call i32 @llvm.umin.i32(i32 %3, i32 %4)
  %6 = add i32 %3, -1
  %7 = add i32 %6, %5
  %8 = udiv i32 %7, %5
  %9 = icmp ugt i32 %8, 1
  %10 = add i32 %8, -1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #5, !range !8
  %12 = sub nuw nsw i32 32, %11
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 3)
  %14 = select i1 %9, i32 %13, i32 0
  %15 = lshr i32 %3, %14
  store i32 %15, ptr %0, align 4
  %16 = trunc i32 %14 to i8
  %17 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %16, ptr %17, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun9i_a80_get_apb1_factors(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = call i32 @llvm.umin.i32(i32 %3, i32 %4)
  %6 = add i32 %3, -1
  %7 = add i32 %6, %5
  %8 = udiv i32 %7, %5
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 256)
  %10 = icmp ugt i32 %9, 1
  %11 = add nsw i32 %9, -1
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #5, !range !8
  %13 = sub nuw nsw i32 32, %12
  %14 = select i1 %10, i32 %13, i32 0
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %15, ptr %16, align 4
  %17 = and i32 %14, 255
  %18 = lshr i32 %3, %17
  %19 = trunc i32 %18 to i8
  %20 = add i8 %19, -1
  %21 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 %20, ptr %21, align 1
  %22 = zext i8 %20 to i32
  %23 = add nuw nsw i32 %22, 1
  %24 = udiv i32 %18, %23
  store i32 %24, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i32 0, i32 33}
