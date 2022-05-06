; ModuleID = '/llk/IR/drivers/clk/ti/clk.c_pt.bc'
source_filename = "../drivers/clk/ti/clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_iomap = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.clk_init_item = type { ptr, ptr, ptr, %struct.list_head }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@ti_clk_ll_ops = dso_local local_unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [50 x i8] c"\013%s: Attempt to register ll_ops multiple times.\0A\00", align 1
@__func__.ti_clk_setup_ll_ops = private unnamed_addr constant [20 x i8] c"ti_clk_setup_ll_ops\00", align 1
@ti_dt_clocks_register.clkctrl_nodes_missing = internal unnamed_addr global i1 false, align 1
@ti_dt_clocks_register.has_clkctrl_data = internal unnamed_addr global i1 false, align 1
@ti_dt_clocks_register.compat_mode = internal unnamed_addr global i8 0, align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\014%s: Bad number of tags on %s\0A\00", align 1
@__func__.ti_dt_clocks_register = private unnamed_addr constant [22 x i8] c"ti_dt_clocks_register\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\014%s: Bad tag in %s at %d: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ti,clkctrl\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"\014%s: missing clkctrl nodes, please update your dts.\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\014%s: failed to lookup clock node %s, ret=%ld\0A\00", align 1
@retry_list = internal global %struct.list_head { ptr @retry_list, ptr @retry_list }, align 4
@clocks_node_ptr = internal unnamed_addr global [7 x ptr] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"\013%s: clk-provider not found for %pOFn!\0A\00", align 1
@__func__.ti_clk_get_reg_addr = private unnamed_addr constant [20 x i8] c"ti_clk_get_reg_addr\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"\013%s: %pOFn must have reg[%d]!\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\013%s: %pOFn missing 'clocks' child node.\0A\00", align 1
@__func__.omap2_clk_provider_init = private unnamed_addr constant [24 x i8] c"omap2_clk_provider_init\00", align 1
@clk_memmaps = internal unnamed_addr global [7 x ptr] zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.omap2_clk_legacy_provider_init = private unnamed_addr constant [31 x i8] c"omap2_clk_legacy_provider_init\00", align 1
@simple_clk_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-factor-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@ti_clk_features = dso_local global %struct.ti_clk_features zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"drivers/clk/ti/clk.c\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"could not find init clock %s\0A\00", align 1
@clk_hw_omap_clocks = internal global %struct.list_head { ptr @clk_hw_omap_clocks, ptr @clk_hw_omap_clocks }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_clk_setup_ll_ops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ti_clk_setup_ll_ops) #13
  br label %9

6:                                                ; preds = %1
  store ptr %0, ptr @ti_clk_ll_ops, align 4
  store ptr @clk_memmap_readl, ptr %0, align 4
  %7 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %0, i32 0, i32 1
  store ptr @clk_memmap_writel, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %0, i32 0, i32 2
  store ptr @clk_memmap_rmw, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ -16, %4 ], [ 0, %6 ]
  ret i32 %10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_memmap_readl(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_omap_reg, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #14, !srcloc !9
  br label %29

12:                                               ; preds = %1
  %13 = load ptr, ptr %7, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.clk_omap_reg, ptr %0, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = call i32 @regmap_read(ptr noundef nonnull %13, i32 noundef %18, ptr noundef nonnull %2) #14
  %20 = load i32, ptr %2, align 4
  br label %29

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.clk_iomap, ptr %7, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_omap_reg, ptr %0, i32 0, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %23, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !9
  br label %29

29:                                               ; preds = %21, %15, %10
  %30 = phi i32 [ %20, %15 ], [ %28, %21 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_memmap_writel(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 2
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %0) #14, !srcloc !10
  br label %26

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = tail call i32 @regmap_write(ptr noundef nonnull %12, i32 noundef %17, i32 noundef %0) #14
  br label %26

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.clk_iomap, ptr %7, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %21, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %0) #14, !srcloc !10
  br label %26

26:                                               ; preds = %19, %14, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_memmap_rmw(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.clk_omap_reg, ptr %2, i32 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #14, !srcloc !9
  %13 = xor i32 %1, -1
  %14 = and i32 %12, %13
  %15 = or i32 %14, %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %15) #14, !srcloc !10
  br label %35

16:                                               ; preds = %3
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.clk_omap_reg, ptr %2, i32 0, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %17, i32 noundef %22, i32 noundef %1, i32 noundef %0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  br label %35

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.clk_iomap, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.clk_omap_reg, ptr %2, i32 0, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr i8, ptr %26, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #14, !srcloc !9
  %32 = xor i32 %1, -1
  %33 = and i32 %31, %32
  %34 = or i32 %33, %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %34) #14, !srcloc !10
  br label %35

35:                                               ; preds = %24, %19, %11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti_dt_clocks_register(ptr noundef %0) local_unnamed_addr #2 section ".init.text" {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca [64 x i8], align 1
  %4 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = load i32, ptr @ti_clk_features, align 4
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 4
  %8 = and i8 %7, 1
  store i8 %8, ptr @ti_dt_clocks_register.compat_mode, align 1
  %9 = getelementptr inbounds %struct.ti_dt_clk, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %93, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  br label %15

15:                                               ; preds = %88, %12
  %16 = phi ptr [ %10, %12 ], [ %91, %88 ]
  %17 = phi ptr [ %9, %12 ], [ %90, %88 ]
  %18 = phi ptr [ %0, %12 ], [ %89, %88 ]
  %19 = call ptr @strcpy(ptr noundef nonnull %3, ptr noundef nonnull %16)
  store i64 0, ptr %4, align 8
  br label %20

20:                                               ; preds = %33, %15
  %21 = phi ptr [ %35, %33 ], [ %3, %15 ]
  %22 = phi i32 [ %34, %33 ], [ 0, %15 ]
  %23 = load i8, ptr %21, align 1
  switch i8 %23, label %33 [
    i8 0, label %36
    i8 58, label %24
  ]

24:                                               ; preds = %20
  %25 = icmp sgt i32 %22, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load ptr, ptr %17, align 4
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ti_dt_clocks_register, ptr noundef %27) #13
  br label %93

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %21, i32 1
  %31 = add nsw i32 %22, 1
  %32 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %22
  store ptr %30, ptr %32, align 4
  store i8 0, ptr %21, align 1
  br label %33

33:                                               ; preds = %29, %20
  %34 = phi i32 [ %31, %29 ], [ %22, %20 ]
  %35 = getelementptr i8, ptr %21, i32 1
  br label %20

36:                                               ; preds = %20
  %37 = icmp eq i32 %22, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = load i1, ptr @ti_dt_clocks_register.clkctrl_nodes_missing, align 1
  br i1 %39, label %88, label %40

40:                                               ; preds = %38, %36
  %41 = call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull %3) #14
  %42 = load i8, ptr @ti_dt_clocks_register.compat_mode, align 1
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %37, i1 true, i1 %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = call ptr @of_get_child_by_name(ptr noundef %41, ptr noundef nonnull @.str.2) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call ptr @of_get_child_by_name(ptr noundef %41, ptr noundef nonnull @.str.3) #14
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi ptr [ %46, %45 ], [ %49, %48 ]
  call void @of_node_put(ptr noundef %41) #14
  br label %52

52:                                               ; preds = %50, %40
  %53 = phi ptr [ %51, %50 ], [ %41, %40 ]
  store ptr %53, ptr %2, align 4
  store i32 %22, ptr %13, align 4
  %54 = icmp sgt i32 %22, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %67, %52
  %56 = phi i32 [ %68, %67 ], [ 0, %52 ]
  %57 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq i32 %56, 0
  %60 = select i1 %59, i32 16, i32 10
  %61 = getelementptr i32, ptr %14, i32 %56
  %62 = call i32 @kstrtoint(ptr noundef %58, i32 noundef %60, ptr noundef %61) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load ptr, ptr %17, align 4
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ti_dt_clocks_register, ptr noundef %65, i32 noundef %56, ptr noundef %58) #13
  call void @of_node_put(ptr noundef %53) #14
  br label %93

67:                                               ; preds = %55
  %68 = add nuw nsw i32 %56, 1
  %69 = icmp eq i32 %68, %22
  br i1 %69, label %70, label %55

70:                                               ; preds = %67, %52
  %71 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %2) #14
  call void @of_node_put(ptr noundef %53) #14
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.clk_lookup, ptr %18, i32 0, i32 3
  store ptr %71, ptr %74, align 4
  call void @clkdev_add(ptr noundef %18) #14
  br label %88

75:                                               ; preds = %70
  br i1 %37, label %84, label %76

76:                                               ; preds = %75
  %77 = load i1, ptr @ti_dt_clocks_register.has_clkctrl_data, align 1
  br i1 %77, label %84, label %78

78:                                               ; preds = %76
  %79 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i1 true, ptr @ti_dt_clocks_register.has_clkctrl_data, align 1
  call void @of_node_put(ptr noundef nonnull %79) #14
  br label %84

82:                                               ; preds = %78
  store i1 true, ptr @ti_dt_clocks_register.clkctrl_nodes_missing, align 1
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ti_dt_clocks_register) #13
  br label %88

84:                                               ; preds = %81, %76, %75
  %85 = load ptr, ptr %17, align 4
  %86 = ptrtoint ptr %71 to i32
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ti_dt_clocks_register, ptr noundef %85, i32 noundef %86) #13
  br label %88

88:                                               ; preds = %84, %82, %73, %38
  %89 = getelementptr %struct.ti_dt_clk, ptr %18, i32 1
  %90 = getelementptr %struct.ti_dt_clk, ptr %18, i32 1, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %15

93:                                               ; preds = %88, %64, %26, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ti_clk_get_features() local_unnamed_addr #5 {
  ret ptr @ti_clk_features
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_add(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ti_clk_retry_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 section ".init.text" {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.clk_init_item, ptr %5, i32 0, i32 2
  store ptr %2, ptr %8, align 8
  %9 = getelementptr inbounds %struct.clk_init_item, ptr %5, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.clk_init_item, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr @retry_list, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store ptr %11, ptr %10, align 4
  %13 = getelementptr inbounds %struct.clk_init_item, ptr %5, i32 0, i32 3, i32 1
  store ptr @retry_list, ptr %13, align 8
  store volatile ptr %10, ptr @retry_list, align 4
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ 0, %7 ], [ -12, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr @clocks_node_ptr, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 1), align 4
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %29, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 2), align 4
  %14 = icmp eq ptr %13, %6
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 3), align 4
  %17 = icmp eq ptr %16, %6
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 4), align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 5), align 4
  %23 = icmp eq ptr %22, %6
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 6), align 4
  %26 = icmp eq ptr %25, %6
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ti_clk_get_reg_addr, ptr noundef %0) #13
  br label %40

29:                                               ; preds = %24, %21, %18, %15, %12, %9, %3
  %30 = phi i8 [ 0, %3 ], [ 1, %9 ], [ 2, %12 ], [ 3, %15 ], [ 4, %18 ], [ 5, %21 ], [ 6, %24 ]
  %31 = getelementptr inbounds %struct.clk_omap_reg, ptr %2, i32 0, i32 2
  store i8 %30, ptr %31, align 2
  %32 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %1, ptr noundef nonnull %4) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.ti_clk_get_reg_addr, ptr noundef %0, i32 noundef %1) #13
  br label %40

36:                                               ; preds = %29
  %37 = load i32, ptr %4, align 4
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.clk_omap_reg, ptr %2, i32 0, i32 1
  store i16 %38, ptr %39, align 4
  store ptr null, ptr %2, align 4
  br label %40

40:                                               ; preds = %36, %34, %27
  %41 = phi i32 [ -2, %27 ], [ -22, %34 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ti_clk_latch(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp slt i8 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = zext i8 %1 to i32
  %6 = shl nuw i32 1, %5
  %7 = load ptr, ptr @ti_clk_ll_ops, align 4
  %8 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void %9(i32 noundef %6, i32 noundef %6, ptr noundef %0) #14
  %10 = load ptr, ptr @ti_clk_ll_ops, align 4
  %11 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void %12(i32 noundef 0, i32 noundef %6, ptr noundef %0) #14
  %13 = load ptr, ptr @ti_clk_ll_ops, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0) #14
  br label %16

16:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_provider_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 section ".init.text" {
  %5 = tail call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str.11) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.omap2_clk_provider_init, ptr noundef %0) #13
  br label %17

9:                                                ; preds = %4
  %10 = getelementptr [7 x ptr], ptr @clocks_node_ptr, i32 0, i32 %1
  store ptr %5, ptr %10, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 8) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  store ptr %2, ptr %12, align 8
  %15 = getelementptr inbounds %struct.clk_iomap, ptr %12, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  %16 = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %1
  store ptr %12, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %9, %7
  %18 = phi i32 [ 0, %14 ], [ -22, %7 ], [ -12, %9 ]
  ret i32 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap2_clk_legacy_provider_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 section ".init.text" {
  %3 = tail call ptr @memblock_alloc_try_nid(i32 noundef 8, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.omap2_clk_legacy_provider_init, i32 noundef 8) #16
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clk_iomap, ptr %3, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  %8 = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %0
  store ptr %3, ptr %8, align 4
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ti_dt_clk_init_retry_clks() local_unnamed_addr #0 {
  %1 = load volatile ptr, ptr @retry_list, align 4
  %2 = icmp eq ptr %1, @retry_list
  br i1 %2, label %87, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -12
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr i8, ptr %4, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %4, i32 -8
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %5, align 4
  tail call void %8(ptr noundef %10, ptr noundef %11) #14
  %12 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @kfree(ptr noundef %5) #14
  %16 = icmp eq ptr %6, @retry_list
  br i1 %16, label %17, label %3

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr @retry_list, align 4
  %19 = icmp eq ptr %18, @retry_list
  br i1 %19, label %87, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %23, %20 ], [ %18, %17 ]
  %22 = getelementptr i8, ptr %21, i32 -12
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr i8, ptr %21, i32 -4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %21, i32 -8
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %22, align 4
  tail call void %25(ptr noundef %27, ptr noundef %28) #14
  %29 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %21, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @kfree(ptr noundef %22) #14
  %33 = icmp eq ptr %23, @retry_list
  br i1 %33, label %34, label %20

34:                                               ; preds = %20
  %35 = load volatile ptr, ptr @retry_list, align 4
  %36 = icmp eq ptr %35, @retry_list
  br i1 %36, label %87, label %37

37:                                               ; preds = %37, %34
  %38 = phi ptr [ %40, %37 ], [ %35, %34 ]
  %39 = getelementptr i8, ptr %38, i32 -12
  %40 = load ptr, ptr %38, align 4
  %41 = getelementptr i8, ptr %38, i32 -4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %38, i32 -8
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %39, align 4
  tail call void %42(ptr noundef %44, ptr noundef %45) #14
  %46 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %38, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  tail call void @kfree(ptr noundef %39) #14
  %50 = icmp eq ptr %40, @retry_list
  br i1 %50, label %51, label %37

51:                                               ; preds = %37
  %52 = load volatile ptr, ptr @retry_list, align 4
  %53 = icmp eq ptr %52, @retry_list
  br i1 %53, label %87, label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %57, %54 ], [ %52, %51 ]
  %56 = getelementptr i8, ptr %55, i32 -12
  %57 = load ptr, ptr %55, align 4
  %58 = getelementptr i8, ptr %55, i32 -4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %55, i32 -8
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %56, align 4
  tail call void %59(ptr noundef %61, ptr noundef %62) #14
  %63 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %55, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %64, ptr %66, align 4
  store volatile ptr %65, ptr %64, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %63, align 4
  tail call void @kfree(ptr noundef %56) #14
  %67 = icmp eq ptr %57, @retry_list
  br i1 %67, label %68, label %54

68:                                               ; preds = %54
  %69 = load volatile ptr, ptr @retry_list, align 4
  %70 = icmp eq ptr %69, @retry_list
  br i1 %70, label %87, label %71

71:                                               ; preds = %71, %68
  %72 = phi ptr [ %74, %71 ], [ %69, %68 ]
  %73 = getelementptr i8, ptr %72, i32 -12
  %74 = load ptr, ptr %72, align 4
  %75 = getelementptr i8, ptr %72, i32 -4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %72, i32 -8
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %73, align 4
  tail call void %76(ptr noundef %78, ptr noundef %79) #14
  %80 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %72, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %81, ptr %83, align 4
  store volatile ptr %82, ptr %81, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %72, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %80, align 4
  tail call void @kfree(ptr noundef %73) #14
  %84 = icmp eq ptr %74, @retry_list
  br i1 %84, label %85, label %71

85:                                               ; preds = %71
  %86 = load volatile ptr, ptr @retry_list, align 4
  br label %87

87:                                               ; preds = %85, %68, %51, %34, %17, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti_clk_add_aliases() local_unnamed_addr #2 section ".init.text" {
  %1 = alloca %struct.of_phandle_args, align 4
  %2 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @simple_clk_match_table, ptr noundef null) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds i8, ptr %1, i32 4
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ %11, %6 ], [ %2, %4 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 68, i1 false), !annotation !8
  store ptr %7, ptr %1, align 4
  %8 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %1) #14
  %9 = load ptr, ptr %7, align 4
  %10 = call i32 @ti_clk_add_alias(ptr noundef null, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #14
  %11 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %7, ptr noundef nonnull @simple_clk_match_table, ptr noundef null) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_clk_add_alias(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = ptrtoint ptr %1 to i32
  br label %27

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 24) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %0, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  %23 = getelementptr inbounds %struct.clk_lookup, ptr %11, i32 0, i32 1
  store ptr %22, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %13
  %25 = getelementptr inbounds %struct.clk_lookup, ptr %11, i32 0, i32 2
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_lookup, ptr %11, i32 0, i32 3
  store ptr %1, ptr %26, align 8
  tail call void @clkdev_add(ptr noundef nonnull %11) #14
  br label %27

27:                                               ; preds = %24, %9, %7, %3
  %28 = phi i32 [ %8, %7 ], [ 0, %24 ], [ 0, %3 ], [ -12, %9 ]
  ret i32 %28
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @ti_clk_setup_features(ptr nocapture noundef readonly %0) local_unnamed_addr #9 section ".init.text" {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) @ti_clk_features, ptr noundef align 4 dereferenceable(24) %0, i32 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_clk_enable_init_clocks(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %20, %2
  %6 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %7 = getelementptr ptr, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @clk_get(ptr noundef null, ptr noundef %8) #14
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %5
  %12 = load ptr, ptr %7, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 463, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %12) #14
  br label %20

13:                                               ; preds = %5
  %14 = tail call i32 @clk_prepare(ptr noundef %9) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call i32 @clk_enable(ptr noundef %9) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %9) #14
  br label %20

20:                                               ; preds = %19, %16, %13, %11
  %21 = add nuw nsw i32 %6, 1
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %23, label %5

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ti_clk_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @clk_register(ptr noundef %0, ptr noundef %1) #14
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %4, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 24) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %0, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %22 = getelementptr inbounds %struct.clk_lookup, ptr %10, i32 0, i32 1
  store ptr %21, ptr %22, align 8
  br label %23

23:                                               ; preds = %20, %12
  %24 = getelementptr inbounds %struct.clk_lookup, ptr %10, i32 0, i32 2
  store ptr %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_lookup, ptr %10, i32 0, i32 3
  store ptr %4, ptr %25, align 8
  tail call void @clkdev_add(ptr noundef nonnull %10) #14
  br label %27

26:                                               ; preds = %8
  tail call void @clk_unregister(ptr noundef nonnull %4) #14
  br label %27

27:                                               ; preds = %26, %23, %6, %3
  %28 = phi ptr [ inttoptr (i32 -12 to ptr), %26 ], [ %4, %3 ], [ %4, %23 ], [ null, %6 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ti_clk_register_omap_hw(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @clk_register(ptr noundef %0, ptr noundef %1) #14
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %4, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 24) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %0, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %22 = getelementptr inbounds %struct.clk_lookup, ptr %10, i32 0, i32 1
  store ptr %21, ptr %22, align 8
  br label %24

23:                                               ; preds = %8
  tail call void @clk_unregister(ptr noundef nonnull %4) #14
  br label %32

24:                                               ; preds = %20, %12
  %25 = getelementptr inbounds %struct.clk_lookup, ptr %10, i32 0, i32 2
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_lookup, ptr %10, i32 0, i32 3
  store ptr %4, ptr %26, align 8
  tail call void @clkdev_add(ptr noundef nonnull %10) #14
  br label %27

27:                                               ; preds = %24, %6
  %28 = getelementptr inbounds %struct.clk_hw_omap, ptr %1, i32 0, i32 1
  %29 = load ptr, ptr @clk_hw_omap_clocks, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store ptr %29, ptr %28, align 4
  %31 = getelementptr inbounds %struct.clk_hw_omap, ptr %1, i32 0, i32 1, i32 1
  store ptr @clk_hw_omap_clocks, ptr %31, align 4
  store volatile ptr %28, ptr @clk_hw_omap_clocks, align 4
  br label %32

32:                                               ; preds = %27, %23, %3
  %33 = phi ptr [ inttoptr (i32 -12 to ptr), %23 ], [ %4, %27 ], [ %4, %3 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_for_each(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @clk_hw_omap_clocks, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @clk_hw_omap_clocks
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -12
  %8 = tail call i32 %0(ptr noundef %7) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %2, label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef readnone %0) local_unnamed_addr #11 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @clk_hw_omap_clocks, %1 ], [ %4, %2 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @clk_hw_omap_clocks
  %6 = getelementptr i8, ptr %4, i32 -12
  %7 = icmp eq ptr %6, %0
  %8 = or i1 %5, %7
  br i1 %8, label %9, label %2

9:                                                ; preds = %2
  %10 = xor i1 %5, true
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold noreturn nounwind }

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
!9 = !{i64 3047018}
!10 = !{i64 3046600}
!11 = !{!"branch_weights", i32 1, i32 2000}
