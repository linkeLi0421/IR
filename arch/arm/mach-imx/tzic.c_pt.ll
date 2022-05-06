; ModuleID = '/llk/IR/arch/arm/mach-imx/tzic.c_pt.bc'
source_filename = "../arch/arm/mach-imx/tzic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mxc_extra_irq = type { ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_tzic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,tzic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tzic_init_dt }, section "__irqchip_of_table", align 4
@tzic_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [25 x i8] c"arch/arm/mach-imx/tzic.c\00", align 1
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@domain = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"\016TrustZone Interrupt Controller (TZIC) initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tzic\00", align 1
@tzic_extra_irq = internal global %struct.mxc_extra_irq zeroinitializer, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_tzic], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tzic_init_dt(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  store ptr %3, ptr @tzic_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #5
  %6 = load ptr, ptr @tzic_base, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !9
  %10 = load ptr, ptr @tzic_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -2147418111) #5, !srcloc !10
  %11 = load ptr, ptr @tzic_base, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 31) #5, !srcloc !10
  %13 = load ptr, ptr @tzic_base, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 2) #5, !srcloc !10
  br label %15

15:                                               ; preds = %15, %7
  %16 = phi i32 [ 0, %7 ], [ %21, %15 ]
  %17 = load ptr, ptr @tzic_base, align 4
  %18 = shl i32 %16, 2
  %19 = add nuw nsw i32 %18, 128
  %20 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -1) #5, !srcloc !10
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %15

23:                                               ; preds = %23, %15
  %24 = phi i32 [ %29, %23 ], [ 0, %15 ]
  %25 = load ptr, ptr @tzic_base, align 4
  %26 = shl i32 %24, 2
  %27 = add nuw nsw i32 %26, 384
  %28 = getelementptr i8, ptr %25, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1) #5, !srcloc !10
  %29 = add nuw nsw i32 %24, 1
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %23

31:                                               ; preds = %23
  %32 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef null) #5
  br label %35

35:                                               ; preds = %34, %31
  %36 = tail call ptr @irq_domain_add_legacy(ptr noundef %0, i32 noundef 128, i32 noundef %32, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #5
  store ptr %36, ptr @domain, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef null) #5
  br label %39

39:                                               ; preds = %38, %35
  br label %40

40:                                               ; preds = %40, %39
  %41 = phi i32 [ %44, %40 ], [ %32, %39 ]
  %42 = phi i32 [ %43, %40 ], [ 0, %39 ]
  tail call fastcc void @tzic_init_gc(i32 noundef %42, i32 noundef %41) #6
  %43 = add nuw nsw i32 %42, 1
  %44 = add i32 %41, 32
  %45 = icmp eq i32 %43, 4
  br i1 %45, label %46, label %40

46:                                               ; preds = %40
  %47 = tail call i32 @set_handle_irq(ptr noundef nonnull @tzic_handle_irq) #7
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tzic_enable_wake() local_unnamed_addr #1 {
  %1 = load ptr, ptr @tzic_base, align 4
  %2 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #5, !srcloc !10
  %3 = load ptr, ptr @tzic_base, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7, !prof !8

7:                                                ; preds = %0
  %8 = load ptr, ptr @tzic_base, align 4
  %9 = getelementptr i8, ptr %8, i32 256
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !9
  %11 = load ptr, ptr @tzic_base, align 4
  %12 = getelementptr i8, ptr %11, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !10
  %13 = load ptr, ptr @tzic_base, align 4
  %14 = getelementptr i8, ptr %13, i32 260
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  %16 = load ptr, ptr @tzic_base, align 4
  %17 = getelementptr i8, ptr %16, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !10
  %18 = load ptr, ptr @tzic_base, align 4
  %19 = getelementptr i8, ptr %18, i32 264
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !9
  %21 = load ptr, ptr @tzic_base, align 4
  %22 = getelementptr i8, ptr %21, i32 3592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !10
  %23 = load ptr, ptr @tzic_base, align 4
  %24 = getelementptr i8, ptr %23, i32 268
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !9
  %26 = load ptr, ptr @tzic_base, align 4
  %27 = getelementptr i8, ptr %26, i32 3596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !10
  br label %28

28:                                               ; preds = %7, %0
  %29 = phi i32 [ -11, %0 ], [ 0, %7 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tzic_init_gc(i32 noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr @tzic_base, align 4
  %4 = tail call ptr @irq_alloc_generic_chip(ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %1, ptr noundef %3, ptr noundef nonnull @handle_level_irq) #5
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 14
  store ptr @tzic_extra_irq, ptr %5, align 4
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 11
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 1, i32 7
  store ptr @irq_gc_mask_disable_reg, ptr %7, align 4
  %8 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 1, i32 9
  store ptr @irq_gc_unmask_enable_reg, ptr %8, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 1, i32 14
  store ptr @irq_gc_set_wake, ptr %9, align 4
  %10 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 1, i32 17
  store ptr @tzic_irq_suspend, ptr %10, align 4
  %11 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 1, i32 18
  store ptr @tzic_irq_resume, ptr %11, align 4
  %12 = shl i32 %0, 2
  %13 = add i32 %12, 384
  %14 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 2, i32 14
  %15 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 2, i32 15
  store i32 %13, ptr %15, align 4
  %16 = add i32 %12, 256
  store i32 %16, ptr %14, align 4
  tail call void @irq_setup_generic_chip(ptr noundef %4, i32 noundef -1, i32 noundef 0, i32 noundef 2048, i32 noundef 0) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tzic_handle_irq(ptr nocapture noundef readnone %0) #1 {
  br label %2

2:                                                ; preds = %84, %1
  %3 = load ptr, ptr @tzic_base, align 4
  %4 = getelementptr i8, ptr %3, i32 3456
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  %6 = load ptr, ptr @tzic_base, align 4
  %7 = getelementptr i8, ptr %6, i32 128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %11, %2
  %12 = phi i32 [ %19, %11 ], [ %9, %2 ]
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #5, !range !11
  %14 = xor i32 %13, 31
  %15 = load ptr, ptr @domain, align 4
  %16 = tail call i32 @generic_handle_domain_irq(ptr noundef %15, i32 noundef %14) #5
  %17 = shl nuw i32 1, %14
  %18 = xor i32 %17, -1
  %19 = and i32 %12, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %2
  %22 = phi i32 [ 0, %2 ], [ 1, %11 ]
  %23 = load ptr, ptr @tzic_base, align 4
  %24 = getelementptr i8, ptr %23, i32 3460
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !9
  %26 = load ptr, ptr @tzic_base, align 4
  %27 = getelementptr i8, ptr %26, i32 132
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !9
  %29 = and i32 %28, %25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %31, %21
  %32 = phi i32 [ %40, %31 ], [ %29, %21 ]
  %33 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 true) #5, !range !11
  %34 = xor i32 %33, 31
  %35 = load ptr, ptr @domain, align 4
  %36 = or i32 %34, 32
  %37 = tail call i32 @generic_handle_domain_irq(ptr noundef %35, i32 noundef %36) #5
  %38 = shl nuw i32 1, %34
  %39 = xor i32 %38, -1
  %40 = and i32 %32, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %31

42:                                               ; preds = %31, %21
  %43 = phi i32 [ %22, %21 ], [ 1, %31 ]
  %44 = load ptr, ptr @tzic_base, align 4
  %45 = getelementptr i8, ptr %44, i32 3464
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !9
  %47 = load ptr, ptr @tzic_base, align 4
  %48 = getelementptr i8, ptr %47, i32 136
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !9
  %50 = and i32 %49, %46
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %52, %42
  %53 = phi i32 [ %61, %52 ], [ %50, %42 ]
  %54 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 true) #5, !range !11
  %55 = xor i32 %54, 31
  %56 = load ptr, ptr @domain, align 4
  %57 = or i32 %55, 64
  %58 = tail call i32 @generic_handle_domain_irq(ptr noundef %56, i32 noundef %57) #5
  %59 = shl nuw i32 1, %55
  %60 = xor i32 %59, -1
  %61 = and i32 %53, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %52

63:                                               ; preds = %52, %42
  %64 = phi i32 [ %43, %42 ], [ 1, %52 ]
  %65 = load ptr, ptr @tzic_base, align 4
  %66 = getelementptr i8, ptr %65, i32 3468
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !9
  %68 = load ptr, ptr @tzic_base, align 4
  %69 = getelementptr i8, ptr %68, i32 140
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #5, !srcloc !9
  %71 = and i32 %70, %67
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %73, %63
  %74 = phi i32 [ %82, %73 ], [ %71, %63 ]
  %75 = tail call i32 @llvm.ctlz.i32(i32 %74, i1 true) #5, !range !11
  %76 = xor i32 %75, 31
  %77 = load ptr, ptr @domain, align 4
  %78 = or i32 %76, 96
  %79 = tail call i32 @generic_handle_domain_irq(ptr noundef %77, i32 noundef %78) #5
  %80 = shl nuw i32 1, %76
  %81 = xor i32 %80, -1
  %82 = and i32 %74, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %73

84:                                               ; preds = %73, %63
  %85 = phi i32 [ %64, %63 ], [ 1, %73 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %2

87:                                               ; preds = %84
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_alloc_generic_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_disable_reg(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_unmask_enable_reg(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tzic_irq_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr @tzic_base, align 4
  %9 = lshr i32 %5, 3
  %10 = and i32 %9, 536870908
  %11 = add nuw nsw i32 %10, 3584
  %12 = getelementptr i8, ptr %8, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %7) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tzic_irq_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr @tzic_base, align 4
  %5 = lshr i32 %3, 3
  %6 = and i32 %5, 536870908
  %7 = add nuw nsw i32 %6, 256
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !9
  %10 = load ptr, ptr @tzic_base, align 4
  %11 = add nuw nsw i32 %6, 3584
  %12 = getelementptr i8, ptr %10, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #5, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_setup_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

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
!9 = !{i64 3610526}
!10 = !{i64 3610108}
!11 = !{i32 0, i32 33}
