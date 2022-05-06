; ModuleID = '/llk/IR/drivers/soc/renesas/rmobile-sysc.c_pt.bc'
source_filename = "../drivers/soc/renesas/rmobile-sysc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.special_pd = type { ptr, i32 }
%struct.dev_power_governor = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.rmobile_pm_domain = type { %struct.generic_pm_domain, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_rmobile_sysc__166_354_rmobile_init_pm_domains1 = internal global ptr @rmobile_init_pm_domains, section ".initcall1.init", align 4
@.str = private unnamed_addr constant [21 x i8] c"renesas,sysc-rmobile\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\014%pOF cannot map reg 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pm-domains\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\014%pOF lacks pm-domains node\0A\00", align 1
@of_stdout = external dso_local local_unnamed_addr global ptr, align 4
@special_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,coresight-etm3x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,dbsc-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,dbsc3-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sbsc-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@num_special_pds = internal unnamed_addr global i32 0, section ".init.data", align 4
@special_pds = internal unnamed_addr global [16 x %struct.special_pd] zeroinitializer, section ".init.data", align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"\014Too many special PM domains\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@simple_qos_governor = external dso_local global %struct.dev_power_governor, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_rmobile_sysc__166_354_rmobile_init_pm_domains1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rmobile_init_pm_domains() #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %30, %0
  %4 = phi ptr [ %32, %30 ], [ %1, %0 ]
  %5 = phi i1 [ %31, %30 ], [ false, %0 ]
  %6 = tail call ptr @of_iomap(ptr noundef nonnull %4, i32 noundef 0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #9
  br label %30

10:                                               ; preds = %3
  %11 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.2) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  tail call void @iounmap(ptr noundef nonnull %6) #8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #9
  br label %30

15:                                               ; preds = %10
  br i1 %5, label %17, label %16

16:                                               ; preds = %15
  tail call fastcc void @get_special_pds() #10
  br label %17

17:                                               ; preds = %16, %15
  %18 = tail call fastcc i32 @rmobile_add_pm_domains(ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef null) #10
  tail call void @of_node_put(ptr noundef nonnull %11) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @of_node_put(ptr noundef nonnull %4) #8
  br label %34

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3
  %23 = icmp eq ptr %22, null
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %25 = or i1 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3, i32 5
  %28 = load i8, ptr %27, align 4
  %29 = or i8 %28, 4
  store i8 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %21, %13, %8
  %31 = phi i1 [ %5, %13 ], [ %5, %8 ], [ true, %21 ], [ true, %26 ]
  %32 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %3

34:                                               ; preds = %30, %20, %0
  %35 = phi i32 [ %18, %20 ], [ 0, %0 ], [ 0, %30 ]
  tail call fastcc void @put_special_pds() #10
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @get_special_pds() unnamed_addr #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %4, %0
  %5 = phi ptr [ %6, %4 ], [ %2, %0 ]
  tail call fastcc void @add_special_pd(ptr noundef nonnull %5, i32 noundef 1) #10
  %6 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4

8:                                                ; preds = %4, %0
  %9 = load ptr, ptr @of_stdout, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call fastcc void @add_special_pd(ptr noundef nonnull %9, i32 noundef 2) #10
  br label %12

12:                                               ; preds = %11, %8
  %13 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @special_ids, ptr noundef nonnull %1) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %21, %15 ], [ %13, %12 ]
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.of_device_id, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %19 to i32
  call fastcc void @add_special_pd(ptr noundef nonnull %16, i32 noundef %20) #10
  %21 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %16, ptr noundef nonnull @special_ids, ptr noundef nonnull %1) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rmobile_add_pm_domains(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca i32, align 4
  %5 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi ptr [ %5, %7 ], [ %27, %24 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 -1, ptr %4, align 4
  %11 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %13 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 816) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  call void @of_node_put(ptr noundef nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %29

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr inbounds %struct.generic_pm_domain, ptr %13, i32 0, i32 10
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %13, i32 0, i32 3
  store ptr %0, ptr %19, align 8
  %20 = load i32, ptr %4, align 4
  %21 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %13, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  call fastcc void @rmobile_setup_pm_domain(ptr noundef nonnull %10, ptr noundef nonnull %13) #10
  br i1 %8, label %24, label %22

22:                                               ; preds = %16
  %23 = call i32 @pm_genpd_add_subdomain(ptr noundef nonnull %2, ptr noundef nonnull %13) #8
  br label %24

24:                                               ; preds = %22, %16
  %25 = call i32 @of_genpd_add_provider_simple(ptr noundef nonnull %10, ptr noundef nonnull %13) #8
  %26 = call fastcc i32 @rmobile_add_pm_domains(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %27 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %10) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9

29:                                               ; preds = %24, %15, %3
  %30 = phi i32 [ -12, %15 ], [ 0, %3 ], [ 0, %24 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @put_special_pds() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @num_special_pds, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ %7, %3 ], [ 0, %0 ]
  %5 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  tail call void @of_node_put(ptr noundef %6) #8
  %7 = add nuw i32 %4, 1
  %8 = load i32, ptr @num_special_pds, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %3, label %10

10:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @add_special_pd(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %4 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %5 = icmp ne i32 %4, 0
  %6 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr @num_special_pds, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %22, %9
  %13 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %14 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %6, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %13, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @of_node_put(ptr noundef nonnull %6) #8
  br label %33

22:                                               ; preds = %17, %12
  %23 = add nuw i32 %13, 1
  %24 = icmp eq i32 %23, %10
  br i1 %24, label %25, label %12

25:                                               ; preds = %22
  %26 = icmp eq i32 %10, 16
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  call void @of_node_put(ptr noundef nonnull %6) #8
  br label %33

29:                                               ; preds = %25, %9
  %30 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %10
  store ptr %6, ptr %30, align 4
  %31 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %10, i32 1
  store i32 %1, ptr %31, align 4
  %32 = add i32 %10, 1
  store i32 %32, ptr @num_special_pds, align 4
  br label %33

33:                                               ; preds = %29, %27, %21, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rmobile_setup_pm_domain(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load i32, ptr @num_special_pds, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %10, %2
  %6 = phi i32 [ %11, %10 ], [ 0, %2 ]
  %7 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = add nuw i32 %6, 1
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %31, label %5

13:                                               ; preds = %5
  %14 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %6, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %39 [
    i32 1, label %16
    i32 2, label %20
    i32 3, label %23
    i32 4, label %27
    i32 0, label %31
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 32
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 4
  store i32 %19, ptr %17, align 4
  br label %39

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %1, i32 0, i32 1
  store ptr @pm_domain_always_on_gov, ptr %21, align 8
  %22 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %1, i32 0, i32 2
  store ptr @rmobile_pd_suspend_console, ptr %22, align 4
  br label %39

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 32
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 4
  store i32 %26, ptr %24, align 4
  br label %39

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 32
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 4
  store i32 %30, ptr %28, align 4
  br label %39

31:                                               ; preds = %13, %10, %2
  %32 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %1, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 32
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, 4
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %35, %31, %27, %23, %20, %16, %13
  %40 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 32
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 9
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 30
  store ptr @cpg_mstp_attach_dev, ptr %45, align 4
  %46 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 31
  store ptr @cpg_mstp_detach_dev, ptr %46, align 8
  %47 = and i32 %43, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 18
  store ptr @rmobile_pd_power_down, ptr %50, align 4
  %51 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 19
  store ptr @rmobile_pd_power_up, ptr %51, align 8
  %52 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %1, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = shl nuw i32 1, %53
  %55 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %1, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr i8, ptr %56, i32 128
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %59 = and i32 %58, %54
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %62 = load ptr, ptr %55, align 8
  %63 = getelementptr i8, ptr %62, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %54) #8, !srcloc !12
  br label %64

64:                                               ; preds = %76, %61
  %65 = phi i32 [ 200, %61 ], [ %77, %76 ]
  %66 = load ptr, ptr %55, align 8
  %67 = getelementptr i8, ptr %66, i32 20
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %69 = and i32 %68, %54
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %64
  %72 = icmp ugt i32 %65, 100
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 2147480) #8
  br label %76

75:                                               ; preds = %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  br label %76

76:                                               ; preds = %75, %73
  %77 = add nsw i32 %65, -1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %64

79:                                               ; preds = %76, %64, %49, %39
  %80 = icmp eq ptr %41, null
  %81 = select i1 %80, ptr @simple_qos_governor, ptr %41
  %82 = tail call i32 @pm_genpd_init(ptr noundef %1, ptr noundef %81, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rmobile_pd_suspend_console() #6 {
  %1 = load i8, ptr @console_suspend_enabled, align 1, !range !16
  %2 = icmp eq i8 %1, 0
  %3 = select i1 %2, i32 -16, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpg_mstp_attach_dev(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mstp_detach_dev(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rmobile_pd_power_down(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = shl nuw i32 1, %3
  %5 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6() #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 128
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %16 = and i32 %15, %4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %4) #8, !srcloc !12
  br label %21

21:                                               ; preds = %28, %18
  %22 = phi i32 [ 100, %18 ], [ %29, %28 ]
  %23 = load ptr, ptr %12, align 8
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %26 = and i32 %25, %4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !21
  %29 = add nsw i32 %22, -1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %21

31:                                               ; preds = %28, %21, %11, %8
  %32 = phi i32 [ %9, %8 ], [ 0, %11 ], [ 0, %28 ], [ 0, %21 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rmobile_pd_power_up(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = shl nuw i32 1, %3
  %5 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %9 = and i32 %8, %4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %4) #8, !srcloc !12
  br label %14

14:                                               ; preds = %26, %11
  %15 = phi i32 [ 200, %11 ], [ %27, %26 ]
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %19 = and i32 %18, %4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %14
  %22 = icmp ugt i32 %15, 100
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #8
  br label %26

25:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  br label %26

26:                                               ; preds = %25, %23
  %27 = add nsw i32 %15, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %14

29:                                               ; preds = %26, %14, %1
  %30 = phi i32 [ 0, %1 ], [ 0, %14 ], [ -5, %26 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i64 3342779}
!10 = !{i64 2151433816}
!11 = !{i64 2151434013}
!12 = !{i64 3342361}
!13 = !{i64 2151434511}
!14 = !{i64 2151435306}
!15 = !{i64 2151435148}
!16 = !{i8 0, i8 2}
!17 = !{i64 2151431232}
!18 = !{i64 2151431429}
!19 = !{i64 2151431927}
!20 = !{i64 2151432173}
!21 = !{i64 2151432015}
