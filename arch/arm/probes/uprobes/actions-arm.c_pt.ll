; ModuleID = '/llk/IR/arch/arm/probes/uprobes/actions-arm.c_pt.bc'
source_filename = "../arch/arm/probes/uprobes/actions-arm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.decode_action = type { ptr }
%struct.arch_uprobe = type { [4 x i8], [2 x i32], i32, i8, i32, ptr, ptr, %struct.arch_probes_insn }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@uprobes_probes_actions = dso_local local_unnamed_addr constant [32 x %union.decode_action] [%union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @simulate_blx1 }, %union.decode_action { ptr @simulate_blx2bx }, %union.decode_action { ptr @simulate_mrs }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @decode_pc_ro }, %union.decode_action { ptr @decode_ldr }, %union.decode_action { ptr @decode_pc_ro }, %union.decode_action { ptr @decode_pc_ro }, %union.decode_action { ptr @decode_pc_ro }, %union.decode_action { ptr @simulate_mov_ipsp }, %union.decode_action { ptr @decode_rd12rn16rm0rs8_rwflags }, %union.decode_action { ptr @decode_rd12rn16rm0rs8_rwflags }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @probes_simulate_nop }, %union.decode_action { ptr @simulate_bbl }, %union.decode_action { ptr @uprobe_decode_ldmstm }], align 4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @decode_pc_ro(i32 %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = lshr i32 %4, 4
  %6 = getelementptr i8, ptr %1, i32 -28
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %4, 16
  br i1 %8, label %58, label %9

9:                                                ; preds = %9, %3
  %10 = phi i32 [ %20, %9 ], [ %5, %3 ]
  %11 = phi i32 [ %19, %9 ], [ 65535, %3 ]
  %12 = phi i32 [ %21, %9 ], [ %7, %3 ]
  %13 = and i32 %10, 15
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 15
  %16 = shl nuw nsw i32 1, %15
  %17 = xor i32 %16, -1
  %18 = select i1 %14, i32 -1, i32 %17
  %19 = and i32 %18, %11
  %20 = lshr i32 %10, 4
  %21 = lshr i32 %12, 4
  %22 = icmp ult i32 %10, 16
  br i1 %22, label %23, label %9

23:                                               ; preds = %9
  %24 = and i32 %19, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = icmp eq i32 %19, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 true) #5, !range !8
  %30 = xor i32 %29, 31
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i32 [ %47, %31 ], [ %5, %28 ]
  %33 = phi i32 [ %49, %31 ], [ %30, %28 ]
  %34 = phi i32 [ %48, %31 ], [ 15, %28 ]
  %35 = phi i32 [ %50, %31 ], [ %7, %28 ]
  %36 = phi i32 [ %46, %31 ], [ %7, %28 ]
  %37 = and i32 %32, 15
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %35, 15
  %40 = icmp eq i32 %39, 15
  %41 = select i1 %38, i1 %40, i1 false
  %42 = xor i32 %34, -1
  %43 = and i32 %36, %42
  %44 = and i32 %34, %33
  %45 = or i32 %43, %44
  %46 = select i1 %41, i32 %45, i32 %36
  %47 = lshr i32 %32, 4
  %48 = shl i32 %34, 4
  %49 = shl i32 %33, 4
  %50 = lshr i32 %35, 4
  %51 = icmp ult i32 %32, 16
  br i1 %51, label %52, label %31

52:                                               ; preds = %31
  store i32 %46, ptr %6, align 4
  %53 = icmp eq i32 %30, 15
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %1, i32 -12
  store i32 %30, ptr %55, align 4
  %56 = getelementptr i8, ptr %1, i32 -8
  store ptr @uprobe_set_pc, ptr %56, align 4
  %57 = getelementptr i8, ptr %1, i32 -4
  store ptr @uprobe_unset_pc, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %52, %26, %23, %3
  %59 = phi i32 [ 1, %54 ], [ 1, %52 ], [ 1, %23 ], [ 1, %3 ], [ 0, %26 ]
  ret i32 %59
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @uprobe_set_pc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %1, align 4
  %8 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 8
  store i32 %10, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @uprobe_unset_pc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = load i32, ptr %1, align 4
  %5 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [18 x i32], ptr %2, i32 0, i32 %6
  store i32 %4, ptr %7, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @decode_wb_pc(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4
  %6 = lshr i32 %5, 4
  %7 = getelementptr i8, ptr %1, i32 -28
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %5, 16
  br i1 %9, label %59, label %10

10:                                               ; preds = %10, %4
  %11 = phi i32 [ %21, %10 ], [ %6, %4 ]
  %12 = phi i32 [ %20, %10 ], [ 65535, %4 ]
  %13 = phi i32 [ %22, %10 ], [ %8, %4 ]
  %14 = and i32 %11, 15
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, 15
  %17 = shl nuw nsw i32 1, %16
  %18 = xor i32 %17, -1
  %19 = select i1 %15, i32 -1, i32 %18
  %20 = and i32 %19, %12
  %21 = lshr i32 %11, 4
  %22 = lshr i32 %13, 4
  %23 = icmp ult i32 %11, 16
  br i1 %23, label %24, label %10

24:                                               ; preds = %10
  %25 = and i32 %20, 32768
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %27
  %30 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 true) #5, !range !8
  %31 = xor i32 %30, 31
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ %48, %32 ], [ %6, %29 ]
  %34 = phi i32 [ %50, %32 ], [ %31, %29 ]
  %35 = phi i32 [ %49, %32 ], [ 15, %29 ]
  %36 = phi i32 [ %51, %32 ], [ %8, %29 ]
  %37 = phi i32 [ %47, %32 ], [ %8, %29 ]
  %38 = and i32 %33, 15
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %36, 15
  %41 = icmp eq i32 %40, 15
  %42 = select i1 %39, i1 %41, i1 false
  %43 = xor i32 %35, -1
  %44 = and i32 %37, %43
  %45 = and i32 %35, %34
  %46 = or i32 %44, %45
  %47 = select i1 %42, i32 %46, i32 %37
  %48 = lshr i32 %33, 4
  %49 = shl i32 %35, 4
  %50 = shl i32 %34, 4
  %51 = lshr i32 %36, 4
  %52 = icmp ult i32 %33, 16
  br i1 %52, label %53, label %32

53:                                               ; preds = %32
  store i32 %47, ptr %7, align 4
  %54 = icmp eq i32 %31, 15
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  %56 = getelementptr i8, ptr %1, i32 -12
  store i32 %31, ptr %56, align 4
  %57 = getelementptr i8, ptr %1, i32 -8
  store ptr @uprobe_set_pc, ptr %57, align 4
  %58 = getelementptr i8, ptr %1, i32 -4
  store ptr @uprobe_unset_pc, ptr %58, align 4
  br label %59

59:                                               ; preds = %55, %53, %27, %24, %4
  %60 = phi i32 [ 1, %55 ], [ 1, %53 ], [ 1, %24 ], [ 1, %4 ], [ 0, %27 ]
  %61 = and i32 %0, 61440
  %62 = icmp eq i32 %61, 61440
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = select i1 %3, ptr @uprobe_aluwrite_pc, ptr @uprobe_write_pc
  %65 = getelementptr i8, ptr %1, i32 -4
  store ptr %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %59
  ret i32 %60
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @uprobe_aluwrite_pc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 1
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, -33
  %13 = select i1 %11, i32 -3, i32 -2
  %14 = and i32 %13, %7
  %15 = shl nuw nsw i32 %10, 5
  %16 = or i32 %12, %15
  store i32 %16, ptr %8, align 4
  %17 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  store i32 %14, ptr %17, align 4
  %18 = load i32, ptr %1, align 4
  store i32 %18, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @uprobe_write_pc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [18 x i32], ptr %2, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 1
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, -33
  %13 = select i1 %11, i32 -3, i32 -2
  %14 = and i32 %13, %7
  %15 = shl nuw nsw i32 %10, 5
  %16 = or i32 %12, %15
  store i32 %16, ptr %8, align 4
  %17 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  store i32 %14, ptr %17, align 4
  %18 = load i32, ptr %1, align 4
  store i32 %18, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @decode_rd12rn16rm0rs8_rwflags(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = lshr i32 %4, 4
  %6 = getelementptr i8, ptr %1, i32 -28
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %4, 16
  br i1 %8, label %58, label %9

9:                                                ; preds = %9, %3
  %10 = phi i32 [ %20, %9 ], [ %5, %3 ]
  %11 = phi i32 [ %19, %9 ], [ 65535, %3 ]
  %12 = phi i32 [ %21, %9 ], [ %7, %3 ]
  %13 = and i32 %10, 15
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 15
  %16 = shl nuw nsw i32 1, %15
  %17 = xor i32 %16, -1
  %18 = select i1 %14, i32 -1, i32 %17
  %19 = and i32 %18, %11
  %20 = lshr i32 %10, 4
  %21 = lshr i32 %12, 4
  %22 = icmp ult i32 %10, 16
  br i1 %22, label %23, label %9

23:                                               ; preds = %9
  %24 = and i32 %19, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = icmp eq i32 %19, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 true) #5, !range !8
  %30 = xor i32 %29, 31
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i32 [ %47, %31 ], [ %5, %28 ]
  %33 = phi i32 [ %49, %31 ], [ %30, %28 ]
  %34 = phi i32 [ %48, %31 ], [ 15, %28 ]
  %35 = phi i32 [ %50, %31 ], [ %7, %28 ]
  %36 = phi i32 [ %46, %31 ], [ %7, %28 ]
  %37 = and i32 %32, 15
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %35, 15
  %40 = icmp eq i32 %39, 15
  %41 = select i1 %38, i1 %40, i1 false
  %42 = xor i32 %34, -1
  %43 = and i32 %36, %42
  %44 = and i32 %34, %33
  %45 = or i32 %43, %44
  %46 = select i1 %41, i32 %45, i32 %36
  %47 = lshr i32 %32, 4
  %48 = shl i32 %34, 4
  %49 = shl i32 %33, 4
  %50 = lshr i32 %35, 4
  %51 = icmp ult i32 %32, 16
  br i1 %51, label %52, label %31

52:                                               ; preds = %31
  store i32 %46, ptr %6, align 4
  %53 = icmp eq i32 %30, 15
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %1, i32 -12
  store i32 %30, ptr %55, align 4
  %56 = getelementptr i8, ptr %1, i32 -8
  store ptr @uprobe_set_pc, ptr %56, align 4
  %57 = getelementptr i8, ptr %1, i32 -4
  store ptr @uprobe_unset_pc, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %52, %26, %23, %3
  %59 = phi i32 [ 1, %54 ], [ 1, %52 ], [ 1, %23 ], [ 1, %3 ], [ 0, %26 ]
  %60 = and i32 %0, 61440
  %61 = icmp eq i32 %60, 61440
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %1, i32 -4
  store ptr @uprobe_aluwrite_pc, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %58
  ret i32 %59
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @decode_ldr(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = lshr i32 %4, 4
  %6 = getelementptr i8, ptr %1, i32 -28
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %4, 16
  br i1 %8, label %58, label %9

9:                                                ; preds = %9, %3
  %10 = phi i32 [ %20, %9 ], [ %5, %3 ]
  %11 = phi i32 [ %19, %9 ], [ 65535, %3 ]
  %12 = phi i32 [ %21, %9 ], [ %7, %3 ]
  %13 = and i32 %10, 15
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 15
  %16 = shl nuw nsw i32 1, %15
  %17 = xor i32 %16, -1
  %18 = select i1 %14, i32 -1, i32 %17
  %19 = and i32 %18, %11
  %20 = lshr i32 %10, 4
  %21 = lshr i32 %12, 4
  %22 = icmp ult i32 %10, 16
  br i1 %22, label %23, label %9

23:                                               ; preds = %9
  %24 = and i32 %19, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = icmp eq i32 %19, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 true) #5, !range !8
  %30 = xor i32 %29, 31
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i32 [ %47, %31 ], [ %5, %28 ]
  %33 = phi i32 [ %49, %31 ], [ %30, %28 ]
  %34 = phi i32 [ %48, %31 ], [ 15, %28 ]
  %35 = phi i32 [ %50, %31 ], [ %7, %28 ]
  %36 = phi i32 [ %46, %31 ], [ %7, %28 ]
  %37 = and i32 %32, 15
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %35, 15
  %40 = icmp eq i32 %39, 15
  %41 = select i1 %38, i1 %40, i1 false
  %42 = xor i32 %34, -1
  %43 = and i32 %36, %42
  %44 = and i32 %34, %33
  %45 = or i32 %43, %44
  %46 = select i1 %41, i32 %45, i32 %36
  %47 = lshr i32 %32, 4
  %48 = shl i32 %34, 4
  %49 = shl i32 %33, 4
  %50 = lshr i32 %35, 4
  %51 = icmp ult i32 %32, 16
  br i1 %51, label %52, label %31

52:                                               ; preds = %31
  store i32 %46, ptr %6, align 4
  %53 = icmp eq i32 %30, 15
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %1, i32 -12
  store i32 %30, ptr %55, align 4
  %56 = getelementptr i8, ptr %1, i32 -8
  store ptr @uprobe_set_pc, ptr %56, align 4
  %57 = getelementptr i8, ptr %1, i32 -4
  store ptr @uprobe_unset_pc, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %52, %26, %23, %3
  %59 = phi i32 [ 1, %54 ], [ 1, %52 ], [ 1, %23 ], [ 1, %3 ], [ 0, %26 ]
  %60 = and i32 %0, 61440
  %61 = icmp eq i32 %60, 61440
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %1, i32 -4
  store ptr @uprobe_write_pc, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %58
  ret i32 %59
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @uprobe_decode_ldmstm(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #2 {
  %4 = and i32 %0, 65535
  %5 = lshr i32 %0, 16
  %6 = and i32 %5, 15
  %7 = and i32 %0, 1048576
  %8 = shl nuw nsw i32 1, %6
  %9 = or i32 %8, %4
  %10 = icmp eq i32 %6, 15
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = and i32 %9, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = and i32 %9, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = xor i32 %0, 49152
  %19 = getelementptr i8, ptr %1, i32 -12
  store i32 14, ptr %19, align 4
  %20 = getelementptr i8, ptr %1, i32 -28
  store i32 %18, ptr %20, align 4
  %21 = getelementptr i8, ptr %1, i32 -8
  store ptr @uprobe_set_pc, ptr %21, align 4
  %22 = icmp eq i32 %7, 0
  %23 = getelementptr i8, ptr %1, i32 -4
  %24 = select i1 %22, ptr @uprobe_unset_pc, ptr @uprobe_write_pc
  store ptr %24, ptr %23, align 4
  br label %25

25:                                               ; preds = %17, %14, %11, %3
  %26 = phi i32 [ 0, %3 ], [ 1, %11 ], [ 0, %14 ], [ 1, %17 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @probes_simulate_nop(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_blx1(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_blx2bx(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_mrs(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_mov_ipsp(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simulate_bbl(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i32 0, i32 33}
