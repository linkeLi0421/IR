; ModuleID = '/llk/IR/drivers/clk/bcm/clk-iproc-pll.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-iproc-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.iproc_pll = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iproc_clk = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.iproc_pll_ctrl = type { i32, %struct.iproc_pll_aon_pwr_ctrl, %struct.iproc_asiu_gate, %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_sw_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_pll_vco_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op }
%struct.iproc_pll_aon_pwr_ctrl = type { i32, i32, i32, i32 }
%struct.iproc_asiu_gate = type { i32, i32 }
%struct.iproc_pll_reset_ctrl = type { i32, i32, i32 }
%struct.iproc_pll_dig_filter_ctrl = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iproc_pll_sw_ctrl = type { i32, i32 }
%struct.iproc_pll_vco_ctrl = type { i32, i32 }
%struct.iproc_clk_reg_op = type { i32, i32, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.iproc_clk_ctrl = type { i32, i32, %struct.iproc_clk_enable_ctrl, %struct.iproc_clk_reg_op }
%struct.iproc_clk_enable_ctrl = type { i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.iproc_pll_vco_param = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"drivers/clk/bcm/clk-iproc-pll.c\00", align 1
@iproc_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @iproc_pll_enable, ptr @iproc_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @iproc_pll_recalc_rate, ptr null, ptr @iproc_pll_determine_rate, ptr null, ptr null, ptr @iproc_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@iproc_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @iproc_clk_enable, ptr @iproc_clk_disable, ptr null, ptr null, ptr null, ptr null, ptr @iproc_clk_recalc_rate, ptr null, ptr @iproc_clk_determine_rate, ptr null, ptr null, ptr @iproc_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\013%s: pll: %s has invalid rate: %lu\0A\00", align 1
@__func__.pll_set_rate = private unnamed_addr constant [13 x i8] c"pll_set_rate\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\013%s: pll: %s has invalid kp\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\013%s: pll: %s failed to lock\0A\00", align 1
@kp_table = internal unnamed_addr constant [3 x [8 x i32]] [[8 x i32] [i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 9, i32 10], [8 x i32] [i32 4, i32 4, i32 5, i32 5, i32 6, i32 7, i32 8, i32 9], [8 x i32] [i32 4, i32 5, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iproc_pll_clk_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.clk_init_data, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store ptr null, ptr %8, align 4, !annotation !8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 740, i32 noundef 9, ptr noundef null) #9
  br label %178

12:                                               ; preds = %6
  %13 = icmp eq ptr %4, null
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 740, i32 noundef 9, ptr noundef null) #9
  br label %178

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 28) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 744, i32 noundef 9, ptr noundef null) #9
  br label %178

20:                                               ; preds = %15
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #9
  %22 = extractvalue { i32, i1 } %21, 1
  %23 = extractvalue { i32, i1 } %21, 0
  %24 = tail call i32 @llvm.uadd.sat.i32(i32 %23, i32 4) #9
  %25 = select i1 %22, i32 -1, i32 %24
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 748, i32 noundef 9, ptr noundef null) #9
  br label %177

29:                                               ; preds = %20
  store i32 %5, ptr %26, align 64
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 20) #9
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %36, label %32, !prof !9

32:                                               ; preds = %29
  %33 = extractvalue { i32, i1 } %30, 0
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %32, %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #9
  br label %176

37:                                               ; preds = %32
  %38 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %39 = getelementptr inbounds %struct.iproc_pll, ptr %17, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 757, i32 noundef 9, ptr noundef null) #9
  br label %175

42:                                               ; preds = %37
  %43 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 1) #9
  %44 = getelementptr inbounds %struct.iproc_pll, ptr %17, i32 0, i32 2
  store ptr %43, ptr %44, align 8
  %45 = load i32, ptr %1, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 2) #9
  %50 = getelementptr inbounds %struct.iproc_pll, ptr %17, i32 0, i32 3
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %54, label %52, !prof !9

52:                                               ; preds = %48
  %53 = load i32, ptr %1, align 4
  br label %55

54:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 766, i32 noundef 9, ptr noundef null) #9
  br label %169

55:                                               ; preds = %52, %42
  %56 = phi i32 [ %53, %52 ], [ %45, %42 ]
  %57 = and i32 %56, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 2) #9
  store ptr %60, ptr %17, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %164, label %64

62:                                               ; preds = %55
  %63 = load ptr, ptr %39, align 4
  store ptr %63, ptr %17, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = getelementptr inbounds %struct.iproc_pll, ptr %17, i32 0, i32 4
  store ptr %1, ptr %65, align 8
  %66 = getelementptr inbounds %struct.iproc_clk, ptr %34, i32 0, i32 1
  store ptr %17, ptr %66, align 4
  %67 = load ptr, ptr %0, align 4
  store ptr %67, ptr %7, align 4
  %68 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @iproc_pll_ops, ptr %68, align 4
  %69 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 0, ptr %69, align 4
  %70 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #9
  store ptr %70, ptr %8, align 4
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, ptr null, ptr %8
  %73 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %72, ptr %73, align 4
  %74 = icmp ne ptr %70, null
  %75 = zext i1 %74 to i8
  %76 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.clk_hw, ptr %34, i32 0, i32 2
  store ptr %7, ptr %77, align 8
  %78 = icmp eq ptr %2, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.iproc_pll, ptr %17, i32 0, i32 6
  store i32 %3, ptr %80, align 8
  %81 = getelementptr inbounds %struct.iproc_pll, ptr %17, i32 0, i32 5
  store ptr %2, ptr %81, align 4
  br label %82

82:                                               ; preds = %79, %64
  %83 = load ptr, ptr %65, align 8
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %112, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr %39, align 4
  %89 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %83, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i8, ptr %88, i32 %90
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %93 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %83, i32 0, i32 5, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = shl nuw i32 1, %94
  %96 = or i32 %95, %92
  %97 = load ptr, ptr %39, align 4
  %98 = load i32, ptr %89, align 4
  %99 = load ptr, ptr %65, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  call void @arm_heavy_mb() #9
  %100 = getelementptr i8, ptr %97, i32 %98
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %96) #9, !srcloc !13
  %101 = load i32, ptr %99, align 4
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %87
  %105 = load ptr, ptr %17, align 8
  %106 = icmp eq ptr %105, %97
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %39, align 4
  %109 = icmp eq ptr %108, %97
  br i1 %109, label %110, label %112, !prof !9

110:                                              ; preds = %107, %104
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %112

112:                                              ; preds = %110, %107, %87, %82
  %113 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %34) #9
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115, !prof !15

115:                                              ; preds = %112
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 802, i32 noundef 9, ptr noundef null) #9
  br label %159

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %26, i32 0, i32 1
  store ptr %34, ptr %117, align 4
  %118 = icmp ugt i32 %5, 1
  br i1 %118, label %119, label %144

119:                                              ; preds = %140, %116
  %120 = phi i32 [ %142, %140 ], [ 1, %116 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store ptr null, ptr %9, align 4, !annotation !8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 28, i1 false)
  %121 = load ptr, ptr %0, align 4
  store ptr %121, ptr %8, align 4
  %122 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %9, i32 noundef 1, i32 noundef %120) #9
  %123 = icmp sgt i32 %122, -1
  br i1 %123, label %124, label %138, !prof !15

124:                                              ; preds = %119
  %125 = getelementptr %struct.iproc_clk, ptr %34, i32 %120
  %126 = getelementptr %struct.iproc_clk, ptr %34, i32 %120, i32 1
  store ptr %17, ptr %126, align 4
  %127 = getelementptr %struct.iproc_clk_ctrl, ptr %4, i32 %120
  %128 = getelementptr %struct.iproc_clk, ptr %34, i32 %120, i32 2
  store ptr %127, ptr %128, align 4
  %129 = load ptr, ptr %9, align 4
  store ptr %129, ptr %7, align 4
  store ptr @iproc_clk_ops, ptr %68, align 4
  store i32 0, ptr %69, align 4
  %130 = load ptr, ptr %8, align 4
  %131 = icmp eq ptr %130, null
  %132 = select i1 %131, ptr null, ptr %8
  store ptr %132, ptr %73, align 4
  %133 = icmp ne ptr %130, null
  %134 = zext i1 %133 to i8
  store i8 %134, ptr %76, align 4
  %135 = getelementptr inbounds %struct.clk_hw, ptr %125, i32 0, i32 2
  store ptr %7, ptr %135, align 4
  %136 = call i32 @clk_hw_register(ptr noundef null, ptr noundef %125) #9
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138, !prof !15

138:                                              ; preds = %124, %119
  %139 = phi i32 [ 816, %119 ], [ 831, %124 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %139, i32 noundef 9, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %149

140:                                              ; preds = %124
  %141 = getelementptr %struct.clk_hw_onecell_data, ptr %26, i32 0, i32 1, i32 %120
  store ptr %125, ptr %141, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  %142 = add nuw i32 %120, 1
  %143 = icmp eq i32 %142, %5
  br i1 %143, label %144, label %119

144:                                              ; preds = %140, %116
  %145 = phi i32 [ 1, %116 ], [ %5, %140 ]
  %146 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %26) #9
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %178, label %148, !prof !15

148:                                              ; preds = %144
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 838, i32 noundef 9, ptr noundef null) #9
  br label %149

149:                                              ; preds = %148, %138
  %150 = phi i32 [ %120, %138 ], [ %145, %148 ]
  %151 = add i32 %150, -1
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %159

153:                                              ; preds = %153, %149
  %154 = phi i32 [ %157, %153 ], [ %151, %149 ]
  %155 = getelementptr %struct.clk_hw_onecell_data, ptr %26, i32 0, i32 1, i32 %154
  %156 = load ptr, ptr %155, align 4
  call void @clk_hw_unregister(ptr noundef %156) #9
  %157 = add nsw i32 %154, -1
  %158 = icmp sgt i32 %154, 0
  br i1 %158, label %153, label %159

159:                                              ; preds = %153, %149, %115
  %160 = load ptr, ptr %17, align 8
  %161 = load ptr, ptr %39, align 4
  %162 = icmp eq ptr %160, %161
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  call void @iounmap(ptr noundef %160) #9
  br label %164

164:                                              ; preds = %163, %159, %59
  %165 = getelementptr inbounds %struct.iproc_pll, ptr %17, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  call void @iounmap(ptr noundef nonnull %166) #9
  br label %169

169:                                              ; preds = %168, %164, %54
  %170 = load ptr, ptr %44, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  call void @iounmap(ptr noundef nonnull %170) #9
  br label %173

173:                                              ; preds = %172, %169
  %174 = load ptr, ptr %39, align 4
  call void @iounmap(ptr noundef %174) #9
  br label %175

175:                                              ; preds = %173, %41
  call void @kfree(ptr noundef nonnull %34) #9
  br label %176

176:                                              ; preds = %175, %36
  call void @kfree(ptr noundef nonnull %26) #9
  br label %177

177:                                              ; preds = %176, %28
  call void @kfree(ptr noundef nonnull %17) #9
  br label %178

178:                                              ; preds = %177, %144, %19, %14, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pll_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @__pll_enable(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_pll_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %129

9:                                                ; preds = %1
  %10 = and i32 %6, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %19 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %5, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = shl nuw i32 1, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = load ptr, ptr %13, align 4
  %25 = load i32, ptr %15, align 4
  %26 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %27 = getelementptr i8, ptr %24, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #9, !srcloc !13
  %28 = load i32, ptr %26, align 4
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %12
  %32 = load ptr, ptr %3, align 4
  %33 = icmp eq ptr %32, %24
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %24
  br i1 %37, label %38, label %40, !prof !9

38:                                               ; preds = %34, %31
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %40

40:                                               ; preds = %38, %34, %12, %9
  %41 = load i32, ptr %5, align 4
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %74, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %5, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %51 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %5, i32 0, i32 1, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = shl nsw i32 -1, %52
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %5, i32 0, i32 1, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %54, %56
  %58 = or i32 %57, %50
  %59 = load ptr, ptr %45, align 4
  %60 = load i32, ptr %47, align 4
  %61 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %62 = getelementptr i8, ptr %59, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %58) #9, !srcloc !13
  %63 = load i32, ptr %61, align 4
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %44
  %67 = load ptr, ptr %3, align 4
  %68 = icmp eq ptr %67, %59
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %45, align 4
  %71 = icmp eq ptr %70, %59
  br i1 %71, label %72, label %74, !prof !9

72:                                               ; preds = %69, %66
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %74

74:                                               ; preds = %72, %69, %44, %40
  %75 = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %129, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %5, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %76, i32 %80
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %83 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %5, i32 0, i32 1, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = shl nuw i32 1, %84
  %86 = or i32 %85, %82
  %87 = load ptr, ptr %75, align 4
  %88 = load i32, ptr %79, align 4
  %89 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %90 = getelementptr i8, ptr %87, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %86) #9, !srcloc !13
  %91 = load i32, ptr %89, align 4
  %92 = and i32 %91, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %78
  %95 = load ptr, ptr %3, align 4
  %96 = icmp eq ptr %95, %87
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %87
  br i1 %100, label %101, label %103, !prof !9

101:                                              ; preds = %97, %94
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %103

103:                                              ; preds = %101, %97, %78
  %104 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %5, i32 0, i32 1, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = shl nsw i32 -1, %105
  %107 = xor i32 %106, -1
  %108 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %5, i32 0, i32 1, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = shl i32 %107, %109
  %111 = xor i32 %110, -1
  %112 = and i32 %86, %111
  %113 = load ptr, ptr %75, align 4
  %114 = load i32, ptr %79, align 4
  %115 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %116 = getelementptr i8, ptr %113, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %112) #9, !srcloc !13
  %117 = load i32, ptr %115, align 4
  %118 = and i32 %117, 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %103
  %121 = load ptr, ptr %3, align 4
  %122 = icmp eq ptr %121, %113
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %113
  br i1 %126, label %127, label %129, !prof !9

127:                                              ; preds = %123, %120
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %129

129:                                              ; preds = %127, %123, %103, %74, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iproc_pll, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %79, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %14 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 10, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %79, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.iproc_pll, ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %26 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 6, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %25, %27
  %29 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 6, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = shl nsw i32 -1, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 20
  %36 = load i32, ptr %6, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %19
  %40 = load ptr, ptr %20, align 4
  %41 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %45 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 7, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %44, %46
  %48 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 7, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = shl nsw i32 -1, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %47, %51
  %53 = zext i32 %52 to i64
  %54 = add nuw nsw i64 %35, %53
  br label %55

55:                                               ; preds = %39, %19
  %56 = phi i64 [ %54, %39 ], [ %35, %19 ]
  %57 = load ptr, ptr %20, align 4
  %58 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i8, ptr %57, i32 %59
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %62 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 8, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %61, %63
  %65 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %6, i32 0, i32 8, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = shl nsw i32 -1, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %64, %68
  %70 = zext i32 %1 to i64
  %71 = mul i64 %56, %70
  %72 = lshr i64 %71, 20
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %69, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = shl i32 %73, 1
  br label %79

77:                                               ; preds = %55
  %78 = udiv i32 %73, %69
  br label %79

79:                                               ; preds = %77, %75, %8, %2
  %80 = phi i32 [ 0, %2 ], [ 0, %8 ], [ %76, %75 ], [ %78, %77 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pll_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iproc_pll, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %68, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %68, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %6, align 4
  %15 = and i32 %14, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %13
  %18 = udiv i32 %7, %11
  %19 = icmp ugt i32 %11, %7
  %20 = icmp ugt i32 %18, 255
  %21 = or i1 %19, %20
  br i1 %21, label %68, label %22

22:                                               ; preds = %17
  %23 = zext i32 %18 to i64
  %24 = zext i32 %7 to i64
  %25 = zext i32 %11 to i64
  %26 = mul nuw nsw i64 %23, %25
  %27 = sub nsw i64 %24, %26
  %28 = shl nsw i64 %27, 20
  %29 = lshr i32 %11, 1
  %30 = zext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = tail call i64 @div64_u64(i64 noundef %31, i64 noundef %25) #9
  %33 = mul i32 %18, %11
  %34 = and i64 %32, 4294967295
  %35 = mul nuw i64 %34, %25
  %36 = lshr i64 %35, 20
  %37 = trunc i64 %36 to i32
  %38 = add i32 %33, %37
  br label %66

39:                                               ; preds = %13
  %40 = getelementptr inbounds %struct.iproc_pll, ptr %4, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %68, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.iproc_pll, ptr %4, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %58, %43
  %48 = phi i32 [ %60, %58 ], [ 0, %43 ]
  %49 = phi i32 [ %56, %58 ], [ 0, %43 ]
  %50 = phi i32 [ %59, %58 ], [ -1, %43 ]
  %51 = getelementptr %struct.iproc_pll_vco_param, ptr %41, i32 %48
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %7, %52
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 false)
  %55 = icmp ugt i32 %54, %50
  %56 = select i1 %55, i32 %49, i32 %48
  %57 = icmp eq i32 %7, %52
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = tail call i32 @llvm.umin.i32(i32 %54, i32 %50)
  %60 = add nuw i32 %48, 1
  %61 = icmp eq i32 %60, %45
  br i1 %61, label %62, label %47

62:                                               ; preds = %58, %47, %43
  %63 = phi i32 [ 0, %43 ], [ %56, %47 ], [ %56, %58 ]
  %64 = getelementptr %struct.iproc_pll_vco_param, ptr %41, i32 %63
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %62, %22
  %67 = phi i32 [ %38, %22 ], [ %65, %62 ]
  store i32 %67, ptr %1, align 4
  br label %68

68:                                               ; preds = %66, %39, %17, %9, %2
  %69 = phi i32 [ -22, %9 ], [ -22, %2 ], [ -22, %39 ], [ -22, %17 ], [ 0, %66 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pll_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iproc_pll, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %3
  %12 = udiv i32 %1, %2
  %13 = icmp ugt i32 %2, %1
  %14 = icmp ugt i32 %12, 255
  %15 = or i1 %13, %14
  br i1 %15, label %532, label %16

16:                                               ; preds = %11
  %17 = zext i32 %12 to i64
  %18 = zext i32 %1 to i64
  %19 = zext i32 %2 to i64
  %20 = mul nuw nsw i64 %17, %19
  %21 = sub nsw i64 %18, %20
  %22 = shl nsw i64 %21, 20
  %23 = lshr i32 %2, 1
  %24 = zext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = tail call i64 @div64_u64(i64 noundef %25, i64 noundef %19) #9
  %27 = trunc i64 %26 to i32
  %28 = mul i32 %12, %2
  %29 = and i64 %26, 4294967295
  %30 = mul nuw i64 %29, %19
  %31 = lshr i64 %30, 20
  %32 = trunc i64 %31 to i32
  %33 = add i32 %28, %32
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.iproc_pll, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.iproc_pll, ptr %34, i32 0, i32 4
  %38 = tail call ptr @clk_hw_get_name(ptr noundef %0) #9
  br label %68

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.iproc_pll, ptr %5, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %532, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.iproc_pll, ptr %5, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %51, %43
  %47 = phi i32 [ 0, %43 ], [ %52, %51 ]
  %48 = getelementptr %struct.iproc_pll_vco_param, ptr %45, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %1
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = add nuw i32 %47, 1
  %53 = icmp eq i32 %52, %41
  br i1 %53, label %532, label %46

54:                                               ; preds = %46
  %55 = icmp slt i32 %47, 0
  br i1 %55, label %532, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds i8, ptr %48, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds i8, ptr %48, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds i8, ptr %48, i32 12
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.iproc_pll, ptr %5, i32 0, i32 4
  %64 = tail call ptr @clk_hw_get_name(ptr noundef %0) #9
  %65 = icmp eq i32 %62, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = shl i32 %2, 1
  br label %78

68:                                               ; preds = %56, %16
  %69 = phi ptr [ %38, %16 ], [ %64, %56 ]
  %70 = phi ptr [ %37, %16 ], [ %63, %56 ]
  %71 = phi i32 [ 1, %16 ], [ %62, %56 ]
  %72 = phi i32 [ %27, %16 ], [ %60, %56 ]
  %73 = phi i32 [ %12, %16 ], [ %58, %56 ]
  %74 = phi i32 [ %33, %16 ], [ %1, %56 ]
  %75 = phi ptr [ %34, %16 ], [ %5, %56 ]
  %76 = phi ptr [ %36, %16 ], [ %7, %56 ]
  %77 = udiv i32 %2, %71
  br label %78

78:                                               ; preds = %68, %66
  %79 = phi ptr [ %64, %66 ], [ %69, %68 ]
  %80 = phi ptr [ %63, %66 ], [ %70, %68 ]
  %81 = phi i32 [ 0, %66 ], [ %71, %68 ]
  %82 = phi i32 [ %60, %66 ], [ %72, %68 ]
  %83 = phi i32 [ %58, %66 ], [ %73, %68 ]
  %84 = phi i32 [ %1, %66 ], [ %74, %68 ]
  %85 = phi ptr [ %5, %66 ], [ %75, %68 ]
  %86 = phi ptr [ %7, %66 ], [ %76, %68 ]
  %87 = phi i32 [ %67, %66 ], [ %77, %68 ]
  %88 = icmp ult i32 %84, -2094967296
  %89 = add i32 %84, -700000000
  %90 = icmp ult i32 %89, 1500000000
  br i1 %90, label %99, label %91

91:                                               ; preds = %78
  %92 = add i32 %84, 2094967296
  %93 = icmp ult i32 %92, 900000000
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = add nsw i32 %84, 1194967296
  %96 = icmp ult i32 %95, 900000000
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.pll_set_rate, ptr noundef %79, i32 noundef %84) #12
  br label %532

99:                                               ; preds = %94, %91, %78
  %100 = phi i32 [ 0, %78 ], [ 1, %91 ], [ 2, %94 ]
  %101 = phi i32 [ 4, %78 ], [ 3, %91 ], [ 3, %94 ]
  %102 = icmp ult i32 %87, 10000000
  br i1 %102, label %124, label %103

103:                                              ; preds = %99
  %104 = icmp ult i32 %87, 12500000
  br i1 %104, label %119, label %105

105:                                              ; preds = %103
  %106 = icmp ult i32 %87, 15000000
  br i1 %106, label %119, label %107

107:                                              ; preds = %105
  %108 = icmp ult i32 %87, 20000000
  br i1 %108, label %119, label %109

109:                                              ; preds = %107
  %110 = icmp ult i32 %87, 25000000
  br i1 %110, label %119, label %111

111:                                              ; preds = %109
  %112 = icmp ult i32 %87, 50000000
  br i1 %112, label %119, label %113

113:                                              ; preds = %111
  %114 = icmp ult i32 %87, 75000000
  br i1 %114, label %119, label %115

115:                                              ; preds = %113
  %116 = icmp ult i32 %87, 100000000
  br i1 %116, label %119, label %117

117:                                              ; preds = %115
  %118 = icmp ult i32 %87, 125000000
  br i1 %118, label %119, label %124

119:                                              ; preds = %117, %115, %113, %111, %109, %107, %105, %103
  %120 = phi i32 [ 0, %103 ], [ 1, %105 ], [ 2, %107 ], [ 3, %109 ], [ 4, %111 ], [ 5, %113 ], [ 6, %115 ], [ 7, %117 ]
  %121 = getelementptr [3 x [8 x i32]], ptr @kp_table, i32 0, i32 %100, i32 %120
  %122 = load i32, ptr %121, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119, %117, %99
  %125 = phi i32 [ %122, %119 ], [ -22, %99 ], [ -22, %117 ]
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.pll_set_rate, ptr noundef %79) #12
  br label %532

127:                                              ; preds = %119
  tail call fastcc void @__pll_enable(ptr noundef %85) #9
  %128 = load ptr, ptr %4, align 4
  %129 = getelementptr inbounds %struct.iproc_pll, ptr %128, i32 0, i32 4
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %128, align 4
  %132 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %130, i32 0, i32 10
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr i8, ptr %131, i32 %133
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %136 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %130, i32 0, i32 10, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = shl nuw i32 1, %137
  %139 = and i32 %138, %135
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %209, label %141

141:                                              ; preds = %127
  %142 = getelementptr inbounds %struct.iproc_pll, ptr %128, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %130, i32 0, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr i8, ptr %143, i32 %145
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !24
  %148 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %130, i32 0, i32 6, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %147, %149
  %151 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %130, i32 0, i32 6, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = shl nsw i32 -1, %152
  %154 = xor i32 %153, -1
  %155 = and i32 %150, %154
  %156 = icmp eq i32 %155, %83
  br i1 %156, label %157, label %209

157:                                              ; preds = %141
  %158 = load ptr, ptr %142, align 4
  %159 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %130, i32 0, i32 8
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i8, ptr %158, i32 %160
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %163 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %130, i32 0, i32 8, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = lshr i32 %162, %164
  %166 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %130, i32 0, i32 8, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = shl nsw i32 -1, %167
  %169 = xor i32 %168, -1
  %170 = and i32 %165, %169
  %171 = icmp eq i32 %170, %81
  br i1 %171, label %172, label %209

172:                                              ; preds = %157
  %173 = load i32, ptr %86, align 4
  %174 = and i32 %173, 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %209, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.iproc_pll, ptr %85, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 7
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr i8, ptr %178, i32 %180
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !26
  %183 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 7, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = shl nsw i32 -1, %184
  %186 = xor i32 %185, -1
  %187 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 7, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = shl i32 %186, %188
  %190 = xor i32 %189, -1
  %191 = and i32 %182, %190
  %192 = shl i32 %82, %188
  %193 = or i32 %191, %192
  %194 = load ptr, ptr %177, align 4
  %195 = load i32, ptr %179, align 4
  %196 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %197 = getelementptr i8, ptr %194, i32 %195
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %193) #9, !srcloc !13
  %198 = load i32, ptr %196, align 4
  %199 = and i32 %198, 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %532, label %201

201:                                              ; preds = %176
  %202 = load ptr, ptr %85, align 4
  %203 = icmp eq ptr %202, %194
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %177, align 4
  %206 = icmp eq ptr %205, %194
  br i1 %206, label %207, label %532, !prof !9

207:                                              ; preds = %204, %201
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %532

209:                                              ; preds = %172, %157, %141, %127
  %210 = load ptr, ptr %80, align 4
  %211 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.iproc_pll, ptr %85, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  %214 = load i32, ptr %211, align 4
  %215 = getelementptr i8, ptr %213, i32 %214
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !27
  %217 = load i32, ptr %210, align 4
  %218 = and i32 %217, 512
  %219 = icmp eq i32 %218, 0
  %220 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %210, i32 0, i32 3, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = shl nuw i32 1, %221
  %223 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %210, i32 0, i32 3, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = shl nuw i32 1, %224
  %226 = or i32 %225, %222
  %227 = or i32 %226, %216
  %228 = xor i32 %226, -1
  %229 = and i32 %216, %228
  %230 = select i1 %219, i32 %229, i32 %227
  %231 = load ptr, ptr %212, align 4
  %232 = load i32, ptr %211, align 4
  %233 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %234 = getelementptr i8, ptr %231, i32 %232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %230) #9, !srcloc !13
  %235 = load i32, ptr %233, align 4
  %236 = and i32 %235, 8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %209
  %239 = load ptr, ptr %85, align 4
  %240 = icmp eq ptr %239, %231
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load ptr, ptr %212, align 4
  %243 = icmp eq ptr %242, %231
  br i1 %243, label %244, label %246, !prof !9

244:                                              ; preds = %241, %238
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %246

246:                                              ; preds = %244, %241, %209
  %247 = load i32, ptr %86, align 4
  %248 = and i32 %247, 256
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %282, label %250

250:                                              ; preds = %246
  %251 = load ptr, ptr %212, align 4
  %252 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 11
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr i8, ptr %251, i32 %253
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !28
  %256 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 11, i32 2
  %257 = load i32, ptr %256, align 4
  %258 = shl nsw i32 -1, %257
  %259 = xor i32 %258, -1
  %260 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 11, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = shl i32 %259, %261
  %263 = xor i32 %262, -1
  %264 = and i32 %255, %263
  %265 = shl i32 7, %261
  %266 = or i32 %264, %265
  %267 = load ptr, ptr %212, align 4
  %268 = load i32, ptr %252, align 4
  %269 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %270 = getelementptr i8, ptr %267, i32 %268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %266) #9, !srcloc !13
  %271 = load i32, ptr %269, align 4
  %272 = and i32 %271, 8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %282, label %274

274:                                              ; preds = %250
  %275 = load ptr, ptr %85, align 4
  %276 = icmp eq ptr %275, %267
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr %212, align 4
  %279 = icmp eq ptr %278, %267
  br i1 %279, label %280, label %282, !prof !9

280:                                              ; preds = %277, %274
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %282

282:                                              ; preds = %280, %277, %250, %246
  %283 = load ptr, ptr %212, align 4
  %284 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 9
  %285 = load i32, ptr %284, align 4
  %286 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %287 = getelementptr i8, ptr %283, i32 %285
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 0) #9, !srcloc !13
  %288 = load i32, ptr %286, align 4
  %289 = and i32 %288, 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %299, label %291

291:                                              ; preds = %282
  %292 = load ptr, ptr %85, align 4
  %293 = icmp eq ptr %292, %283
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr %212, align 4
  %296 = icmp eq ptr %295, %283
  br i1 %296, label %297, label %299, !prof !9

297:                                              ; preds = %294, %291
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %287) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %299

299:                                              ; preds = %297, %294, %282
  %300 = load ptr, ptr %212, align 4
  %301 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 9, i32 1
  %302 = load i32, ptr %301, align 4
  %303 = getelementptr i8, ptr %300, i32 %302
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %303) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  %305 = icmp ult i32 %89, 500000000
  %306 = or i32 %304, 1073741824
  %307 = select i1 %305, i32 %306, i32 %304
  %308 = and i32 %307, -524289
  %309 = select i1 %88, i32 0, i32 524288
  %310 = or i32 %308, %309
  %311 = load ptr, ptr %212, align 4
  %312 = load i32, ptr %301, align 4
  %313 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %314 = getelementptr i8, ptr %311, i32 %312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %310) #9, !srcloc !13
  %315 = load i32, ptr %313, align 4
  %316 = and i32 %315, 8
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %326, label %318

318:                                              ; preds = %299
  %319 = load ptr, ptr %85, align 4
  %320 = icmp eq ptr %319, %311
  br i1 %320, label %324, label %321

321:                                              ; preds = %318
  %322 = load ptr, ptr %212, align 4
  %323 = icmp eq ptr %322, %311
  br i1 %323, label %324, label %326, !prof !9

324:                                              ; preds = %321, %318
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %314) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %326

326:                                              ; preds = %324, %321, %299
  %327 = load ptr, ptr %212, align 4
  %328 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 6
  %329 = load i32, ptr %328, align 4
  %330 = getelementptr i8, ptr %327, i32 %329
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %330) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !30
  %332 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 6, i32 2
  %333 = load i32, ptr %332, align 4
  %334 = shl nsw i32 -1, %333
  %335 = xor i32 %334, -1
  %336 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 6, i32 1
  %337 = load i32, ptr %336, align 4
  %338 = shl i32 %335, %337
  %339 = xor i32 %338, -1
  %340 = and i32 %331, %339
  %341 = shl i32 %83, %337
  %342 = or i32 %340, %341
  %343 = load ptr, ptr %212, align 4
  %344 = load i32, ptr %328, align 4
  %345 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %346 = getelementptr i8, ptr %343, i32 %344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 %342) #9, !srcloc !13
  %347 = load i32, ptr %345, align 4
  %348 = and i32 %347, 8
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %358, label %350

350:                                              ; preds = %326
  %351 = load ptr, ptr %85, align 4
  %352 = icmp eq ptr %351, %343
  br i1 %352, label %356, label %353

353:                                              ; preds = %350
  %354 = load ptr, ptr %212, align 4
  %355 = icmp eq ptr %354, %343
  br i1 %355, label %356, label %358, !prof !9

356:                                              ; preds = %353, %350
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %346) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %358

358:                                              ; preds = %356, %353, %326
  %359 = load i32, ptr %86, align 4
  %360 = and i32 %359, 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %394, label %362

362:                                              ; preds = %358
  %363 = load ptr, ptr %212, align 4
  %364 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 7
  %365 = load i32, ptr %364, align 4
  %366 = getelementptr i8, ptr %363, i32 %365
  %367 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %366) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %368 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 7, i32 2
  %369 = load i32, ptr %368, align 4
  %370 = shl nsw i32 -1, %369
  %371 = xor i32 %370, -1
  %372 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 7, i32 1
  %373 = load i32, ptr %372, align 4
  %374 = shl i32 %371, %373
  %375 = xor i32 %374, -1
  %376 = and i32 %367, %375
  %377 = shl i32 %82, %373
  %378 = or i32 %376, %377
  %379 = load ptr, ptr %212, align 4
  %380 = load i32, ptr %364, align 4
  %381 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %382 = getelementptr i8, ptr %379, i32 %380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %382, i32 %378) #9, !srcloc !13
  %383 = load i32, ptr %381, align 4
  %384 = and i32 %383, 8
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %394, label %386

386:                                              ; preds = %362
  %387 = load ptr, ptr %85, align 4
  %388 = icmp eq ptr %387, %379
  br i1 %388, label %392, label %389

389:                                              ; preds = %386
  %390 = load ptr, ptr %212, align 4
  %391 = icmp eq ptr %390, %379
  br i1 %391, label %392, label %394, !prof !9

392:                                              ; preds = %389, %386
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %382) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %394

394:                                              ; preds = %392, %389, %362, %358
  %395 = load ptr, ptr %212, align 4
  %396 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 8
  %397 = load i32, ptr %396, align 4
  %398 = getelementptr i8, ptr %395, i32 %397
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %398) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !32
  %400 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 8, i32 2
  %401 = load i32, ptr %400, align 4
  %402 = shl nsw i32 -1, %401
  %403 = xor i32 %402, -1
  %404 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %86, i32 0, i32 8, i32 1
  %405 = load i32, ptr %404, align 4
  %406 = shl i32 %403, %405
  %407 = xor i32 %406, -1
  %408 = and i32 %399, %407
  %409 = shl i32 %81, %405
  %410 = or i32 %408, %409
  %411 = load ptr, ptr %212, align 4
  %412 = load i32, ptr %396, align 4
  %413 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %414 = getelementptr i8, ptr %411, i32 %412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %414, i32 %410) #9, !srcloc !13
  %415 = load i32, ptr %413, align 4
  %416 = and i32 %415, 8
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %426, label %418

418:                                              ; preds = %394
  %419 = load ptr, ptr %85, align 4
  %420 = icmp eq ptr %419, %411
  br i1 %420, label %424, label %421

421:                                              ; preds = %418
  %422 = load ptr, ptr %212, align 4
  %423 = icmp eq ptr %422, %411
  br i1 %423, label %424, label %426, !prof !9

424:                                              ; preds = %421, %418
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %414) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %426

426:                                              ; preds = %424, %421, %394
  %427 = load ptr, ptr %80, align 4
  %428 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 3
  %429 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 4
  %430 = load ptr, ptr %212, align 4
  %431 = load i32, ptr %429, align 4
  %432 = getelementptr i8, ptr %430, i32 %431
  %433 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %432) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %434 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 4, i32 2
  %435 = load i32, ptr %434, align 4
  %436 = shl nsw i32 -1, %435
  %437 = xor i32 %436, -1
  %438 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 4, i32 1
  %439 = load i32, ptr %438, align 4
  %440 = shl i32 %437, %439
  %441 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 4, i32 4
  %442 = load i32, ptr %441, align 4
  %443 = shl nsw i32 -1, %442
  %444 = xor i32 %443, -1
  %445 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 4, i32 3
  %446 = load i32, ptr %445, align 4
  %447 = shl i32 %444, %446
  %448 = or i32 %447, %440
  %449 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 4, i32 6
  %450 = load i32, ptr %449, align 4
  %451 = shl nsw i32 -1, %450
  %452 = xor i32 %451, -1
  %453 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 4, i32 5
  %454 = load i32, ptr %453, align 4
  %455 = shl i32 %452, %454
  %456 = or i32 %448, %455
  %457 = xor i32 %456, -1
  %458 = and i32 %433, %457
  %459 = shl i32 %101, %439
  %460 = shl i32 %122, %446
  %461 = or i32 %460, %459
  %462 = or i32 %461, %458
  %463 = load ptr, ptr %212, align 4
  %464 = load i32, ptr %429, align 4
  %465 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %466 = getelementptr i8, ptr %463, i32 %464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %466, i32 %462) #9, !srcloc !13
  %467 = load i32, ptr %465, align 4
  %468 = and i32 %467, 8
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %478, label %470

470:                                              ; preds = %426
  %471 = load ptr, ptr %85, align 4
  %472 = icmp eq ptr %471, %463
  br i1 %472, label %476, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr %212, align 4
  %475 = icmp eq ptr %474, %463
  br i1 %475, label %476, label %478, !prof !9

476:                                              ; preds = %473, %470
  %477 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %466) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %478

478:                                              ; preds = %476, %473, %426
  %479 = load ptr, ptr %212, align 4
  %480 = load i32, ptr %428, align 4
  %481 = getelementptr i8, ptr %479, i32 %480
  %482 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %481) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !34
  %483 = load i32, ptr %427, align 4
  %484 = and i32 %483, 512
  %485 = icmp eq i32 %484, 0
  %486 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 3, i32 1
  %487 = load i32, ptr %486, align 4
  %488 = shl nuw i32 1, %487
  %489 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %427, i32 0, i32 3, i32 2
  %490 = load i32, ptr %489, align 4
  %491 = shl nuw i32 1, %490
  %492 = or i32 %491, %488
  %493 = xor i32 %492, -1
  %494 = and i32 %482, %493
  %495 = or i32 %492, %482
  %496 = select i1 %485, i32 %495, i32 %494
  %497 = load ptr, ptr %212, align 4
  %498 = load i32, ptr %428, align 4
  %499 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %500 = getelementptr i8, ptr %497, i32 %498
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %500, i32 %496) #9, !srcloc !13
  %501 = load i32, ptr %499, align 4
  %502 = and i32 %501, 8
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %512, label %504

504:                                              ; preds = %478
  %505 = load ptr, ptr %85, align 4
  %506 = icmp eq ptr %505, %497
  br i1 %506, label %510, label %507

507:                                              ; preds = %504
  %508 = load ptr, ptr %212, align 4
  %509 = icmp eq ptr %508, %497
  br i1 %509, label %510, label %512, !prof !9

510:                                              ; preds = %507, %504
  %511 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %500) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %512

512:                                              ; preds = %510, %507, %478
  %513 = load ptr, ptr %80, align 4
  %514 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %513, i32 0, i32 10
  %515 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %513, i32 0, i32 10, i32 1
  br label %516

516:                                              ; preds = %526, %512
  %517 = phi i32 [ 0, %512 ], [ %528, %526 ]
  %518 = load ptr, ptr %85, align 4
  %519 = load i32, ptr %514, align 4
  %520 = getelementptr i8, ptr %518, i32 %519
  %521 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %520) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  %522 = load i32, ptr %515, align 4
  %523 = shl nuw i32 1, %522
  %524 = and i32 %523, %521
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %532

526:                                              ; preds = %516
  %527 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %527(i32 noundef 2147480) #9
  %528 = add nuw nsw i32 %517, 1
  %529 = icmp eq i32 %528, 100
  br i1 %529, label %530, label %516

530:                                              ; preds = %526
  %531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pll_set_rate, ptr noundef %79) #12
  br label %532

532:                                              ; preds = %530, %516, %207, %204, %176, %124, %97, %54, %51, %39, %11
  %533 = phi i32 [ %47, %54 ], [ -22, %11 ], [ %125, %124 ], [ -5, %530 ], [ -22, %97 ], [ 0, %176 ], [ 0, %204 ], [ 0, %207 ], [ -22, %39 ], [ 0, %516 ], [ -22, %51 ]
  ret i32 %533
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__pll_enable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iproc_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.iproc_pll, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !36
  %14 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %17, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %13, %21
  %23 = load ptr, ptr %8, align 4
  %24 = load i32, ptr %10, align 4
  %25 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %26 = getelementptr i8, ptr %23, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #9, !srcloc !13
  %27 = load i32, ptr %25, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %7
  %31 = load ptr, ptr %0, align 4
  %32 = icmp eq ptr %31, %23
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %8, align 4
  %35 = icmp eq ptr %34, %23
  br i1 %35, label %36, label %38, !prof !9

36:                                               ; preds = %33, %30
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %38

38:                                               ; preds = %36, %33, %7, %1
  %39 = getelementptr inbounds %struct.iproc_pll, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %76, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %40, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !37
  %47 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = shl nsw i32 -1, %48
  %50 = xor i32 %49, -1
  %51 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %50, %52
  %54 = or i32 %53, %46
  %55 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = shl nuw i32 1, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = load ptr, ptr %39, align 4
  %61 = load i32, ptr %43, align 4
  %62 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %63 = getelementptr i8, ptr %60, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #9, !srcloc !13
  %64 = load i32, ptr %62, align 4
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %42
  %68 = load ptr, ptr %0, align 4
  %69 = icmp eq ptr %68, %60
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.iproc_pll, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %60
  br i1 %73, label %74, label %76, !prof !9

74:                                               ; preds = %70, %67
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %76

76:                                               ; preds = %74, %70, %42, %38
  %77 = load i32, ptr %3, align 4
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.iproc_pll, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !38
  %87 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 2, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = shl nuw i32 1, %88
  %90 = or i32 %89, %86
  %91 = load ptr, ptr %81, align 4
  %92 = load i32, ptr %83, align 4
  %93 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %94 = getelementptr i8, ptr %91, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %90) #9, !srcloc !13
  %95 = load i32, ptr %93, align 4
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %80
  %99 = load ptr, ptr %0, align 4
  %100 = icmp eq ptr %99, %91
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.iproc_pll, ptr %0, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, %91
  br i1 %104, label %105, label %107, !prof !9

105:                                              ; preds = %101, %98
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %107

107:                                              ; preds = %105, %101, %80, %76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_clk_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iproc_pll, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !39
  %12 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = load ptr, ptr %6, align 4
  %18 = load i32, ptr %8, align 4
  %19 = getelementptr inbounds %struct.iproc_pll, ptr %5, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %21 = getelementptr i8, ptr %17, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %16) #9, !srcloc !13
  %22 = load i32, ptr %20, align 4
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr %5, align 4
  %27 = icmp eq ptr %26, %17
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 4
  %30 = icmp eq ptr %29, %17
  br i1 %30, label %31, label %33, !prof !9

31:                                               ; preds = %28, %25
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %33

33:                                               ; preds = %31, %28, %1
  %34 = load ptr, ptr %6, align 4
  %35 = load i32, ptr %8, align 4
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %38 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 2, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = shl nuw i32 1, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %37, %41
  %43 = load ptr, ptr %6, align 4
  %44 = load i32, ptr %8, align 4
  %45 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %46 = getelementptr i8, ptr %43, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #9, !srcloc !13
  %47 = load i32, ptr %45, align 4
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %33
  %51 = load ptr, ptr %5, align 4
  %52 = icmp eq ptr %51, %43
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %6, align 4
  %55 = icmp eq ptr %54, %43
  br i1 %55, label %56, label %58, !prof !9

56:                                               ; preds = %53, %50
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %58

58:                                               ; preds = %56, %53, %33
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_clk_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.iproc_pll, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !41
  %17 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = or i32 %19, %16
  %21 = load ptr, ptr %11, align 4
  %22 = load i32, ptr %13, align 4
  %23 = getelementptr inbounds %struct.iproc_pll, ptr %10, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %25 = getelementptr i8, ptr %21, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #9, !srcloc !13
  %26 = load i32, ptr %24, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %8
  %30 = load ptr, ptr %10, align 4
  %31 = icmp eq ptr %30, %21
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %11, align 4
  %34 = icmp eq ptr %33, %21
  br i1 %34, label %35, label %37, !prof !9

35:                                               ; preds = %32, %29
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %37

37:                                               ; preds = %35, %32, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iproc_pll, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !42
  %15 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %8, i32 0, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %14, %16
  %18 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %8, i32 0, i32 3, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = shl nsw i32 -1, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 256, i32 %22
  %25 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %8, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 7
  %28 = and i32 %27, 1
  %29 = shl i32 %24, %28
  %30 = udiv i32 %1, %29
  br label %31

31:                                               ; preds = %4, %2
  %32 = phi i32 [ %30, %4 ], [ 0, %2 ]
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @iproc_clk_determine_rate(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #8 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = lshr i32 %3, 1
  %11 = add i32 %7, %10
  %12 = udiv i32 %11, %3
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 256)
  %14 = udiv i32 %7, %13
  store i32 %14, ptr %1, align 4
  br label %15

15:                                               ; preds = %9, %5, %2
  %16 = phi i32 [ 0, %9 ], [ -22, %2 ], [ 0, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_clk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iproc_clk, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i32 %1, 0
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9
  br i1 %10, label %57, label %11

11:                                               ; preds = %3
  %12 = lshr i32 %1, 1
  %13 = add i32 %12, %2
  %14 = udiv i32 %13, %1
  %15 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 7
  %18 = and i32 %17, 1
  %19 = lshr i32 %14, %18
  %20 = icmp ugt i32 %19, 256
  br i1 %20, label %57, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.iproc_pll, ptr %7, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %5, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !43
  %28 = icmp eq i32 %19, 256
  %29 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %5, i32 0, i32 3, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = shl nsw i32 -1, %30
  %32 = xor i32 %31, -1
  %33 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %5, i32 0, i32 3, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %32, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %27, %36
  %38 = shl i32 %19, %34
  %39 = select i1 %28, i32 0, i32 %38
  %40 = or i32 %37, %39
  %41 = load ptr, ptr %22, align 4
  %42 = load i32, ptr %24, align 4
  %43 = getelementptr inbounds %struct.iproc_pll, ptr %7, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %45 = getelementptr i8, ptr %41, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %40) #9, !srcloc !13
  %46 = load i32, ptr %44, align 4
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %21
  %50 = load ptr, ptr %7, align 4
  %51 = icmp eq ptr %50, %41
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %22, align 4
  %54 = icmp eq ptr %53, %41
  br i1 %54, label %55, label %57, !prof !9

55:                                               ; preds = %52, %49
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %57

57:                                               ; preds = %55, %52, %21, %11, %3
  %58 = phi i32 [ -22, %3 ], [ -22, %11 ], [ 0, %21 ], [ 0, %52 ], [ 0, %55 ]
  ret i32 %58
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!10 = !{i64 2862969}
!11 = !{i64 2151518411}
!12 = !{i64 2151484158}
!13 = !{i64 2862551}
!14 = !{i64 2151484822}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2151485289}
!17 = !{i64 2151485762}
!18 = !{i64 2151486182}
!19 = !{i64 2151499950}
!20 = !{i64 2151500356}
!21 = !{i64 2151500889}
!22 = !{i64 2151501326}
!23 = !{i64 2151490216}
!24 = !{i64 2151490622}
!25 = !{i64 2151491058}
!26 = !{i64 2151493106}
!27 = !{i64 2151488006}
!28 = !{i64 2151493643}
!29 = !{i64 2151494101}
!30 = !{i64 2151494516}
!31 = !{i64 2151495049}
!32 = !{i64 2151495486}
!33 = !{i64 2151488857}
!34 = !{i64 2151489365}
!35 = !{i64 2151483433}
!36 = !{i64 2151486696}
!37 = !{i64 2151487116}
!38 = !{i64 2151487624}
!39 = !{i64 2151511825}
!40 = !{i64 2151512225}
!41 = !{i64 2151513862}
!42 = !{i64 2151515411}
!43 = !{i64 2151517850}
