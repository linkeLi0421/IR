; ModuleID = '/llk/IR/arch/arm/mach-imx/pm-imx5.c_pt.bc'
source_filename = "../arch/arm/mach-imx/pm-imx5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.imx5_pm_data = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.imx5_suspend_io_state = type { i32, i32, i32, i32 }
%struct.imx5_cpu_suspend_info = type { ptr, ptr, i32, [20 x %struct.imx5_suspend_io_state], [4 x i8] }
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
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }

@imx51_pm_data = internal constant %struct.imx5_pm_data { i32 1945976832, i32 -2080768000, i32 1945993216, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0 }, section ".init.rodata", align 4
@imx53_pm_data = internal constant %struct.imx5_pm_data { i32 1409105920, i32 1677328384, i32 1409122304, i32 1677557760, i32 1408925696, ptr @imx53_suspend, ptr @imx53_suspend_sz, ptr @imx53_suspend_io_config, i32 20 }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [9 x i8] c"gpc_dvfs\00", align 1
@arm_pm_idle = external dso_local local_unnamed_addr global ptr, align 4
@ccm_base = internal unnamed_addr global ptr null, align 4
@cortex_base = internal unnamed_addr global ptr null, align 4
@gpc_base = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"arch/arm/mach-imx/pm-imx5.c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\014%s: cpuidle init failed %d\0A\00", align 1
@__func__.imx5_pm_common_init = private unnamed_addr constant [20 x i8] c"imx5_pm_common_init\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\014%s: No DDR LPM support with suspend %d!\0A\00", align 1
@mx5_suspend_ops = internal constant %struct.platform_suspend_ops { ptr @mx5_pm_valid, ptr null, ptr null, ptr null, ptr @mx5_suspend_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@suspend_ocram_base = internal unnamed_addr global ptr null, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@imx5_suspend_in_ocram_fn = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"mmio-sram\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\014%s: failed to find ocram node!\0A\00", align 1
@__func__.imx_suspend_alloc_ocram = private unnamed_addr constant [24 x i8] c"imx_suspend_alloc_ocram\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\014%s: failed to find ocram device!\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\014%s: ocram pool unavailable!\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\014%s: unable to alloc ocram!\0A\00", align 1
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@imx53_suspend_sz = external dso_local constant i32, align 4
@imx53_suspend_io_config = internal constant [20 x %struct.imx5_suspend_io_state] [%struct.imx5_suspend_io_state { i32 1412, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1428, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1376, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1364, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1396, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1416, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1400, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1392, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1408, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1380, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1404, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1424, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1384, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1368, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1776, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1816, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1820, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1832, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1836, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1824, i32 3670016, i32 524288, i32 0 }], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx51_pm_init() local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @imx5_pm_common_init(ptr noundef nonnull @imx51_pm_data) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @imx5_pm_common_init(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str) #7
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %67, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @clk_prepare(ptr noundef %2) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %67

7:                                                ; preds = %4
  %8 = tail call i32 @clk_enable(ptr noundef %2) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %2) #7
  br label %67

11:                                               ; preds = %7
  store ptr @imx5_pm_idle, ptr @arm_pm_idle, align 4
  %12 = load i32, ptr %0, align 4
  %13 = tail call ptr @ioremap(i32 noundef %12, i32 noundef 16384) #7
  store ptr %13, ptr @ccm_base, align 4
  %14 = getelementptr inbounds %struct.imx5_pm_data, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @ioremap(i32 noundef %15, i32 noundef 16384) #7
  store ptr %16, ptr @cortex_base, align 4
  %17 = getelementptr inbounds %struct.imx5_pm_data, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @ioremap(i32 noundef %18, i32 noundef 16384) #7
  store ptr %19, ptr @gpc_base, align 4
  %20 = load ptr, ptr @ccm_base, align 4
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr @cortex_base, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %21, i1 true, i1 %23
  %25 = icmp eq ptr %19, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %29, !prof !8

27:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 391, i32 noundef 9, ptr noundef null) #7
  %28 = load ptr, ptr @cortex_base, align 4
  br label %29

29:                                               ; preds = %27, %11
  %30 = phi ptr [ %28, %27 ], [ %22, %11 ]
  %31 = getelementptr i8, ptr %30, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !9
  %33 = load ptr, ptr @ccm_base, align 4
  %34 = getelementptr i8, ptr %33, i32 84
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !9
  %36 = load ptr, ptr @gpc_base, align 4
  %37 = getelementptr i8, ptr %36, i32 672
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !9
  %39 = load ptr, ptr @gpc_base, align 4
  %40 = getelementptr i8, ptr %39, i32 704
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !9
  %42 = load ptr, ptr @gpc_base, align 4
  %43 = getelementptr i8, ptr %42, i32 720
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !9
  %45 = or i32 %32, 3
  %46 = and i32 %35, -324
  %47 = or i32 %46, 1
  %48 = or i32 %38, 1
  %49 = load ptr, ptr @cortex_base, align 4
  %50 = getelementptr i8, ptr %49, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %45) #7, !srcloc !10
  %51 = load ptr, ptr @ccm_base, align 4
  %52 = getelementptr i8, ptr %51, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %47) #7, !srcloc !10
  %53 = load ptr, ptr @gpc_base, align 4
  %54 = getelementptr i8, ptr %53, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %48) #7, !srcloc !10
  %55 = load ptr, ptr @gpc_base, align 4
  %56 = getelementptr i8, ptr %55, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %48) #7, !srcloc !10
  %57 = tail call i32 @imx5_cpuidle_init() #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %29
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.imx5_pm_common_init, i32 noundef %57) #8
  br label %61

61:                                               ; preds = %59, %29
  %62 = tail call fastcc i32 @imx5_suspend_init(ptr noundef %0) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.imx5_pm_common_init, i32 noundef %62) #8
  br label %66

66:                                               ; preds = %64, %61
  tail call void @suspend_set_ops(ptr noundef nonnull @mx5_suspend_ops) #7
  br label %67

67:                                               ; preds = %66, %10, %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx53_pm_init() local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @imx5_pm_common_init(ptr noundef nonnull @imx53_pm_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx5_pm_idle() #2 {
  %1 = tail call i32 @tzic_enable_wake() #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6, !prof !11

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %5 = tail call i32 %4() #7
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx5_cpuidle_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @imx5_suspend_init(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.imx5_pm_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %64, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.imx5_pm_data, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %64, label %12

12:                                               ; preds = %9
  %13 = add i32 %10, 336
  %14 = tail call fastcc i32 @imx_suspend_alloc_ocram(i32 noundef %13) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = load ptr, ptr @suspend_ocram_base, align 4
  %18 = getelementptr inbounds %struct.imx5_pm_data, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.imx5_cpu_suspend_info, ptr %17, i32 0, i32 2
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.imx5_cpu_suspend_info, ptr %17, i32 0, i32 3
  %22 = getelementptr inbounds %struct.imx5_pm_data, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %18, align 4
  %25 = shl i32 %24, 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %21, ptr align 4 %23, i32 %25, i1 false)
  %26 = getelementptr inbounds %struct.imx5_pm_data, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call ptr @ioremap(i32 noundef %27, i32 noundef 16384) #7
  store ptr %28, ptr %17, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.imx5_pm_data, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @ioremap(i32 noundef %32, i32 noundef 16384) #7
  %34 = getelementptr inbounds %struct.imx5_cpu_suspend_info, ptr %17, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load ptr, ptr %17, align 8
  tail call void @iounmap(ptr noundef %37) #7
  br label %64

38:                                               ; preds = %30
  %39 = tail call i32 asm "", "=r,0"(ptr nonnull %3) #9, !srcloc !12
  %40 = load ptr, ptr @suspend_ocram_base, align 4
  %41 = getelementptr i8, ptr %40, i32 336
  %42 = ptrtoint ptr %41 to i32
  %43 = and i32 %42, 7
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %39, 6
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46, !prof !8
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/pm-imx5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 363, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

49:                                               ; preds = %38
  %50 = and i32 %39, -2
  %51 = inttoptr i32 %50 to ptr
  %52 = load ptr, ptr %6, align 4
  %53 = load i32, ptr %52, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 2 %51, i32 %53, i1 false)
  %54 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %55 = load ptr, ptr %6, align 4
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %42
  tail call void %54(i32 noundef %42, i32 noundef %57) #7
  %58 = load ptr, ptr @suspend_ocram_base, align 4
  %59 = getelementptr i8, ptr %58, i32 336
  %60 = ptrtoint ptr %59 to i32
  %61 = and i32 %39, 1
  %62 = or i32 %61, %60
  %63 = tail call ptr asm "", "=r,0"(i32 %62) #9, !srcloc !14
  store ptr %63, ptr @imx5_suspend_in_ocram_fn, align 4
  br label %64

64:                                               ; preds = %49, %36, %16, %12, %9, %5, %1
  %65 = phi i32 [ 0, %49 ], [ 0, %1 ], [ -22, %9 ], [ -22, %5 ], [ %14, %12 ], [ -12, %16 ], [ -12, %36 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tzic_enable_wake() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @imx_suspend_alloc_ocram(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.imx_suspend_alloc_ocram) #8
  br label %33

6:                                                ; preds = %1
  %7 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %2) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.imx_suspend_alloc_ocram) #8
  br label %31

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %13 = tail call ptr @gen_pool_get(ptr noundef %12, ptr noundef null) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.imx_suspend_alloc_ocram) #8
  br label %29

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.gen_pool, ptr %13, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.gen_pool, ptr %13, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %13, i32 noundef %0, ptr noundef %19, ptr noundef %21, ptr noundef null) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.imx_suspend_alloc_ocram) #8
  br label %29

26:                                               ; preds = %17
  %27 = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %13, i32 noundef %22) #7
  %28 = tail call ptr @__arm_ioremap_exec(i32 noundef %27, i32 noundef %0, i1 noundef zeroext false) #7
  store ptr %28, ptr @suspend_ocram_base, align 4
  br label %29

29:                                               ; preds = %26, %24, %15
  %30 = phi i32 [ 0, %26 ], [ -12, %24 ], [ -19, %15 ]
  tail call void @put_device(ptr noundef %12) #7
  br label %31

31:                                               ; preds = %29, %9
  %32 = phi i32 [ %30, %29 ], [ -19, %9 ]
  tail call void @of_node_put(ptr noundef nonnull %2) #7
  br label %33

33:                                               ; preds = %31, %4
  %34 = phi i32 [ %32, %31 ], [ -19, %4 ]
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mx5_pm_valid(i32 noundef %0) #5 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 4
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx5_suspend_enter(i32 noundef %0) #2 {
  switch i32 %0, label %81 [
    i32 3, label %2
    i32 2, label %50
  ]

2:                                                ; preds = %1
  %3 = load ptr, ptr @cortex_base, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !9
  %6 = load ptr, ptr @ccm_base, align 4
  %7 = getelementptr i8, ptr %6, i32 84
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  %9 = and i32 %8, -1860
  %10 = load ptr, ptr @gpc_base, align 4
  %11 = getelementptr i8, ptr %10, i32 672
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !9
  %13 = load ptr, ptr @gpc_base, align 4
  %14 = getelementptr i8, ptr %13, i32 704
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %16 = load ptr, ptr @gpc_base, align 4
  %17 = getelementptr i8, ptr %16, i32 720
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !9
  %19 = or i32 %5, 3
  %20 = or i32 %9, 1858
  %21 = or i32 %12, 1
  %22 = load ptr, ptr @cortex_base, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #7, !srcloc !10
  %24 = load ptr, ptr @ccm_base, align 4
  %25 = getelementptr i8, ptr %24, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #7, !srcloc !10
  %26 = load ptr, ptr @gpc_base, align 4
  %27 = getelementptr i8, ptr %26, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %21) #7, !srcloc !10
  %28 = load ptr, ptr @gpc_base, align 4
  %29 = getelementptr i8, ptr %28, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %21) #7, !srcloc !10
  %30 = or i32 %15, 1
  %31 = or i32 %18, 1
  %32 = load ptr, ptr @gpc_base, align 4
  %33 = getelementptr i8, ptr %32, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %30) #7, !srcloc !10
  %34 = load ptr, ptr @gpc_base, align 4
  %35 = getelementptr i8, ptr %34, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %31) #7, !srcloc !10
  %36 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #7, !srcloc !15
  %37 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %37, i32 4608) #7, !srcloc !16
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %36, i32 2097152) #7, !srcloc !17
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !19
  %38 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %38() #7
  %39 = load ptr, ptr @gpc_base, align 4
  %40 = getelementptr i8, ptr %39, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #7, !srcloc !10
  %41 = load ptr, ptr @gpc_base, align 4
  %42 = getelementptr i8, ptr %41, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #7, !srcloc !10
  %43 = load ptr, ptr @imx5_suspend_in_ocram_fn, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %2
  %46 = load ptr, ptr @suspend_ocram_base, align 4
  tail call void %43(ptr noundef %46) #7
  br label %53

47:                                               ; preds = %2
  %48 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %49 = tail call i32 %48() #7
  br label %53

50:                                               ; preds = %1
  %51 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %52 = tail call i32 %51() #7
  br label %53

53:                                               ; preds = %50, %47, %45
  %54 = load ptr, ptr @cortex_base, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !9
  %57 = load ptr, ptr @ccm_base, align 4
  %58 = getelementptr i8, ptr %57, i32 84
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !9
  %60 = load ptr, ptr @gpc_base, align 4
  %61 = getelementptr i8, ptr %60, i32 672
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #7, !srcloc !9
  %63 = load ptr, ptr @gpc_base, align 4
  %64 = getelementptr i8, ptr %63, i32 704
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #7, !srcloc !9
  %66 = load ptr, ptr @gpc_base, align 4
  %67 = getelementptr i8, ptr %66, i32 720
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #7, !srcloc !9
  %69 = or i32 %56, 3
  %70 = and i32 %59, -324
  %71 = or i32 %70, 1
  %72 = or i32 %62, 1
  %73 = load ptr, ptr @cortex_base, align 4
  %74 = getelementptr i8, ptr %73, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %69) #7, !srcloc !10
  %75 = load ptr, ptr @ccm_base, align 4
  %76 = getelementptr i8, ptr %75, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %71) #7, !srcloc !10
  %77 = load ptr, ptr @gpc_base, align 4
  %78 = getelementptr i8, ptr %77, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %72) #7, !srcloc !10
  %79 = load ptr, ptr @gpc_base, align 4
  %80 = getelementptr i8, ptr %79, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %72) #7, !srcloc !10
  br label %81

81:                                               ; preds = %53, %1
  %82 = phi i32 [ 0, %53 ], [ -22, %1 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx53_suspend(ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!9 = !{i64 4181195}
!10 = !{i64 4180777}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2153600979}
!13 = !{i64 2153602396, i64 2153602888, i64 2153602433, i64 2153602489, i64 2153602523, i64 2153602547, i64 2153602588, i64 2153602609, i64 2153602637, i64 2153602671}
!14 = !{i64 2153601474}
!15 = !{i64 2152466735}
!16 = !{i64 2152460302, i64 2152460315}
!17 = !{i64 2152467007, i64 2152467020}
!18 = !{i64 2152469768}
!19 = !{i64 2152469827}
