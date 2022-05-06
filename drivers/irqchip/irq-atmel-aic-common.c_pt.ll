; ModuleID = '/llk/IR/drivers/irqchip/irq-atmel-aic-common.c_pt.bc'
source_filename = "../drivers/irqchip/irq-atmel-aic-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.aic_chip_data = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@.str = private unnamed_addr constant [39 x i8] c"drivers/irqchip/irq-atmel-aic-common.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"atmel,at91rm9200-rtc\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"atmel,at91sam9x5-rtc\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"atmel,at91sam9260-rtt\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"atmel,external-irqs\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\014AIC: external irq %d >= %d skip it\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @aic_common_set_type(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  switch i32 %1, label %24 [
    i32 4, label %19
    i32 1, label %8
    i32 8, label %9
    i32 2, label %14
  ]

8:                                                ; preds = %3
  br label %19

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 4
  %11 = load i32, ptr %7, align 4
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %19

14:                                               ; preds = %3
  %15 = load i32, ptr %0, align 4
  %16 = load i32, ptr %7, align 4
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14, %9, %8, %3
  %20 = phi i32 [ 96, %8 ], [ 64, %3 ], [ 0, %9 ], [ 32, %14 ]
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %21, -97
  %23 = or i32 %22, %20
  store i32 %23, ptr %2, align 4
  br label %24

24:                                               ; preds = %19, %14, %9, %3
  %25 = phi i32 [ 0, %19 ], [ -22, %9 ], [ -22, %14 ], [ -22, %3 ]
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @aic_common_set_priority(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, -8
  %5 = or i32 %4, %0
  store i32 %5, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aic_common_irq_domain_xlate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = icmp ult i32 %3, 3
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #9
  br label %19

9:                                                ; preds = %6
  %10 = getelementptr i32, ptr %2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 7
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #9
  br label %19

14:                                               ; preds = %9
  %15 = load i32, ptr %2, align 4
  store i32 %15, ptr %4, align 4
  %16 = getelementptr i32, ptr %2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 15
  store i32 %18, ptr %5, align 4
  br label %19

19:                                               ; preds = %14, %13, %8
  %20 = phi i32 [ -22, %8 ], [ -22, %13 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @aic_common_rtc_irq_fixup() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %8 = tail call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #9
  tail call void @of_node_put(ptr noundef nonnull %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %11 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 31) #9, !srcloc !10
  tail call void @iounmap(ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @aic_common_rtt_irq_fixup() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %10, %0
  %4 = phi ptr [ %11, %10 ], [ %1, %0 ]
  %5 = tail call ptr @of_iomap(ptr noundef nonnull %4, i32 noundef 0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %9 = and i32 %8, -196609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %9) #9, !srcloc !10
  tail call void @iounmap(ptr noundef nonnull %5) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.3) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @aic_common_of_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 section ".init.text" {
  %6 = add i32 %3, 31
  %7 = sdiv i32 %6, 32
  %8 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %5
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #9
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %48, label %13, !prof !8

13:                                               ; preds = %10
  %14 = extractvalue { i32, i1 } %11, 0
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = shl nuw nsw i32 %7, 5
  %19 = icmp eq ptr %0, null
  %20 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %21 = select i1 %19, ptr null, ptr %20
  %22 = tail call ptr @__irq_domain_add(ptr noundef %21, i32 noundef %18, i32 noundef %18, i32 noundef 0, ptr noundef %1, ptr noundef nonnull %15) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %17
  %25 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %22, i32 noundef 32, i32 noundef 1, ptr noundef %2, ptr noundef nonnull @handle_fasteoi_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 0) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = icmp sgt i32 %6, 31
  br i1 %28, label %29, label %44

29:                                               ; preds = %29, %27
  %30 = phi i32 [ %42, %29 ], [ 0, %27 ]
  %31 = shl i32 %30, 5
  %32 = tail call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %22, i32 noundef %31) #9
  %33 = getelementptr inbounds %struct.irq_chip_generic, ptr %32, i32 0, i32 1
  store ptr %8, ptr %33, align 4
  %34 = getelementptr inbounds %struct.irq_chip_generic, ptr %32, i32 0, i32 16
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.irq_chip_generic, ptr %32, i32 0, i32 11
  store i32 -1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.irq_chip_generic, ptr %32, i32 3, i32 2
  store i32 15, ptr %36, align 4
  %37 = getelementptr inbounds %struct.irq_chip_generic, ptr %32, i32 1, i32 10
  store ptr @irq_gc_eoi, ptr %37, align 4
  %38 = getelementptr inbounds %struct.irq_chip_generic, ptr %32, i32 1, i32 14
  store ptr @irq_gc_set_wake, ptr %38, align 4
  %39 = getelementptr inbounds %struct.irq_chip_generic, ptr %32, i32 1, i32 3
  store ptr @aic_common_shutdown, ptr %39, align 4
  %40 = getelementptr %struct.aic_chip_data, ptr %15, i32 %30
  %41 = getelementptr inbounds %struct.irq_chip_generic, ptr %32, i32 0, i32 14
  store ptr %40, ptr %41, align 4
  %42 = add nuw nsw i32 %30, 1
  %43 = icmp eq i32 %42, %7
  br i1 %43, label %44, label %29

44:                                               ; preds = %29, %27
  tail call fastcc void @aic_common_ext_irq_of_init(ptr noundef nonnull %22) #11
  tail call fastcc void @aic_common_irq_fixup(ptr noundef %4) #11
  br label %51

45:                                               ; preds = %24
  tail call void @irq_domain_remove(ptr noundef nonnull %22) #9
  br label %46

46:                                               ; preds = %45, %17
  %47 = phi i32 [ %25, %45 ], [ -12, %17 ]
  tail call void @kfree(ptr noundef nonnull %15) #9
  br label %48

48:                                               ; preds = %46, %13, %10
  %49 = phi i32 [ %47, %46 ], [ -12, %13 ], [ -12, %10 ]
  tail call void @iounmap(ptr noundef nonnull %8) #9
  %50 = inttoptr i32 %49 to ptr
  br label %51

51:                                               ; preds = %48, %44, %5
  %52 = phi ptr [ %50, %48 ], [ %22, %44 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_eoi(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aic_common_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @aic_common_ext_irq_of_init(ptr noundef %0) unnamed_addr #5 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fwnode_handle, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @of_fwnode_ops
  %12 = getelementptr i8, ptr %4, i32 -12
  %13 = select i1 %11, ptr %12, ptr null
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi ptr [ null, %1 ], [ %13, %8 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !14
  %16 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %0, i32 noundef 0) #9
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %16, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %22 = call ptr @of_prop_next_u32(ptr noundef %21, ptr noundef null, ptr noundef nonnull %2) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 11
  br label %26

26:                                               ; preds = %43, %24
  %27 = phi ptr [ %22, %24 ], [ %44, %43 ]
  %28 = load i32, ptr %2, align 4
  %29 = call ptr @irq_get_domain_generic_chip(ptr noundef %0, i32 noundef %28) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, ptr %2, align 4
  %33 = load i32, ptr %25, align 4
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %32, i32 noundef %33) #12
  br label %43

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.irq_chip_generic, ptr %29, i32 0, i32 14
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %2, align 4
  %39 = and i32 %38, 31
  %40 = shl nuw i32 1, %39
  %41 = load i32, ptr %37, align 4
  %42 = or i32 %40, %41
  store i32 %42, ptr %37, align 4
  br label %43

43:                                               ; preds = %35, %31
  %44 = call ptr @of_prop_next_u32(ptr noundef %21, ptr noundef nonnull %27, ptr noundef nonnull %2) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %26

46:                                               ; preds = %43, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @aic_common_irq_fixup(ptr noundef %0) unnamed_addr #5 section ".init.text" {
  %2 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.6, ptr noundef null) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_match_node(ptr noundef %0, ptr noundef nonnull %2) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void %9() #9
  br label %10

10:                                               ; preds = %7, %4
  tail call void @of_node_put(ptr noundef nonnull %2) #9
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2150635060}
!10 = !{i64 366762}
!11 = !{i64 2150636345}
!12 = !{i64 367180}
!13 = !{i64 2150636836}
!14 = !{!"auto-init"}
