; ModuleID = '/llk/IR/arch/arm/mach-mvebu/coherency.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/coherency.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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

@coherency_base = dso_local local_unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [59 x i8] c"\014mvebu-coherency: Can't make current CPU cache coherent.\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"\014mvebu-coherency: Coherency fabric is not initialized\0A\00", align 1
@of_coherency_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,coherency-fabric\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-coherency-fabric\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-coherency-fabric\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__initcall__kmod_coherency__228_293_coherency_late_init2 = internal global ptr @coherency_late_init, section ".initcall2.init", align 4
@__initcall__kmod_coherency__229_304_coherency_pci_init3 = internal global ptr @coherency_pci_init, section ".initcall3.init", align 4
@coherency_phys_base = dso_local global i32 0, align 4
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@cpu_config_base = internal unnamed_addr global ptr null, align 4
@coherency_cpu_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"marvell,armada-xp-cpu-config\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"arm/mvebu/coherency:starting\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@arch_ioremap_caller = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"arm,pl310-cache\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"arm,io-coherent\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@mvebu_hwcc_nb = internal global %struct.notifier_block { ptr @mvebu_hwcc_notifier, ptr null, i32 0 }, align 4
@arm_coherent_dma_ops = external dso_local constant %struct.dma_map_ops, align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@mvebu_hwcc_pci_nb = internal global %struct.notifier_block { ptr @mvebu_hwcc_notifier, ptr null, i32 0 }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_coherency__228_293_coherency_late_init2, ptr @__initcall__kmod_coherency__229_304_coherency_pci_init3], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_cpu_coherent() local_unnamed_addr #0 {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = load i32, ptr @smp_on_up, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef nonnull %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  br label %28

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  call void @of_node_put(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  %12 = icmp eq ptr %11, inttoptr (i32 1 to ptr)
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load ptr, ptr @coherency_base, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %28

19:                                               ; preds = %13
  %20 = load ptr, ptr @cpu_config_base, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %24 = and i32 %23, -65537
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %25 = load ptr, ptr @cpu_config_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #8, !srcloc !12
  br label %26

26:                                               ; preds = %22, %19
  call void @ll_add_cpu_to_smp_group() #8
  %27 = call i32 @ll_enable_coherency() #8
  br label %28

28:                                               ; preds = %26, %16, %8, %7
  %29 = phi i32 [ %27, %26 ], [ 1, %16 ], [ 0, %8 ], [ 0, %7 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_add_cpu_to_smp_group() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ll_enable_coherency() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @coherency_available() local_unnamed_addr #0 {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = load i32, ptr @smp_on_up, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  %5 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef nonnull %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.of_device_id, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @of_node_put(ptr noundef nonnull %5) #8
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %7, %4, %0
  %14 = phi i32 [ %12, %7 ], [ 0, %0 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @coherency_init() local_unnamed_addr #4 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = load i32, ptr @smp_on_up, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef nonnull %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  %8 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef null) #8
  br label %21

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  call void @of_node_put(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  %13 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef null) #8
  %14 = icmp eq ptr %12, inttoptr (i32 1 to ptr)
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  call fastcc void @armada_370_coherency_init(ptr noundef %13) #10
  br label %21

16:                                               ; preds = %9
  %17 = ptrtoint ptr %12 to i32
  %18 = and i32 %17, -2
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call fastcc void @armada_375_380_coherency_init(ptr noundef %13) #10
  br label %21

21:                                               ; preds = %20, %16, %15, %7
  %22 = phi ptr [ %13, %20 ], [ %13, %16 ], [ %13, %15 ], [ %8, %7 ]
  call void @of_node_put(ptr noundef %22) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @armada_370_coherency_init(ptr noundef %0) unnamed_addr #4 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #8
  %4 = load i32, ptr %2, align 4
  store i32 %4, ptr @coherency_phys_base, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %5(ptr noundef nonnull @coherency_phys_base, i32 noundef 4) #8
  %6 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @coherency_phys_base to i32), i32 -2130706432, i32 8454144) #11, !srcloc !13
  %7 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @coherency_phys_base, i32 1) to i32), i32 -2130706432, i32 8454144) #11, !srcloc !13
  %8 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call void %8(i32 noundef %6, i32 noundef %7) #8
  br label %11

11:                                               ; preds = %10, %1
  %12 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  store ptr %12, ptr @coherency_base, align 4
  %13 = call ptr @of_iomap(ptr noundef %0, i32 noundef 1) #8
  store ptr %13, ptr @coherency_cpu_base, align 4
  %14 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = call ptr @of_iomap(ptr noundef nonnull %14, i32 noundef 0) #8
  store ptr %17, ptr @cpu_config_base, align 4
  %18 = icmp eq ptr %17, null
  call void @of_node_put(ptr noundef nonnull %14) #8
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 @__cpuhp_setup_state(i32 noundef 105, ptr noundef nonnull @.str.3, i1 noundef zeroext false, ptr noundef nonnull @armada_xp_clear_l2_starting, ptr noundef null, i1 noundef zeroext false) #8
  br label %21

21:                                               ; preds = %19, %16, %11
  %22 = call i32 @set_cpu_coherent()
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @armada_375_380_coherency_init(ptr noundef %0) unnamed_addr #4 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  store ptr %2, ptr @coherency_cpu_base, align 4
  store ptr @armada_wa_ioremap_caller, ptr @arch_ioremap_caller, align 4
  tail call void @pci_ioremap_set_mem_type(i32 noundef 4) #8
  %3 = tail call i32 @coherency_available()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %14, %8 ], [ %6, %5 ]
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 52) #12
  %12 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.5, i32 noundef 3264) #8
  store ptr %12, ptr %11, align 8
  %13 = tail call i32 @of_add_property(ptr noundef nonnull %9, ptr noundef %11) #8
  %14 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @.str.4) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @coherency_late_init() #4 section ".init.text" {
  %1 = tail call i32 @coherency_available()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @bus_register_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @mvebu_hwcc_nb) #8
  br label %5

5:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @coherency_pci_init() #4 section ".init.text" {
  %1 = tail call i32 @coherency_available()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @bus_register_notifier(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @mvebu_hwcc_pci_nb) #8
  br label %5

5:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_xp_clear_l2_starting(i32 noundef %0) #0 {
  %2 = load ptr, ptr @cpu_config_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %6 = and i32 %5, -65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr @cpu_config_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #8, !srcloc !12
  br label %8

8:                                                ; preds = %4, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @armada_wa_ioremap_caller(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @__arm_ioremap_caller(i32 noundef %0, i32 noundef %1, i32 noundef 4, ptr noundef %3) #8
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ioremap_set_mem_type(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_add_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_caller(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mvebu_hwcc_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 15
  store ptr @arm_coherent_dma_ops, ptr %6, align 8
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %5 ], [ 0, %3 ]
  ret i32 %8
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i64 2812336}
!10 = !{i64 2153362914}
!11 = !{i64 2153363181}
!12 = !{i64 2811918}
!13 = !{i64 2148890783, i64 2148890806, i64 2148890838, i64 2148890870, i64 2148890908, i64 2148890938}
