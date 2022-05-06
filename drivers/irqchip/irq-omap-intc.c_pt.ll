; ModuleID = '/llk/IR/drivers/irqchip/irq-omap-intc.c_pt.bc'
source_filename = "../drivers/irqchip/irq-omap-intc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_intc_regs = type { i32, i32, i32, i32, [128 x i32], [4 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@intc_context = internal unnamed_addr global %struct.omap_intc_regs zeroinitializer, align 4
@omap_nr_irqs = internal unnamed_addr global i32 0, align 4
@omap_nr_pending = internal unnamed_addr global i32 0, align 4
@__of_table_omap2_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@__of_table_omap3_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@__of_table_dm814x_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@__of_table_dm816x_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@__of_table_am33xx_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@omap_irq_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [32 x i8] c"drivers/irqchip/irq-omap-intc.c\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ti,dm814-intc\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ti,dm816-intc\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ti,am33xx-intc\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ti,omap2-intc\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ti,omap3-intc\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\014Couldn't allocate IRQ numbers\0A\00", align 1
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@domain = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [68 x i8] c"\016IRQ: Found an INTC at 0x%p (revision %ld.%ld) with %d interrupts\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"INTC\00", align 1
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"\014Failed to allocate irq chips\0A\00", align 1
@omap_intc_handle_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"\013%s: spurious irq!\0A\00", align 1
@__func__.omap_intc_handle_irq = private unnamed_addr constant [21 x i8] c"omap_intc_handle_irq\00", align 1
@irq_err_count = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__of_table_am33xx_intc, ptr @__of_table_dm814x_intc, ptr @__of_table_dm816x_intc, ptr @__of_table_omap2_intc, ptr @__of_table_omap3_intc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_intc_save_context() local_unnamed_addr #0 {
  %1 = load ptr, ptr @omap_irq_base, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !8
  store i32 %3, ptr @intc_context, align 4
  %4 = load ptr, ptr @omap_irq_base, align 4
  %5 = getelementptr i8, ptr %4, i32 76
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  store i32 %6, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 1), align 4
  %7 = load ptr, ptr @omap_irq_base, align 4
  %8 = getelementptr i8, ptr %7, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !8
  store i32 %9, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 2), align 4
  %10 = load ptr, ptr @omap_irq_base, align 4
  %11 = getelementptr i8, ptr %10, i32 104
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !8
  store i32 %12, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 3), align 4
  %13 = load i32, ptr @omap_nr_irqs, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %28, %0
  %16 = load ptr, ptr @omap_irq_base, align 4
  %17 = getelementptr i8, ptr %16, i32 132
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  store i32 %18, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 0), align 4
  %19 = load ptr, ptr @omap_irq_base, align 4
  %20 = getelementptr i8, ptr %19, i32 164
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  store i32 %21, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 1), align 4
  %22 = load ptr, ptr @omap_irq_base, align 4
  %23 = getelementptr i8, ptr %22, i32 196
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !8
  store i32 %24, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 2), align 4
  %25 = load ptr, ptr @omap_irq_base, align 4
  %26 = getelementptr i8, ptr %25, i32 228
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  store i32 %27, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 3), align 4
  ret void

28:                                               ; preds = %28, %0
  %29 = phi i32 [ %36, %28 ], [ 0, %0 ]
  %30 = shl i32 %29, 2
  %31 = add i32 %30, 256
  %32 = load ptr, ptr @omap_irq_base, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !8
  %35 = getelementptr %struct.omap_intc_regs, ptr @intc_context, i32 0, i32 4, i32 %29
  store i32 %34, ptr %35, align 4
  %36 = add nuw nsw i32 %29, 1
  %37 = load i32, ptr @omap_nr_irqs, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %28, label %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_intc_restore_context() local_unnamed_addr #0 {
  %1 = load i32, ptr @intc_context, align 4
  %2 = load ptr, ptr @omap_irq_base, align 4
  %3 = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #6, !srcloc !9
  %4 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 1), align 4
  %5 = load ptr, ptr @omap_irq_base, align 4
  %6 = getelementptr i8, ptr %5, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !9
  %7 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 2), align 4
  %8 = load ptr, ptr @omap_irq_base, align 4
  %9 = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !9
  %10 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 3), align 4
  %11 = load ptr, ptr @omap_irq_base, align 4
  %12 = getelementptr i8, ptr %11, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !9
  %13 = load i32, ptr @omap_nr_irqs, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %28, %0
  %16 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 0), align 4
  %17 = load ptr, ptr @omap_irq_base, align 4
  %18 = getelementptr i8, ptr %17, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !9
  %19 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 1), align 4
  %20 = load ptr, ptr @omap_irq_base, align 4
  %21 = getelementptr i8, ptr %20, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !9
  %22 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 2), align 4
  %23 = load ptr, ptr @omap_irq_base, align 4
  %24 = getelementptr i8, ptr %23, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !9
  %25 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 3), align 4
  %26 = load ptr, ptr @omap_irq_base, align 4
  %27 = getelementptr i8, ptr %26, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !9
  ret void

28:                                               ; preds = %28, %0
  %29 = phi i32 [ %36, %28 ], [ 0, %0 ]
  %30 = shl i32 %29, 2
  %31 = add i32 %30, 256
  %32 = getelementptr %struct.omap_intc_regs, ptr @intc_context, i32 0, i32 4, i32 %29
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr @omap_irq_base, align 4
  %35 = getelementptr i8, ptr %34, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #6, !srcloc !9
  %36 = add nuw nsw i32 %29, 1
  %37 = load i32, ptr @omap_nr_irqs, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %28, label %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_intc_prepare_idle() local_unnamed_addr #0 {
  %1 = load ptr, ptr @omap_irq_base, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #6, !srcloc !9
  %3 = load ptr, ptr @omap_irq_base, align 4
  %4 = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 2) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_intc_resume_idle() local_unnamed_addr #0 {
  %1 = load ptr, ptr @omap_irq_base, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #6, !srcloc !9
  %3 = load ptr, ptr @omap_irq_base, align 4
  %4 = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_irq_pending() local_unnamed_addr #0 {
  %1 = load i32, ptr @omap_nr_pending, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %7, label %15

3:                                                ; preds = %7
  %4 = add nuw nsw i32 %8, 1
  %5 = load i32, ptr @omap_nr_pending, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %9 = shl i32 %8, 5
  %10 = add i32 %9, 152
  %11 = load ptr, ptr @omap_irq_base, align 4
  %12 = getelementptr i8, ptr %11, i32 %10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %3, label %15

15:                                               ; preds = %7, %3, %0
  %16 = phi i32 [ 0, %0 ], [ 0, %3 ], [ 1, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_intc_suspend() local_unnamed_addr #0 {
  %1 = load ptr, ptr @omap_irq_base, align 4
  %2 = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #6, !srcloc !9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @intc_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #2 section ".init.text" {
  store i32 3, ptr @omap_nr_pending, align 4
  store i32 96, ptr @omap_nr_irqs, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #6
  br label %21

5:                                                ; preds = %2
  %6 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %8, %5
  store i32 128, ptr @omap_nr_irqs, align 4
  store i32 4, ptr @omap_nr_pending, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = tail call ptr @of_node_get(ptr noundef nonnull %0) #6
  %17 = tail call fastcc i32 @omap_init_irq(ptr noundef %16) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @set_handle_irq(ptr noundef nonnull @omap_intc_handle_irq) #8
  br label %21

21:                                               ; preds = %19, %15, %4
  %22 = phi i32 [ -19, %4 ], [ 0, %19 ], [ %17, %15 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @omap_init_irq(ptr noundef %0) unnamed_addr #2 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  %3 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !11
  %9 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, ptr %2, align 4
  %13 = call fastcc i32 @omap_init_irq_legacy(i32 noundef %12, ptr noundef %0) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  br label %21

14:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  br label %31

15:                                               ; preds = %5
  %16 = icmp eq ptr %0, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc i32 @omap_init_irq_of(ptr noundef nonnull %0) #7
  br label %21

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @omap_init_irq_legacy(i32 noundef -1, ptr noundef null) #7
  br label %21

21:                                               ; preds = %19, %17, %11
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ], [ %13, %11 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load ptr, ptr @omap_irq_base, align 4
  %26 = getelementptr i8, ptr %25, i32 76
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  %28 = or i32 %27, 1
  %29 = load ptr, ptr @omap_irq_base, align 4
  %30 = getelementptr i8, ptr %29, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !9
  br label %31

31:                                               ; preds = %24, %21, %14
  %32 = phi i32 [ -12, %14 ], [ 0, %24 ], [ %22, %21 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_intc_handle_irq(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @omap_irq_base, align 4
  %3 = getelementptr i8, ptr %2, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !8
  %5 = icmp ugt i32 %4, -129
  br i1 %5, label %6, label %15, !prof !10

6:                                                ; preds = %1
  %7 = load i1, ptr @omap_intc_handle_irq.__already_done, align 1
  br i1 %7, label %10, label %8, !prof !12

8:                                                ; preds = %6
  store i1 true, ptr @omap_intc_handle_irq.__already_done, align 1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.omap_intc_handle_irq) #8
  br label %10

10:                                               ; preds = %8, %6
  %11 = load i32, ptr @irq_err_count, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr @irq_err_count, align 4
  %13 = load ptr, ptr @omap_irq_base, align 4
  %14 = getelementptr i8, ptr %13, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1) #6, !srcloc !9
  br label %19

15:                                               ; preds = %1
  %16 = and i32 %4, 127
  %17 = load ptr, ptr @domain, align 4
  %18 = tail call i32 @generic_handle_domain_irq(ptr noundef %17, i32 noundef %16) #6
  br label %19

19:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @omap_init_irq_legacy(i32 noundef %0, ptr noundef %1) unnamed_addr #2 section ".init.text" {
  %3 = tail call ptr @ioremap(i32 noundef %0, i32 noundef 4096) #6
  store ptr %3, ptr @omap_irq_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 9, ptr noundef null) #6
  br label %26

6:                                                ; preds = %2
  %7 = load i32, ptr @omap_nr_irqs, align 4
  %8 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef %7, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ 0, %10 ], [ %8, %6 ]
  %14 = load i32, ptr @omap_nr_irqs, align 4
  %15 = tail call ptr @irq_domain_add_legacy(ptr noundef %1, i32 noundef %14, i32 noundef %13, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #6
  store ptr %15, ptr @domain, align 4
  tail call fastcc void @omap_irq_soft_reset() #7
  %16 = load i32, ptr @omap_nr_irqs, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %18, %12
  %19 = phi i32 [ %23, %18 ], [ 0, %12 ]
  %20 = load ptr, ptr @omap_irq_base, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  %22 = add i32 %19, %13
  tail call fastcc void @omap_alloc_gc_legacy(ptr noundef %21, i32 noundef %22) #7
  %23 = add i32 %19, 32
  %24 = load i32, ptr @omap_nr_irqs, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %18, label %26

26:                                               ; preds = %18, %12, %5
  %27 = phi i32 [ -12, %5 ], [ 0, %12 ], [ 0, %18 ]
  ret i32 %27
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @omap_init_irq_of(ptr noundef %0) unnamed_addr #2 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #6
  store ptr %2, ptr @omap_irq_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 248, i32 noundef 9, ptr noundef null) #6
  br label %17

5:                                                ; preds = %1
  %6 = load i32, ptr @omap_nr_irqs, align 4
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %9 = select i1 %7, ptr null, ptr %8
  %10 = tail call ptr @__irq_domain_add(ptr noundef %9, i32 noundef %6, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #6
  store ptr %10, ptr @domain, align 4
  tail call fastcc void @omap_irq_soft_reset() #7
  %11 = load ptr, ptr @domain, align 4
  %12 = load ptr, ptr @omap_irq_base, align 4
  %13 = tail call fastcc i32 @omap_alloc_gc_of(ptr noundef %11, ptr noundef %12) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load ptr, ptr @domain, align 4
  tail call void @irq_domain_remove(ptr noundef %16) #6
  br label %17

17:                                               ; preds = %15, %5, %4
  %18 = phi i32 [ -12, %4 ], [ %13, %15 ], [ %13, %5 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap_irq_soft_reset() unnamed_addr #2 section ".init.text" {
  %1 = load ptr, ptr @omap_irq_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !8
  %3 = load ptr, ptr @omap_irq_base, align 4
  %4 = lshr i32 %2, 4
  %5 = and i32 %4, 15
  %6 = and i32 %2, 15
  %7 = load i32, ptr @omap_nr_irqs, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %5, i32 noundef %6, i32 noundef %7) #8
  %9 = load ptr, ptr @omap_irq_base, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = or i32 %11, 2
  %13 = load ptr, ptr @omap_irq_base, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !9
  br label %15

15:                                               ; preds = %15, %0
  %16 = load ptr, ptr @omap_irq_base, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %15, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @omap_irq_base, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 1) #6, !srcloc !9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap_alloc_gc_legacy(ptr noundef %0, i32 noundef %1) unnamed_addr #2 section ".init.text" {
  %3 = tail call ptr @irq_alloc_generic_chip(ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %1, ptr noundef %0, ptr noundef nonnull @handle_level_irq) #6
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 1, i32 6
  store ptr @omap_mask_ack_irq, ptr %4, align 4
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 1, i32 7
  store ptr @irq_gc_mask_disable_reg, ptr %5, align 4
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 1, i32 9
  store ptr @irq_gc_unmask_enable_reg, ptr %6, align 4
  %7 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 2, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 16
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 2, i32 14
  store i32 136, ptr %10, align 4
  %11 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 2, i32 15
  store i32 140, ptr %11, align 4
  tail call void @irq_setup_generic_chip(ptr noundef %3, i32 noundef -1, i32 noundef 1, i32 noundef 3072, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_alloc_generic_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_mask_ack_irq(ptr noundef %0) #0 {
  tail call void @irq_gc_mask_disable_reg(ptr noundef %0) #6
  %2 = load ptr, ptr @omap_irq_base, align 4
  %3 = getelementptr i8, ptr %2, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1) #6, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_disable_reg(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_unmask_enable_reg(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_setup_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @omap_alloc_gc_of(ptr noundef %0, ptr noundef %1) unnamed_addr #2 section ".init.text" {
  %3 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef %0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull @handle_level_irq, i32 noundef 3072, i32 noundef 256, i32 noundef 0) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load i32, ptr @omap_nr_pending, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %10, label %29

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %29

10:                                               ; preds = %10, %5
  %11 = phi i32 [ %26, %10 ], [ 0, %5 ]
  %12 = shl i32 %11, 5
  %13 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %0, i32 noundef %12) #6
  %14 = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 3, i32 2
  store i32 12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 1, i32 6
  store ptr @omap_mask_ack_irq, ptr %16, align 4
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 1, i32 7
  store ptr @irq_gc_mask_disable_reg, ptr %17, align 4
  %18 = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 1, i32 9
  store ptr @irq_gc_unmask_enable_reg, ptr %18, align 4
  %19 = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 2, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 16
  store i32 %21, ptr %19, align 4
  %22 = add i32 %12, 136
  %23 = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 2, i32 14
  store i32 %22, ptr %23, align 4
  %24 = add i32 %12, 140
  %25 = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 2, i32 15
  store i32 %24, ptr %25, align 4
  %26 = add nuw nsw i32 %11, 1
  %27 = load i32, ptr @omap_nr_pending, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %10, label %29

29:                                               ; preds = %10, %8, %5
  %30 = phi i32 [ %3, %8 ], [ 0, %5 ], [ 0, %10 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold }
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
!8 = !{i64 3466782}
!9 = !{i64 3466364}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 2000, i32 1}
