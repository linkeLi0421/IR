; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-smfc.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-smfc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_smfc_set_burstsize:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_smfc_set_burstsize\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_smfc_set_burstsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_smfc_map_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_smfc_map_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_smfc_map_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_smfc_set_watermark:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_smfc_set_watermark\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_smfc_set_watermark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_smfc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_smfc_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_smfc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_smfc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_smfc_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_smfc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_smfc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_smfc_get\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_smfc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_smfc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_smfc_put\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_smfc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipu_smfc_priv = type { ptr, %struct.spinlock, ptr, [4 x %struct.ipu_smfc], i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ipu_smfc = type { ptr, i32, i8 }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@__kstrtab_ipu_smfc_set_burstsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_smfc_set_burstsize = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_smfc_set_burstsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_smfc_set_burstsize to i32), ptr @__kstrtab_ipu_smfc_set_burstsize, ptr @__kstrtabns_ipu_smfc_set_burstsize }, section "___ksymtab_gpl+ipu_smfc_set_burstsize", align 4
@__kstrtab_ipu_smfc_map_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_smfc_map_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_smfc_map_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_smfc_map_channel to i32), ptr @__kstrtab_ipu_smfc_map_channel, ptr @__kstrtabns_ipu_smfc_map_channel }, section "___ksymtab_gpl+ipu_smfc_map_channel", align 4
@__kstrtab_ipu_smfc_set_watermark = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_smfc_set_watermark = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_smfc_set_watermark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_smfc_set_watermark to i32), ptr @__kstrtab_ipu_smfc_set_watermark, ptr @__kstrtabns_ipu_smfc_set_watermark }, section "___ksymtab_gpl+ipu_smfc_set_watermark", align 4
@__kstrtab_ipu_smfc_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_smfc_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_smfc_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_smfc_enable to i32), ptr @__kstrtab_ipu_smfc_enable, ptr @__kstrtabns_ipu_smfc_enable }, section "___ksymtab_gpl+ipu_smfc_enable", align 4
@__kstrtab_ipu_smfc_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_smfc_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_smfc_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_smfc_disable to i32), ptr @__kstrtab_ipu_smfc_disable, ptr @__kstrtabns_ipu_smfc_disable }, section "___ksymtab_gpl+ipu_smfc_disable", align 4
@__kstrtab_ipu_smfc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_smfc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_smfc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_smfc_get to i32), ptr @__kstrtab_ipu_smfc_get, ptr @__kstrtabns_ipu_smfc_get }, section "___ksymtab_gpl+ipu_smfc_get", align 4
@__kstrtab_ipu_smfc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_smfc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_smfc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_smfc_put to i32), ptr @__kstrtab_ipu_smfc_put, ptr @__kstrtabns_ipu_smfc_put }, section "___ksymtab_gpl+ipu_smfc_put", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ipu_smfc_disable, ptr @__ksymtab_ipu_smfc_enable, ptr @__ksymtab_ipu_smfc_get, ptr @__ksymtab_ipu_smfc_map_channel, ptr @__ksymtab_ipu_smfc_put, ptr @__ksymtab_ipu_smfc_set_burstsize, ptr @__ksymtab_ipu_smfc_set_watermark], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_smfc_set_burstsize(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #3
  %6 = getelementptr inbounds %struct.ipu_smfc, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 2
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %12 = shl i32 15, %8
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = shl i32 %1, %8
  %16 = or i32 %14, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #3, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_smfc_map_channel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %4, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #3
  %7 = getelementptr inbounds %struct.ipu_smfc, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, 3
  %10 = load ptr, ptr %4, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %12 = shl i32 7, %9
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = shl i32 %1, 2
  %16 = or i32 %15, %2
  %17 = shl i32 %16, %9
  %18 = or i32 %14, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %19 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #3, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_smfc_set_watermark(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %4, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #3
  %7 = getelementptr inbounds %struct.ipu_smfc, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, 6
  %10 = icmp sgt i32 %8, 1
  %11 = select i1 %10, i32 4, i32 0
  %12 = add i32 %11, %9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %16 = shl i32 63, %12
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = shl i32 %2, 3
  %20 = or i32 %19, %1
  %21 = shl i32 %20, %12
  %22 = or i32 %18, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #3, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_smfc_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %2, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @ipu_module_enable(ptr noundef %10, i32 noundef 256) #3
  %12 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  %15 = add i32 %14, 1
  store i32 %15, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_smfc_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %2, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %2, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @ipu_module_disable(ptr noundef %11, i32 noundef 256) #3
  %13 = load i32, ptr %5, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ %13, %9 ], [ %7, %1 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, ptr %5, align 4
  br label %18

18:                                               ; preds = %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_smfc_get(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 3
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %6, i32 0, i32 1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #3
  %9 = getelementptr %struct.ipu_smfc_priv, ptr %6, i32 0, i32 3, i32 %1, i32 2
  %10 = load i8, ptr %9, align 4, !range !16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = getelementptr %struct.ipu_smfc_priv, ptr %6, i32 0, i32 3, i32 %1
  store i8 1, ptr %9, align 4
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ inttoptr (i32 -16 to ptr), %4 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #3
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi ptr [ %15, %14 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_smfc_put(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %2, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.ipu_smfc, ptr %0, i32 0, i32 2
  store i8 0, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_smfc_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 64, i32 noundef 3520) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 23
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %4, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ipu_smfc_priv, ptr %4, i32 0, i32 2
  store ptr %0, ptr %9, align 4
  %10 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %2, i32 noundef 4096) #3
  store ptr %10, ptr %4, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = getelementptr %struct.ipu_smfc_priv, ptr %4, i32 0, i32 3, i32 0
  store ptr %4, ptr %13, align 4
  %14 = getelementptr %struct.ipu_smfc_priv, ptr %4, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr %struct.ipu_smfc_priv, ptr %4, i32 0, i32 3, i32 1
  store ptr %4, ptr %15, align 4
  %16 = getelementptr %struct.ipu_smfc_priv, ptr %4, i32 0, i32 3, i32 1, i32 1
  store i32 1, ptr %16, align 4
  %17 = getelementptr %struct.ipu_smfc_priv, ptr %4, i32 0, i32 3, i32 2
  store ptr %4, ptr %17, align 4
  %18 = getelementptr %struct.ipu_smfc_priv, ptr %4, i32 0, i32 3, i32 2, i32 1
  store i32 2, ptr %18, align 4
  %19 = getelementptr %struct.ipu_smfc_priv, ptr %4, i32 0, i32 3, i32 3
  store ptr %4, ptr %19, align 4
  %20 = getelementptr %struct.ipu_smfc_priv, ptr %4, i32 0, i32 3, i32 3, i32 1
  store i32 3, ptr %20, align 4
  br label %21

21:                                               ; preds = %12, %6, %3
  %22 = phi i32 [ -12, %3 ], [ -12, %6 ], [ 0, %12 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_smfc_exit(ptr nocapture noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!8 = !{i64 363185}
!9 = !{i64 2154754261}
!10 = !{i64 2154754455}
!11 = !{i64 362767}
!12 = !{i64 2154756666}
!13 = !{i64 2154756860}
!14 = !{i64 2154759027}
!15 = !{i64 2154759221}
!16 = !{i8 0, i8 2}
