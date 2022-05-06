; ModuleID = '/llk/IR/drivers/clk/axis/clk-artpec6.c_pt.bc'
source_filename = "../drivers/clk/axis/clk-artpec6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.artpec6_clkctrl_drvdata = type { [20 x ptr], ptr, %struct.clk_onecell_data, %struct.spinlock }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__of_table_artpec6_clkctrl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec6-clkctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @artpec6_clkctrl_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_artpec6__166_239_artpec6_clkctrl_driver_init6 = internal global ptr @artpec6_clkctrl_driver_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sys_refclk\00", align 1
@clkdata = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cpu_periph\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"uart_pclk\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"uart_ref\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"spi_pclk\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"spi_sspclk\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"dbg_pclk\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@artpec6_clkctrl_driver = internal global %struct.platform_driver { ptr @artpec6_clkctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @artpec_clkctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"artpec6_clkctrl\00", align 1
@artpec_clkctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec6-clkctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"i2s_refclk\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"frac_clk0\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"frac_clk1\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"nand_clka\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"nand_clkb\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"eth_aclk\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"dma_aclk\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ptp_ref\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"sd_pclk\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"sd_imclk\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"i2s_hst\00", align 1
@i2s_clk_names = internal unnamed_addr constant [2 x ptr] [ptr @.str.25, ptr @.str.26], align 4
@i2s_clk_indexes = internal unnamed_addr constant [2 x i32] [i32 10, i32 11], align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"fracdiv_in\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"Failed to register clock at index %d err=%ld\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_artpec6__166_239_artpec6_clkctrl_driver_init6, ptr @__of_table_artpec6_clkctrl], section "llvm.metadata"
@switch.table.artpec6_clkctrl_of_clk_init_driver = private unnamed_addr constant [4 x i32] [i32 85, i32 112, i32 64, i32 106], align 4
@switch.table.artpec6_clkctrl_of_clk_init_driver.27 = private unnamed_addr constant [4 x i32] [i32 4, i32 6, i32 4, i32 8], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @artpec6_clkctrl_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #6
  %3 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %3) #6
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 96) #7
  store ptr %8, ptr @clkdata, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %54, label %10

10:                                               ; preds = %5
  store ptr inttoptr (i32 -517 to ptr), ptr %8, align 8
  %11 = getelementptr ptr, ptr %8, i32 1
  store ptr inttoptr (i32 -517 to ptr), ptr %11, align 4
  %12 = getelementptr ptr, ptr %8, i32 2
  store ptr inttoptr (i32 -517 to ptr), ptr %12, align 8
  %13 = getelementptr ptr, ptr %8, i32 3
  store ptr inttoptr (i32 -517 to ptr), ptr %13, align 4
  %14 = getelementptr ptr, ptr %8, i32 4
  store ptr inttoptr (i32 -517 to ptr), ptr %14, align 8
  %15 = getelementptr ptr, ptr %8, i32 5
  store ptr inttoptr (i32 -517 to ptr), ptr %15, align 4
  %16 = getelementptr ptr, ptr %8, i32 6
  store ptr inttoptr (i32 -517 to ptr), ptr %16, align 8
  %17 = getelementptr ptr, ptr %8, i32 7
  store ptr inttoptr (i32 -517 to ptr), ptr %17, align 4
  %18 = getelementptr ptr, ptr %8, i32 8
  store ptr inttoptr (i32 -517 to ptr), ptr %18, align 8
  %19 = getelementptr ptr, ptr %8, i32 9
  store ptr inttoptr (i32 -517 to ptr), ptr %19, align 4
  %20 = getelementptr ptr, ptr %8, i32 10
  store ptr inttoptr (i32 -517 to ptr), ptr %20, align 8
  %21 = getelementptr ptr, ptr %8, i32 11
  store ptr inttoptr (i32 -517 to ptr), ptr %21, align 4
  %22 = getelementptr ptr, ptr %8, i32 12
  store ptr inttoptr (i32 -517 to ptr), ptr %22, align 8
  %23 = getelementptr ptr, ptr %8, i32 13
  store ptr inttoptr (i32 -517 to ptr), ptr %23, align 4
  %24 = getelementptr ptr, ptr %8, i32 14
  store ptr inttoptr (i32 -517 to ptr), ptr %24, align 8
  %25 = getelementptr ptr, ptr %8, i32 15
  store ptr inttoptr (i32 -517 to ptr), ptr %25, align 4
  %26 = getelementptr ptr, ptr %8, i32 16
  store ptr inttoptr (i32 -517 to ptr), ptr %26, align 8
  %27 = getelementptr ptr, ptr %8, i32 17
  store ptr inttoptr (i32 -517 to ptr), ptr %27, align 4
  %28 = getelementptr ptr, ptr %8, i32 18
  store ptr inttoptr (i32 -517 to ptr), ptr %28, align 8
  %29 = getelementptr ptr, ptr %8, i32 19
  store ptr inttoptr (i32 -517 to ptr), ptr %29, align 4
  %30 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #6
  %31 = load ptr, ptr @clkdata, align 4
  %32 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  %33 = icmp eq ptr %30, null
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/axis/clk-artpec6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

35:                                               ; preds = %10
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %37 = lshr i32 %36, 6
  %38 = and i32 %37, 3
  %39 = getelementptr inbounds [4 x i32], ptr @switch.table.artpec6_clkctrl_of_clk_init_driver, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds [4 x i32], ptr @switch.table.artpec6_clkctrl_of_clk_init_driver.27, i32 0, i32 %38
  %42 = load i32, ptr %41, align 4
  %43 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %6, i32 noundef 0, i32 noundef %40, i32 noundef %42) #6
  store ptr %43, ptr %8, align 8
  %44 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 2) #6
  store ptr %44, ptr %11, align 4
  %45 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #6
  store ptr %45, ptr %22, align 8
  %46 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef %6, i32 noundef 0, i32 noundef 50000000) #6
  store ptr %46, ptr %23, align 4
  %47 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #6
  store ptr %47, ptr %25, align 4
  %48 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %6, i32 noundef 0, i32 noundef 50000000) #6
  store ptr %48, ptr %26, align 8
  %49 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #6
  store ptr %49, ptr %29, align 4
  %50 = load ptr, ptr @clkdata, align 4
  %51 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %50, i32 0, i32 2
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %50, i32 0, i32 2, i32 1
  store i32 20, ptr %52, align 4
  %53 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %51) #6
  br label %54

54:                                               ; preds = %35, %5, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @artpec6_clkctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @artpec6_clkctrl_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @artpec6_clkctrl_probe(ptr noundef %0) #4 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca [2 x ptr], align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr @clkdata, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !12
  %8 = tail call i32 @of_property_match_string(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %127, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @of_clk_get_parent_name(ptr noundef %6, i32 noundef %8) #6
  %12 = tail call i32 @of_property_match_string(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #6
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call ptr @of_clk_get_parent_name(ptr noundef %6, i32 noundef %12) #6
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ null, %10 ]
  %18 = tail call i32 @of_property_match_string(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #6
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call ptr @of_clk_get_parent_name(ptr noundef %6, i32 noundef %18) #6
  store ptr %21, ptr %2, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = tail call i32 @of_property_match_string(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #6
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = tail call ptr @of_clk_get_parent_name(ptr noundef %6, i32 noundef %23) #6
  %27 = getelementptr inbounds [2 x ptr], ptr %2, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr @clkdata, align 4
  %30 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %29, i32 0, i32 3
  store i32 0, ptr %30, align 4
  %31 = tail call ptr @clk_register_fixed_factor(ptr noundef %4, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #6
  %32 = getelementptr ptr, ptr %7, i32 2
  store ptr %31, ptr %32, align 4
  %33 = tail call ptr @clk_register_fixed_rate(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef %11, i32 noundef 0, i32 noundef 100000000) #6
  %34 = getelementptr ptr, ptr %7, i32 3
  store ptr %33, ptr %34, align 4
  %35 = tail call ptr @clk_register_fixed_factor(ptr noundef %4, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 4) #6
  %36 = getelementptr ptr, ptr %7, i32 4
  store ptr %35, ptr %36, align 4
  %37 = tail call ptr @clk_register_fixed_factor(ptr noundef %4, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 4) #6
  %38 = getelementptr ptr, ptr %7, i32 5
  store ptr %37, ptr %38, align 4
  %39 = tail call ptr @clk_register_fixed_rate(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef %11, i32 noundef 0, i32 noundef 100000000) #6
  %40 = getelementptr ptr, ptr %7, i32 6
  store ptr %39, ptr %40, align 4
  %41 = tail call ptr @clk_register_fixed_rate(ptr noundef %4, ptr noundef nonnull @.str.18, ptr noundef %11, i32 noundef 0, i32 noundef 100000000) #6
  %42 = getelementptr ptr, ptr %7, i32 7
  store ptr %41, ptr %42, align 4
  %43 = tail call ptr @clk_register_fixed_rate(ptr noundef %4, ptr noundef nonnull @.str.19, ptr noundef %11, i32 noundef 0, i32 noundef 100000000) #6
  %44 = getelementptr ptr, ptr %7, i32 8
  store ptr %43, ptr %44, align 4
  %45 = tail call ptr @clk_register_fixed_factor(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #6
  %46 = getelementptr ptr, ptr %7, i32 9
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %17, null
  %48 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  br label %49

49:                                               ; preds = %103, %28
  %50 = phi i1 [ true, %28 ], [ false, %103 ]
  %51 = phi i32 [ 0, %28 ], [ 1, %103 ]
  %52 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %47, label %66, label %55

55:                                               ; preds = %49
  br i1 %54, label %83, label %56

56:                                               ; preds = %55
  store ptr %53, ptr %3, align 8
  store ptr %17, ptr %48, align 4
  %57 = getelementptr [2 x ptr], ptr @i2s_clk_names, i32 0, i32 %51
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr @clkdata, align 4
  %60 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 20
  %63 = trunc i32 %51 to i8
  %64 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %59, i32 0, i32 3
  %65 = call ptr @clk_register_mux_table(ptr noundef %4, ptr noundef %58, ptr noundef nonnull %3, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %62, i8 noundef zeroext %63, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef %64) #6
  br label %98

66:                                               ; preds = %49
  br i1 %54, label %103, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr @clkdata, align 4
  %69 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 20
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %73 = shl nuw nsw i32 1, %51
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  call void @arm_heavy_mb() #6
  %76 = load ptr, ptr @clkdata, align 4
  %77 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %75) #6, !srcloc !15
  %80 = getelementptr [2 x ptr], ptr @i2s_clk_names, i32 0, i32 %51
  %81 = load ptr, ptr %80, align 4
  %82 = call ptr @clk_register_fixed_factor(ptr noundef %4, ptr noundef %81, ptr noundef nonnull %53, i32 noundef 0, i32 noundef 1, i32 noundef 1) #6
  br label %98

83:                                               ; preds = %55
  %84 = load ptr, ptr @clkdata, align 4
  %85 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 20
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %89 = shl nuw nsw i32 1, %51
  %90 = or i32 %88, %89
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  call void @arm_heavy_mb() #6
  %91 = load ptr, ptr @clkdata, align 4
  %92 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %90) #6, !srcloc !15
  %95 = getelementptr [2 x ptr], ptr @i2s_clk_names, i32 0, i32 %51
  %96 = load ptr, ptr %95, align 4
  %97 = call ptr @clk_register_fixed_factor(ptr noundef %4, ptr noundef %96, ptr noundef nonnull %17, i32 noundef 0, i32 noundef 1, i32 noundef 1) #6
  br label %98

98:                                               ; preds = %83, %67, %56
  %99 = phi ptr [ %65, %56 ], [ %97, %83 ], [ %82, %67 ]
  %100 = getelementptr [2 x i32], ptr @i2s_clk_indexes, i32 0, i32 %51
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr ptr, ptr %7, i32 %101
  store ptr %99, ptr %102, align 4
  br label %103

103:                                              ; preds = %98, %66
  br i1 %50, label %49, label %104

104:                                              ; preds = %103
  %105 = call ptr @clk_register_fixed_rate(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %11, i32 noundef 0, i32 noundef 100000000) #6
  %106 = getelementptr ptr, ptr %7, i32 14
  store ptr %105, ptr %106, align 4
  %107 = call ptr @clk_register_fixed_rate(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef %11, i32 noundef 0, i32 noundef 100000000) #6
  %108 = getelementptr ptr, ptr %7, i32 17
  store ptr %107, ptr %108, align 4
  %109 = call ptr @clk_register_fixed_rate(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef %11, i32 noundef 0, i32 noundef 600000000) #6
  %110 = getelementptr ptr, ptr %7, i32 18
  store ptr %109, ptr %110, align 4
  br label %111

111:                                              ; preds = %123, %104
  %112 = phi i32 [ 0, %104 ], [ %125, %123 ]
  %113 = phi i32 [ 0, %104 ], [ %124, %123 ]
  %114 = getelementptr ptr, ptr %7, i32 %112
  %115 = load ptr, ptr %114, align 4
  %116 = icmp ule ptr %115, inttoptr (i32 -4096 to ptr)
  %117 = icmp eq ptr %115, inttoptr (i32 -517 to ptr)
  %118 = or i1 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %111
  %120 = ptrtoint ptr %115 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef %112, i32 noundef %120) #8
  %121 = load ptr, ptr %114, align 4
  %122 = ptrtoint ptr %121 to i32
  br label %123

123:                                              ; preds = %119, %111
  %124 = phi i32 [ %122, %119 ], [ %113, %111 ]
  %125 = add nuw nsw i32 %112, 1
  %126 = icmp eq i32 %125, 20
  br i1 %126, label %127, label %111

127:                                              ; preds = %123, %1
  %128 = phi i32 [ -22, %1 ], [ %124, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151467986, i64 2151468480, i64 2151468023, i64 2151468079, i64 2151468113, i64 2151468137, i64 2151468178, i64 2151468199, i64 2151468227, i64 2151468261}
!10 = !{i64 3786140}
!11 = !{i64 2151469048}
!12 = !{!"auto-init"}
!13 = !{i64 2151471920}
!14 = !{i64 2151472193}
!15 = !{i64 3785722}
!16 = !{i64 2151472702}
!17 = !{i64 2151472975}
