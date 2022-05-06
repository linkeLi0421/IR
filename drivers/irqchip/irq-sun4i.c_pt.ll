; ModuleID = '/llk/IR/drivers/irqchip/irq-sun4i.c_pt.bc'
source_filename = "../drivers/irqchip/irq-sun4i.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sun4i_irq_chip_data = type { ptr, ptr, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_allwinner_sun4i_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_ic_of_init }, section "__irqchip_of_table", align 4
@__of_table_allwinner_sunvi_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,suniv-f1c100s-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @suniv_ic_of_init }, section "__irqchip_of_table", align 4
@irq_ic_data = internal unnamed_addr global ptr null, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [34 x i8] c"%pOF: unable to map IC registers\0A\00", align 1
@sun4i_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @sun4i_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%pOF: unable to create IRQ domain\0A\00", align 1
@sun4i_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_irq_mask, ptr null, ptr @sun4i_irq_unmask, ptr @sun4i_irq_ack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 66 }, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"sun4i_irq\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_allwinner_sun4i_ic, ptr @__of_table_allwinner_sunvi_ic], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun4i_ic_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #6
  store ptr %4, ptr @irq_ic_data, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %4, i32 0, i32 2
  store i32 64, ptr %7, align 8
  %8 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %4, i32 0, i32 3
  store i32 80, ptr %8, align 4
  tail call fastcc void @sun4i_of_init(ptr noundef %0) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @suniv_ic_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #6
  store ptr %4, ptr @irq_ic_data, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %4, i32 0, i32 2
  store i32 32, ptr %7, align 8
  %8 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %4, i32 0, i32 3
  store i32 48, ptr %8, align 4
  tail call fastcc void @sun4i_of_init(ptr noundef %0) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sun4i_of_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %3 = load ptr, ptr @irq_ic_data, align 4
  store ptr %2, ptr %3, align 4
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %0) #9
  unreachable

6:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr @irq_ic_data, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %7, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr @irq_ic_data, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %12, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 4
  %17 = getelementptr i8, ptr %13, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr @irq_ic_data, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %18, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 8
  %23 = getelementptr i8, ptr %19, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr @irq_ic_data, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %24, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %25, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %29 = load ptr, ptr @irq_ic_data, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %29, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 4
  %34 = getelementptr i8, ptr %30, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %35 = load ptr, ptr @irq_ic_data, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %35, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 8
  %40 = getelementptr i8, ptr %36, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %41 = load ptr, ptr @irq_ic_data, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 -1) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr @irq_ic_data, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 -1) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %47 = load ptr, ptr @irq_ic_data, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 -1) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %50 = load ptr, ptr @irq_ic_data, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 1) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %53 = load ptr, ptr @irq_ic_data, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #8, !srcloc !9
  %56 = icmp eq ptr %0, null
  %57 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %58 = select i1 %56, ptr null, ptr %57
  %59 = tail call ptr @__irq_domain_add(ptr noundef %58, i32 noundef 96, i32 noundef 96, i32 noundef 0, ptr noundef nonnull @sun4i_irq_ops, ptr noundef null) #8
  %60 = load ptr, ptr @irq_ic_data, align 4
  %61 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  %62 = icmp eq ptr %59, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %6
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef %0) #9
  unreachable

64:                                               ; preds = %6
  %65 = tail call i32 @set_handle_irq(ptr noundef nonnull @sun4i_handle_irq) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_handle_irq(ptr nocapture noundef readnone %0) #5 {
  %2 = load ptr, ptr @irq_ic_data, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load ptr, ptr @irq_ic_data, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %6, %1
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi i32 [ %23, %14 ], [ %4, %13 ]
  %16 = lshr i32 %15, 2
  %17 = load ptr, ptr @irq_ic_data, align 4
  %18 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @generic_handle_domain_irq(ptr noundef %19, i32 noundef %16) #8
  %21 = load ptr, ptr @irq_ic_data, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %14

25:                                               ; preds = %14, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_irq_map(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #5 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @sun4i_irq_chip, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef null) #8
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 1024, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_irq_mask(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = load ptr, ptr @irq_ic_data, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %3, 3
  %10 = and i32 %9, 536870908
  %11 = add i32 %8, %10
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %14 = shl nuw i32 1, %4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load ptr, ptr @irq_ic_data, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %17, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %10
  %22 = getelementptr i8, ptr %18, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %16) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_irq_unmask(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = load ptr, ptr @irq_ic_data, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %3, 3
  %10 = and i32 %9, 536870908
  %11 = add i32 %8, %10
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %14 = shl nuw i32 1, %4
  %15 = or i32 %13, %14
  %16 = load ptr, ptr @irq_ic_data, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sun4i_irq_chip_data, ptr %16, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %10
  %21 = getelementptr i8, ptr %17, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %15) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_irq_ack(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %6 = load ptr, ptr @irq_ic_data, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #8, !srcloc !9
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2152142855}
!9 = !{i64 365046}
!10 = !{i64 2152143323}
!11 = !{i64 2152143791}
!12 = !{i64 2152144255}
!13 = !{i64 2152144717}
!14 = !{i64 2152145179}
!15 = !{i64 2152145591}
!16 = !{i64 2152145993}
!17 = !{i64 2152146395}
!18 = !{i64 2152146764}
!19 = !{i64 2152147108}
!20 = !{i64 365464}
!21 = !{i64 2152151292}
!22 = !{i64 2152151717}
!23 = !{i64 2152152164}
!24 = !{i64 2152140753}
!25 = !{i64 2152141066}
!26 = !{i64 2152141843}
!27 = !{i64 2152142155}
!28 = !{i64 2152139996}
