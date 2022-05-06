; ModuleID = '/llk/IR/drivers/cpufreq/spear-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/spear-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.6 = type { ptr, i32, ptr, i32 }
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

@__initcall__kmod_spear_cpufreq__178_243_spear_cpufreq_platdrv_init6 = internal global ptr @spear_cpufreq_platdrv_init, section ".initcall6.init", align 4
@spear_cpufreq_platdrv = internal global %struct.platform_driver { ptr @spear_cpufreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_spear_cpufreq_platdrv_exit = internal global ptr @spear_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author179 = internal constant [56 x i8] c"spear_cpufreq.author=Deepak Sikri <deepak.sikri@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description180 = internal constant [47 x i8] c"spear_cpufreq.description=SPEAr CPUFreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file181 = internal constant [49 x i8] c"spear_cpufreq.file=drivers/cpufreq/spear-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license182 = internal constant [26 x i8] c"spear_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"spear-cpufreq\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013spear_cpufreq: No cpu node found\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"clock-latency\00", align 1
@spear_cpufreq = internal global %struct.anon.6 zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"cpufreq_tbl\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\013spear_cpufreq: Invalid cpufreq_tbl\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"cpu_clk\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\013spear_cpufreq: Unable to get CPU clock\0A\00", align 1
@spear_cpufreq_driver = internal global %struct.cpufreq_driver { [16 x i8] c"cpufreq-spear\00\00\00", i16 32, ptr null, ptr @spear_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @spear_cpufreq_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"\013spear_cpufreq: failed register driver: %d\0A\00", align 1
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"st,spear1340\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"\013spear_cpufreq: Failed to get src clk\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"\013spear_cpufreq: clk_round_rate failed for cpu src clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"\013spear_cpufreq: CPU Freq: cpu clk_set_rate failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"sys_syn_clk\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"pll1_clk\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"pll2_clk\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"pll3_clk\00", align 1
@__const.spear1340_cpu_get_possible_parent.sys_clk_src = private unnamed_addr constant [4 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"\013spear_cpufreq: Failed to get %s clock\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"\013spear_cpufreq: failed to get cpu's parent (sys) clock\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"\013spear_cpufreq: Failed to set sys clk rate to %lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"\013spear_cpufreq: Failed to set sys clk parent\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description180, ptr @__UNIQUE_ID_file181, ptr @__UNIQUE_ID_license182, ptr @__exitcall_spear_cpufreq_platdrv_exit, ptr @__initcall__kmod_spear_cpufreq__178_243_spear_cpufreq_platdrv_init6, ptr @spear_cpufreq_platdrv_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spear_cpufreq_platdrv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear_cpufreq_platdrv, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spear_cpufreq_platdrv_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear_cpufreq_platdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_cpufreq_probe(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call ptr @get_cpu_device(i32 noundef 0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #6
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_node_get(ptr noundef %8) #6
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi ptr [ %9, %6 ], [ %5, %4 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %71

15:                                               ; preds = %10
  %16 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.2, ptr noundef getelementptr inbounds (%struct.anon.6, ptr @spear_cpufreq, i32 0, i32 1), i32 noundef 1, i32 noundef 0) #6
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 -1, ptr getelementptr inbounds (%struct.anon.6, ptr @spear_cpufreq, i32 0, i32 1), align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = tail call ptr @of_find_property(ptr noundef nonnull %11, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %19
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %69

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 2
  %32 = add nuw nsw i32 %31, 1
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 12) #6
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %69, label %35, !prof !8

35:                                               ; preds = %28
  %36 = extractvalue { i32, i1 } %33, 0
  %37 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %35
  %40 = icmp ult i32 %30, 4
  br i1 %40, label %52, label %41

41:                                               ; preds = %39
  %42 = call i32 @llvm.umax.i32(i32 %31, i32 1)
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i32 [ %50, %43 ], [ 0, %41 ]
  %45 = phi ptr [ %46, %43 ], [ %24, %41 ]
  %46 = getelementptr i32, ptr %45, i32 1
  %47 = load i32, ptr %45, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %49 = getelementptr %struct.cpufreq_frequency_table, ptr %37, i32 %44, i32 2
  store i32 %48, ptr %49, align 4
  %50 = add nuw nsw i32 %44, 1
  %51 = icmp eq i32 %50, %42
  br i1 %51, label %52, label %43

52:                                               ; preds = %43, %39
  %53 = phi i32 [ 0, %39 ], [ %42, %43 ]
  %54 = getelementptr %struct.cpufreq_frequency_table, ptr %37, i32 %53, i32 2
  store i32 -2, ptr %54, align 4
  store ptr %37, ptr getelementptr inbounds (%struct.anon.6, ptr @spear_cpufreq, i32 0, i32 2), align 4
  tail call void @of_node_put(ptr noundef nonnull %11) #6
  %55 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.5) #6
  store ptr %55, ptr @spear_cpufreq, align 4
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  %59 = load ptr, ptr @spear_cpufreq, align 4
  %60 = ptrtoint ptr %59 to i32
  br label %67

61:                                               ; preds = %52
  %62 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @spear_cpufreq_driver) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %62) #7
  %66 = load ptr, ptr @spear_cpufreq, align 4
  tail call void @clk_put(ptr noundef %66) #6
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi i32 [ %60, %57 ], [ %62, %64 ]
  tail call void @kfree(ptr noundef nonnull %37) #6
  br label %71

69:                                               ; preds = %35, %28, %26
  %70 = phi i32 [ -19, %26 ], [ -12, %35 ], [ -12, %28 ]
  tail call void @of_node_put(ptr noundef nonnull %11) #6
  br label %71

71:                                               ; preds = %69, %67, %61, %13
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ], [ -19, %13 ], [ 0, %61 ]
  ret i32 %72
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_cpufreq_init(ptr noundef %0) #2 {
  %2 = load ptr, ptr @spear_cpufreq, align 4
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 5
  store ptr %2, ptr %3, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.6, ptr @spear_cpufreq, i32 0, i32 2), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.anon.6, ptr @spear_cpufreq, i32 0, i32 1), align 4
  tail call void @cpufreq_generic_init(ptr noundef %0, ptr noundef %4, i32 noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_cpufreq_target(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.anon.6, ptr @spear_cpufreq, i32 0, i32 2), align 4
  %4 = getelementptr %struct.cpufreq_frequency_table, ptr %3, i32 %1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, 1000
  %7 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.8) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = icmp ult i32 %6, 300000001
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = icmp ult i32 %6, 500000001
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %6, 600000000
  br i1 %14, label %15, label %23

15:                                               ; preds = %13, %11, %9
  %16 = phi i32 [ 0, %9 ], [ 3, %11 ], [ 1, %13 ]
  %17 = getelementptr [4 x ptr], ptr @__const.spear1340_cpu_get_possible_parent.sys_clk_src, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @clk_get(ptr noundef null, ptr noundef %18) #6
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %18) #7
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi ptr [ inttoptr (i32 -22 to ptr), %13 ], [ %19, %21 ]
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  %26 = ptrtoint ptr %24 to i32
  br label %64

27:                                               ; preds = %2
  %28 = load ptr, ptr @spear_cpufreq, align 4
  %29 = tail call i32 @clk_round_rate(ptr noundef %28, i32 noundef %6) #6
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %35, label %55

31:                                               ; preds = %15
  %32 = mul i32 %5, 2000
  %33 = tail call i32 @clk_round_rate(ptr noundef %19, i32 noundef %32) #6
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %33, %31 ], [ %29, %27 ]
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %64

38:                                               ; preds = %31
  %39 = load ptr, ptr @spear_cpufreq, align 4
  %40 = tail call ptr @clk_get_parent(ptr noundef %39) #6
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  %44 = ptrtoint ptr %40 to i32
  br label %58

45:                                               ; preds = %38
  %46 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %33) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %33) #7
  br label %61

50:                                               ; preds = %45
  %51 = tail call i32 @clk_set_parent(ptr noundef %40, ptr noundef %19) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #7
  br label %61

55:                                               ; preds = %27
  %56 = load ptr, ptr @spear_cpufreq, align 4
  %57 = tail call i32 @clk_set_rate(ptr noundef %56, i32 noundef %29) #6
  br label %58

58:                                               ; preds = %55, %42
  %59 = phi i32 [ %57, %55 ], [ %44, %42 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %53, %48
  %62 = phi i32 [ %59, %58 ], [ %51, %53 ], [ %46, %48 ]
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %62) #7
  br label %64

64:                                               ; preds = %61, %58, %50, %35, %23
  %65 = phi i32 [ %26, %23 ], [ %36, %35 ], [ %62, %61 ], [ 0, %58 ], [ 0, %50 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_generic_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
