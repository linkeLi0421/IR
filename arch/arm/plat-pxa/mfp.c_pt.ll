; ModuleID = '/llk/IR/arch/arm/plat-pxa/mfp.c_pt.bc'
source_filename = "../arch/arm/plat-pxa/mfp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mfp_pin = type { i32, i32, i32, i32 }
%struct.mfp_addr_map = type { i32, i32, i32 }

@mfp_spin_lock = internal global %struct.spinlock zeroinitializer, align 4
@mfp_table = internal unnamed_addr global [352 x %struct.mfp_pin] zeroinitializer, align 4
@mfpr_lpm = internal unnamed_addr constant [7 x i32] [i32 0, i32 8192, i32 16640, i32 8320, i32 16768, i32 128, i32 0], align 4
@mfpr_edge = internal unnamed_addr constant [4 x i32] [i32 0, i32 16, i32 32, i32 48], align 4
@mfpr_pull = internal unnamed_addr constant [5 x i32] [i32 0, i32 40960, i32 49152, i32 57344, i32 32768], align 4
@mfpr_mmio_base = internal unnamed_addr global ptr null, align 4
@mfpr_off_readback = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mfp_config(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mfp_spin_lock) #4
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %50

5:                                                ; preds = %46, %2
  %6 = phi ptr [ %48, %46 ], [ %0, %2 ]
  %7 = phi i32 [ %47, %46 ], [ 0, %2 ]
  %8 = load i32, ptr %6, align 4
  %9 = and i32 %8, 1023
  %10 = icmp ugt i32 %9, 351
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-pxa/mfp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 174, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

12:                                               ; preds = %5
  %13 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %9
  %14 = lshr i32 %8, 10
  %15 = and i32 %14, 7
  %16 = lshr i32 %8, 16
  %17 = and i32 %16, 7
  %18 = lshr i32 %8, 19
  %19 = and i32 %18, 3
  %20 = lshr i32 %8, 21
  %21 = and i32 %20, 7
  %22 = lshr i32 %8, 3
  %23 = and i32 %22, 7168
  %24 = or i32 %15, %23
  %25 = icmp eq i32 %21, 0
  %26 = getelementptr [7 x i32], ptr @mfpr_lpm, i32 0, i32 %17
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, %24
  %29 = getelementptr [4 x i32], ptr @mfpr_edge, i32 0, i32 %19
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %28, %30
  br i1 %25, label %36, label %32, !prof !10

32:                                               ; preds = %12
  %33 = getelementptr [5 x i32], ptr @mfpr_pull, i32 0, i32 %21
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, %24
  br label %36

36:                                               ; preds = %32, %12
  %37 = phi i32 [ %35, %32 ], [ %31, %12 ]
  %38 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %9, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %9, i32 3
  store i32 %31, ptr %39, align 4
  store i32 %8, ptr %13, align 4
  %40 = icmp eq i32 %8, -1
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @mfpr_mmio_base, align 4
  %43 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %9, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %37) #4, !srcloc !11
  br label %46

46:                                               ; preds = %41, %36
  %47 = add nuw nsw i32 %7, 1
  %48 = getelementptr i32, ptr %6, i32 1
  %49 = icmp eq i32 %47, %1
  br i1 %49, label %50, label %5

50:                                               ; preds = %46, %2
  %51 = load ptr, ptr @mfpr_mmio_base, align 4
  %52 = load i32, ptr @mfpr_off_readback, align 4
  %53 = getelementptr i8, ptr %51, i32 %52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #4, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mfp_spin_lock, i32 noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mfp_read(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 351
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-pxa/mfp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

4:                                                ; preds = %1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mfp_spin_lock) #4
  %6 = load ptr, ptr @mfpr_mmio_base, align 4
  %7 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mfp_spin_lock, i32 noundef %5) #4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mfp_write(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %0, 351
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-pxa/mfp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

5:                                                ; preds = %2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mfp_spin_lock) #4
  %7 = load ptr, ptr @mfpr_mmio_base, align 4
  %8 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %1) #4, !srcloc !11
  %11 = load ptr, ptr @mfpr_mmio_base, align 4
  %12 = load i32, ptr @mfpr_off_readback, align 4
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mfp_spin_lock, i32 noundef %6) #4
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define dso_local void @mfp_init_base(ptr noundef %0) local_unnamed_addr #2 section ".init.text" {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %3
  store i32 -1, ptr %4, align 4
  %5 = add nuw nsw i32 %3, 1
  %6 = icmp eq i32 %5, 352
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  store ptr %0, ptr @mfpr_mmio_base, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mfp_init_addr(ptr nocapture noundef readonly %0) local_unnamed_addr #3 section ".init.text" {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mfp_spin_lock) #4
  %3 = getelementptr inbounds %struct.mfp_addr_map, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr @mfpr_off_readback, align 4
  %5 = load i32, ptr %0, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %31, label %7

7:                                                ; preds = %28, %1
  %8 = phi i32 [ %30, %28 ], [ %4, %1 ]
  %9 = phi i32 [ %26, %28 ], [ %5, %1 ]
  %10 = phi ptr [ %25, %28 ], [ %0, %1 ]
  %11 = getelementptr inbounds %struct.mfp_addr_map, ptr %10, i32 0, i32 1
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i32 [ %8, %7 ], [ %21, %12 ]
  %14 = phi i32 [ %9, %7 ], [ %18, %12 ]
  %15 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %14, i32 1
  store i32 %13, ptr %15, align 4
  %16 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %14, i32 2
  store i32 0, ptr %16, align 4
  %17 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %14, i32 3
  store i32 0, ptr %17, align 4
  %18 = add i32 %14, 1
  %19 = load i32, ptr %11, align 4
  %20 = icmp ugt i32 %18, %19
  %21 = add i32 %13, 4
  %22 = icmp eq i32 %19, -1
  %23 = or i1 %20, %22
  br i1 %23, label %24, label %12

24:                                               ; preds = %12
  %25 = getelementptr %struct.mfp_addr_map, ptr %10, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.mfp_addr_map, ptr %10, i32 1, i32 2
  %30 = load i32, ptr %29, align 4
  br label %7

31:                                               ; preds = %24, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mfp_spin_lock, i32 noundef %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mfp_config_lpm() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %26, %0
  %2 = phi i32 [ 0, %0 ], [ %27, %26 ]
  %3 = phi ptr [ @mfp_table, %0 ], [ %28, %26 ]
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mfp_pin, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -113
  %10 = or i32 %9, 64
  %11 = icmp eq i32 %10, %8
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @mfpr_mmio_base, align 4
  %14 = getelementptr inbounds %struct.mfp_pin, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %10) #4, !srcloc !11
  br label %17

17:                                               ; preds = %12, %6
  %18 = getelementptr inbounds %struct.mfp_pin, ptr %3, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %10
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @mfpr_mmio_base, align 4
  %23 = getelementptr inbounds %struct.mfp_pin, ptr %3, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %19) #4, !srcloc !11
  br label %26

26:                                               ; preds = %21, %17, %1
  %27 = add nuw nsw i32 %2, 1
  %28 = getelementptr %struct.mfp_pin, ptr %3, i32 1
  %29 = icmp eq i32 %27, 352
  br i1 %29, label %30, label %1

30:                                               ; preds = %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mfp_config_run() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %3 = phi ptr [ @mfp_table, %0 ], [ %15, %13 ]
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mfp_pin, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr @mfpr_mmio_base, align 4
  %10 = getelementptr inbounds %struct.mfp_pin, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #4, !srcloc !11
  br label %13

13:                                               ; preds = %6, %1
  %14 = add nuw nsw i32 %2, 1
  %15 = getelementptr %struct.mfp_pin, ptr %3, i32 1
  %16 = icmp eq i32 %14, 352
  br i1 %16, label %17, label %1

17:                                               ; preds = %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2150460206, i64 2150460694, i64 2150460243, i64 2150460299, i64 2150460333, i64 2150460357, i64 2150460398, i64 2150460419, i64 2150460447, i64 2150460481}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2881129}
!12 = !{i64 2881547}
!13 = !{i64 2150461549, i64 2150462037, i64 2150461586, i64 2150461642, i64 2150461676, i64 2150461700, i64 2150461741, i64 2150461762, i64 2150461790, i64 2150461824}
!14 = !{i64 2150463043, i64 2150463531, i64 2150463080, i64 2150463136, i64 2150463170, i64 2150463194, i64 2150463235, i64 2150463256, i64 2150463284, i64 2150463318}
