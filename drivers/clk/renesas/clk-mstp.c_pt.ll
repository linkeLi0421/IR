; ModuleID = '/llk/IR/drivers/clk/renesas/clk-mstp.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-mstp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_power_governor = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mstp_clock_group = type { %struct.clk_onecell_data, ptr, ptr, %struct.spinlock, i8, [0 x ptr] }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mstp_clock = type { %struct.clk_hw, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_cpg_mstp_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,cpg-mstp-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpg_mstp_clocks_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"renesas,cpg-mstp-clocks\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"zb_clk\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\014%pOF lacks #power-domain-cells\0A\00", align 1
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"\013%s: failed to remap SMSTPCR\0A\00", align 1
@__func__.cpg_mstp_clocks_init = private unnamed_addr constant [21 x i8] c"cpg_mstp_clocks_init\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"renesas,r7s72100-mstp-clocks\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"clock-indices\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"renesas,clock-indices\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\013%s: invalid clock %pOFn %s index %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", align 1
@cpg_mstp_clock_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cpg_mstp_clock_enable, ptr @cpg_mstp_clock_disable, ptr @cpg_mstp_clock_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"intc-sys\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\013%s: failed to enable %p[%d]\0A\00", align 1
@__func__.cpg_mstp_clock_endisable = private unnamed_addr constant [25 x i8] c"cpg_mstp_clock_endisable\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_cpg_mstp_clks], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cpg_mstp_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 152) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %80, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mstp_clock_group, ptr %6, i32 0, i32 5
  %10 = getelementptr inbounds %struct.mstp_clock_group, ptr %6, i32 0, i32 3
  store i32 0, ptr %10, align 8
  store ptr %9, ptr %6, align 8
  %11 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %12 = getelementptr inbounds %struct.mstp_clock_group, ptr %6, i32 0, i32 1
  store ptr %11, ptr %12, align 8
  %13 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 1) #9
  %14 = getelementptr inbounds %struct.mstp_clock_group, ptr %6, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = load ptr, ptr %12, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpg_mstp_clocks_init) #11
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %80

19:                                               ; preds = %8
  %20 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.mstp_clock_group, ptr %6, i32 0, i32 4
  store i8 1, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %19
  br label %25

25:                                               ; preds = %25, %24
  %26 = phi i32 [ %28, %25 ], [ 0, %24 ]
  %27 = getelementptr ptr, ptr %9, i32 %26
  store ptr inttoptr (i32 -2 to ptr), ptr %27, align 4
  %28 = add nuw nsw i32 %26, 1
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %25

30:                                               ; preds = %25
  store i32 32, ptr %2, align 4
  %31 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %2) #9
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @.str.9, ptr @.str.8
  store i32 0, ptr %2, align 4
  %34 = getelementptr inbounds %struct.clk_onecell_data, ptr %6, i32 0, i32 1
  br label %35

35:                                               ; preds = %74, %30
  %36 = phi i32 [ 0, %30 ], [ %76, %74 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %37 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %36) #9
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %3, align 4
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %2, align 4
  %45 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %44) #9
  %46 = load i32, ptr %2, align 4
  %47 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull %33, i32 noundef %46, ptr noundef nonnull %4) #9
  %48 = icmp eq ptr %45, null
  %49 = icmp slt i32 %47, 0
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %73, label %51

51:                                               ; preds = %43
  %52 = load i32, ptr %4, align 4
  %53 = icmp ugt i32 %52, 31
  %54 = load ptr, ptr %3, align 4
  br i1 %53, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.cpg_mstp_clocks_init, ptr noundef %0, ptr noundef %54, i32 noundef %52) #11
  br label %74

57:                                               ; preds = %51
  %58 = call fastcc ptr @cpg_mstp_clock_register(ptr noundef %54, ptr noundef nonnull %45, i32 noundef %52, ptr noundef nonnull %6) #12
  %59 = load i32, ptr %4, align 4
  %60 = getelementptr ptr, ptr %9, i32 %59
  store ptr %58, ptr %60, align 4
  %61 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load i32, ptr %34, align 4
  %64 = add i32 %59, 1
  %65 = call i32 @llvm.umax.i32(i32 %63, i32 %64)
  store i32 %65, ptr %34, align 4
  %66 = load ptr, ptr %60, align 4
  %67 = load ptr, ptr %3, align 4
  %68 = call i32 @clk_register_clkdev(ptr noundef %66, ptr noundef %67, ptr noundef null) #9
  br label %74

69:                                               ; preds = %57
  %70 = load ptr, ptr %3, align 4
  %71 = ptrtoint ptr %58 to i32
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cpg_mstp_clocks_init, ptr noundef %0, ptr noundef %70, i32 noundef %71) #11
  br label %74

73:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %78

74:                                               ; preds = %69, %62, %55, %39, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %75 = load i32, ptr %2, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %2, align 4
  %77 = icmp ult i32 %76, 32
  br i1 %77, label %35, label %78

78:                                               ; preds = %74, %73
  %79 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %6) #9
  br label %80

80:                                               ; preds = %78, %17, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpg_mstp_attach_dev(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %3) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %16, %2
  %9 = phi i32 [ %18, %16 ], [ 0, %2 ]
  %10 = load ptr, ptr %3, align 4
  %11 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.2) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 4
  %15 = call zeroext i1 @of_node_name_eq(ptr noundef %14, ptr noundef nonnull @.str.3) #9
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %17) #9
  %18 = add i32 %9, 1
  %19 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %18, ptr noundef nonnull %3) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %8, label %36

21:                                               ; preds = %13, %8
  %22 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %3) #9
  %23 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %23) #9
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = ptrtoint ptr %22 to i32
  br label %36

27:                                               ; preds = %21
  %28 = call i32 @pm_clk_create(ptr noundef %1) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 @pm_clk_add_clk(ptr noundef %1, ptr noundef %22) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  call void @pm_clk_destroy(ptr noundef %1) #9
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ %28, %27 ], [ %31, %33 ]
  call void @clk_put(ptr noundef %22) #9
  br label %36

36:                                               ; preds = %34, %30, %25, %16, %2
  %37 = phi i32 [ %26, %25 ], [ %35, %34 ], [ 0, %30 ], [ 0, %2 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add_clk(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpg_mstp_detach_dev(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 26
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 4
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %4, %2
  tail call void @pm_clk_destroy(ptr noundef %1) #9
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cpg_mstp_add_clk_domain(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #11
  br label %19

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %9 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 800) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 10
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 32
  store i32 13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 30
  store ptr @cpg_mstp_attach_dev, ptr %15, align 4
  %16 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 31
  store ptr @cpg_mstp_detach_dev, ptr %16, align 8
  %17 = call i32 @pm_genpd_init(ptr noundef nonnull %9, ptr noundef nonnull @pm_domain_always_on_gov, i1 noundef zeroext false) #9
  %18 = call i32 @of_genpd_add_provider_simple(ptr noundef %0, ptr noundef nonnull %9) #9
  br label %19

19:                                               ; preds = %11, %7, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @cpg_mstp_clock_register(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false)
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 20) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  store ptr %0, ptr %6, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @cpg_mstp_clock_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  %14 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(9) @.str.13)
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 2052, i32 4
  store i32 %16, ptr %13, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mstp_clock, ptr %9, i32 0, i32 1
  store i32 %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mstp_clock, ptr %9, i32 0, i32 2
  store ptr %3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 2
  store ptr %6, ptr %21, align 8
  %22 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %9) #9
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  call void @kfree(ptr noundef nonnull %9) #9
  br label %25

25:                                               ; preds = %24, %11, %4
  %26 = phi ptr [ %22, %24 ], [ %22, %11 ], [ inttoptr (i32 -12 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mstp_clock_enable(ptr nocapture noundef readonly %0) #1 {
  %2 = tail call fastcc i32 @cpg_mstp_clock_endisable(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpg_mstp_clock_disable(ptr nocapture noundef readonly %0) #1 {
  %2 = tail call fastcc i32 @cpg_mstp_clock_endisable(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mstp_clock_is_enabled(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mstp_clock_group, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mstp_clock_group, ptr %3, i32 0, i32 4
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %13 = zext i8 %12 to i32
  br label %27

14:                                               ; preds = %7
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  br label %27

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.mstp_clock_group, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mstp_clock_group, ptr %3, i32 0, i32 4
  %20 = load i8, ptr %19, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %24 = zext i8 %23 to i32
  br label %27

25:                                               ; preds = %16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  br label %27

27:                                               ; preds = %25, %22, %14, %11
  %28 = phi i32 [ %13, %11 ], [ %15, %14 ], [ %24, %22 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %28, -1
  %32 = lshr i32 %31, %30
  %33 = and i32 %32, 1
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mstp_clock_endisable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.mstp_clock_group, ptr %4, i32 0, i32 3
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.mstp_clock_group, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mstp_clock_group, ptr %4, i32 0, i32 4
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %17 = zext i8 %16 to i32
  br label %20

18:                                               ; preds = %2
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %17, %15 ], [ %19, %18 ]
  %22 = xor i32 %7, -1
  %23 = and i32 %21, %22
  %24 = or i32 %21, %7
  %25 = select i1 %1, i32 %23, i32 %24
  %26 = load ptr, ptr %10, align 4
  %27 = load i8, ptr %12, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = trunc i32 %25 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %30) #9, !srcloc !14
  br label %32

31:                                               ; preds = %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #9, !srcloc !15
  br label %32

32:                                               ; preds = %31, %29
  %33 = getelementptr inbounds %struct.mstp_clock_group, ptr %4, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load ptr, ptr %10, align 4
  %38 = load i8, ptr %12, align 4, !range !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %37) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  br label %44

42:                                               ; preds = %36
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  br label %44

44:                                               ; preds = %42, %40
  %45 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "r,~{memory}"(ptr %45) #9, !srcloc !16
  br label %46

46:                                               ; preds = %44, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  br i1 %1, label %47, label %73

47:                                               ; preds = %46
  %48 = load ptr, ptr %33, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %73, label %50

50:                                               ; preds = %67, %47
  %51 = phi ptr [ %68, %67 ], [ %48, %47 ]
  %52 = phi i32 [ %65, %67 ], [ 1000, %47 ]
  %53 = load i8, ptr %12, align 4, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %51) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %57 = zext i8 %56 to i32
  br label %60

58:                                               ; preds = %50
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %57, %55 ], [ %59, %58 ]
  %62 = and i32 %61, %7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !18
  %65 = add nsw i32 %52, -1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %33, align 4
  br label %50

69:                                               ; preds = %64
  %70 = load ptr, ptr %10, align 4
  %71 = load i32, ptr %5, align 4
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.cpg_mstp_clock_endisable, ptr noundef %70, i32 noundef %71) #11
  br label %73

73:                                               ; preds = %69, %60, %47, %46
  %74 = phi i32 [ -110, %69 ], [ 0, %47 ], [ 0, %46 ], [ 0, %60 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { cold }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 3934148}
!11 = !{i64 2151507596}
!12 = !{i64 3934368}
!13 = !{i64 2151507888}
!14 = !{i64 3933753}
!15 = !{i64 3933950}
!16 = !{i64 2151510219}
!17 = !{i64 2151510471}
!18 = !{i64 2151510313}
