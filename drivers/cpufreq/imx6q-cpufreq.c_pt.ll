; ModuleID = '/llk/IR/drivers/cpufreq/imx6q-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/imx6q-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
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
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_imx6q_cpufreq__259_544_imx6q_cpufreq_platdrv_init6 = internal global ptr @imx6q_cpufreq_platdrv_init, section ".initcall6.init", align 4
@imx6q_cpufreq_platdrv = internal global %struct.platform_driver { ptr @imx6q_cpufreq_probe, ptr @imx6q_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_imx6q_cpufreq_platdrv_exit = internal global ptr @imx6q_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias260 = internal constant [43 x i8] c"imx6q_cpufreq.alias=platform:imx6q-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [54 x i8] c"imx6q_cpufreq.author=Shawn Guo <shawn.guo@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [58 x i8] c"imx6q_cpufreq.description=Freescale i.MX6Q cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file263 = internal constant [49 x i8] c"imx6q_cpufreq.file=drivers/cpufreq/imx6q-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [26 x i8] c"imx6q_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"imx6q-cpufreq\00", align 1
@cpu_dev = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\013failed to get cpu0 device\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to find cpu0 node\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fsl,imx6ul\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"fsl,imx6ull\00", align 1
@num_clks = internal unnamed_addr global i32 0, align 4
@clks = internal global [7 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.5, ptr null }, %struct.clk_bulk_data { ptr @.str.17, ptr null }, %struct.clk_bulk_data { ptr @.str.18, ptr null }, %struct.clk_bulk_data { ptr @.str.19, ptr null }, %struct.clk_bulk_data { ptr @.str.20, ptr null }, %struct.clk_bulk_data { ptr @.str.21, ptr null }, %struct.clk_bulk_data { ptr @.str.22, ptr null }], align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@arm_reg = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"pu\00", align 1
@pu_reg = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@soc_reg = internal unnamed_addr global ptr null, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to init OPP table: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"failed to read ocotp: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"no OPP table is found: %d\0A\00", align 1
@freq_table = internal global ptr null, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"failed to init cpufreq table: %d\0A\00", align 1
@imx6_soc_volt = internal unnamed_addr global ptr null, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"fsl,soc-operating-points\00", align 1
@soc_opp_count = internal unnamed_addr global i32 0, align 4
@.str.14 = private unnamed_addr constant [81 x i8] c"can NOT find valid fsl,soc-operating-points property in dtb, use default value!\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"clock-latency\00", align 1
@transition_latency = internal global i32 0, align 4
@max_freq = internal unnamed_addr global i32 0, align 4
@imx6q_cpufreq_driver = internal global %struct.cpufreq_driver { [16 x i8] c"imx6q-cpufreq\00\00\00", i16 36, ptr null, ptr @imx6q_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @imx6q_set_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_suspend, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @cpufreq_register_em_with_opp }, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"failed register driver: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"pll1_sys\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"pll1_sw\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"pll2_pfd2_396m\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"pll2_bus\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"secondary_sel\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"nvmem-cells\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"speed_grade\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"fsl,imx6ul-ocotp\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"fsl,imx6ull-ocotp\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"failed to map ocotp\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"failed to disable 696MHz OPP\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"failed to disable 792MHz OPP\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"failed to disable 900MHz OPP\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"fsl,imx6q-ocotp\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"failed to disable 996MHz OPP\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"fsl,imx6q\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"fsl,imx6qp\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"failed to disable 852MHz OPP\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"failed to disable 1.2GHz OPP\0A\00", align 1
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@.str.37 = private unnamed_addr constant [28 x i8] c"failed to find OPP for %ld\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"failed to scale vddpu up: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"failed to scale vddsoc up: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"failed to scale vddarm up: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"failed to set clock rate: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"failed to restore vddarm voltage: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"failed to scale vddarm down: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"failed to scale vddsoc down: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"failed to scale vddpu down: %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias260, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__exitcall_imx6q_cpufreq_platdrv_exit, ptr @__initcall__kmod_imx6q_cpufreq__259_544_imx6q_cpufreq_platdrv_init6, ptr @imx6q_cpufreq_platdrv_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx6q_cpufreq_platdrv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx6q_cpufreq_platdrv, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6q_cpufreq_platdrv_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx6q_cpufreq_platdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6q_cpufreq_probe(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @get_cpu_device(i32 noundef 0) #7
  store ptr %3, ptr @cpu_dev, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %296

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_node_get(ptr noundef %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load ptr, ptr @cpu_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2) #8
  br label %296

14:                                               ; preds = %7
  %15 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 5, i32 7
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ 7, %14 ], [ %20, %17 ]
  store i32 %22, ptr @num_clks, align 4
  %23 = load ptr, ptr @cpu_dev, align 4
  %24 = tail call i32 @clk_bulk_get(ptr noundef %23, i32 noundef %22, ptr noundef nonnull @clks) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %294

26:                                               ; preds = %21
  %27 = load ptr, ptr @cpu_dev, align 4
  %28 = tail call ptr @regulator_get(ptr noundef %27, ptr noundef nonnull @.str.5) #7
  store ptr %28, ptr @arm_reg, align 4
  %29 = load ptr, ptr @cpu_dev, align 4
  %30 = tail call ptr @regulator_get_optional(ptr noundef %29, ptr noundef nonnull @.str.6) #7
  store ptr %30, ptr @pu_reg, align 4
  %31 = load ptr, ptr @cpu_dev, align 4
  %32 = tail call ptr @regulator_get(ptr noundef %31, ptr noundef nonnull @.str.7) #7
  store ptr %32, ptr @soc_reg, align 4
  %33 = load ptr, ptr @arm_reg, align 4
  %34 = icmp eq ptr %33, inttoptr (i32 -517 to ptr)
  br i1 %34, label %283, label %35

35:                                               ; preds = %26
  %36 = icmp eq ptr %32, inttoptr (i32 -517 to ptr)
  %37 = load ptr, ptr @pu_reg, align 4
  %38 = icmp eq ptr %37, inttoptr (i32 -517 to ptr)
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %278, label %40

40:                                               ; preds = %35
  %41 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %42 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %43 = select i1 %41, i1 true, i1 %42
  %44 = load ptr, ptr @cpu_dev, align 4
  br i1 %43, label %45, label %46

45:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.8) #8
  br label %278

46:                                               ; preds = %40
  %47 = tail call i32 @dev_pm_opp_of_add_table(ptr noundef %44) #7
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load ptr, ptr @cpu_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.9, i32 noundef %47) #8
  br label %278

51:                                               ; preds = %46
  %52 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %114, label %57

57:                                               ; preds = %54, %51
  %58 = load ptr, ptr @cpu_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %59 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 25
  %60 = load ptr, ptr %59, align 8
  %61 = tail call ptr @of_find_property(ptr noundef %60, ptr noundef nonnull @.str.23, ptr noundef null) #7
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = call i32 @nvmem_cell_read_u32(ptr noundef %58, ptr noundef nonnull @.str.24, ptr noundef nonnull %2) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %112

66:                                               ; preds = %63
  %67 = load i32, ptr %2, align 4
  br label %82

68:                                               ; preds = %57
  %69 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26) #7
  %73 = icmp eq ptr %72, null
  br i1 %73, label %112, label %74

74:                                               ; preds = %71, %68
  %75 = phi ptr [ %72, %71 ], [ %69, %68 ]
  %76 = tail call ptr @of_iomap(ptr noundef nonnull %75, i32 noundef 0) #7
  tail call void @of_node_put(ptr noundef nonnull %75) #7
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.27) #8
  br label %112

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %76, i32 1088
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !9
  tail call void @iounmap(ptr noundef nonnull %76) #7
  br label %82

82:                                               ; preds = %79, %66
  %83 = phi i32 [ %67, %66 ], [ %81, %79 ]
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 3
  store i32 %85, ptr %2, align 4
  %86 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #7
  %87 = icmp ne i32 %86, 0
  %88 = load i32, ptr %2, align 4
  %89 = icmp ne i32 %88, 2
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = call i32 @dev_pm_opp_disable(ptr noundef %58, i32 noundef 696000000) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.28) #8
  br label %95

95:                                               ; preds = %94, %91, %82
  %96 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %2, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = call i32 @dev_pm_opp_disable(ptr noundef %58, i32 noundef 792000000) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.29) #8
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, ptr %2, align 4
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %112, label %108

108:                                              ; preds = %105, %98
  %109 = call i32 @dev_pm_opp_disable(ptr noundef %58, i32 noundef 900000000) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.30) #8
  br label %112

112:                                              ; preds = %111, %108, %105, %95, %78, %71, %63
  %113 = phi i32 [ %64, %63 ], [ 0, %105 ], [ 0, %111 ], [ 0, %108 ], [ 0, %95 ], [ -2, %71 ], [ -14, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %117

114:                                              ; preds = %54
  %115 = load ptr, ptr @cpu_dev, align 4
  %116 = tail call fastcc i32 @imx6q_opp_check_speed_grading(ptr noundef %115)
  br label %117

117:                                              ; preds = %114, %112
  %118 = phi i32 [ %113, %112 ], [ %116, %114 ]
  switch i32 %118, label %119 [
    i32 0, label %121
    i32 -517, label %275
  ]

119:                                              ; preds = %117
  %120 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.10, i32 noundef %118) #8
  br label %275

121:                                              ; preds = %117
  %122 = load ptr, ptr @cpu_dev, align 4
  %123 = call i32 @dev_pm_opp_get_opp_count(ptr noundef %122) #7
  %124 = icmp slt i32 %123, 0
  %125 = load ptr, ptr @cpu_dev, align 4
  br i1 %124, label %126, label %127

126:                                              ; preds = %121
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.11, i32 noundef %123) #8
  br label %275

127:                                              ; preds = %121
  %128 = call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef %125, ptr noundef nonnull @freq_table) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.12, i32 noundef %128) #8
  br label %275

132:                                              ; preds = %127
  %133 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %123, i32 4) #7
  %134 = extractvalue { i32, i1 } %133, 1
  br i1 %134, label %135, label %136, !prof !10

135:                                              ; preds = %132
  store ptr null, ptr @imx6_soc_volt, align 4
  br label %272

136:                                              ; preds = %132
  %137 = load ptr, ptr @cpu_dev, align 4
  %138 = extractvalue { i32, i1 } %133, 0
  %139 = call noalias ptr @devm_kmalloc(ptr noundef %137, i32 noundef %138, i32 noundef 3520) #7
  store ptr %139, ptr @imx6_soc_volt, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %272, label %141

141:                                              ; preds = %136
  %142 = call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %143 = icmp eq ptr %142, null
  br i1 %143, label %190, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.property, ptr %142, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %190, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.property, ptr %142, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %190

153:                                              ; preds = %148
  %154 = lshr i32 %150, 3
  %155 = add i32 %123, -1
  %156 = icmp ult i32 %155, %154
  br i1 %156, label %157, label %190

157:                                              ; preds = %153
  %158 = load i32, ptr @soc_opp_count, align 4
  %159 = icmp ult i32 %150, 8
  %160 = load ptr, ptr @imx6_soc_volt, align 4
  %161 = call i32 @llvm.umax.i32(i32 %154, i32 1)
  br label %162

162:                                              ; preds = %186, %157
  %163 = phi i32 [ 0, %157 ], [ %188, %186 ]
  %164 = phi i32 [ %158, %157 ], [ %187, %186 ]
  br i1 %159, label %186, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr %145, align 4
  %167 = load ptr, ptr @freq_table, align 4
  %168 = getelementptr %struct.cpufreq_frequency_table, ptr %167, i32 %163, i32 2
  %169 = load i32, ptr %168, align 4
  br label %170

170:                                              ; preds = %182, %165
  %171 = phi i32 [ 0, %165 ], [ %184, %182 ]
  %172 = phi ptr [ %166, %165 ], [ %183, %182 ]
  %173 = load i32, ptr %172, align 4
  %174 = call i32 @llvm.bswap.i32(i32 %173) #7
  %175 = icmp eq i32 %169, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = getelementptr i32, ptr %172, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %178) #7
  %180 = add i32 %164, 1
  store i32 %180, ptr @soc_opp_count, align 4
  %181 = getelementptr i32, ptr %160, i32 %164
  store i32 %179, ptr %181, align 4
  br label %186

182:                                              ; preds = %170
  %183 = getelementptr i32, ptr %172, i32 2
  %184 = add nuw nsw i32 %171, 1
  %185 = icmp eq i32 %184, %161
  br i1 %185, label %186, label %170

186:                                              ; preds = %182, %176, %162
  %187 = phi i32 [ %180, %176 ], [ %164, %162 ], [ %164, %182 ]
  %188 = add nuw i32 %163, 1
  %189 = icmp eq i32 %188, %123
  br i1 %189, label %190, label %162

190:                                              ; preds = %186, %153, %148, %144, %141
  %191 = load i32, ptr @soc_opp_count, align 4
  %192 = icmp eq i32 %191, %123
  br i1 %192, label %213, label %193

193:                                              ; preds = %190
  %194 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %194, ptr noundef nonnull @.str.14) #8
  %195 = icmp eq i32 %123, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr @imx6_soc_volt, align 4
  br label %198

198:                                              ; preds = %198, %196
  %199 = phi i32 [ 0, %196 ], [ %201, %198 ]
  %200 = getelementptr i32, ptr %197, i32 %199
  store i32 1250000, ptr %200, align 4
  %201 = add nuw i32 %199, 1
  %202 = icmp eq i32 %201, %123
  br i1 %202, label %203, label %198

203:                                              ; preds = %198, %193
  %204 = load ptr, ptr @freq_table, align 4
  %205 = add i32 %123, -1
  %206 = getelementptr %struct.cpufreq_frequency_table, ptr %204, i32 %205, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = mul i32 %207, 1000
  %209 = icmp eq i32 %208, 1200000000
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load ptr, ptr @imx6_soc_volt, align 4
  %212 = getelementptr i32, ptr %211, i32 %205
  store i32 1275000, ptr %212, align 4
  br label %213

213:                                              ; preds = %210, %203, %190
  %214 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @transition_latency, i32 noundef 1, i32 noundef 0) #7
  %215 = icmp sgt i32 %214, -1
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  store i32 -1, ptr @transition_latency, align 4
  br label %217

217:                                              ; preds = %216, %213
  %218 = load ptr, ptr @soc_reg, align 4
  %219 = load ptr, ptr @imx6_soc_volt, align 4
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %123, -1
  %222 = getelementptr i32, ptr %219, i32 %221
  %223 = load i32, ptr %222, align 4
  %224 = call i32 @regulator_set_voltage_time(ptr noundef %218, i32 noundef %220, i32 noundef %223) #7
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %217
  %227 = mul i32 %224, 1000
  %228 = load i32, ptr @transition_latency, align 4
  %229 = add i32 %228, %227
  store i32 %229, ptr @transition_latency, align 4
  br label %230

230:                                              ; preds = %226, %217
  %231 = load ptr, ptr @pu_reg, align 4
  %232 = icmp ugt ptr %231, inttoptr (i32 -4096 to ptr)
  br i1 %232, label %244, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr @imx6_soc_volt, align 4
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr i32, ptr %234, i32 %221
  %237 = load i32, ptr %236, align 4
  %238 = call i32 @regulator_set_voltage_time(ptr noundef %231, i32 noundef %235, i32 noundef %237) #7
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = mul i32 %238, 1000
  %242 = load i32, ptr @transition_latency, align 4
  %243 = add i32 %242, %241
  store i32 %243, ptr @transition_latency, align 4
  br label %244

244:                                              ; preds = %240, %233, %230
  %245 = load ptr, ptr @freq_table, align 4
  %246 = getelementptr %struct.cpufreq_frequency_table, ptr %245, i32 %221, i32 2
  %247 = load i32, ptr %246, align 4
  store i32 %247, ptr @max_freq, align 4
  %248 = load ptr, ptr @cpu_dev, align 4
  %249 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %245, i32 0, i32 2
  %250 = load i32, ptr %249, align 4
  %251 = mul i32 %250, 1000
  %252 = call ptr @dev_pm_opp_find_freq_exact(ptr noundef %248, i32 noundef %251, i1 noundef zeroext true) #7
  %253 = call i32 @dev_pm_opp_get_voltage(ptr noundef %252) #7
  call void @dev_pm_opp_put(ptr noundef %252) #7
  %254 = load ptr, ptr @cpu_dev, align 4
  %255 = load i32, ptr @max_freq, align 4
  %256 = mul i32 %255, 1000
  %257 = call ptr @dev_pm_opp_find_freq_exact(ptr noundef %254, i32 noundef %256, i1 noundef zeroext true) #7
  %258 = call i32 @dev_pm_opp_get_voltage(ptr noundef %257) #7
  call void @dev_pm_opp_put(ptr noundef %257) #7
  %259 = load ptr, ptr @arm_reg, align 4
  %260 = call i32 @regulator_set_voltage_time(ptr noundef %259, i32 noundef %253, i32 noundef %258) #7
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %244
  %263 = mul i32 %260, 1000
  %264 = load i32, ptr @transition_latency, align 4
  %265 = add i32 %264, %263
  store i32 %265, ptr @transition_latency, align 4
  br label %266

266:                                              ; preds = %262, %244
  %267 = call i32 @cpufreq_register_driver(ptr noundef nonnull @imx6q_cpufreq_driver) #7
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %270, ptr noundef nonnull @.str.16, i32 noundef %267) #8
  br label %272

271:                                              ; preds = %266
  call void @of_node_put(ptr noundef nonnull %10) #7
  br label %296

272:                                              ; preds = %269, %136, %135
  %273 = phi i32 [ %267, %269 ], [ -12, %136 ], [ -12, %135 ]
  %274 = load ptr, ptr @cpu_dev, align 4
  call void @dev_pm_opp_free_cpufreq_table(ptr noundef %274, ptr noundef nonnull @freq_table) #7
  br label %275

275:                                              ; preds = %272, %130, %126, %119, %117
  %276 = phi i32 [ %118, %119 ], [ %123, %126 ], [ %128, %130 ], [ %273, %272 ], [ %118, %117 ]
  %277 = load ptr, ptr @cpu_dev, align 4
  call void @dev_pm_opp_of_remove_table(ptr noundef %277) #7
  br label %278

278:                                              ; preds = %275, %49, %45, %35
  %279 = phi i32 [ -517, %35 ], [ %276, %275 ], [ %47, %49 ], [ -2, %45 ]
  %280 = load ptr, ptr @arm_reg, align 4
  %281 = icmp ugt ptr %280, inttoptr (i32 -4096 to ptr)
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  call void @regulator_put(ptr noundef %280) #7
  br label %283

283:                                              ; preds = %282, %278, %26
  %284 = phi i32 [ %279, %282 ], [ %279, %278 ], [ -517, %26 ]
  %285 = load ptr, ptr @pu_reg, align 4
  %286 = icmp ugt ptr %285, inttoptr (i32 -4096 to ptr)
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  call void @regulator_put(ptr noundef %285) #7
  br label %288

288:                                              ; preds = %287, %283
  %289 = load ptr, ptr @soc_reg, align 4
  %290 = icmp ugt ptr %289, inttoptr (i32 -4096 to ptr)
  br i1 %290, label %292, label %291

291:                                              ; preds = %288
  call void @regulator_put(ptr noundef %289) #7
  br label %292

292:                                              ; preds = %291, %288
  %293 = load i32, ptr @num_clks, align 4
  call void @clk_bulk_put(i32 noundef %293, ptr noundef nonnull @clks) #7
  br label %294

294:                                              ; preds = %292, %21
  %295 = phi i32 [ %24, %21 ], [ %284, %292 ]
  call void @of_node_put(ptr noundef nonnull %10) #7
  br label %296

296:                                              ; preds = %294, %271, %12, %5
  %297 = phi i32 [ %295, %294 ], [ 0, %271 ], [ -2, %12 ], [ -19, %5 ]
  ret i32 %297
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6q_cpufreq_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @imx6q_cpufreq_driver) #7
  %3 = load ptr, ptr @cpu_dev, align 4
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %3, ptr noundef nonnull @freq_table) #7
  %4 = load ptr, ptr @cpu_dev, align 4
  tail call void @dev_pm_opp_of_remove_table(ptr noundef %4) #7
  %5 = load ptr, ptr @arm_reg, align 4
  tail call void @regulator_put(ptr noundef %5) #7
  %6 = load ptr, ptr @pu_reg, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @regulator_put(ptr noundef %6) #7
  br label %9

9:                                                ; preds = %8, %1
  %10 = load ptr, ptr @soc_reg, align 4
  tail call void @regulator_put(ptr noundef %10) #7
  %11 = load i32, ptr @num_clks, align 4
  tail call void @clk_bulk_put(i32 noundef %11, ptr noundef nonnull @clks) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imx6q_opp_check_speed_grading(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef null) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = call i32 @nvmem_cell_read_u32(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %2) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @of_iomap(ptr noundef nonnull %13, i32 noundef 0) #7
  tail call void @of_node_put(ptr noundef nonnull %13) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.27) #8
  br label %51

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %16, i32 1088
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !9
  tail call void @iounmap(ptr noundef nonnull %16) #7
  br label %22

22:                                               ; preds = %19, %10
  %23 = phi i32 [ %11, %10 ], [ %21, %19 ]
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 3
  store i32 %25, ptr %2, align 4
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 @dev_pm_opp_disable(ptr noundef %0, i32 noundef 996000000) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.32) #8
  br label %31

31:                                               ; preds = %30, %27, %22
  %32 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.33) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.34) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %34, %31
  %38 = load i32, ptr %2, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = call i32 @dev_pm_opp_disable(ptr noundef %0, i32 noundef 852000000) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.35) #8
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, ptr %2, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %51, label %47

47:                                               ; preds = %44, %37
  %48 = call i32 @dev_pm_opp_disable(ptr noundef %0, i32 noundef 1200000000) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.36) #8
  br label %51

51:                                               ; preds = %50, %47, %44, %34, %18, %12, %7
  %52 = phi i32 [ -14, %18 ], [ %8, %7 ], [ -2, %12 ], [ 0, %44 ], [ 0, %50 ], [ 0, %47 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6q_cpufreq_init(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 0, i32 1), align 4
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 5
  store ptr %2, ptr %3, align 4
  %4 = load ptr, ptr @freq_table, align 4
  %5 = load i32, ptr @transition_latency, align 4
  tail call void @cpufreq_generic_init(ptr noundef %0, ptr noundef %4, i32 noundef %5) #7
  %6 = load i32, ptr @max_freq, align 4
  %7 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 10
  store i32 %6, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6q_set_target(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = load ptr, ptr @freq_table, align 4
  %5 = getelementptr %struct.cpufreq_frequency_table, ptr %4, i32 %1, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, 1000
  store i32 %7, ptr %3, align 4
  %8 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 0, i32 1), align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #7
  %10 = udiv i32 %9, 1000
  %11 = load ptr, ptr @cpu_dev, align 4
  %12 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %11, ptr noundef nonnull %3) #7
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load ptr, ptr @cpu_dev, align 4
  %16 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef %16) #8
  %17 = ptrtoint ptr %12 to i32
  br label %176

18:                                               ; preds = %2
  %19 = call i32 @dev_pm_opp_get_voltage(ptr noundef %12) #7
  call void @dev_pm_opp_put(ptr noundef %12) #7
  %20 = load ptr, ptr @arm_reg, align 4
  %21 = call i32 @regulator_get_voltage(ptr noundef %20) #7
  %22 = icmp ugt i32 %6, %10
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = load ptr, ptr @pu_reg, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @imx6_soc_volt, align 4
  %28 = getelementptr i32, ptr %27, i32 %1
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @regulator_set_voltage(ptr noundef %24, i32 noundef %29, i32 noundef %29) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = call i32 @regulator_set_voltage(ptr noundef %24, i32 noundef %29, i32 noundef %29) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.38, i32 noundef %33) #8
  br label %176

37:                                               ; preds = %32, %26, %23
  %38 = load ptr, ptr @soc_reg, align 4
  %39 = load ptr, ptr @imx6_soc_volt, align 4
  %40 = getelementptr i32, ptr %39, i32 %1
  %41 = load i32, ptr %40, align 4
  %42 = call i32 @regulator_set_voltage(ptr noundef %38, i32 noundef %41, i32 noundef %41) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = call i32 @regulator_set_voltage(ptr noundef %38, i32 noundef %41, i32 noundef %41) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.39, i32 noundef %45) #8
  br label %176

49:                                               ; preds = %44, %37
  %50 = load ptr, ptr @arm_reg, align 4
  %51 = call i32 @regulator_set_voltage(ptr noundef %50, i32 noundef %19, i32 noundef %19) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = call i32 @regulator_set_voltage(ptr noundef %50, i32 noundef %19, i32 noundef %19) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.40, i32 noundef %54) #8
  br label %176

58:                                               ; preds = %53, %49, %18
  %59 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %97, label %64

64:                                               ; preds = %61, %58
  %65 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 0, i32 1), align 4
  %66 = lshr i32 %10, 1
  %67 = mul nuw nsw i32 %66, 1000
  %68 = call i32 @clk_set_rate(ptr noundef %65, i32 noundef %67) #7
  %69 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %70 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  %71 = call i32 @clk_set_parent(ptr noundef %69, ptr noundef %70) #7
  %72 = load i32, ptr %3, align 4
  %73 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 4, i32 1), align 4
  %74 = call i32 @clk_get_rate(ptr noundef %73) #7
  %75 = icmp ugt i32 %72, %74
  %76 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 6, i32 1), align 4
  %77 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 5, i32 1), align 4
  %78 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 4, i32 1), align 4
  %79 = select i1 %75, ptr %77, ptr %78
  %80 = call i32 @clk_set_parent(ptr noundef %76, ptr noundef %79) #7
  %81 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 2, i32 1), align 4
  %82 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 6, i32 1), align 4
  %83 = call i32 @clk_set_parent(ptr noundef %81, ptr noundef %82) #7
  %84 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %85 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 2, i32 1), align 4
  %86 = call i32 @clk_set_parent(ptr noundef %84, ptr noundef %85) #7
  %87 = load i32, ptr %3, align 4
  %88 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 5, i32 1), align 4
  %89 = call i32 @clk_get_rate(ptr noundef %88) #7
  %90 = icmp ugt i32 %87, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %64
  %92 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  %93 = call i32 @clk_set_rate(ptr noundef %92, i32 noundef %7) #7
  %94 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %95 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  %96 = call i32 @clk_set_parent(ptr noundef %94, ptr noundef %95) #7
  br label %121

97:                                               ; preds = %61
  %98 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 2, i32 1), align 4
  %99 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 4, i32 1), align 4
  %100 = call i32 @clk_set_parent(ptr noundef %98, ptr noundef %99) #7
  %101 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %102 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 2, i32 1), align 4
  %103 = call i32 @clk_set_parent(ptr noundef %101, ptr noundef %102) #7
  %104 = load i32, ptr %3, align 4
  %105 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 4, i32 1), align 4
  %106 = call i32 @clk_get_rate(ptr noundef %105) #7
  %107 = icmp ugt i32 %104, %106
  %108 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  br i1 %107, label %109, label %114

109:                                              ; preds = %97
  %110 = call i32 @clk_set_rate(ptr noundef %108, i32 noundef %7) #7
  %111 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %112 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  %113 = call i32 @clk_set_parent(ptr noundef %111, ptr noundef %112) #7
  br label %121

114:                                              ; preds = %97
  %115 = call i32 @clk_prepare(ptr noundef %108) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = call i32 @clk_enable(ptr noundef %108) #7
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call void @clk_unprepare(ptr noundef %108) #7
  br label %121

121:                                              ; preds = %120, %117, %114, %109, %91, %64
  %122 = phi i1 [ false, %91 ], [ false, %64 ], [ false, %109 ], [ true, %114 ], [ true, %117 ], [ true, %120 ]
  %123 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 0, i32 1), align 4
  %124 = call i32 @clk_set_rate(ptr noundef %123, i32 noundef %7) #7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.41, i32 noundef %124) #8
  %128 = load ptr, ptr @arm_reg, align 4
  %129 = call i32 @regulator_set_voltage(ptr noundef %128, i32 noundef %21, i32 noundef %21) #7
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %176, label %131

131:                                              ; preds = %126
  %132 = call i32 @regulator_set_voltage(ptr noundef %128, i32 noundef %21, i32 noundef %21) #7
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %176, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %135, ptr noundef nonnull @.str.42, i32 noundef %132) #8
  br label %176

136:                                              ; preds = %121
  br i1 %122, label %137, label %139

137:                                              ; preds = %136
  %138 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  call void @clk_disable(ptr noundef %138) #7
  call void @clk_unprepare(ptr noundef %138) #7
  br label %139

139:                                              ; preds = %137, %136
  %140 = icmp ult i32 %6, %10
  br i1 %140, label %141, label %176

141:                                              ; preds = %139
  %142 = load ptr, ptr @arm_reg, align 4
  %143 = call i32 @regulator_set_voltage(ptr noundef %142, i32 noundef %19, i32 noundef %19) #7
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = call i32 @regulator_set_voltage(ptr noundef %142, i32 noundef %19, i32 noundef %19) #7
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %149, ptr noundef nonnull @.str.43, i32 noundef %146) #8
  br label %150

150:                                              ; preds = %148, %145, %141
  %151 = load ptr, ptr @soc_reg, align 4
  %152 = load ptr, ptr @imx6_soc_volt, align 4
  %153 = getelementptr i32, ptr %152, i32 %1
  %154 = load i32, ptr %153, align 4
  %155 = call i32 @regulator_set_voltage(ptr noundef %151, i32 noundef %154, i32 noundef %154) #7
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %150
  %158 = call i32 @regulator_set_voltage(ptr noundef %151, i32 noundef %154, i32 noundef %154) #7
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.44, i32 noundef %158) #8
  br label %162

162:                                              ; preds = %160, %157, %150
  %163 = load ptr, ptr @pu_reg, align 4
  %164 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %176, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr @imx6_soc_volt, align 4
  %167 = getelementptr i32, ptr %166, i32 %1
  %168 = load i32, ptr %167, align 4
  %169 = call i32 @regulator_set_voltage(ptr noundef %163, i32 noundef %168, i32 noundef %168) #7
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %165
  %172 = call i32 @regulator_set_voltage(ptr noundef %163, i32 noundef %168, i32 noundef %168) #7
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %175, ptr noundef nonnull @.str.45, i32 noundef %172) #8
  br label %176

176:                                              ; preds = %174, %171, %165, %162, %139, %134, %131, %126, %56, %47, %35, %14
  %177 = phi i32 [ %17, %14 ], [ %45, %47 ], [ %54, %56 ], [ %33, %35 ], [ %124, %134 ], [ %124, %131 ], [ 0, %162 ], [ 0, %174 ], [ 0, %171 ], [ 0, %139 ], [ %124, %126 ], [ 0, %165 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %177
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_suspend(ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpufreq_register_em_with_opp(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @get_cpu_device(i32 noundef %3) #7
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  %6 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %4, ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_generic_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i64 3966501}
!10 = !{!"branch_weights", i32 1, i32 2000}
