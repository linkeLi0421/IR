; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-cpu.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-cpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rockchip_cpuclk_reg_data = type { [4 x i32], [4 x i8], [4 x i32], i32, i8, i8, i8, i32 }
%struct.rockchip_cpuclk = type { %struct.clk_hw, ptr, ptr, %struct.notifier_block, i32, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.rockchip_cpuclk_rate_table = type { i32, [5 x %struct.rockchip_cpuclk_clksel] }
%struct.rockchip_cpuclk_clksel = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"\013%s: needs at least two parent clocks\0A\00", align 1
@__func__.rockchip_clk_register_cpuclk = private unnamed_addr constant [29 x i8] c"rockchip_clk_register_cpuclk\00", align 1
@rockchip_cpuclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_cpuclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\013%s: could not lookup alternate parent: (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\013%s: could not enable alternate parent\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\013%s: could not lookup parent clock: (%d) %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"\013%s: failed to register clock notifier for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\013%s: could not register cpuclk %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"\013%s: Invalid rate : %lu for cpuclk\0A\00", align 1
@__func__.rockchip_cpuclk_pre_rate_change = private unnamed_addr constant [32 x i8] c"rockchip_cpuclk_pre_rate_change\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\014%s: limiting alt-divider %lu to %d\0A\00", align 1
@__func__.rockchip_cpuclk_post_rate_change = private unnamed_addr constant [33 x i8] c"rockchip_cpuclk_post_rate_change\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_cpuclk(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #6
  %10 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 12, i1 false), !annotation !8
  %11 = icmp ult i8 %2, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rockchip_clk_register_cpuclk) #7
  br label %98

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 48) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %98, label %18

18:                                               ; preds = %14
  store ptr %0, ptr %9, align 4
  %19 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %3, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr ptr, ptr %1, i32 %21
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @rockchip_cpuclk_ops, ptr %25, align 4
  %26 = icmp sgt i32 %5, 0
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  %28 = select i1 %26, i32 196, i32 192
  store i32 %28, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %16, i32 0, i32 2
  store ptr %6, ptr %29, align 8
  %30 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %16, i32 0, i32 7
  store ptr %7, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %16, i32 0, i32 6
  store ptr %3, ptr %31, align 8
  %32 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %16, i32 0, i32 3
  store ptr @rockchip_cpuclk_notifier_cb, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 2
  store ptr %9, ptr %33, align 8
  %34 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %3, i32 0, i32 4
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = getelementptr ptr, ptr %1, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = call ptr @__clk_lookup(ptr noundef %38) #6
  %40 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %16, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %18
  %43 = load i8, ptr %34, align 4
  %44 = zext i8 %43 to i32
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rockchip_clk_register_cpuclk, i32 noundef %44) #7
  br label %95

46:                                               ; preds = %18
  %47 = call i32 @clk_prepare(ptr noundef nonnull %39) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = call i32 @clk_enable(ptr noundef nonnull %39) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  call void @clk_unprepare(ptr noundef nonnull %39) #6
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i32 [ %50, %52 ], [ %47, %46 ]
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rockchip_clk_register_cpuclk) #7
  br label %95

56:                                               ; preds = %49
  %57 = load i8, ptr %19, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr ptr, ptr %1, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = call ptr @__clk_lookup(ptr noundef %60) #6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i8, ptr %19, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr ptr, ptr %1, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rockchip_clk_register_cpuclk, i32 noundef %65, ptr noundef %67) #7
  br label %92

69:                                               ; preds = %56
  %70 = call i32 @clk_notifier_register(ptr noundef nonnull %61, ptr noundef %32) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rockchip_clk_register_cpuclk, ptr noundef %0) #7
  br label %92

74:                                               ; preds = %69
  br i1 %26, label %75, label %81

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %16, i32 0, i32 4
  store i32 %5, ptr %76, align 8
  %77 = mul i32 %5, 44
  %78 = call ptr @kmemdup(ptr noundef %4, i32 noundef %77, i32 noundef 3264) #6
  %79 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %16, i32 0, i32 5
  store ptr %78, ptr %79, align 4
  %80 = icmp eq ptr %78, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %75, %74
  %82 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %16) #6
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rockchip_clk_register_cpuclk, ptr noundef %0) #7
  %86 = ptrtoint ptr %82 to i32
  %87 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %16, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  call void @kfree(ptr noundef %88) #6
  br label %89

89:                                               ; preds = %84, %75
  %90 = phi i32 [ %86, %84 ], [ -12, %75 ]
  %91 = call i32 @clk_notifier_unregister(ptr noundef nonnull %61, ptr noundef %32) #6
  br label %92

92:                                               ; preds = %89, %72, %63
  %93 = phi i32 [ %70, %72 ], [ %90, %89 ], [ -22, %63 ]
  %94 = load ptr, ptr %40, align 4
  call void @clk_disable(ptr noundef %94) #6
  call void @clk_unprepare(ptr noundef %94) #6
  br label %95

95:                                               ; preds = %92, %53, %42
  %96 = phi i32 [ %54, %53 ], [ %93, %92 ], [ -22, %42 ]
  call void @kfree(ptr noundef nonnull %16) #6
  %97 = inttoptr i32 %96 to ptr
  br label %98

98:                                               ; preds = %95, %81, %14, %12
  %99 = phi ptr [ inttoptr (i32 -22 to ptr), %12 ], [ %97, %95 ], [ %82, %81 ], [ inttoptr (i32 -12 to ptr), %14 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #6
  ret ptr %99
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_cpuclk_notifier_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -20
  switch i32 %1, label %165 [
    i32 1, label %5
    i32 2, label %91
  ]

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %18

15:                                               ; preds = %18
  %16 = add nuw i32 %19, 1
  %17 = icmp eq i32 %16, %13
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %5
  %19 = phi i32 [ %16, %15 ], [ 0, %5 ]
  %20 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %11, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %23, label %15

23:                                               ; preds = %18
  %24 = icmp eq ptr %20, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %23, %15, %5
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rockchip_cpuclk_pre_rate_change, i32 noundef %9) #7
  br label %165

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 -8
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_get_rate(ptr noundef %29) #6
  %31 = getelementptr i8, ptr %0, i32 24
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #6
  %34 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %30, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %27
  %38 = add i32 %30, -1
  %39 = add i32 %38, %35
  %40 = udiv i32 %39, %35
  %41 = add i32 %40, -1
  %42 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %7, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rockchip_cpuclk_pre_rate_change, i32 noundef %41, i32 noundef %43) #7
  %47 = load i32, ptr %42, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi i32 [ %47, %45 ], [ %41, %37 ]
  %50 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %7, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %0, i32 -4
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ 0, %53 ], [ %70, %55 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %57 = getelementptr %struct.rockchip_cpuclk_reg_data, ptr %7, i32 0, i32 1, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %49, %59
  %61 = getelementptr %struct.rockchip_cpuclk_reg_data, ptr %7, i32 0, i32 2, i32 %56
  %62 = load i32, ptr %61, align 4
  %63 = add nuw nsw i32 %59, 16
  %64 = shl i32 %62, %63
  %65 = or i32 %64, %60
  %66 = load ptr, ptr %54, align 4
  %67 = getelementptr [4 x i32], ptr %7, i32 0, i32 %56
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %65) #6, !srcloc !10
  %70 = add nuw nsw i32 %56, 1
  %71 = load i32, ptr %50, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %55, label %73

73:                                               ; preds = %55, %48, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %74 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %7, i32 0, i32 4
  %75 = load i8, ptr %74, align 4
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %7, i32 0, i32 6
  %78 = load i8, ptr %77, align 2
  %79 = zext i8 %78 to i32
  %80 = shl i32 %76, %79
  %81 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %7, i32 0, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = add nuw nsw i32 %79, 16
  %84 = shl i32 %82, %83
  %85 = or i32 %84, %80
  %86 = getelementptr i8, ptr %0, i32 -4
  %87 = load ptr, ptr %86, align 4
  %88 = load i32, ptr %7, align 4
  %89 = getelementptr i8, ptr %87, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %85) #6, !srcloc !10
  %90 = load ptr, ptr %31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %90, i32 noundef %33) #6
  br label %165

91:                                               ; preds = %3
  %92 = getelementptr i8, ptr %0, i32 20
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr i8, ptr %0, i32 16
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %0, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %111, label %104

101:                                              ; preds = %104
  %102 = add nuw i32 %105, 1
  %103 = icmp eq i32 %102, %99
  br i1 %103, label %111, label %104

104:                                              ; preds = %101, %91
  %105 = phi i32 [ %102, %101 ], [ 0, %91 ]
  %106 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %97, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, %95
  br i1 %108, label %109, label %101

109:                                              ; preds = %104
  %110 = icmp eq ptr %106, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %109, %101, %91
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rockchip_cpuclk_post_rate_change, i32 noundef %95) #7
  br label %165

113:                                              ; preds = %109
  %114 = getelementptr i8, ptr %0, i32 24
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %115) #6
  %117 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = load i32, ptr %94, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  tail call fastcc void @rockchip_cpuclk_set_dividers(ptr noundef %4, ptr noundef nonnull %106) #6
  br label %122

122:                                              ; preds = %121, %113
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %123 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %93, i32 0, i32 5
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %93, i32 0, i32 6
  %127 = load i8, ptr %126, align 2
  %128 = zext i8 %127 to i32
  %129 = shl i32 %125, %128
  %130 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %93, i32 0, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = add nuw nsw i32 %128, 16
  %133 = shl i32 %131, %132
  %134 = or i32 %133, %129
  %135 = getelementptr i8, ptr %0, i32 -4
  %136 = load ptr, ptr %135, align 4
  %137 = load i32, ptr %93, align 4
  %138 = getelementptr i8, ptr %136, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %134) #6, !srcloc !10
  %139 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %93, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %142, %122
  %143 = phi i32 [ %155, %142 ], [ 0, %122 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %144 = getelementptr %struct.rockchip_cpuclk_reg_data, ptr %93, i32 0, i32 1, i32 %143
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr %struct.rockchip_cpuclk_reg_data, ptr %93, i32 0, i32 2, i32 %143
  %148 = load i32, ptr %147, align 4
  %149 = add nuw nsw i32 %146, 16
  %150 = shl i32 %148, %149
  %151 = load ptr, ptr %135, align 4
  %152 = getelementptr [4 x i32], ptr %93, i32 0, i32 %143
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr i8, ptr %151, i32 %153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %150) #6, !srcloc !10
  %155 = add nuw nsw i32 %143, 1
  %156 = load i32, ptr %139, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %142, label %158

158:                                              ; preds = %142, %122
  %159 = load i32, ptr %117, align 4
  %160 = load i32, ptr %94, align 4
  %161 = icmp ugt i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  tail call fastcc void @rockchip_cpuclk_set_dividers(ptr noundef %4, ptr noundef nonnull %106) #6
  br label %163

163:                                              ; preds = %162, %158
  %164 = load ptr, ptr %114, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %164, i32 noundef %116) #6
  br label %165

165:                                              ; preds = %163, %111, %73, %25, %3
  %166 = phi i32 [ 1, %3 ], [ 1, %73 ], [ 1, %163 ], [ 32791, %111 ], [ 32791, %25 ]
  ret i32 %166
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_cpuclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !14
  %10 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = lshr i32 %9, %12
  %14 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %13, %15
  %17 = add i32 %16, 1
  %18 = udiv i32 %1, %17
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rockchip_cpuclk_set_dividers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %0, i32 0, i32 2
  %4 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %8 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = load i32, ptr %4, align 4
  %12 = getelementptr i8, ptr %10, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #6, !srcloc !10
  br label %13

13:                                               ; preds = %7, %2
  %14 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %18 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %3, align 4
  %21 = load i32, ptr %14, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #6, !srcloc !10
  br label %23

23:                                               ; preds = %17, %13
  %24 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %28 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 2, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %3, align 4
  %31 = load i32, ptr %24, align 4
  %32 = getelementptr i8, ptr %30, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #6, !srcloc !10
  br label %33

33:                                               ; preds = %27, %23
  %34 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %38 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 3, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %3, align 4
  %41 = load i32, ptr %34, align 4
  %42 = getelementptr i8, ptr %40, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %39) #6, !srcloc !10
  br label %43

43:                                               ; preds = %37, %33
  %44 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %48 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %1, i32 0, i32 1, i32 4, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %3, align 4
  %51 = load i32, ptr %44, align 4
  %52 = getelementptr i8, ptr %50, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %49) #6, !srcloc !10
  br label %53

53:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 2150609751}
!10 = !{i64 2936626}
!11 = !{i64 2150610620}
!12 = !{i64 2150612400}
!13 = !{i64 2150613259}
!14 = !{i64 2937044}
!15 = !{i64 2150606661}
