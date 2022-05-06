; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_plls:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_plls\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_plls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.mtk_clk_pll = type { %struct.clk_hw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mtk_pll_div_table = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"\013%s(): ioremap failed\0A\00", align 1
@__func__.mtk_clk_register_plls = private unnamed_addr constant [22 x i8] c"mtk_clk_register_plls\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", align 1
@__kstrtab_mtk_clk_register_plls = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_plls = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_plls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_plls to i32), ptr @__kstrtab_mtk_clk_register_plls, ptr @__kstrtabns_mtk_clk_register_plls }, section "___ksymtab_gpl+mtk_clk_register_plls", align 4
@__UNIQUE_ID_file166 = internal constant [42 x i8] c"clk_pll.file=drivers/clk/mediatek/clk-pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [20 x i8] c"clk_pll.license=GPL\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"clk26m\00", align 1
@mtk_pll_ops = internal constant %struct.clk_ops { ptr @mtk_pll_prepare, ptr @mtk_pll_unprepare, ptr @mtk_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_pll_recalc_rate, ptr @mtk_pll_round_rate, ptr null, ptr null, ptr null, ptr @mtk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167, ptr @__ksymtab_mtk_clk_register_plls], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_plls(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.clk_init_data, align 4
  %6 = alloca ptr, align 4
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %101

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, ptr %5, i32 8
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  br label %18

16:                                               ; preds = %4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_clk_register_plls) #9
  br label %101

18:                                               ; preds = %98, %11
  %19 = phi i32 [ 0, %11 ], [ %99, %98 ]
  %20 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 16, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store ptr @.str.2, ptr %6, align 4
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 48) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  br label %88

25:                                               ; preds = %18
  %26 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %7, i32 %27
  %29 = getelementptr inbounds %struct.mtk_clk_pll, ptr %22, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %7, i32 %31
  %33 = getelementptr inbounds %struct.mtk_clk_pll, ptr %22, i32 0, i32 3
  store ptr %32, ptr %33, align 4
  %34 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %7, i32 %35
  %37 = getelementptr inbounds %struct.mtk_clk_pll, ptr %22, i32 0, i32 2
  store ptr %36, ptr %37, align 8
  %38 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 17
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %7, i32 %39
  %41 = getelementptr inbounds %struct.mtk_clk_pll, ptr %22, i32 0, i32 6
  store ptr %40, ptr %41, align 8
  %42 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 19
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr i8, ptr %28, i32 4
  %46 = getelementptr i8, ptr %7, i32 %43
  %47 = select i1 %44, ptr %45, ptr %46
  %48 = getelementptr inbounds %struct.mtk_clk_pll, ptr %22, i32 0, i32 7
  store ptr %47, ptr %48, align 4
  %49 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %25
  %53 = getelementptr i8, ptr %7, i32 %50
  %54 = getelementptr inbounds %struct.mtk_clk_pll, ptr %22, i32 0, i32 4
  store ptr %53, ptr %54, align 8
  br label %55

55:                                               ; preds = %52, %25
  %56 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 8
  %61 = load i8, ptr %60, align 4
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59, %55
  %64 = getelementptr i8, ptr %7, i32 %57
  %65 = getelementptr inbounds %struct.mtk_clk_pll, ptr %22, i32 0, i32 5
  store ptr %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 22
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr i8, ptr %7, i32 %68
  %71 = select i1 %69, ptr %28, ptr %70
  %72 = getelementptr inbounds %struct.mtk_clk_pll, ptr %22, i32 0, i32 8
  store ptr %71, ptr %72, align 8
  %73 = getelementptr inbounds %struct.clk_hw, ptr %22, i32 0, i32 2
  store ptr %5, ptr %73, align 8
  %74 = getelementptr inbounds %struct.mtk_clk_pll, ptr %22, i32 0, i32 9
  store ptr %20, ptr %74, align 4
  %75 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 1
  %76 = load ptr, ptr %75, align 4
  store ptr %76, ptr %5, align 4
  %77 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 10
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 %78, 10
  %80 = and i32 %79, 2048
  store i32 %80, ptr %13, align 4
  store ptr @mtk_pll_ops, ptr %14, align 4
  %81 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 21
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  %84 = select i1 %83, ptr %6, ptr %81
  store ptr %84, ptr %12, align 4
  store i8 1, ptr %15, align 4
  %85 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %22) #8
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %94

87:                                               ; preds = %66
  call void @kfree(ptr noundef nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  br label %88

88:                                               ; preds = %87, %24
  %89 = phi ptr [ inttoptr (i32 -12 to ptr), %24 ], [ %85, %87 ]
  %90 = getelementptr %struct.mtk_pll_data, ptr %1, i32 %19, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = ptrtoint ptr %89 to i32
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %91, i32 noundef %92) #9
  br label %98

94:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  %95 = load ptr, ptr %3, align 4
  %96 = load i32, ptr %20, align 4
  %97 = getelementptr ptr, ptr %95, i32 %96
  store ptr %85, ptr %97, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = add nuw nsw i32 %19, 1
  %100 = icmp eq i32 %99, %2
  br i1 %100, label %101, label %18

101:                                              ; preds = %98, %16, %9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pll_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %5 = or i32 %4, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #8, !srcloc !11
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #8
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %10 = and i32 %9, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #8, !srcloc !11
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #8
  %13 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %16 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mtk_pll_data, ptr %17, i32 0, i32 23
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = or i32 %21, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %23 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #8, !srcloc !11
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr inbounds %struct.mtk_pll_data, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %33 = or i32 %32, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %34 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #8, !srcloc !11
  br label %35

35:                                               ; preds = %29, %1
  %36 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr inbounds %struct.mtk_pll_data, ptr %41, i32 0, i32 8
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 1, %44
  %46 = or i32 %45, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %47 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #8, !srcloc !11
  br label %56

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %50) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %54 = or i32 %53, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %55 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #8, !srcloc !11
  br label %56

56:                                               ; preds = %52, %48, %39
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 4294960) #8
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr inbounds %struct.mtk_pll_data, ptr %58, i32 0, i32 10
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %67 = load ptr, ptr %16, align 4
  %68 = getelementptr inbounds %struct.mtk_pll_data, ptr %67, i32 0, i32 12
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %71 = load ptr, ptr %64, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #8, !srcloc !11
  br label %72

72:                                               ; preds = %63, %56
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_pll_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_pll_data, ptr %3, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.mtk_pll_data, ptr %12, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #8, !srcloc !11
  br label %18

18:                                               ; preds = %8, %1
  %19 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.mtk_pll_data, ptr %24, i32 0, i32 8
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %23, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #8, !srcloc !11
  br label %40

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %34) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %38 = and i32 %37, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %39 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #8, !srcloc !11
  br label %40

40:                                               ; preds = %36, %32, %22
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.mtk_pll_data, ptr %41, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %50 = xor i32 %44, -1
  %51 = and i32 %49, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %52 = load ptr, ptr %47, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #8, !srcloc !11
  br label %53

53:                                               ; preds = %46, %40
  %54 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr inbounds %struct.mtk_pll_data, ptr %57, i32 0, i32 23
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = shl nuw i32 1, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %56, %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %64 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %63) #8, !srcloc !11
  %65 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !34
  %68 = or i32 %67, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !35
  tail call void @arm_heavy_mb() #8
  %69 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %68) #8, !srcloc !11
  %70 = load ptr, ptr %65, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %72 = and i32 %71, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %73 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %72) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pll_is_prepared(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !38
  %5 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pll_data, ptr %6, i32 0, i32 23
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = lshr i32 %4, %9
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !39
  %6 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_pll_data, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !40
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.mtk_pll_data, ptr %13, i32 0, i32 18
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %12, %15
  %17 = getelementptr inbounds %struct.mtk_pll_data, ptr %13, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 32, %18
  %20 = lshr i32 -1, %19
  %21 = and i32 %20, %16
  %22 = getelementptr inbounds %struct.mtk_pll_data, ptr %13, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 7, i32 %23
  %26 = icmp sgt i32 %18, %25
  %27 = zext i32 %1 to i64
  %28 = zext i32 %21 to i64
  %29 = mul nuw i64 %28, %27
  br i1 %26, label %32, label %30

30:                                               ; preds = %2
  %31 = trunc i64 %29 to i32
  br label %43

32:                                               ; preds = %2
  %33 = sub i32 %18, %25
  %34 = sub i32 32, %33
  %35 = lshr i32 -1, %34
  %36 = zext i32 %35 to i64
  %37 = and i64 %29, %36
  %38 = icmp eq i64 %37, 0
  %39 = zext i32 %33 to i64
  %40 = lshr i64 %29, %39
  %41 = trunc i64 %40 to i32
  %42 = add i32 %41, 1
  br i1 %38, label %43, label %45

43:                                               ; preds = %32, %30
  %44 = phi i32 [ %31, %30 ], [ %41, %32 ]
  br label %45

45:                                               ; preds = %43, %32
  %46 = phi i32 [ %44, %43 ], [ %42, %32 ]
  %47 = lshr i32 %5, %9
  %48 = and i32 %47, 7
  %49 = shl nsw i32 -1, %48
  %50 = xor i32 %49, -1
  %51 = add i32 %46, %50
  %52 = lshr i32 %51, %48
  ret i32 %52
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @mtk_pll_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i32, ptr %2, align 4
  %5 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pll_data, ptr %6, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtk_pll_data, ptr %6, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %1) #8
  %12 = icmp eq ptr %8, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.mtk_pll_data, ptr %6, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 1000000000, i32 %15
  %18 = zext i32 %11 to i64
  %19 = zext i32 %17 to i64
  %20 = icmp ult i32 %11, %17
  br i1 %20, label %36, label %49

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.mtk_pll_div_table, ptr %8, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %11, i32 %23) #8
  br label %25

25:                                               ; preds = %25, %21
  %26 = phi i32 [ 0, %21 ], [ %27, %25 ]
  %27 = add i32 %26, 1
  %28 = getelementptr %struct.mtk_pll_div_table, ptr %8, i32 %27, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = icmp ugt i32 %24, %29
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %25

33:                                               ; preds = %25
  %34 = shl nuw i32 1, %26
  %35 = zext i32 %24 to i64
  br label %49

36:                                               ; preds = %13
  %37 = shl nuw nsw i64 %18, 1
  %38 = icmp ult i64 %37, %19
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = shl nuw nsw i64 %18, 2
  %41 = icmp ult i64 %40, %19
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = shl nuw nsw i64 %18, 3
  %44 = icmp ult i64 %43, %19
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = shl nuw nsw i64 %18, 4
  %47 = icmp ult i64 %46, %19
  %48 = select i1 %47, i32 5, i32 4
  br label %49

49:                                               ; preds = %45, %42, %39, %36, %33, %13
  %50 = phi i64 [ %35, %33 ], [ %18, %42 ], [ %18, %39 ], [ %18, %36 ], [ %18, %13 ], [ %18, %45 ]
  %51 = phi i32 [ %34, %33 ], [ 8, %42 ], [ 4, %39 ], [ 2, %36 ], [ 1, %13 ], [ 16, %45 ]
  %52 = phi i32 [ %26, %33 ], [ 3, %42 ], [ 2, %39 ], [ 1, %36 ], [ 0, %13 ], [ %48, %45 ]
  %53 = getelementptr inbounds %struct.mtk_pll_data, ptr %6, i32 0, i32 16
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 7, i32 %54
  %57 = zext i32 %52 to i64
  %58 = shl i64 %50, %57
  %59 = getelementptr inbounds %struct.mtk_pll_data, ptr %6, i32 0, i32 15
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 %60, %56
  %62 = zext i32 %61 to i64
  %63 = shl i64 %58, %62
  %64 = icmp ult i64 %63, 4294967296
  br i1 %64, label %65, label %68, !prof !41

65:                                               ; preds = %49
  %66 = trunc i64 %63 to i32
  %67 = udiv i32 %66, %4
  br label %72

68:                                               ; preds = %49
  %69 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %63) #11, !srcloc !42
  %70 = extractvalue { i64, i64 } %69, 1
  %71 = trunc i64 %70 to i32
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i32 [ %67, %65 ], [ %71, %68 ]
  %74 = icmp sgt i32 %60, %56
  %75 = zext i32 %4 to i64
  %76 = zext i32 %73 to i64
  %77 = mul nuw i64 %76, %75
  br i1 %74, label %80, label %78

78:                                               ; preds = %72
  %79 = trunc i64 %77 to i32
  br label %89

80:                                               ; preds = %72
  %81 = sub i32 32, %61
  %82 = lshr i32 -1, %81
  %83 = zext i32 %82 to i64
  %84 = and i64 %77, %83
  %85 = icmp eq i64 %84, 0
  %86 = lshr i64 %77, %62
  %87 = trunc i64 %86 to i32
  %88 = add i32 %87, 1
  br i1 %85, label %89, label %91

89:                                               ; preds = %80, %78
  %90 = phi i32 [ %79, %78 ], [ %87, %80 ]
  br label %91

91:                                               ; preds = %89, %80
  %92 = phi i32 [ %90, %89 ], [ %88, %80 ]
  %93 = add i32 %51, -1
  %94 = add i32 %93, %92
  %95 = udiv i32 %94, %51
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_pll_data, ptr %5, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_pll_data, ptr %5, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %1) #8
  %11 = icmp eq ptr %7, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mtk_pll_data, ptr %5, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 1000000000, i32 %14
  %17 = zext i32 %10 to i64
  %18 = zext i32 %16 to i64
  %19 = icmp ult i32 %10, %16
  br i1 %19, label %35, label %48

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.mtk_pll_div_table, ptr %7, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %10, i32 %22) #8
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi i32 [ 0, %20 ], [ %26, %24 ]
  %26 = add i32 %25, 1
  %27 = getelementptr %struct.mtk_pll_div_table, ptr %7, i32 %26, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = icmp ugt i32 %23, %28
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %24

32:                                               ; preds = %24
  %33 = shl nuw i32 1, %25
  %34 = zext i32 %23 to i64
  br label %48

35:                                               ; preds = %12
  %36 = shl nuw nsw i64 %17, 1
  %37 = icmp ult i64 %36, %18
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = shl nuw nsw i64 %17, 2
  %40 = icmp ult i64 %39, %18
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = shl nuw nsw i64 %17, 3
  %43 = icmp ult i64 %42, %18
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = shl nuw nsw i64 %17, 4
  %46 = icmp ult i64 %45, %18
  %47 = select i1 %46, i32 5, i32 4
  br label %48

48:                                               ; preds = %44, %41, %38, %35, %32, %12
  %49 = phi i64 [ %34, %32 ], [ %17, %41 ], [ %17, %38 ], [ %17, %35 ], [ %17, %12 ], [ %17, %44 ]
  %50 = phi i32 [ %33, %32 ], [ 8, %41 ], [ 4, %38 ], [ 2, %35 ], [ 1, %12 ], [ 16, %44 ]
  %51 = phi i32 [ %25, %32 ], [ 3, %41 ], [ 2, %38 ], [ 1, %35 ], [ 0, %12 ], [ %47, %44 ]
  %52 = getelementptr inbounds %struct.mtk_pll_data, ptr %5, i32 0, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 7, i32 %53
  %56 = zext i32 %51 to i64
  %57 = shl i64 %49, %56
  %58 = getelementptr inbounds %struct.mtk_pll_data, ptr %5, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %59, %55
  %61 = zext i32 %60 to i64
  %62 = shl i64 %57, %61
  %63 = icmp ult i64 %62, 4294967296
  br i1 %63, label %64, label %67, !prof !41

64:                                               ; preds = %48
  %65 = trunc i64 %62 to i32
  %66 = udiv i32 %65, %2
  br label %71

67:                                               ; preds = %48
  %68 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %62) #11, !srcloc !42
  %69 = extractvalue { i64, i64 } %68, 1
  %70 = trunc i64 %69 to i32
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i32 [ %66, %64 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %74) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr inbounds %struct.mtk_pll_data, ptr %78, i32 0, i32 8
  %80 = load i8, ptr %79, align 4
  %81 = zext i8 %80 to i32
  %82 = shl nuw i32 1, %81
  %83 = xor i32 %82, -1
  %84 = and i32 %77, %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %85 = load ptr, ptr %73, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %84) #8, !srcloc !11
  br label %94

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %88) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %92 = and i32 %91, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %93 = load ptr, ptr %87, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %92) #8, !srcloc !11
  br label %94

94:                                               ; preds = %90, %86, %76
  %95 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !43
  %98 = load ptr, ptr %4, align 4
  %99 = getelementptr inbounds %struct.mtk_pll_data, ptr %98, i32 0, i32 9
  %100 = load i32, ptr %99, align 4
  %101 = shl i32 7, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %97, %102
  %104 = tail call i32 @llvm.cttz.i32(i32 %50, i1 true) #8, !range !44
  %105 = shl i32 %104, %100
  %106 = or i32 %103, %105
  %107 = load ptr, ptr %95, align 4
  %108 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 6
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %107, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !45
  tail call void @arm_heavy_mb() #8
  %112 = load ptr, ptr %95, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %106) #8, !srcloc !11
  %113 = load ptr, ptr %108, align 4
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !46
  %115 = load ptr, ptr %4, align 4
  br label %116

116:                                              ; preds = %111, %94
  %117 = phi ptr [ %115, %111 ], [ %98, %94 ]
  %118 = phi i32 [ %114, %111 ], [ %106, %94 ]
  %119 = getelementptr inbounds %struct.mtk_pll_data, ptr %117, i32 0, i32 18
  %120 = load i32, ptr %119, align 4
  %121 = shl nsw i32 -1, %120
  %122 = getelementptr inbounds %struct.mtk_pll_data, ptr %117, i32 0, i32 15
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %120, %123
  %125 = sub i32 32, %124
  %126 = lshr i32 -1, %125
  %127 = and i32 %126, %121
  %128 = xor i32 %127, -1
  %129 = and i32 %118, %128
  %130 = shl i32 %72, %120
  %131 = or i32 %129, %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %132 = load ptr, ptr %108, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %131) #8, !srcloc !11
  %133 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 7
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !48
  %136 = or i32 %135, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %137 = load ptr, ptr %133, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %136) #8, !srcloc !11
  %138 = getelementptr inbounds %struct.mtk_clk_pll, ptr %0, i32 0, i32 4
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %142 = add i32 %131, 1
  %143 = load ptr, ptr %138, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %142) #8, !srcloc !11
  br label %144

144:                                              ; preds = %141, %116
  %145 = load ptr, ptr %73, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %144
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %145) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %149 = load ptr, ptr %4, align 4
  %150 = getelementptr inbounds %struct.mtk_pll_data, ptr %149, i32 0, i32 8
  %151 = load i8, ptr %150, align 4
  %152 = zext i8 %151 to i32
  %153 = shl nuw i32 1, %152
  %154 = or i32 %153, %148
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %155 = load ptr, ptr %73, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %154) #8, !srcloc !11
  br label %163

156:                                              ; preds = %144
  %157 = load ptr, ptr %138, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %157) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %161 = or i32 %160, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %162 = load ptr, ptr %138, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %161) #8, !srcloc !11
  br label %163

163:                                              ; preds = %159, %156, %147
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %164(i32 noundef 4294960) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 2813332}
!9 = !{i64 2151576044}
!10 = !{i64 2151576305}
!11 = !{i64 2812914}
!12 = !{i64 2151577284}
!13 = !{i64 2151577545}
!14 = !{i64 2151578521}
!15 = !{i64 2151578794}
!16 = !{i64 2151579335}
!17 = !{i64 2151579521}
!18 = !{i64 2151562539}
!19 = !{i64 2151562820}
!20 = !{i64 2151563274}
!21 = !{i64 2151563539}
!22 = !{i64 2151580610}
!23 = !{i64 2151580796}
!24 = !{i64 2151581343}
!25 = !{i64 2151581529}
!26 = !{i64 2151563999}
!27 = !{i64 2151564280}
!28 = !{i64 2151564734}
!29 = !{i64 2151564999}
!30 = !{i64 2151582076}
!31 = !{i64 2151582262}
!32 = !{i64 2151582707}
!33 = !{i64 2151582980}
!34 = !{i64 2151583422}
!35 = !{i64 2151583683}
!36 = !{i64 2151584126}
!37 = !{i64 2151584387}
!38 = !{i64 2151561357}
!39 = !{i64 2151574568}
!40 = !{i64 2151574894}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2148601659, i64 2148601939, i64 2148602273, i64 2148602607}
!43 = !{i64 2151565441}
!44 = !{i32 0, i32 33}
!45 = !{i64 2151565650}
!46 = !{i64 2151566096}
!47 = !{i64 2151567441}
!48 = !{i64 2151567900}
!49 = !{i64 2151568169}
!50 = !{i64 2151568485}
