; ModuleID = '/llk/IR/arch/arm/mach-bcm/bcm63xx_pmb.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/bcm63xx_pmb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = private unnamed_addr constant [32 x i8] c"arch/arm/mach-bcm/bcm63xx_pmb.c\00", align 1
@pmb_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\016PMB: CPU%d is already powered on\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\013CPU is missing a reg node\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"#reset-cells\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\013CPU is missing a resets phandle\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\013reset-controller does not conform to reset-cells\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\013failed remapping PMB register\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm63xx_pmb_power_on_cpu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %4 = tail call i64 @of_get_cpu_hwid(ptr noundef %0, i32 noundef 0) #6
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %26

9:                                                ; preds = %1
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %2) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %26

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %26

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 4
  %22 = call ptr @of_iomap(ptr noundef %21, i32 noundef 0) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %26

26:                                               ; preds = %24, %18, %12, %7
  %27 = phi i32 [ -12, %24 ], [ -22, %18 ], [ %10, %12 ], [ -19, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  br label %125

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %31 = icmp ugt i32 %5, 1
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %28
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #6
  br label %33

33:                                               ; preds = %32, %28
  %34 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pmb_lock) #6
  %35 = shl i32 %30, 12
  %36 = and i32 %35, 1044480
  %37 = or i32 %36, -2147483636
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %37) #6, !srcloc !11
  br label %38

38:                                               ; preds = %48, %33
  %39 = phi i32 [ 1000, %33 ], [ %50, %48 ]
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #6, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = and i32 %40, 536870912
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = and i32 %40, 1073741824
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748) #6
  %50 = add nsw i32 %39, -1
  %51 = icmp eq i32 %39, 0
  br i1 %51, label %52, label %38

52:                                               ; preds = %48, %45, %42, %38
  %53 = phi i32 [ 0, %38 ], [ -5, %42 ], [ -110, %45 ], [ -110, %48 ]
  %54 = getelementptr i8, ptr %22, i32 12
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  br i1 %41, label %56, label %123

56:                                               ; preds = %52
  %57 = add i32 %5, 13
  %58 = shl nuw i32 1, %57
  %59 = and i32 %55, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %5) #7
  br label %123

63:                                               ; preds = %56
  %64 = shl i32 %5, 2
  %65 = add i32 %64, 52
  %66 = lshr exact i32 %65, 2
  %67 = or i32 %66, %36
  %68 = or i32 %67, -2147483648
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %68) #6, !srcloc !11
  br label %69

69:                                               ; preds = %79, %63
  %70 = phi i32 [ 1000, %63 ], [ %81, %79 ]
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #6, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = and i32 %71, 536870912
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = and i32 %71, 1073741824
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748) #6
  %81 = add nsw i32 %70, -1
  %82 = icmp eq i32 %70, 0
  br i1 %82, label %83, label %69

83:                                               ; preds = %79, %76, %73, %69
  %84 = phi i32 [ 0, %69 ], [ -5, %73 ], [ -110, %76 ], [ -110, %79 ]
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  store i32 %85, ptr %3, align 4
  br i1 %72, label %86, label %123

86:                                               ; preds = %83
  %87 = or i32 %85, 3145728
  store i32 %87, ptr %3, align 4
  %88 = call fastcc i32 @bpcm_wr_rd_mask(ptr noundef nonnull %22, i32 noundef %30, i32 noundef %65, ptr noundef nonnull %3, i32 noundef 28, i32 noundef 3, i32 noundef 3)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %86
  %91 = load i32, ptr %3, align 4
  %92 = or i32 %91, 196608
  store i32 %92, ptr %3, align 4
  %93 = call fastcc i32 @bpcm_wr_rd_mask(ptr noundef nonnull %22, i32 noundef %30, i32 noundef %65, ptr noundef nonnull %3, i32 noundef 24, i32 noundef 3, i32 noundef 3)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %90
  %96 = load i32, ptr %3, align 4
  %97 = and i32 %96, -32769
  store i32 %97, ptr %3, align 4
  %98 = call fastcc i32 @bpcm_wr(ptr noundef nonnull %22, i32 noundef %30, i32 noundef %65, i32 noundef %97)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %95
  %101 = load i32, ptr %3, align 4
  %102 = and i32 %101, -3841
  store i32 %102, ptr %3, align 4
  %103 = call fastcc i32 @bpcm_wr(ptr noundef nonnull %22, i32 noundef %30, i32 noundef %65, i32 noundef %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %100
  %106 = load i32, ptr %3, align 4
  %107 = or i32 %106, 2
  store i32 %107, ptr %3, align 4
  %108 = call fastcc i32 @bpcm_wr_rd_mask(ptr noundef nonnull %22, i32 noundef %30, i32 noundef %65, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 32, i32 noundef 32)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load i32, ptr %3, align 4
  %112 = or i32 %111, 1
  store i32 %112, ptr %3, align 4
  %113 = call fastcc i32 @bpcm_wr_rd_mask(ptr noundef nonnull %22, i32 noundef %30, i32 noundef %65, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 16, i32 noundef 16)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32, ptr %3, align 4
  %117 = and i32 %116, -5
  store i32 %117, ptr %3, align 4
  %118 = call fastcc i32 @bpcm_wr(ptr noundef nonnull %22, i32 noundef %30, i32 noundef %65, i32 noundef %117)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = or i32 %55, %58
  %122 = call fastcc i32 @bpcm_wr(ptr noundef nonnull %22, i32 noundef %30, i32 noundef 48, i32 noundef %121)
  br label %123

123:                                              ; preds = %120, %115, %110, %105, %100, %95, %90, %86, %83, %61, %52
  %124 = phi i32 [ %53, %52 ], [ 0, %61 ], [ %84, %83 ], [ %88, %86 ], [ %93, %90 ], [ %98, %95 ], [ %103, %100 ], [ %108, %105 ], [ %113, %110 ], [ %118, %115 ], [ %122, %120 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pmb_lock, i32 noundef %34) #6
  call void @iounmap(ptr noundef nonnull %22) #6
  br label %125

125:                                              ; preds = %123, %26
  %126 = phi i32 [ %124, %123 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %126
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bpcm_wr_rd_mask(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = load i32, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %9 = getelementptr i8, ptr %0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #6, !srcloc !11
  %10 = lshr i32 %2, 2
  %11 = shl i32 %1, 12
  %12 = and i32 %11, 1044480
  %13 = or i32 %12, %10
  %14 = or i32 %13, -2146435072
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %14) #6, !srcloc !11
  br label %15

15:                                               ; preds = %28, %7
  %16 = phi i32 [ 1000, %7 ], [ %30, %28 ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = or i32 %13, -2147483648
  %21 = getelementptr i8, ptr %0, i32 12
  br label %32

22:                                               ; preds = %15
  %23 = and i32 %17, 536870912
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %22
  %26 = and i32 %17, 1073741824
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #6
  %30 = add nsw i32 %16, -1
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %55, label %15

32:                                               ; preds = %50, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %20) #6, !srcloc !11
  br label %33

33:                                               ; preds = %43, %32
  %34 = phi i32 [ 1000, %32 ], [ %45, %43 ]
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = and i32 %35, 536870912
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = and i32 %35, 1073741824
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #6
  %45 = add nsw i32 %34, -1
  %46 = icmp eq i32 %34, 0
  br i1 %46, label %47, label %33

47:                                               ; preds = %43, %40, %37, %33
  %48 = phi i32 [ 0, %33 ], [ -5, %37 ], [ -110, %40 ], [ -110, %43 ]
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  store i32 %49, ptr %3, align 4
  br i1 %36, label %50, label %55

50:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !17
  %51 = load i32, ptr %3, align 4
  %52 = lshr i32 %51, %4
  %53 = and i32 %52, %5
  %54 = icmp eq i32 %53, %6
  br i1 %54, label %55, label %32

55:                                               ; preds = %50, %47, %28, %25, %22
  %56 = phi i32 [ 0, %50 ], [ %48, %47 ], [ -5, %22 ], [ -110, %25 ], [ -110, %28 ]
  ret i32 %56
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bpcm_wr(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %5 = getelementptr i8, ptr %0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !11
  %6 = lshr i32 %2, 2
  %7 = shl i32 %1, 12
  %8 = and i32 %7, 1044480
  %9 = or i32 %8, %6
  %10 = or i32 %9, -2146435072
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %10) #6, !srcloc !11
  br label %11

11:                                               ; preds = %21, %4
  %12 = phi i32 [ 1000, %4 ], [ %23, %21 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = and i32 %13, 536870912
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = and i32 %13, 1073741824
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #6
  %23 = add nsw i32 %12, -1
  %24 = icmp eq i32 %12, 0
  br i1 %24, label %25, label %11

25:                                               ; preds = %21, %18, %15, %11
  %26 = phi i32 [ 0, %11 ], [ -5, %15 ], [ -110, %18 ], [ -110, %21 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_get_cpu_hwid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149954544}
!11 = !{i64 948312}
!12 = !{i64 948730}
!13 = !{i64 2149954996}
!14 = !{i64 2149956078}
!15 = !{i64 2149956433}
!16 = !{i64 2150894147}
!17 = !{i64 2150893989}
