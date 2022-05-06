; ModuleID = '/llk/IR/drivers/irqchip/exynos-combiner.c_pt.bc'
source_filename = "../drivers/irqchip/exynos-combiner.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.combiner_chip_data = type { i32, i32, ptr, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@__of_table_exynos4210_combiner = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-combiner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @combiner_of_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [40 x i8] c"\013%s: failed to map combiner registers\0A\00", align 1
@__func__.combiner_of_init = private unnamed_addr constant [17 x i8] c"combiner_of_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"samsung,combiner-nr\00", align 1
@max_nr = internal global i32 20, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"\016%s: number of combiners not specified, setting default as %d.\0A\00", align 1
@combiner_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @combiner_suspend, ptr @combiner_resume, ptr null }, align 4
@combiner_data = internal unnamed_addr global ptr null, align 4
@combiner_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @combiner_irq_domain_map, ptr null, ptr @combiner_irq_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@combiner_irq_domain = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"drivers/irqchip/exynos-combiner.c\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\014%s: irq domain init failed\0A\00", align 1
@__func__.combiner_init = private unnamed_addr constant [14 x i8] c"combiner_init\00", align 1
@combiner_chip = internal global %struct.irq_chip { ptr null, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @combiner_mask_irq, ptr null, ptr @combiner_unmask_irq, ptr null, ptr @combiner_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"COMBINER\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@irq_controller_lock = internal global %struct.spinlock zeroinitializer, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_exynos4210_combiner], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @combiner_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.combiner_of_init) #8
  br label %14

7:                                                ; preds = %2
  %8 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @max_nr, i32 noundef 1, i32 noundef 0) #7
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr @max_nr, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.combiner_of_init, i32 noundef %11) #8
  br label %13

13:                                               ; preds = %10, %7
  tail call fastcc void @combiner_init(ptr noundef nonnull %3, ptr noundef %0) #9
  tail call void @register_syscore_ops(ptr noundef nonnull @combiner_syscore_ops) #7
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i32 [ 0, %13 ], [ -6, %5 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @combiner_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load i32, ptr @max_nr, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 20) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  store ptr null, ptr @combiner_data, align 4
  br label %44

7:                                                ; preds = %2
  %8 = extractvalue { i32, i1 } %4, 0
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #10
  store ptr %9, ptr @combiner_data, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = shl nuw nsw i32 %3, 3
  %13 = icmp eq ptr %1, null
  %14 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %15 = select i1 %13, ptr null, ptr %14
  %16 = tail call ptr @__irq_domain_add(ptr noundef %15, i32 noundef %12, i32 noundef %12, i32 noundef 0, ptr noundef nonnull @combiner_irq_domain_ops, ptr noundef nonnull %9) #7
  store ptr %16, ptr @combiner_irq_domain, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !8

18:                                               ; preds = %11
  %19 = load i32, ptr @max_nr, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %44, label %23

21:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 185, i32 noundef 9, ptr noundef null) #7
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.combiner_init) #8
  br label %44

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %41, %23 ], [ 0, %18 ]
  %25 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef %24) #7
  %26 = load ptr, ptr @combiner_data, align 4
  %27 = getelementptr %struct.combiner_chip_data, ptr %26, i32 %24
  %28 = shl i32 %24, 2
  %29 = and i32 %28, -16
  %30 = getelementptr i8, ptr %0, i32 %29
  %31 = getelementptr %struct.combiner_chip_data, ptr %26, i32 %24, i32 2
  store ptr %30, ptr %31, align 4
  %32 = shl i32 %24, 3
  %33 = and i32 %32, -32
  store i32 %33, ptr %27, align 4
  %34 = and i32 %32, 24
  %35 = shl nuw i32 255, %34
  %36 = getelementptr %struct.combiner_chip_data, ptr %26, i32 %24, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr %struct.combiner_chip_data, ptr %26, i32 %24, i32 3
  store i32 %25, ptr %37, align 4
  %38 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %35) #7, !srcloc !9
  %39 = load ptr, ptr @combiner_data, align 4
  %40 = getelementptr %struct.combiner_chip_data, ptr %39, i32 %24
  tail call void @irq_set_chained_handler_and_data(i32 noundef %25, ptr noundef nonnull @combiner_handle_cascade_irq, ptr noundef %40) #7
  %41 = add nuw i32 %24, 1
  %42 = load i32, ptr @max_nr, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %23, label %44

44:                                               ; preds = %23, %21, %18, %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @combiner_irq_domain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @combiner_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  %6 = lshr i32 %2, 3
  %7 = getelementptr %struct.combiner_chip_data, ptr %5, i32 %6
  %8 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %7) #7
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 1024, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @combiner_irq_domain_xlate(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #6 {
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.fwnode_handle, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @of_fwnode_ops
  %16 = getelementptr i8, ptr %8, i32 -12
  %17 = select i1 %15, ptr %16, ptr null
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi ptr [ null, %6 ], [ %17, %12 ]
  %20 = icmp ne ptr %19, %1
  %21 = icmp ult i32 %3, 2
  %22 = or i1 %21, %20
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %2, align 4
  %25 = shl i32 %24, 3
  %26 = getelementptr i32, ptr %2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %25, %27
  store i32 %28, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i32 [ 0, %23 ], [ -22, %18 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @combiner_mask_irq(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.combiner_chip_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %5) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @combiner_unmask_irq(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.combiner_chip_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %5) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @combiner_set_affinity(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #5 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.combiner_chip_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @irq_get_irq_data(i32 noundef %7) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, ptr %6, align 4
  %12 = tail call ptr @irq_get_irq_data(i32 noundef %11) #7
  br label %25

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.irq_data, ptr %8, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %6, align 4
  %17 = tail call ptr @irq_get_irq_data(i32 noundef %16) #7
  %18 = icmp eq ptr %15, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.irq_chip, ptr %15, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %17, ptr noundef %1, i1 noundef zeroext %2) #7
  br label %25

25:                                               ; preds = %23, %19, %13, %10
  %26 = phi i32 [ %24, %23 ], [ -22, %19 ], [ -22, %13 ], [ -22, %10 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @combiner_handle_cascade_irq(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #7
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #7
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #7
  %24 = getelementptr inbounds %struct.combiner_chip_data, ptr %3, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %28 = load i16, ptr @irq_controller_lock, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr @irq_controller_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %30 = getelementptr inbounds %struct.combiner_chip_data, ptr %3, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %27
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %23
  %35 = load i32, ptr %3, align 4
  %36 = tail call i32 @llvm.cttz.i32(i32 %32, i1 true) #7, !range !15
  %37 = add i32 %35, %36
  %38 = load ptr, ptr @combiner_irq_domain, align 4
  %39 = tail call i32 @generic_handle_domain_irq(ptr noundef %38, i32 noundef %37) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !16

41:                                               ; preds = %34
  tail call void @handle_bad_irq(ptr noundef %0) #7
  br label %42

42:                                               ; preds = %41, %34, %23
  %43 = load ptr, ptr %6, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi ptr [ %47, %45 ], [ %43, %42 ]
  %50 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %49(ptr noundef %50) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @combiner_suspend() #5 {
  %1 = load i32, ptr @max_nr, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @combiner_data, align 4
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %11, %5 ], [ %4, %3 ]
  %7 = phi i32 [ %13, %5 ], [ 0, %3 ]
  %8 = getelementptr %struct.combiner_chip_data, ptr %6, i32 %7, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !10
  %11 = load ptr, ptr @combiner_data, align 4
  %12 = getelementptr %struct.combiner_chip_data, ptr %11, i32 %7, i32 4
  store i32 %10, ptr %12, align 4
  %13 = add nuw i32 %7, 1
  %14 = load i32, ptr @max_nr, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %5, label %16

16:                                               ; preds = %5, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @combiner_resume() #5 {
  %1 = load i32, ptr @max_nr, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %19, label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ %16, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @combiner_data, align 4
  %6 = getelementptr %struct.combiner_chip_data, ptr %5, i32 %4, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.combiner_chip_data, ptr %5, i32 %4, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #7, !srcloc !9
  %11 = load ptr, ptr @combiner_data, align 4
  %12 = getelementptr %struct.combiner_chip_data, ptr %11, i32 %4, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.combiner_chip_data, ptr %11, i32 %4, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !9
  %16 = add nuw i32 %4, 1
  %17 = load i32, ptr @max_nr, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %3, label %19

19:                                               ; preds = %3, %0
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{i64 365824}
!10 = !{i64 366242}
!11 = !{i64 2148902450}
!12 = !{i64 2148898274}
!13 = !{i64 2148898349, i64 2148898376, i64 2148898423, i64 2148898445, i64 2148898473, i64 2148898493}
!14 = !{i64 2148925453}
!15 = !{i32 0, i32 33}
!16 = !{!"branch_weights", i32 2000, i32 1}
