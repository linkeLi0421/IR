; ModuleID = '/llk/IR/arch/arm/mach-omap2/prminst44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prminst44xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@_prm_bases = internal unnamed_addr global [6 x %struct.omap_domain_base] zeroinitializer, align 4
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@prcm_mpu_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@prm_dev_inst = internal unnamed_addr global i32 -1, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @omap_prm_base_init() local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 1), ptr noundef nonnull align 4 dereferenceable(12) @prm_base, i32 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 5), ptr noundef nonnull align 4 dereferenceable(12) @prcm_mpu_base, i32 12, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @omap4_prmst_get_prm_dev_inst() local_unnamed_addr #2 {
  %1 = load i32, ptr @prm_dev_inst, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap4_prminst_set_prm_dev_inst(i32 noundef %0) local_unnamed_addr #3 {
  store i32 %0, ptr @prm_dev_inst, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = add i8 %0, -6
  %5 = icmp ult i8 %4, -5
  br i1 %5, label %11, label %6, !prof !8

6:                                                ; preds = %3
  %7 = zext i8 %0 to i32
  %8 = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %6, %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

12:                                               ; preds = %6
  %13 = sext i16 %1 to i32
  %14 = getelementptr i8, ptr %9, i32 %13
  %15 = zext i16 %2 to i32
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap4_prminst_write_inst_reg(i32 noundef %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = add i8 %1, -6
  %6 = icmp ult i8 %5, -5
  br i1 %6, label %12, label %7, !prof !8

7:                                                ; preds = %4
  %8 = zext i8 %1 to i32
  %9 = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %7, %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

13:                                               ; preds = %7
  %14 = sext i16 %2 to i32
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = zext i16 %3 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %0) #5, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i16 noundef signext %3, i16 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = add i8 %2, -6
  %7 = icmp ult i8 %6, -5
  br i1 %7, label %13, label %8, !prof !8

8:                                                ; preds = %5
  %9 = zext i8 %2 to i32
  %10 = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %8, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

14:                                               ; preds = %8
  %15 = sext i16 %3 to i32
  %16 = getelementptr i8, ptr %11, i32 %15
  %17 = zext i16 %4 to i32
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !11
  %20 = load ptr, ptr %10, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

23:                                               ; preds = %14
  %24 = xor i32 %0, -1
  %25 = and i32 %19, %24
  %26 = or i32 %25, %1
  %27 = getelementptr i8, ptr %20, i32 %15
  %28 = getelementptr i8, ptr %27, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !13
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_is_hardreset_asserted(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = add i8 %1, -6
  %6 = icmp ult i8 %5, -5
  br i1 %6, label %12, label %7, !prof !8

7:                                                ; preds = %4
  %8 = zext i8 %1 to i32
  %9 = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %7, %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

13:                                               ; preds = %7
  %14 = sext i16 %2 to i32
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = zext i16 %3 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !11
  %19 = zext i8 %0 to i32
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %22 = lshr i32 %21, %19
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_assert_hardreset(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = add i8 %1, -6
  %6 = icmp ult i8 %5, -5
  br i1 %6, label %12, label %7, !prof !8

7:                                                ; preds = %4
  %8 = zext i8 %1 to i32
  %9 = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %7, %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

13:                                               ; preds = %7
  %14 = sext i16 %2 to i32
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = zext i16 %3 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !11
  %19 = load ptr, ptr %9, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

22:                                               ; preds = %13
  %23 = zext i8 %0 to i32
  %24 = shl nuw i32 1, %23
  %25 = or i32 %18, %24
  %26 = getelementptr i8, ptr %19, i32 %14
  %27 = getelementptr i8, ptr %26, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_deassert_hardreset(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef signext %3, i16 noundef zeroext %4, i16 noundef zeroext %5) local_unnamed_addr #4 {
  %7 = add i8 %2, -6
  %8 = icmp ult i8 %7, -5
  br i1 %8, label %14, label %9, !prof !8

9:                                                ; preds = %6
  %10 = zext i8 %2 to i32
  %11 = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %10, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %9, %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

15:                                               ; preds = %9
  %16 = sext i16 %3 to i32
  %17 = getelementptr i8, ptr %12, i32 %16
  %18 = zext i16 %4 to i32
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !11
  %21 = zext i8 %0 to i32
  %22 = shl nuw i32 1, %21
  %23 = and i32 %20, %22
  %24 = lshr i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %77, label %26

26:                                               ; preds = %15
  %27 = zext i8 %1 to i32
  %28 = shl nuw i32 1, %27
  %29 = load ptr, ptr %11, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !9

31:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %29, i32 %16
  %34 = zext i16 %5 to i32
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !11
  %37 = load ptr, ptr %11, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !9

39:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

40:                                               ; preds = %32
  %41 = getelementptr i8, ptr %37, i32 %16
  %42 = getelementptr i8, ptr %41, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %28) #5, !srcloc !13
  %43 = load ptr, ptr %11, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !9

45:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %43, i32 %16
  %48 = getelementptr i8, ptr %47, i32 %18
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !11
  %50 = load ptr, ptr %11, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53, !prof !9

52:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

53:                                               ; preds = %46
  %54 = xor i32 %22, -1
  %55 = and i32 %49, %54
  %56 = getelementptr i8, ptr %50, i32 %16
  %57 = getelementptr i8, ptr %56, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #5, !srcloc !13
  br label %58

58:                                               ; preds = %70, %53
  %59 = phi i32 [ 0, %53 ], [ %72, %70 ]
  %60 = load ptr, ptr %11, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63, !prof !9

62:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %60, i32 %16
  %65 = getelementptr i8, ptr %64, i32 %34
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !11
  %67 = and i32 %66, %28
  %68 = lshr i32 %67, %27
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #5
  %72 = add nuw nsw i32 %59, 1
  %73 = icmp eq i32 %72, 10000
  br i1 %73, label %76, label %58

74:                                               ; preds = %63
  %75 = icmp eq i32 %59, 10000
  br i1 %75, label %76, label %77

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %74, %15
  %78 = phi i32 [ -17, %15 ], [ -16, %76 ], [ 0, %74 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap4_prminst_global_warm_sw_reset() local_unnamed_addr #4 {
  %1 = load i32, ptr @prm_dev_inst, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %24, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 1, i32 1), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

7:                                                ; preds = %3
  %8 = shl i32 %1, 16
  %9 = ashr exact i32 %8, 16
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !11
  %12 = load ptr, ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 1, i32 1), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

15:                                               ; preds = %7
  %16 = or i32 %11, 1
  %17 = getelementptr i8, ptr %12, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #5, !srcloc !13
  %18 = load ptr, ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 1, i32 1), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %18, i32 %9
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !11
  br label %24

24:                                               ; preds = %21, %0
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!8 = !{!"branch_weights", i32 4001, i32 4000000}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154297743, i64 2154298240, i64 2154297780, i64 2154297836, i64 2154297870, i64 2154297894, i64 2154297935, i64 2154297956, i64 2154297984, i64 2154298018}
!11 = !{i64 951165}
!12 = !{i64 2154299130, i64 2154299627, i64 2154299167, i64 2154299223, i64 2154299257, i64 2154299281, i64 2154299322, i64 2154299343, i64 2154299371, i64 2154299405}
!13 = !{i64 950747}
