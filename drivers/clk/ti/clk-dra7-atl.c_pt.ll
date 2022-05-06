; ModuleID = '/llk/IR/drivers/clk/ti/clk-dra7-atl.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-dra7-atl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.dra7_atl_desc = type { ptr, %struct.clk_hw, ptr, i32, i8, i8, i8, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.dra7_atl_clock_info = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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

@__of_table_dra7_atl_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-atl-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_dra7_atl_clock_setup }, section "__clk_of_table", align 4
@__initcall__kmod_clk_dra7_atl__167_312_dra7_atl_clk_driver_init6 = internal global ptr @dra7_atl_clk_driver_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [40 x i8] c"\013%s: could not allocate dra7_atl_desc\0A\00", align 1
@__func__.of_dra7_atl_clock_setup = private unnamed_addr constant [24 x i8] c"of_dra7_atl_clock_setup\00", align 1
@atl_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @atl_clk_enable, ptr @atl_clk_disable, ptr @atl_clk_is_enabled, ptr null, ptr null, ptr null, ptr @atl_clk_recalc_rate, ptr @atl_clk_round_rate, ptr null, ptr null, ptr null, ptr @atl_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\013%s: atl clock %pOFn must have 1 parent\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"atl%d has not been configured\0A\00", align 1
@dra7_atl_clk_driver = internal global %struct.platform_driver { ptr @of_dra7_atl_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_dra7_atl_clk_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"dra7-atl\00", align 1
@of_dra7_atl_clk_match_tbl = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-atl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"ti,provided-clocks\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\013%s: failed to lookup atl clock %d\0A\00", align 1
@__func__.of_dra7_atl_clk_probe = private unnamed_addr constant [22 x i8] c"of_dra7_atl_clk_probe\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\013%s: failed to get atl clock %d from provider\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"atl%u\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bws\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"aws\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_dra7_atl__167_312_dra7_atl_clk_driver_init6, ptr @__of_table_dra7_atl_clock], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_dra7_atl_clock_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #12
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 16, i1 false)
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 40) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_dra7_atl_clock_setup) #14
  br label %37

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dra7_atl_desc, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dra7_atl_desc, ptr %5, i32 0, i32 1, i32 2
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dra7_atl_desc, ptr %5, i32 0, i32 9
  store i32 1, ptr %12, align 4
  %13 = load ptr, ptr %0, align 4
  store ptr %13, ptr %2, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @atl_clk_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 8, ptr %15, align 4
  %16 = call i32 @of_clk_get_parent_count(ptr noundef %0) #12
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 %17, ptr %18, align 4
  %19 = and i32 %16, 255
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %23, label %21

21:                                               ; preds = %9
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.of_dra7_atl_clock_setup, ptr noundef %0) #14
  br label %35

23:                                               ; preds = %9
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 4) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #12
  store ptr %28, ptr %25, align 8
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %25, ptr %29, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = call ptr @ti_clk_register(ptr noundef null, ptr noundef %10, ptr noundef %30) #12
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %31) #12
  call void @kfree(ptr noundef nonnull %25) #12
  br label %37

35:                                               ; preds = %27, %23, %21
  %36 = phi ptr [ null, %21 ], [ %25, %27 ], [ null, %23 ]
  call void @kfree(ptr noundef %36) #12
  call void @kfree(ptr noundef nonnull %5) #12
  br label %37

37:                                               ; preds = %35, %33, %7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dra7_atl_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dra7_atl_clk_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atl_clk_enable(ptr nocapture noundef %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 21
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15, !prof !9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 16
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef %14) #14
  br label %15

15:                                               ; preds = %9, %5
  %16 = getelementptr i8, ptr %0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #12
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %0, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 7
  %24 = add i32 %23, 520
  %25 = getelementptr i8, ptr %0, i32 32
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %20, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #12, !srcloc !10
  %31 = load ptr, ptr %16, align 4
  %32 = load i32, ptr %21, align 4
  %33 = shl i32 %32, 7
  %34 = add i32 %33, 528
  %35 = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %31, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 1) #12, !srcloc !10
  br label %38

38:                                               ; preds = %15, %1
  %39 = getelementptr i8, ptr %0, i32 22
  store i8 1, ptr %39, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atl_clk_disable(ptr nocapture noundef %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 7
  %11 = add i32 %10, 528
  %12 = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #12, !srcloc !10
  %15 = load ptr, ptr %6, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 4) #12
  br label %18

18:                                               ; preds = %5, %1
  %19 = getelementptr i8, ptr %0, i32 22
  store i8 0, ptr %19, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @atl_clk_is_enabled(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr i8, ptr %0, i32 22
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @atl_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 32
  %4 = load i32, ptr %3, align 4
  %5 = udiv i32 %1, %4
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @atl_clk_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #8 {
  %4 = load i32, ptr %2, align 4
  %5 = lshr i32 %1, 1
  %6 = add i32 %4, %5
  %7 = udiv i32 %6, %1
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 32)
  %9 = udiv i32 %4, %8
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @atl_clk_set_rate(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = lshr i32 %1, 1
  %9 = add i32 %8, %2
  %10 = udiv i32 %9, %1
  %11 = add i32 %10, -1
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 31)
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr i8, ptr %0, i32 32
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_dra7_atl_clk_probe(ptr noundef %0) #6 {
  %2 = alloca [5 x i8], align 1
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %111, label %8

8:                                                ; preds = %1
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 12, i32 noundef 3520) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %111, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #12
  %13 = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %9, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store ptr %4, ptr %9, align 4
  tail call void @pm_runtime_enable(ptr noundef %4) #12
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #12
  %15 = getelementptr i8, ptr %12, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #12, !srcloc !10
  br label %16

16:                                               ; preds = %105, %11
  %17 = phi i32 [ 0, %11 ], [ %106, %105 ]
  %18 = phi i32 [ 0, %11 ], [ %58, %105 ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !11
  %19 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %6, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef %17, ptr noundef nonnull %3) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.of_dra7_atl_clk_probe, i32 noundef %17) #14
  br label %103

23:                                               ; preds = %16
  %24 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %3) #12
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.of_dra7_atl_clk_probe, i32 noundef %17) #14
  %28 = ptrtoint ptr %24 to i32
  br label %103

29:                                               ; preds = %23
  %30 = call ptr @__clk_get_hw(ptr noundef %24) #12
  %31 = getelementptr i8, ptr %30, i32 12
  store ptr %9, ptr %31, align 4
  %32 = getelementptr i8, ptr %30, i32 16
  store i32 %17, ptr %32, align 4
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 5, ptr noundef nonnull @.str.7, i32 noundef %17)
  %34 = call ptr @of_get_child_by_name(ptr noundef nonnull %6, ptr noundef nonnull %2) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %29
  %37 = getelementptr i8, ptr %30, i32 24
  %38 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.8, ptr noundef %37, i32 noundef 1, i32 noundef 0) #12
  %39 = call i32 @llvm.smin.i32(i32 %38, i32 0) #12
  %40 = getelementptr i8, ptr %30, i32 28
  %41 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.9, ptr noundef %40, i32 noundef 1, i32 noundef 0) #12
  %42 = call i32 @llvm.smin.i32(i32 %41, i32 0) #12
  %43 = or i32 %42, %39
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = getelementptr i8, ptr %30, i32 21
  store i8 1, ptr %46, align 1
  %47 = shl i32 %17, 7
  %48 = add nuw nsw i32 %47, 532
  %49 = load i32, ptr %37, align 4
  %50 = load ptr, ptr %13, align 4
  %51 = getelementptr i8, ptr %50, i32 %48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #12, !srcloc !10
  %52 = add nuw nsw i32 %47, 536
  %53 = load i32, ptr %40, align 4
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr i8, ptr %54, i32 %52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #12, !srcloc !10
  br label %56

56:                                               ; preds = %45, %36
  call void @of_node_put(ptr noundef nonnull %34) #12
  br label %57

57:                                               ; preds = %56, %29
  %58 = phi i32 [ %43, %56 ], [ %18, %29 ]
  %59 = getelementptr i8, ptr %30, i32 20
  store i8 1, ptr %59, align 4
  %60 = getelementptr i8, ptr %30, i32 22
  %61 = load i8, ptr %60, align 2, !range !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %105, label %63

63:                                               ; preds = %57
  %64 = call ptr @__clk_get_hw(ptr noundef %24) #12
  %65 = getelementptr i8, ptr %64, i32 20
  %66 = load i8, ptr %65, align 4, !range !8
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %101, label %68

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %64, i32 21
  %70 = load i8, ptr %69, align 1, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %78, !prof !9

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %64, i32 12
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %64, i32 16
  %77 = load i32, ptr %76, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.2, i32 noundef %77) #14
  br label %78

78:                                               ; preds = %72, %68
  %79 = getelementptr i8, ptr %64, i32 12
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 @__pm_runtime_resume(ptr noundef %81, i32 noundef 4) #12
  %83 = load ptr, ptr %79, align 4
  %84 = getelementptr i8, ptr %64, i32 16
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 7
  %87 = add i32 %86, 520
  %88 = getelementptr i8, ptr %64, i32 32
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, -1
  %91 = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %83, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 %87
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %90) #12, !srcloc !10
  %94 = load ptr, ptr %79, align 4
  %95 = load i32, ptr %84, align 4
  %96 = shl i32 %95, 7
  %97 = add i32 %96, 528
  %98 = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %94, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 %97
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 1) #12, !srcloc !10
  br label %101

101:                                              ; preds = %78, %63
  %102 = getelementptr i8, ptr %64, i32 22
  store i8 1, ptr %102, align 2
  br label %105

103:                                              ; preds = %26, %21
  %104 = phi i32 [ %28, %26 ], [ -22, %21 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #12
  br label %111

105:                                              ; preds = %101, %57
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #12
  %106 = add nuw nsw i32 %17, 1
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %16

108:                                              ; preds = %105
  %109 = load ptr, ptr %9, align 4
  %110 = call i32 @__pm_runtime_idle(ptr noundef %109, i32 noundef 4) #12
  br label %111

111:                                              ; preds = %108, %103, %8, %1
  %112 = phi i32 [ %104, %103 ], [ %58, %108 ], [ -19, %1 ], [ -12, %8 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 3025063}
!11 = !{!"auto-init"}
