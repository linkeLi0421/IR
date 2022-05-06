; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-vdi.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-vdi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_vdi_set_field_order:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_vdi_set_field_order\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_vdi_set_field_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_vdi_set_motion:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_vdi_set_motion\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_vdi_set_motion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_vdi_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_vdi_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_vdi_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_vdi_unsetup:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_vdi_unsetup\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_vdi_unsetup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_vdi_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_vdi_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_vdi_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_vdi_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_vdi_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_vdi_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_vdi_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_vdi_get\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_vdi_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_vdi_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_vdi_put\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_vdi_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipu_vdi = type { ptr, i32, %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@__kstrtab_ipu_vdi_set_field_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_vdi_set_field_order = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_vdi_set_field_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_vdi_set_field_order to i32), ptr @__kstrtab_ipu_vdi_set_field_order, ptr @__kstrtabns_ipu_vdi_set_field_order }, section "___ksymtab_gpl+ipu_vdi_set_field_order", align 4
@__kstrtab_ipu_vdi_set_motion = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_vdi_set_motion = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_vdi_set_motion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_vdi_set_motion to i32), ptr @__kstrtab_ipu_vdi_set_motion, ptr @__kstrtabns_ipu_vdi_set_motion }, section "___ksymtab_gpl+ipu_vdi_set_motion", align 4
@__kstrtab_ipu_vdi_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_vdi_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_vdi_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_vdi_setup to i32), ptr @__kstrtab_ipu_vdi_setup, ptr @__kstrtabns_ipu_vdi_setup }, section "___ksymtab_gpl+ipu_vdi_setup", align 4
@__kstrtab_ipu_vdi_unsetup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_vdi_unsetup = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_vdi_unsetup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_vdi_unsetup to i32), ptr @__kstrtab_ipu_vdi_unsetup, ptr @__kstrtabns_ipu_vdi_unsetup }, section "___ksymtab_gpl+ipu_vdi_unsetup", align 4
@__kstrtab_ipu_vdi_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_vdi_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_vdi_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_vdi_enable to i32), ptr @__kstrtab_ipu_vdi_enable, ptr @__kstrtabns_ipu_vdi_enable }, section "___ksymtab_gpl+ipu_vdi_enable", align 4
@__kstrtab_ipu_vdi_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_vdi_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_vdi_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_vdi_disable to i32), ptr @__kstrtab_ipu_vdi_disable, ptr @__kstrtabns_ipu_vdi_disable }, section "___ksymtab_gpl+ipu_vdi_disable", align 4
@__kstrtab_ipu_vdi_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_vdi_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_vdi_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_vdi_get to i32), ptr @__kstrtab_ipu_vdi_get, ptr @__kstrtabns_ipu_vdi_get }, section "___ksymtab_gpl+ipu_vdi_get", align 4
@__kstrtab_ipu_vdi_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_vdi_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_vdi_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_vdi_put to i32), ptr @__kstrtab_ipu_vdi_put, ptr @__kstrtabns_ipu_vdi_put }, section "___ksymtab_gpl+ipu_vdi_put", align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ipu_vdi_disable, ptr @__ksymtab_ipu_vdi_enable, ptr @__ksymtab_ipu_vdi_get, ptr @__ksymtab_ipu_vdi_put, ptr @__ksymtab_ipu_vdi_set_field_order, ptr @__ksymtab_ipu_vdi_set_motion, ptr @__ksymtab_ipu_vdi_setup, ptr @__ksymtab_ipu_vdi_unsetup], section "llvm.metadata"
@switch.table.ipu_vdi_set_field_order = private unnamed_addr constant [8 x i32] [i32 0, i32 -1073741824, i32 0, i32 0, i32 -1073741824, i32 0, i32 0, i32 -1073741824], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_vdi_set_field_order(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %2, -2
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %10, label %6

6:                                                ; preds = %10, %3
  %7 = and i64 %1, 63744
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %8, i32 -1073741824, i32 0
  br label %18

10:                                               ; preds = %3
  %11 = trunc i32 %4 to i8
  %12 = lshr i8 -37, %11
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %6, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [8 x i32], ptr @switch.table.ipu_vdi_set_field_order, i32 0, i32 %4
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %6
  %19 = phi i32 [ %9, %6 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 2
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #4
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %25 = and i32 %24, 1073741823
  %26 = or i32 %25, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_vdi_set_motion(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = and i32 %7, -13
  switch i32 %1, label %11 [
    i32 2, label %13
    i32 3, label %9
  ]

9:                                                ; preds = %2
  %10 = or i32 %8, 8
  br label %13

11:                                               ; preds = %2
  %12 = or i32 %8, 4
  br label %13

13:                                               ; preds = %11, %9, %2
  %14 = phi i32 [ %12, %11 ], [ %10, %9 ], [ %8, %2 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_vdi_setup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #4
  %7 = shl i32 %3, 16
  %8 = add i32 %7, -65536
  %9 = add i32 %2, -1
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #4, !srcloc !11
  switch i32 %1, label %12 [
    i32 8209, label %13
    i32 8207, label %13
    i32 8200, label %13
    i32 8198, label %13
  ]

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %4, %4, %4, %4
  %14 = phi i32 [ 34091824, %12 ], [ 34091826, %4 ], [ 34091826, %4 ], [ 34091826, %4 ], [ 34091826, %4 ]
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %18 = or i32 %14, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_vdi_unsetup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %4 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_vdi_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  %4 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @ipu_module_enable(ptr noundef %9, i32 noundef %11) #4
  %13 = load i32, ptr %4, align 4
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i32 [ %13, %7 ], [ %5, %1 ]
  %16 = add i32 %15, 1
  store i32 %16, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_vdi_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  %4 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ipu_vdi, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @ipu_module_disable(ptr noundef %12, i32 noundef %14) #4
  br label %16

16:                                               ; preds = %10, %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ipu_vdi_get(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_vdi_put(ptr nocapture %0) #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_vdi_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 20, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 21
  store ptr %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ipu_vdi, ptr %5, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ipu_vdi, ptr %5, i32 0, i32 1
  store i32 %3, ptr %10, align 4
  %11 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %2, i32 noundef 4096) #4
  store ptr %11, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ipu_vdi, ptr %5, i32 0, i32 4
  store ptr %0, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %7, %4
  %16 = phi i32 [ 0, %13 ], [ -12, %4 ], [ -12, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_vdi_exit(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!8 = !{i64 364236}
!9 = !{i64 2154747369}
!10 = !{i64 2154747726}
!11 = !{i64 363818}
