; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-dmfc.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-dmfc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_enable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_disable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_config_wait4eot:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_config_wait4eot\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_config_wait4eot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_get\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dmfc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dmfc_put\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dmfc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dmfc_channel_data = type { i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.dmfc_channel = type { i32, ptr, ptr, ptr }
%struct.ipu_dmfc_priv = type { ptr, ptr, [5 x %struct.dmfc_channel], %struct.mutex, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@__kstrtab_ipu_dmfc_enable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_enable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_enable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_enable_channel to i32), ptr @__kstrtab_ipu_dmfc_enable_channel, ptr @__kstrtabns_ipu_dmfc_enable_channel }, section "___ksymtab_gpl+ipu_dmfc_enable_channel", align 4
@__kstrtab_ipu_dmfc_disable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_disable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_disable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_disable_channel to i32), ptr @__kstrtab_ipu_dmfc_disable_channel, ptr @__kstrtabns_ipu_dmfc_disable_channel }, section "___ksymtab_gpl+ipu_dmfc_disable_channel", align 4
@__kstrtab_ipu_dmfc_config_wait4eot = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_config_wait4eot = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_config_wait4eot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_config_wait4eot to i32), ptr @__kstrtab_ipu_dmfc_config_wait4eot, ptr @__kstrtabns_ipu_dmfc_config_wait4eot }, section "___ksymtab_gpl+ipu_dmfc_config_wait4eot", align 4
@dmfcdata = internal constant [5 x %struct.dmfc_channel_data] [%struct.dmfc_channel_data { i32 23, i32 12, i32 0, i32 20, i32 3 }, %struct.dmfc_channel_data { i32 24, i32 12, i32 16, i32 22, i32 1 }, %struct.dmfc_channel_data { i32 27, i32 12, i32 8, i32 21, i32 2 }, %struct.dmfc_channel_data { i32 28, i32 4, i32 0, i32 16, i32 2 }, %struct.dmfc_channel_data { i32 29, i32 12, i32 24, i32 23, i32 1 }], align 4
@__kstrtab_ipu_dmfc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_get to i32), ptr @__kstrtab_ipu_dmfc_get, ptr @__kstrtabns_ipu_dmfc_get }, section "___ksymtab_gpl+ipu_dmfc_get", align 4
@__kstrtab_ipu_dmfc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dmfc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dmfc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dmfc_put to i32), ptr @__kstrtab_ipu_dmfc_put, ptr @__kstrtabns_ipu_dmfc_put }, section "___ksymtab_gpl+ipu_dmfc_put", align 4
@ipu_dmfc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [13 x i8] c"&priv->mutex\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_ipu_dmfc_config_wait4eot, ptr @__ksymtab_ipu_dmfc_disable_channel, ptr @__ksymtab_ipu_dmfc_enable_channel, ptr @__ksymtab_ipu_dmfc_get, ptr @__ksymtab_ipu_dmfc_put], section "llvm.metadata"
@switch.table.ipu_dmfc_get = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 0, i32 0, i32 2, i32 3, i32 4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dmfc_enable_channel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dmfc_channel, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @ipu_module_enable(ptr noundef %9, i32 noundef 1024) #4
  %11 = load i32, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ %6, %1 ]
  %14 = add i32 %13, 1
  store i32 %14, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_dmfc_disable_channel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dmfc_channel, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 @ipu_module_disable(ptr noundef %10, i32 noundef 1024) #4
  %12 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %12, %9 ], [ %7, %1 ]
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %16, %13
  tail call void @mutex_unlock(ptr noundef %4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_dmfc_config_wait4eot(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dmfc_channel, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %10 = load i32, ptr %0, align 4
  %11 = shl i32 %10, 8
  %12 = udiv i32 %11, %1
  %13 = getelementptr inbounds %struct.dmfc_channel, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dmfc_channel_data, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %12, %16
  %18 = getelementptr inbounds %struct.dmfc_channel_data, ptr %14, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  %21 = or i32 %20, %9
  %22 = xor i32 %20, -1
  %23 = and i32 %9, %22
  %24 = select i1 %17, i32 %21, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #4, !srcloc !11
  tail call void @mutex_unlock(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @ipu_dmfc_get(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = add i32 %1, -23
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = trunc i32 %5 to i8
  %9 = lshr i8 115, %8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds [7 x i32], ptr @switch.table.ipu_dmfc_get, i32 0, i32 %5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.ipu_dmfc_priv, ptr %4, i32 0, i32 2, i32 %14
  br label %16

16:                                               ; preds = %12, %7, %2
  %17 = phi ptr [ %15, %12 ], [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %7 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_dmfc_put(ptr nocapture %0) #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dmfc_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 116, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %2, i32 noundef 4096) #4
  %9 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 4
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  store ptr %0, ptr %5, align 4
  %13 = getelementptr inbounds %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @ipu_dmfc_init.__key) #4
  %14 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 17
  store ptr %5, ptr %14, align 4
  %15 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 0, i32 2
  store ptr %5, ptr %15, align 4
  %16 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 0, i32 3
  store ptr @dmfcdata, ptr %17, align 4
  %18 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 0
  store i32 2, ptr %18, align 4
  %19 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 1, i32 2
  store ptr %5, ptr %19, align 4
  %20 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 1, i32 1
  store ptr %0, ptr %20, align 4
  %21 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 1, i32 3
  store ptr getelementptr inbounds ([5 x %struct.dmfc_channel_data], ptr @dmfcdata, i32 0, i32 1), ptr %21, align 4
  %22 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 2, i32 2
  store ptr %5, ptr %22, align 4
  %23 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 2, i32 1
  store ptr %0, ptr %23, align 4
  %24 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 2, i32 3
  store ptr getelementptr inbounds ([5 x %struct.dmfc_channel_data], ptr @dmfcdata, i32 0, i32 2), ptr %24, align 4
  %25 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 2
  store i32 2, ptr %25, align 4
  %26 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 3, i32 2
  store ptr %5, ptr %26, align 4
  %27 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 3, i32 1
  store ptr %0, ptr %27, align 4
  %28 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 3, i32 3
  store ptr getelementptr inbounds ([5 x %struct.dmfc_channel_data], ptr @dmfcdata, i32 0, i32 3), ptr %28, align 4
  %29 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 3
  store i32 2, ptr %29, align 4
  %30 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 4, i32 2
  store ptr %5, ptr %30, align 4
  %31 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 4, i32 1
  store ptr %0, ptr %31, align 4
  %32 = getelementptr %struct.ipu_dmfc_priv, ptr %5, i32 0, i32 2, i32 4, i32 3
  store ptr getelementptr inbounds ([5 x %struct.dmfc_channel_data], ptr @dmfcdata, i32 0, i32 4), ptr %32, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 80) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 22100) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 538976502) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %39 = load ptr, ptr %9, align 4
  %40 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 539031286) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 3) #4, !srcloc !11
  br label %43

43:                                               ; preds = %11, %7, %4
  %44 = phi i32 [ 0, %11 ], [ -12, %4 ], [ -12, %7 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_dmfc_exit(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 365507}
!9 = !{i64 2154750192}
!10 = !{i64 2154750392}
!11 = !{i64 365089}
!12 = !{i64 2154755633}
!13 = !{i64 2154755979}
!14 = !{i64 2154756325}
!15 = !{i64 2154756671}
!16 = !{i64 2154757017}
