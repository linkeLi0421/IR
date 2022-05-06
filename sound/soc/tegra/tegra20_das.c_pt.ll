; ModuleID = '/llk/IR/sound/soc/tegra/tegra20_das.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra20_das.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_das_connect_dap_to_dac:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_das_connect_dap_to_dac\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_das_connect_dap_to_dac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_das_connect_dap_to_dap:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_das_connect_dap_to_dap\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_das_connect_dap_to_dap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_das_connect_dac_to_dap:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_das_connect_dac_to_dap\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_das_connect_dac_to_dap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.tegra20_das = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@das = internal unnamed_addr global ptr null, align 4
@__kstrtab_tegra20_das_connect_dap_to_dac = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_das_connect_dap_to_dac = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_das_connect_dap_to_dac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_das_connect_dap_to_dac to i32), ptr @__kstrtab_tegra20_das_connect_dap_to_dac, ptr @__kstrtabns_tegra20_das_connect_dap_to_dac }, section "___ksymtab_gpl+tegra20_das_connect_dap_to_dac", align 4
@__kstrtab_tegra20_das_connect_dap_to_dap = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_das_connect_dap_to_dap = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_das_connect_dap_to_dap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_das_connect_dap_to_dap to i32), ptr @__kstrtab_tegra20_das_connect_dap_to_dap, ptr @__kstrtabns_tegra20_das_connect_dap_to_dap }, section "___ksymtab_gpl+tegra20_das_connect_dap_to_dap", align 4
@__kstrtab_tegra20_das_connect_dac_to_dap = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_das_connect_dac_to_dap = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_das_connect_dac_to_dap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_das_connect_dac_to_dap to i32), ptr @__kstrtab_tegra20_das_connect_dac_to_dap, ptr @__kstrtabns_tegra20_das_connect_dac_to_dap }, section "___ksymtab_gpl+tegra20_das_connect_dac_to_dap", align 4
@__UNIQUE_ID_author230 = internal constant [43 x i8] c"author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [31 x i8] c"description=Tegra20 DAS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [27 x i8] c"alias=platform:tegra20-das\00", section ".modinfo", align 1
@tegra20_das_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-das\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra20_das_driver = internal global %struct.platform_driver { ptr @tegra20_das_probe, ptr @tegra20_das_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra20_das_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"tegra20-das\00", align 1
@tegra20_das_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra20_das_wr_rd_reg, ptr @tegra20_das_wr_rd_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 72, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't set up DAS DAP connection\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Can't set up DAS DAC connection\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_tegra20_das_connect_dac_to_dap, ptr @__ksymtab_tegra20_das_connect_dap_to_dac, ptr @__ksymtab_tegra20_das_connect_dap_to_dap], section "llvm.metadata"

@__mod_of__tegra20_das_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @tegra20_das_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra20_das_connect_dap_to_dac(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @das, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = shl i32 %0, 2
  %7 = getelementptr inbounds %struct.tegra20_das, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %6, i32 noundef %1) #6
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %5 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra20_das_connect_dap_to_dap(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr @das, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = shl i32 %0, 2
  %10 = icmp eq i32 %4, 0
  %11 = select i1 %10, i32 0, i32 536870912
  %12 = icmp eq i32 %3, 0
  %13 = select i1 %12, i32 0, i32 1073741824
  %14 = icmp eq i32 %2, 0
  %15 = select i1 %14, i32 0, i32 -2147483648
  %16 = or i32 %15, %1
  %17 = or i32 %16, %13
  %18 = or i32 %17, %11
  %19 = getelementptr inbounds %struct.tegra20_das, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %9, i32 noundef %18) #6
  br label %22

22:                                               ; preds = %8, %5
  %23 = phi i32 [ 0, %8 ], [ -19, %5 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra20_das_connect_dac_to_dap(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @das, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = shl i32 %0, 2
  %7 = add i32 %6, 64
  %8 = shl i32 %1, 24
  %9 = or i32 %8, %1
  %10 = shl i32 %1, 28
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.tegra20_das, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %7, i32 noundef %11) #6
  br label %15

15:                                               ; preds = %5, %2
  %16 = phi i32 [ 0, %5 ], [ -19, %2 ]
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra20_das_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra20_das_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_das_probe(ptr noundef %0) #0 {
  %2 = load ptr, ptr @das, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %53

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 8, i32 noundef 3520) #6
  store ptr %6, ptr @das, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %4
  store ptr %5, ptr %6, align 4
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %51

13:                                               ; preds = %8
  %14 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %5, ptr noundef null, ptr noundef %9, ptr noundef nonnull @tegra20_das_regmap_config, ptr noundef null, ptr noundef null) #6
  %15 = load ptr, ptr @das, align 4
  %16 = getelementptr inbounds %struct.tegra20_das, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  %17 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  %19 = load ptr, ptr @das, align 4
  %20 = getelementptr inbounds %struct.tegra20_das, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %51

23:                                               ; preds = %13
  %24 = icmp eq ptr %15, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #7
  br label %51

26:                                               ; preds = %23
  %27 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 0, i32 noundef 0) #6
  %28 = load ptr, ptr @das, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  br label %51

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tegra20_das, ptr %28, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 64, i32 noundef 0) #6
  %35 = load ptr, ptr @das, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #7
  br label %51

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.tegra20_das, ptr %35, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 8, i32 noundef 2) #6
  %42 = load ptr, ptr @das, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  br label %51

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.tegra20_das, ptr %42, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 72, i32 noundef 570425346) #6
  %49 = load ptr, ptr @das, align 4
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %49, ptr %50, align 8
  br label %53

51:                                               ; preds = %44, %37, %30, %25, %18, %11, %4
  %52 = phi i32 [ %12, %11 ], [ %22, %18 ], [ -19, %25 ], [ -19, %30 ], [ -19, %37 ], [ -19, %44 ], [ -12, %4 ]
  store ptr null, ptr @das, align 4
  br label %53

53:                                               ; preds = %51, %45, %1
  %54 = phi i32 [ %52, %51 ], [ 0, %45 ], [ -19, %1 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra20_das_remove(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @das, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  store ptr null, ptr @das, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i32 [ 0, %4 ], [ -19, %1 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra20_das_wr_rd_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = icmp ult i32 %1, 17
  %4 = add i32 %1, -64
  %5 = icmp ult i32 %4, 9
  %6 = or i1 %3, %5
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
