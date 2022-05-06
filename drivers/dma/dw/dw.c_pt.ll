; ModuleID = '/llk/IR/drivers/dma/dw/dw.c_pt.bc'
source_filename = "../drivers/dma/dw/dw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_dma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_dma_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dw_dma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_dma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_dma_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dw_dma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dw_dma = type { %struct.dma_device, [20 x i8], ptr, ptr, %struct.tasklet_struct, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%union.anon.64 = type { ptr }
%struct.dw_dma_chip = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.dw_dma_chan = type { %struct.dma_chan, ptr, i8, i8, i32, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i32, i32, i8, i32, %struct.dw_dma_slave, %struct.dma_slave_config }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
%struct.dw_dma_chan_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_dw_dma_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_dma_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_dma_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_dma_probe to i32), ptr @__kstrtab_dw_dma_probe, ptr @__kstrtabns_dw_dma_probe }, section "___ksymtab_gpl+dw_dma_probe", align 4
@__kstrtab_dw_dma_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_dma_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_dma_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_dma_remove to i32), ptr @__kstrtab_dw_dma_remove, ptr @__kstrtabns_dw_dma_remove }, section "___ksymtab_gpl+dw_dma_remove", align 4
@.str = private unnamed_addr constant [10 x i8] c"dw:dmac%d\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_dw_dma_probe, ptr @__ksymtab_dw_dma_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_dma_probe(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 356, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 8
  store ptr @dw_dma_initialize_chan, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 9
  store ptr @dw_dma_suspend_chan, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 10
  store ptr @dw_dma_resume_chan, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 11
  store ptr @dw_dma_prepare_ctllo, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 12
  store ptr @dw_dma_encode_maxburst, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 13
  store ptr @dw_dma_bytes2block, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 14
  store ptr @dw_dma_block2bytes, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 15
  store ptr @dw_dma_set_device_name, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 16
  store ptr @dw_dma_disable, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 17
  store ptr @dw_dma_enable, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 5
  store ptr %3, ptr %16, align 4
  %17 = tail call i32 @do_dma_probe(ptr noundef %0) #9
  br label %18

18:                                               ; preds = %5, %1
  %19 = phi i32 [ %17, %5 ], [ -12, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_dma_initialize_chan(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 2
  %7 = select i1 %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 5
  %12 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 6
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 11
  %19 = or i32 %18, %7
  %20 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 7
  %24 = or i32 %19, %23
  %25 = getelementptr inbounds %struct.dw_dma, ptr %2, i32 0, i32 18
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %26, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 2
  %30 = or i32 %24, %29
  %31 = select i1 %14, i32 0, i32 786432
  %32 = or i32 %31, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %33 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %34, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #9, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %36, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %30) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_dma_suspend_chan(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %4, i32 0, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %7 = or i32 %6, 256
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %8, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_dma_resume_chan(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %4, i32 0, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %7 = and i32 %6, -257
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %8, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dw_dma_prepare_ctllo(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 14
  %9 = and i32 %8, 4177920
  br label %12

10:                                               ; preds = %1
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %18, label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ %9, %5 ], [ 0, %10 ]
  %14 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 3
  %17 = load i8, ptr %16, align 2
  br label %28

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 11
  %22 = and i32 %21, 522240
  %23 = or i32 %22, 402653184
  %24 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 4
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 3
  %27 = load i8, ptr %26, align 2
  br label %28

28:                                               ; preds = %18, %12
  %29 = phi i8 [ %27, %18 ], [ %17, %12 ]
  %30 = phi i8 [ %25, %18 ], [ %15, %12 ]
  %31 = phi i32 [ %23, %18 ], [ 402653184, %12 ]
  %32 = phi i32 [ 0, %18 ], [ %13, %12 ]
  %33 = phi i8 [ %25, %18 ], [ %17, %12 ]
  %34 = select i1 %4, i8 %30, i8 %29
  %35 = or i32 %31, %32
  %36 = zext i8 %33 to i32
  %37 = shl nuw nsw i32 %36, 23
  %38 = or i32 %35, %37
  %39 = zext i8 %34 to i32
  %40 = shl i32 %39, 25
  %41 = or i32 %38, %40
  ret i32 %41
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dw_dma_encode_maxburst(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp ugt i32 %3, 1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #9, !range !17
  %6 = sub nsw i32 30, %5
  %7 = select i1 %4, i32 %6, i32 0
  store i32 %7, ptr %1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dw_dma_bytes2block(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = lshr i32 %1, %2
  %6 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %5, %7
  %9 = shl i32 %7, %2
  %10 = select i1 %8, i32 %9, i32 %1
  %11 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  store i32 %10, ptr %3, align 4
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dw_dma_block2bytes(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = and i32 %1, 4095
  %5 = shl i32 %4, %2
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_dma_set_device_name(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.dw_dma, ptr %0, i32 0, i32 1
  %4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef 20, ptr noundef nonnull @.str, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_dma_disable(ptr noundef %0) #0 {
  tail call void @do_dw_dma_off(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_dma_enable(ptr noundef %0) #0 {
  tail call void @do_dw_dma_on(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dma_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_dma_remove(ptr noundef %0) #0 {
  %2 = tail call i32 @do_dma_remove(ptr noundef %0) #9
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dma_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_dw_dma_off(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_dw_dma_on(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2152918101}
!10 = !{i64 5004930}
!11 = !{i64 2152918516}
!12 = !{i64 5005348}
!13 = !{i64 2152919086}
!14 = !{i64 2152919378}
!15 = !{i64 2152919970}
!16 = !{i64 2152920266}
!17 = !{i32 0, i32 33}
