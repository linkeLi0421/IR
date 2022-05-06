; ModuleID = '/llk/IR/arch/arm/mach-imx/gpc.c_pt.bc'
source_filename = "../arch/arm/mach-imx/gpc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@gpc_base = internal unnamed_addr global ptr null, align 4
@gpc_saved_imrs.0 = internal unnamed_addr global i32 0, align 4
@gpc_saved_imrs.1 = internal unnamed_addr global i32 0, align 4
@gpc_saved_imrs.2 = internal unnamed_addr global i32 0, align 4
@gpc_saved_imrs.3 = internal unnamed_addr global i32 0, align 4
@gpc_wake_irqs = internal unnamed_addr global [4 x i32] zeroinitializer, align 4
@__of_table_imx_gpc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_gpc_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [14 x i8] c"fsl,imx6q-gpc\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"arch/arm/mach-imx/gpc.c\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\014Outdated DT detected, suspend/resume will NOT work\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\013%pOF: no parent, giving up\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\013%pOF: unable to obtain parent domain\0A\00", align 1
@imx_gpc_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_gpc_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @imx_gpc_domain_translate }, align 4
@imx_gpc_chip = internal global %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_gpc_irq_mask, ptr null, ptr @imx_gpc_irq_unmask, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @irq_chip_set_type_parent, ptr @imx_gpc_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"GPC\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_imx_gpc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_set_arm_power_up_timing(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %0, 8
  %4 = or i32 %3, %1
  %5 = load ptr, ptr @gpc_base, align 4
  %6 = getelementptr i8, ptr %5, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_set_arm_power_down_timing(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %0, 8
  %4 = or i32 %3, %1
  %5 = load ptr, ptr @gpc_base, align 4
  %6 = getelementptr i8, ptr %5, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_set_arm_power_in_lpm(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i1 %0 to i32
  %3 = load ptr, ptr @gpc_base, align 4
  %4 = getelementptr i8, ptr %3, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #8, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_set_l2_mem_power_in_lpm(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gpc_base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = and i32 %3, -4194305
  %5 = select i1 %0, i32 4194304, i32 0
  %6 = or i32 %4, %5
  %7 = load ptr, ptr @gpc_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #8, !srcloc !8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_pre_suspend(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gpc_base, align 4
  br i1 %0, label %3, label %5

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %2, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #8, !srcloc !8
  br label %5

5:                                                ; preds = %3, %1
  %6 = getelementptr i8, ptr %2, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  store i32 %7, ptr @gpc_saved_imrs.0, align 4
  %8 = load i32, ptr @gpc_wake_irqs, align 4
  %9 = xor i32 %8, -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %9) #8, !srcloc !8
  %10 = getelementptr i8, ptr %2, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !9
  store i32 %11, ptr @gpc_saved_imrs.1, align 4
  %12 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @gpc_wake_irqs, i32 0, i32 1), align 4
  %13 = xor i32 %12, -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %13) #8, !srcloc !8
  %14 = getelementptr i8, ptr %2, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  store i32 %15, ptr @gpc_saved_imrs.2, align 4
  %16 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @gpc_wake_irqs, i32 0, i32 2), align 4
  %17 = xor i32 %16, -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %17) #8, !srcloc !8
  %18 = getelementptr i8, ptr %2, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  store i32 %19, ptr @gpc_saved_imrs.3, align 4
  %20 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @gpc_wake_irqs, i32 0, i32 3), align 4
  %21 = xor i32 %20, -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %21) #8, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_post_resume() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gpc_base, align 4
  %2 = getelementptr i8, ptr %1, i32 8
  %3 = getelementptr i8, ptr %1, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #8, !srcloc !8
  %4 = load i32, ptr @gpc_saved_imrs.0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #8, !srcloc !8
  %5 = load i32, ptr @gpc_saved_imrs.1, align 4
  %6 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #8, !srcloc !8
  %7 = load i32, ptr @gpc_saved_imrs.2, align 4
  %8 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #8, !srcloc !8
  %9 = load i32, ptr @gpc_saved_imrs.3, align 4
  %10 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #8, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_mask_all() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gpc_base, align 4
  %2 = getelementptr i8, ptr %1, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !9
  store i32 %3, ptr @gpc_saved_imrs.0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -1) #8, !srcloc !8
  %4 = getelementptr i8, ptr %1, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  store i32 %5, ptr @gpc_saved_imrs.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #8, !srcloc !8
  %6 = getelementptr i8, ptr %1, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  store i32 %7, ptr @gpc_saved_imrs.2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #8, !srcloc !8
  %8 = getelementptr i8, ptr %1, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  store i32 %9, ptr @gpc_saved_imrs.3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #8, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_restore_all() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gpc_base, align 4
  %2 = getelementptr i8, ptr %1, i32 8
  %3 = load i32, ptr @gpc_saved_imrs.0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %3) #8, !srcloc !8
  %4 = load i32, ptr @gpc_saved_imrs.1, align 4
  %5 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %4) #8, !srcloc !8
  %6 = load i32, ptr @gpc_saved_imrs.2, align 4
  %7 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #8, !srcloc !8
  %8 = load i32, ptr @gpc_saved_imrs.3, align 4
  %9 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #8, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_hwirq_unmask(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gpc_base, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = lshr i32 %0, 3
  %5 = and i32 %4, 536870908
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  %8 = and i32 %0, 31
  %9 = shl nuw i32 1, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %11) #8, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpc_hwirq_mask(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gpc_base, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = lshr i32 %0, 3
  %5 = and i32 %4, 536870908
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  %8 = and i32 %0, 31
  %9 = shl nuw i32 1, %8
  %10 = or i32 %7, %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %10) #8, !srcloc !8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_gpc_init(ptr noundef %0, ptr noundef %1) #2 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %0) #9
  br label %42

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %10, i8 0, i64 68, i1 false) #8
  store ptr %9, ptr %4, align 4
  %11 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  %14 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %14, i8 0, i64 68, i1 false) #8
  store ptr %9, ptr %3, align 4
  %15 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #9
  br label %42

19:                                               ; preds = %13, %8
  %20 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %21 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  store ptr %21, ptr @gpc_base, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !10

23:                                               ; preds = %19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 245, i32 noundef 9, ptr noundef null) #8
  br label %42

24:                                               ; preds = %19
  %25 = icmp eq ptr %0, null
  %26 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %27 = select i1 %25, ptr null, ptr %26
  %28 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %20, i32 noundef 0, i32 noundef 128, ptr noundef %27, ptr noundef nonnull @imx_gpc_domain_ops, ptr noundef null) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load ptr, ptr @gpc_base, align 4
  call void @iounmap(ptr noundef %31) #8
  br label %42

32:                                               ; preds = %32, %24
  %33 = phi i32 [ %38, %32 ], [ 0, %24 ]
  %34 = load ptr, ptr @gpc_base, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  %36 = shl i32 %33, 2
  %37 = getelementptr i8, ptr %35, i32 %36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 -1) #8, !srcloc !8
  %38 = add nuw nsw i32 %33, 1
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %32

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %41) #8
  br label %42

42:                                               ; preds = %40, %30, %23, %17, %6
  %43 = phi i32 [ -12, %23 ], [ 0, %40 ], [ -12, %30 ], [ -6, %17 ], [ -19, %6 ]
  ret i32 %43
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx_gpc_check_dt() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !10

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef null) #8
  br label %11

4:                                                ; preds = %0
  %5 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10, !prof !10

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 278, i32 noundef 9, ptr noundef null) #8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  %9 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #8
  store ptr %9, ptr @gpc_base, align 4
  br label %10

10:                                               ; preds = %7, %4
  tail call void @of_node_put(ptr noundef nonnull %1) #8
  br label %11

11:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_gpc_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %32

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 127
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %24, %19 ], [ 0, %17 ]
  %21 = add i32 %20, %1
  %22 = add i32 %20, %15
  %23 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %21, i32 noundef %22, ptr noundef nonnull @imx_gpc_chip, ptr noundef null) #8
  %24 = add nuw i32 %20, 1
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %19

26:                                               ; preds = %19, %17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef align 4 dereferenceable(72) %3, i32 72, i1 false)
  %27 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.irq_domain, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %5, align 4
  %31 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #8
  br label %32

32:                                               ; preds = %26, %13, %9, %4
  %33 = phi i32 [ %31, %26 ], [ -22, %4 ], [ -22, %9 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @imx_gpc_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %2, align 4
  %24 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %21, %17, %13, %9, %4
  %27 = phi i32 [ 0, %21 ], [ -22, %13 ], [ -22, %17 ], [ -22, %9 ], [ -22, %4 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_gpc_irq_mask(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr @gpc_base, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = lshr i32 %3, 3
  %7 = and i32 %6, 536870908
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  %10 = and i32 %3, 31
  %11 = shl nuw i32 1, %10
  %12 = or i32 %9, %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %12) #8, !srcloc !8
  tail call void @irq_chip_mask_parent(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_gpc_irq_unmask(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr @gpc_base, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = lshr i32 %3, 3
  %7 = and i32 %6, 536870908
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  %10 = and i32 %3, 31
  %11 = shl nuw i32 1, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %13) #8, !srcloc !8
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @imx_gpc_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 5
  %6 = and i32 %4, 31
  %7 = shl nuw i32 1, %6
  %8 = icmp eq i32 %1, 0
  %9 = getelementptr [4 x i32], ptr @gpc_wake_irqs, i32 0, i32 %5
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, %7
  %12 = xor i32 %7, -1
  %13 = and i32 %10, %12
  %14 = select i1 %8, i32 %13, i32 %11
  %15 = getelementptr [4 x i32], ptr @gpc_wake_irqs, i32 0, i32 %5
  store i32 %14, ptr %15, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 365626}
!9 = !{i64 366044}
!10 = !{!"branch_weights", i32 1, i32 2000}
