; ModuleID = '/llk/IR/drivers/clk/tegra/clk-super.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-super.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_clk_super_mux = type { %struct.clk_hw, ptr, %struct.tegra_clk_frac_div, ptr, i8, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@tegra_clk_super_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_super_restore_context, ptr @clk_super_recalc_rate, ptr @clk_super_round_rate, ptr null, ptr @clk_super_set_parent, ptr @clk_super_get_parent, ptr @clk_super_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_clk_super_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_super_mux_restore_context, ptr null, ptr null, ptr null, ptr @clk_super_set_parent, ptr @clk_super_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@.str = private unnamed_addr constant [30 x i8] c"drivers/clk/tegra/clk-super.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_super_restore_context(ptr noundef %0) #0 {
  %2 = tail call i32 @clk_hw_get_parent_index(ptr noundef %0) #5
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 9, ptr noundef null) #5
  br label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %6) #5
  %11 = trunc i32 %2 to i8
  %12 = tail call i32 @clk_super_set_parent(ptr noundef %0, i8 noundef zeroext %11)
  br label %13

13:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_super_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 2, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = load ptr, ptr %0, align 4
  store ptr %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_ops, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef %1) #5
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_super_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 2, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_ops, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef %1, ptr noundef %2) #5
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_super_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %4) #5
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !9
  %13 = and i32 %12, -268435456
  switch i32 %13, label %14 [
    i32 268435456, label %19
    i32 536870912, label %15
  ]

14:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i32 [ %18, %15 ], [ 0, %8 ]
  %21 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %82, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 6
  %27 = load i8, ptr %26, align 2
  %28 = icmp eq i8 %27, %1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, %1
  br i1 %32, label %33, label %82

33:                                               ; preds = %29, %25
  %34 = load ptr, ptr %10, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !9
  %36 = and i32 %35, -268435456
  switch i32 %36, label %41 [
    i32 268435456, label %37
    i32 536870912, label %42
  ]

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  br label %46

41:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i32 [ %40, %37 ], [ %45, %42 ]
  %48 = phi i32 [ 0, %37 ], [ %45, %42 ]
  %49 = lshr i32 %35, %48
  %50 = shl nsw i32 -1, %47
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8, ptr %21, align 1
  %55 = and i8 %54, 1
  %56 = icmp ne i8 %55, 0
  %57 = and i32 %35, 65536
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 7
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, %53
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8, ptr %26, align 2
  br label %66

66:                                               ; preds = %64, %60, %46
  %67 = phi i8 [ %65, %64 ], [ %53, %60 ], [ %53, %46 ]
  %68 = load i8, ptr %26, align 2
  %69 = icmp eq i8 %67, %68
  br i1 %69, label %115, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 7
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %67, %72
  br i1 %73, label %115, label %74

74:                                               ; preds = %70
  %75 = xor i32 %12, 65536
  %76 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %75) #5, !srcloc !12
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 429496) #5
  %78 = load i8, ptr %26, align 2
  %79 = icmp eq i8 %78, %1
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i8, ptr %71, align 1
  br label %82

82:                                               ; preds = %80, %74, %29, %19
  %83 = phi i32 [ %75, %80 ], [ %75, %74 ], [ %12, %29 ], [ %12, %19 ]
  %84 = phi i8 [ %81, %80 ], [ %1, %74 ], [ %1, %29 ], [ %1, %19 ]
  %85 = load i8, ptr %21, align 1
  %86 = and i8 %85, 2
  %87 = icmp ne i8 %86, 0
  %88 = and i8 %84, -2
  %89 = icmp eq i8 %88, 4
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  tail call void @tegra_clk_set_pllp_out_cpu(i1 noundef zeroext true) #5
  br label %92

92:                                               ; preds = %91, %82
  %93 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 4
  %94 = load i8, ptr %93, align 4
  %95 = zext i8 %94 to i32
  %96 = shl nsw i32 -1, %95
  %97 = xor i32 %96, -1
  %98 = shl i32 %97, %20
  %99 = xor i32 %98, -1
  %100 = and i32 %83, %99
  %101 = zext i8 %84 to i32
  %102 = and i32 %97, %101
  %103 = shl i32 %102, %20
  %104 = or i32 %100, %103
  %105 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %104) #5, !srcloc !12
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 429496) #5
  %107 = load i8, ptr %21, align 1
  %108 = and i8 %107, 2
  %109 = icmp ne i8 %108, 0
  %110 = icmp ne i8 %84, 4
  %111 = select i1 %109, i1 %110, i1 false
  %112 = icmp ne i8 %84, 5
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %115

114:                                              ; preds = %92
  tail call void @tegra_clk_set_pllp_out_cpu(i1 noundef zeroext false) #5
  br label %115

115:                                              ; preds = %114, %92, %70, %66
  %116 = phi i32 [ 0, %114 ], [ 0, %92 ], [ -22, %70 ], [ -22, %66 ]
  %117 = load ptr, ptr %3, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %117, i32 noundef %9) #5
  br label %120

120:                                              ; preds = %119, %115
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_super_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  %5 = and i32 %4, -268435456
  switch i32 %5, label %10 [
    i32 268435456, label %6
    i32 536870912, label %11
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  br label %15

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i32 [ %9, %6 ], [ %14, %11 ]
  %17 = phi i32 [ 0, %6 ], [ %14, %11 ]
  %18 = lshr i32 %4, %17
  %19 = shl nsw i32 -1, %16
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 1
  %26 = icmp ne i8 %25, 0
  %27 = and i32 %4, 65536
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %37

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, %22
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 6
  %36 = load i8, ptr %35, align 2
  br label %37

37:                                               ; preds = %34, %30, %15
  %38 = phi i8 [ %36, %34 ], [ %22, %30 ], [ %22, %15 ]
  ret i8 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_super_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 2, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_ops, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef %1, i32 noundef %2) #5
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_super_mux(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #5
  %12 = getelementptr inbounds i8, ptr %11, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 12, i1 false), !annotation !13
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 52) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  store ptr %0, ptr %11, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 1
  store ptr @tegra_clk_super_mux_ops, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 6
  store i32 %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 2
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 5
  store i8 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %14, i32 0, i32 1
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %14, i32 0, i32 7
  store i8 %7, ptr %22, align 1
  %23 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %14, i32 0, i32 6
  store i8 %8, ptr %23, align 2
  %24 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %14, i32 0, i32 8
  store ptr %9, ptr %24, align 8
  %25 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %14, i32 0, i32 4
  store i8 %6, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %14, i32 0, i32 5
  store i8 %5, ptr %26, align 1
  %27 = getelementptr inbounds %struct.clk_hw, ptr %14, i32 0, i32 2
  store ptr %11, ptr %27, align 8
  %28 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %14) #5
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  call void @kfree(ptr noundef nonnull %14) #5
  br label %31

31:                                               ; preds = %30, %16, %10
  %32 = phi ptr [ %28, %30 ], [ %28, %16 ], [ inttoptr (i32 -12 to ptr), %10 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #5
  ret ptr %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_dev_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_super_clk(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #5
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !13
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 52) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %7
  store ptr %0, ptr %8, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @tegra_clk_super_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 1
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 8
  store ptr %6, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 4
  store i8 4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 5
  store i8 %5, ptr %21, align 1
  %22 = getelementptr i8, ptr %4, i32 4
  %23 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 2, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 2, i32 3
  store i8 16, ptr %24, align 1
  %25 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 2, i32 4
  store i8 8, ptr %25, align 2
  %26 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 2, i32 5
  store i8 1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 2, i32 6
  store ptr %6, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %11, i32 0, i32 3
  store ptr @tegra_clk_frac_div_ops, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %29, align 8
  %30 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %11) #5
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  call void @kfree(ptr noundef nonnull %11) #5
  br label %33

33:                                               ; preds = %32, %13, %7
  %34 = phi ptr [ %30, %32 ], [ %30, %13 ], [ inttoptr (i32 -12 to ptr), %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #5
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_parent_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_clk_set_pllp_out_cpu(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_super_mux_restore_context(ptr noundef %0) #0 {
  %2 = tail call i32 @clk_hw_get_parent_index(ptr noundef %0) #5
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #5
  br label %8

5:                                                ; preds = %1
  %6 = trunc i32 %2 to i8
  %7 = tail call i32 @clk_super_set_parent(ptr noundef %0, i8 noundef zeroext %6)
  br label %8

8:                                                ; preds = %5, %4
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{i64 951024}
!10 = !{i64 2151107239, i64 2151107732, i64 2151107276, i64 2151107332, i64 2151107366, i64 2151107390, i64 2151107431, i64 2151107452, i64 2151107480, i64 2151107514}
!11 = !{i64 2151103269, i64 2151103762, i64 2151103306, i64 2151103362, i64 2151103396, i64 2151103420, i64 2151103461, i64 2151103482, i64 2151103510, i64 2151103544}
!12 = !{i64 950606}
!13 = !{!"auto-init"}
