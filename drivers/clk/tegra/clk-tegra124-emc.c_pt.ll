; ModuleID = '/llk/IR/drivers/clk/tegra/clk-tegra124-emc.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra124-emc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra124_clk_set_emc_callbacks:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra124_clk_set_emc_callbacks\22\09\09\09\09\09"
module asm "__kstrtabns_tegra124_clk_set_emc_callbacks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_emc = type { %struct.clk_hw, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.emc_timing = type { i32, i32, i8, ptr, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
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

@.str = private unnamed_addr constant [16 x i8] c"nvidia,ram-code\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\014%s: no memory timings registered\0A\00", align 1
@__func__.tegra124_clk_register_emc = private unnamed_addr constant [26 x i8] c"tegra124_clk_register_emc\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"nvidia,external-memory-controller\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\014%s: couldn't find node for EMC driver\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@tegra_clk_emc_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @emc_recalc_rate, ptr null, ptr @emc_determine_rate, ptr null, ptr @emc_get_parent, ptr @emc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@emc_parent_clk_names = internal constant [8 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"tegra-clk-debug\00", align 1
@__kstrtab_tegra124_clk_set_emc_callbacks = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra124_clk_set_emc_callbacks = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra124_clk_set_emc_callbacks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra124_clk_set_emc_callbacks to i32), ptr @__kstrtab_tegra124_clk_set_emc_callbacks, ptr @__kstrtabns_tegra124_clk_set_emc_callbacks }, section "___ksymtab_gpl+tegra124_clk_set_emc_callbacks", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\013timing %pOF: failed to read rate\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"nvidia,parent-clock-frequency\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\013timing %pOF: failed to read parent rate\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"emc-parent\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\013timing %pOF: failed to get parent clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\013timing %pOF: %s is not a valid parent\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"\013cannot switch to rate %ld without emc table\0A\00", align 1
@emc_parent_clk_sources = internal unnamed_addr constant [8 x i8] c"\00\01\02\03\00\04\05\01", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\013cannot find backup timing\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\013cannot set backup timing: %d\0A\00", align 1
@emc_set_timing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"drivers/clk/tegra/clk-tegra124-emc.c\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"parent %s rate mismatch %lu %lu\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"\013cannot change parent %s rate to %ld: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"\013cannot enable parent clock: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"\013%s: could not get external memory controller\0A\00", align 1
@__func__.emc_ensure_emc_driver = private unnamed_addr constant [22 x i8] c"emc_ensure_emc_driver\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"\013%s: cannot find EMC driver\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"pll_m\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"pll_c\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"pll_m_ud\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"pll_c2\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"pll_c3\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"pll_c_ud\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_tegra124_clk_set_emc_callbacks], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra124_clk_register_emc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_init_data, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 52) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %132, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tegra_clk_emc, ptr %9, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tegra_clk_emc, ptr %9, i32 0, i32 8
  store ptr %2, ptr %13, align 8
  %14 = getelementptr inbounds %struct.tegra_clk_emc, ptr %9, i32 0, i32 6
  store i32 0, ptr %14, align 8
  %15 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %102, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tegra_clk_emc, ptr %9, i32 0, i32 7
  br label %19

19:                                               ; preds = %96, %17
  %20 = phi i32 [ 0, %17 ], [ %97, %96 ]
  %21 = phi ptr [ %15, %17 ], [ %98, %96 ]
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #9
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %96

24:                                               ; preds = %19
  %25 = load i32, ptr %7, align 4
  %26 = call ptr @of_get_next_child(ptr noundef nonnull %21, ptr noundef null) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %28, %24
  %29 = phi i32 [ %31, %28 ], [ 0, %24 ]
  %30 = phi ptr [ %32, %28 ], [ %26, %24 ]
  %31 = add i32 %29, 1
  %32 = call ptr @of_get_next_child(ptr noundef nonnull %21, ptr noundef nonnull %30) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %28

34:                                               ; preds = %28, %24
  %35 = phi i32 [ 0, %24 ], [ %31, %28 ]
  %36 = add i32 %20, %35
  %37 = mul i32 %36, 20
  %38 = load ptr, ptr %18, align 4
  %39 = call noalias ptr @krealloc(ptr noundef %38, i32 noundef %37, i32 noundef 3264) #11
  store ptr %39, ptr %18, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %93, label %41

41:                                               ; preds = %34
  %42 = getelementptr %struct.emc_timing, ptr %39, i32 %20
  store i32 %36, ptr %14, align 8
  %43 = call ptr @of_get_next_child(ptr noundef nonnull %21, ptr noundef null) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %88, label %45

45:                                               ; preds = %84, %41
  %46 = phi i32 [ %48, %84 ], [ 0, %41 ]
  %47 = phi ptr [ %86, %84 ], [ %43, %41 ]
  %48 = add i32 %46, 1
  %49 = getelementptr %struct.emc_timing, ptr %42, i32 %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %50 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %47, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #9
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %47) #12
  br label %82

54:                                               ; preds = %45
  %55 = load i32, ptr %5, align 4
  store i32 %55, ptr %49, align 4
  %56 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %47, ptr noundef nonnull @.str.8, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #9
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %47) #12
  br label %82

60:                                               ; preds = %54
  %61 = load i32, ptr %5, align 4
  %62 = getelementptr inbounds %struct.emc_timing, ptr %49, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  %63 = call ptr @of_clk_get_by_name(ptr noundef nonnull %47, ptr noundef nonnull @.str.10) #9
  %64 = getelementptr inbounds %struct.emc_timing, ptr %49, i32 0, i32 3
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.emc_timing, ptr %49, i32 0, i32 2
  store i8 -1, ptr %67, align 4
  %68 = call ptr @__clk_get_name(ptr noundef %63) #9
  %69 = call i32 @match_string(ptr noundef nonnull @emc_parent_clk_names, i32 noundef 8, ptr noundef %68) #9
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load ptr, ptr %64, align 4
  %73 = call ptr @__clk_get_name(ptr noundef %72) #9
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %47, ptr noundef %73) #12
  %75 = load ptr, ptr %64, align 4
  call void @clk_put(ptr noundef %75) #9
  br label %82

76:                                               ; preds = %66
  %77 = trunc i32 %69 to i8
  store i8 %77, ptr %67, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %84

78:                                               ; preds = %60
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %47) #12
  %80 = load ptr, ptr %64, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %89

82:                                               ; preds = %71, %58, %52
  %83 = phi i32 [ -22, %71 ], [ %56, %58 ], [ %50, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %91

84:                                               ; preds = %78, %76
  %85 = getelementptr inbounds %struct.emc_timing, ptr %49, i32 0, i32 4
  store i32 %25, ptr %85, align 4
  %86 = call ptr @of_get_next_child(ptr noundef nonnull %21, ptr noundef nonnull %47) #9
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %45

88:                                               ; preds = %84, %41
  call void @sort(ptr noundef %42, i32 noundef %35, i32 noundef 20, ptr noundef nonnull @cmp_timings, ptr noundef null) #9
  br label %96

89:                                               ; preds = %78
  %90 = ptrtoint ptr %80 to i32
  br label %91

91:                                               ; preds = %89, %82
  %92 = phi i32 [ %90, %89 ], [ %83, %82 ]
  call void @of_node_put(ptr noundef nonnull %47) #9
  br label %93

93:                                               ; preds = %91, %34
  %94 = phi i32 [ %92, %91 ], [ -12, %34 ]
  call void @of_node_put(ptr noundef nonnull %21) #9
  %95 = inttoptr i32 %94 to ptr
  br label %132

96:                                               ; preds = %88, %19
  %97 = phi i32 [ %36, %88 ], [ %20, %19 ]
  %98 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %21) #9
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %19

100:                                              ; preds = %96
  %101 = icmp eq i32 %97, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %100, %11
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tegra124_clk_register_emc) #12
  br label %104

104:                                              ; preds = %102, %100
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #9, !annotation !8
  %105 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #9
  %106 = icmp eq i32 %105, 0
  %107 = load ptr, ptr %4, align 4
  %108 = select i1 %106, ptr %107, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %109 = getelementptr inbounds %struct.tegra_clk_emc, ptr %9, i32 0, i32 4
  store ptr %108, ptr %109, align 8
  %110 = icmp eq ptr %108, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tegra124_clk_register_emc) #12
  br label %113

113:                                              ; preds = %111, %104
  store ptr @.str.4, ptr %6, align 4
  %114 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @tegra_clk_emc_ops, ptr %114, align 4
  %115 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 2048, ptr %115, align 4
  %116 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr @emc_parent_clk_names, ptr %116, align 4
  %117 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 8, ptr %117, align 4
  %118 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 2
  store ptr %6, ptr %118, align 8
  %119 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %9) #9
  %120 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %132, label %121

121:                                              ; preds = %113
  %122 = load ptr, ptr %12, align 4
  %123 = getelementptr i8, ptr %122, i32 412
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %125 = lshr i32 %124, 29
  %126 = call ptr @clk_hw_get_parent_by_index(ptr noundef nonnull %9, i32 noundef %125) #9
  %127 = getelementptr inbounds %struct.clk_hw, ptr %126, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.tegra_clk_emc, ptr %9, i32 0, i32 2
  store ptr %128, ptr %129, align 8
  %130 = getelementptr inbounds %struct.tegra_clk_emc, ptr %9, i32 0, i32 3
  store i8 0, ptr %130, align 4
  %131 = call i32 @clk_register_clkdev(ptr noundef %119, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %132

132:                                              ; preds = %121, %113, %93, %3
  %133 = phi ptr [ %95, %93 ], [ %119, %121 ], [ %119, %113 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  ret ptr %133
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @emc_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 412
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %6 = lshr i32 %5, 29
  %7 = trunc i32 %6 to i8
  ret i8 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra124_clk_set_emc_callbacks(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @__clk_lookup(ptr noundef nonnull @.str.4) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__clk_get_hw(ptr noundef nonnull %3) #9
  %7 = getelementptr inbounds %struct.tegra_clk_emc, ptr %6, i32 0, i32 9
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_emc, ptr %6, i32 0, i32 10
  store ptr %1, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tegra124_clk_emc_driver_available(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cmp_timings(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = icmp ult i32 %3, %4
  %6 = icmp ne i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %4 = tail call i32 @clk_hw_get_rate(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 412
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %9 = and i32 %8, 255
  %10 = add nuw nsw i32 %9, 2
  %11 = udiv i32 %4, %10
  %12 = shl nuw i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call i32 @tegra_read_ram_code() #9
  %4 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %3, 255
  br label %11

11:                                               ; preds = %16, %7
  %12 = phi i32 [ 0, %7 ], [ %17, %16 ]
  %13 = getelementptr %struct.emc_timing, ptr %9, i32 %12, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %73, label %11

19:                                               ; preds = %11, %2
  %20 = phi i32 [ 0, %2 ], [ %12, %11 ]
  %21 = icmp slt i32 %20, %5
  br i1 %21, label %22, label %73

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = and i32 %3, 255
  br label %26

26:                                               ; preds = %31, %22
  %27 = phi i32 [ %20, %22 ], [ %32, %31 ]
  %28 = getelementptr %struct.emc_timing, ptr %24, i32 %27, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %25
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = add i32 %27, 1
  %33 = icmp eq i32 %32, %5
  br i1 %33, label %34, label %26

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %5, %31 ], [ %27, %26 ]
  %36 = icmp ult i32 %20, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %1, align 4
  %41 = add nsw i32 %35, -1
  %42 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  %43 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  %44 = mul i32 %35, 20
  %45 = add i32 %44, -20
  %46 = getelementptr i8, ptr %39, i32 %45
  br label %47

47:                                               ; preds = %66, %37
  %48 = phi i32 [ %20, %37 ], [ %67, %66 ]
  %49 = getelementptr %struct.emc_timing, ptr %39, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp uge i32 %50, %40
  %52 = icmp eq i32 %48, %41
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load i32, ptr %42, align 4
  %56 = icmp ugt i32 %50, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = add nuw i32 %20, 1
  %59 = tail call i32 @llvm.smax.i32(i32 %48, i32 %58)
  %60 = add nsw i32 %59, -1
  %61 = getelementptr %struct.emc_timing, ptr %39, i32 %60
  %62 = load i32, ptr %61, align 4
  br label %75

63:                                               ; preds = %54
  %64 = load i32, ptr %43, align 4
  %65 = icmp ult i32 %50, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %63, %47
  %67 = add i32 %48, 1
  %68 = icmp eq i32 %67, %35
  br i1 %68, label %69, label %47

69:                                               ; preds = %66
  %70 = icmp eq ptr %46, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %46, align 4
  br label %75

73:                                               ; preds = %69, %34, %19, %16
  %74 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #9
  br label %75

75:                                               ; preds = %73, %71, %63, %57
  %76 = phi i32 [ %74, %73 ], [ %72, %71 ], [ %62, %57 ], [ %50, %63 ]
  store i32 %76, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @tegra_read_ram_code() #9
  %5 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #9
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %117, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %117

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %27, %15
  %19 = phi i32 [ 0, %15 ], [ %28, %27 ]
  %20 = getelementptr %struct.emc_timing, ptr %17, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr %struct.emc_timing, ptr %17, i32 %19, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %4
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = add nuw nsw i32 %19, 1
  %29 = icmp eq i32 %28, %13
  br i1 %29, label %32, label %18

30:                                               ; preds = %23
  %31 = icmp eq ptr %20, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %30, %27, %11
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %1) #12
  br label %117

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 412
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %39 = lshr i32 %38, 29
  %40 = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr %struct.emc_timing, ptr %17, i32 %19, i32 2
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %41, %46
  br i1 %47, label %48, label %115

48:                                               ; preds = %34
  %49 = getelementptr %struct.emc_timing, ptr %17, i32 %19, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @clk_get_rate(ptr noundef %50) #9
  %52 = getelementptr %struct.emc_timing, ptr %17, i32 %19, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %115, label %55

55:                                               ; preds = %48
  %56 = tail call i32 @tegra_read_ram_code() #9
  %57 = load i32, ptr %12, align 4
  br label %58

58:                                               ; preds = %68, %55
  %59 = phi i32 [ %19, %55 ], [ %60, %68 ]
  %60 = add nuw nsw i32 %59, 1
  %61 = icmp slt i32 %60, %57
  br i1 %61, label %63, label %62

62:                                               ; preds = %63, %58
  br label %80

63:                                               ; preds = %58
  %64 = load ptr, ptr %16, align 4
  %65 = getelementptr %struct.emc_timing, ptr %64, i32 %60, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, %56
  br i1 %67, label %68, label %62

68:                                               ; preds = %63
  %69 = getelementptr %struct.emc_timing, ptr %64, i32 %60, i32 2
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  %72 = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr %struct.emc_timing, ptr %64, i32 %19, i32 2
  %75 = load i8, ptr %74, align 4
  %76 = zext i8 %75 to i32
  %77 = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %73, %78
  br i1 %79, label %58, label %103

80:                                               ; preds = %89, %62
  %81 = phi i32 [ %82, %89 ], [ %19, %62 ]
  %82 = add nsw i32 %81, -1
  %83 = icmp sgt i32 %81, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load ptr, ptr %16, align 4
  %86 = getelementptr %struct.emc_timing, ptr %85, i32 %82, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, %56
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = getelementptr %struct.emc_timing, ptr %85, i32 %82, i32 2
  %91 = load i8, ptr %90, align 4
  %92 = zext i8 %91 to i32
  %93 = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr %struct.emc_timing, ptr %85, i32 %19, i32 2
  %96 = load i8, ptr %95, align 4
  %97 = zext i8 %96 to i32
  %98 = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %97
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %94, %99
  br i1 %100, label %80, label %101

101:                                              ; preds = %89
  %102 = getelementptr %struct.emc_timing, ptr %85, i32 %82
  br label %105

103:                                              ; preds = %68
  %104 = getelementptr %struct.emc_timing, ptr %64, i32 %60
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi ptr [ %104, %103 ], [ %102, %101 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105, %84, %80
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %117

110:                                              ; preds = %105
  %111 = tail call fastcc i32 @emc_set_timing(ptr noundef %0, ptr noundef nonnull %106)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %111) #12
  br label %117

115:                                              ; preds = %110, %48, %34
  %116 = tail call fastcc i32 @emc_set_timing(ptr noundef %0, ptr noundef nonnull %20)
  br label %117

117:                                              ; preds = %115, %113, %108, %32, %7, %3
  %118 = phi i32 [ %116, %115 ], [ -22, %32 ], [ 0, %3 ], [ 0, %7 ], [ -22, %108 ], [ %111, %113 ]
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @emc_set_timing(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %115, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %115, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %115, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %16) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 4
  tail call void @of_node_put(ptr noundef %22) #9
  store ptr null, ptr %15, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3, i32 8
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %3, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %18
  %27 = phi ptr [ @.str.20, %18 ], [ @.str.21, %21 ]
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %27, ptr noundef nonnull @__func__.emc_ensure_emc_driver) #12
  br label %115

29:                                               ; preds = %21, %2
  %30 = phi ptr [ %4, %2 ], [ %24, %21 ]
  %31 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 412
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %35 = lshr i32 %34, 29
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.emc_timing, ptr %1, i32 0, i32 2
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, %36
  br i1 %39, label %40, label %55

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.emc_timing, ptr %1, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_get_rate(ptr noundef %42) #9
  %44 = getelementptr inbounds %struct.emc_timing, ptr %1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %40
  %48 = load i1, ptr @emc_set_timing.__already_done, align 1
  br i1 %48, label %115, label %49, !prof !13

49:                                               ; preds = %47
  store i1 true, ptr @emc_set_timing.__already_done, align 1
  %50 = load ptr, ptr %41, align 4
  %51 = tail call ptr @__clk_get_name(ptr noundef %50) #9
  %52 = load ptr, ptr %41, align 4
  %53 = tail call i32 @clk_get_rate(ptr noundef %52) #9
  %54 = load i32, ptr %44, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 228, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %51, i32 noundef %53, i32 noundef %54) #9
  br label %115

55:                                               ; preds = %40, %29
  %56 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 3
  store i8 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.emc_timing, ptr %1, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.emc_timing, ptr %1, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @clk_set_rate(ptr noundef %58, i32 noundef %60) #9
  %62 = icmp eq i32 %61, 0
  %63 = load ptr, ptr %57, align 4
  br i1 %62, label %68, label %64

64:                                               ; preds = %55
  %65 = tail call ptr @__clk_get_name(ptr noundef %63) #9
  %66 = load i32, ptr %59, align 4
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %65, i32 noundef %66, i32 noundef %61) #12
  br label %115

68:                                               ; preds = %55
  %69 = tail call i32 @clk_prepare(ptr noundef %63) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = tail call i32 @clk_enable(ptr noundef %63) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  tail call void @clk_unprepare(ptr noundef %63) #9
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi i32 [ %72, %74 ], [ %69, %68 ]
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %76) #12
  br label %115

78:                                               ; preds = %71
  %79 = load i32, ptr %59, align 4
  %80 = load i32, ptr %1, align 4
  %81 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 9
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 %82(ptr noundef nonnull %30, i32 noundef %80) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr %57, align 4
  tail call void @clk_disable(ptr noundef %86) #9
  tail call void @clk_unprepare(ptr noundef %86) #9
  br label %115

87:                                               ; preds = %78
  %88 = lshr i32 %80, 1
  %89 = udiv i32 %79, %88
  %90 = add i32 %89, 254
  %91 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %92) #9
  %94 = load ptr, ptr %31, align 4
  %95 = getelementptr i8, ptr %94, i32 412
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %97 = and i32 %96, 536870656
  %98 = load i8, ptr %37, align 4
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 29
  %101 = or i32 %100, %97
  %102 = and i32 %90, 255
  %103 = or i32 %101, %102
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %104 = load ptr, ptr %31, align 4
  %105 = getelementptr i8, ptr %104, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #9, !srcloc !16
  %106 = load ptr, ptr %91, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %106, i32 noundef %93) #9
  %107 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 10
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %1, align 4
  tail call void %108(ptr noundef nonnull %30, i32 noundef %109) #9
  %110 = load ptr, ptr %57, align 4
  %111 = tail call ptr @__clk_get_hw(ptr noundef %110) #9
  tail call void @clk_hw_reparent(ptr noundef %0, ptr noundef %111) #9
  %112 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  tail call void @clk_disable(ptr noundef %113) #9
  tail call void @clk_unprepare(ptr noundef %113) #9
  %114 = load ptr, ptr %57, align 4
  store ptr %114, ptr %112, align 4
  store i8 0, ptr %56, align 4
  br label %115

115:                                              ; preds = %87, %85, %75, %64, %49, %47, %26, %14, %10, %6
  %116 = phi i32 [ %61, %64 ], [ %76, %75 ], [ %83, %85 ], [ 0, %87 ], [ -22, %49 ], [ -22, %47 ], [ -2, %10 ], [ -2, %6 ], [ -2, %14 ], [ -2, %26 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_reparent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { cold nounwind }

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
!9 = !{i64 3573886}
!10 = !{i64 2151614024}
!11 = !{i64 2151610103}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2151619297}
!15 = !{i64 2151619955}
!16 = !{i64 3573468}
