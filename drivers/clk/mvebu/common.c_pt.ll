; ModuleID = '/llk/IR/drivers/clk/mvebu/common.c_pt.bc'
source_filename = "../drivers/clk/mvebu/common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.coreclk_soc_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.coreclk_ratio = type { i32, ptr }
%struct.clk_gating_ctrl = type { ptr, ptr, i32, ptr, i32 }
%struct.clk_gating_soc_desc = type { ptr, ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"sscg\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\013cannot get SSCG register node\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\013cannot map SSCG register\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tclk\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cpuclk\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"drivers/clk/mvebu/common.c\00", align 1
@clk_data = internal global %struct.clk_onecell_data zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@ctrl_gating_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@ctrl = internal unnamed_addr global ptr null, align 4
@.str.8 = private unnamed_addr constant [76 x i8] c"\013mvebu-clk-gating: cannot instantiate more than one gateable clock device\0A\00", align 1
@clk_gate_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mvebu_clk_gating_suspend, ptr @mvebu_clk_gating_resume, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kirkwood_fix_sscg_deviation(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %44

6:                                                ; preds = %1
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %42

11:                                               ; preds = %6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %13 = and i32 %12, 255
  %14 = lshr i32 %12, 8
  %15 = and i32 %14, 255
  %16 = icmp ugt i32 %13, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = zext i32 %13 to i64
  %19 = zext i32 %15 to i64
  %20 = sub nsw i64 %18, %19
  %21 = zext i32 %0 to i64
  %22 = mul nsw i64 %20, %21
  %23 = mul nuw nsw i32 %13, 192
  %24 = icmp ult i64 %22, 4294967296
  br i1 %24, label %25, label %28, !prof !10

25:                                               ; preds = %17
  %26 = trunc i64 %22 to i32
  %27 = udiv i32 %26, %23
  br label %32

28:                                               ; preds = %17
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %22) #10, !srcloc !11
  %30 = extractvalue { i64, i64 } %29, 1
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ %27, %25 ], [ %31, %28 ]
  %34 = lshr i32 %12, 16
  %35 = and i32 %34, 3
  switch i32 %35, label %40 [
    i32 0, label %36
    i32 1, label %38
  ]

36:                                               ; preds = %32
  %37 = sub i32 %0, %33
  br label %40

38:                                               ; preds = %32
  %39 = add i32 %33, %0
  br label %40

40:                                               ; preds = %38, %36, %32
  %41 = phi i32 [ %0, %32 ], [ %39, %38 ], [ %37, %36 ]
  tail call void @iounmap(ptr noundef nonnull %7) #8
  br label %42

42:                                               ; preds = %40, %11, %9
  %43 = phi i32 [ %0, %9 ], [ %0, %11 ], [ %41, %40 ]
  tail call void @of_node_put(ptr noundef nonnull %2) #8
  br label %44

44:                                               ; preds = %42, %4
  %45 = phi i32 [ %0, %4 ], [ %43, %42 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mvebu_coreclk_setup(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 section ".init.text" {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr @.str.3, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr @.str.4, ptr %4, align 4
  %9 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 117, i32 noundef 9, ptr noundef null) #8
  br label %128

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.coreclk_soc_desc, ptr %1, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 2
  store i32 %15, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %16 = getelementptr inbounds %struct.coreclk_soc_desc, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = add i32 %14, 3
  store i32 %20, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %20, %19 ], [ %15, %12 ]
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #8
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %25, label %26, !prof !12

25:                                               ; preds = %21
  store ptr null, ptr @clk_data, align 4
  br label %30

26:                                               ; preds = %21
  %27 = extractvalue { i32, i1 } %23, 0
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #11
  store ptr %28, ptr @clk_data, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !12

30:                                               ; preds = %26, %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 129, i32 noundef 9, ptr noundef null) #8
  tail call void @iounmap(ptr noundef nonnull %9) #8
  br label %128

31:                                               ; preds = %26
  %32 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %33 = load ptr, ptr %1, align 4
  %34 = call i32 %33(ptr noundef nonnull %9) #8
  %35 = load ptr, ptr %3, align 4
  %36 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %35, ptr noundef null, i32 noundef 0, i32 noundef %34) #8
  %37 = load ptr, ptr @clk_data, align 4
  store ptr %36, ptr %37, align 4
  %38 = load ptr, ptr @clk_data, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %42, !prof !12

41:                                               ; preds = %31
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 140, i32 noundef 9, ptr noundef null) #8
  br label %42

42:                                               ; preds = %41, %31
  %43 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1) #8
  %44 = getelementptr inbounds %struct.coreclk_soc_desc, ptr %1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 %45(ptr noundef nonnull %9) #8
  %47 = getelementptr inbounds %struct.coreclk_soc_desc, ptr %1, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.coreclk_soc_desc, ptr %1, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = call zeroext i1 %48(ptr noundef nonnull %9) #8
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load ptr, ptr %51, align 4
  %58 = call i32 %57(i32 noundef %46) #8
  br label %59

59:                                               ; preds = %56, %54, %50, %42
  %60 = phi i32 [ %58, %56 ], [ %46, %54 ], [ %46, %50 ], [ %46, %42 ]
  %61 = load ptr, ptr %4, align 4
  %62 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %61, ptr noundef null, i32 noundef 0, i32 noundef %60) #8
  %63 = load ptr, ptr @clk_data, align 4
  %64 = getelementptr ptr, ptr %63, i32 1
  store ptr %62, ptr %64, align 4
  %65 = load ptr, ptr @clk_data, align 4
  %66 = getelementptr ptr, ptr %65, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %70, !prof !12

69:                                               ; preds = %59
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 153, i32 noundef 9, ptr noundef null) #8
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i32, ptr %13, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.coreclk_soc_desc, ptr %1, i32 0, i32 6
  %75 = getelementptr inbounds %struct.coreclk_soc_desc, ptr %1, i32 0, i32 2
  br label %76

76:                                               ; preds = %99, %73
  %77 = phi i32 [ 0, %73 ], [ %100, %99 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !13
  %78 = load ptr, ptr %74, align 4
  %79 = getelementptr %struct.coreclk_ratio, ptr %78, i32 %77, i32 1
  %80 = load ptr, ptr %79, align 4
  store ptr %80, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !13
  %81 = add nuw i32 %77, 2
  %82 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %81) #8
  %83 = load ptr, ptr %75, align 4
  %84 = load ptr, ptr %74, align 4
  %85 = getelementptr %struct.coreclk_ratio, ptr %84, i32 %77
  %86 = load i32, ptr %85, align 4
  call void %83(ptr noundef nonnull %9, i32 noundef %86, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %87 = load ptr, ptr %5, align 4
  %88 = load ptr, ptr %4, align 4
  %89 = load i32, ptr %6, align 4
  %90 = load i32, ptr %7, align 4
  %91 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %87, ptr noundef %88, i32 noundef 0, i32 noundef %89, i32 noundef %90) #8
  %92 = load ptr, ptr @clk_data, align 4
  %93 = getelementptr ptr, ptr %92, i32 %81
  store ptr %91, ptr %93, align 4
  %94 = load ptr, ptr @clk_data, align 4
  %95 = getelementptr ptr, ptr %94, i32 %81
  %96 = load ptr, ptr %95, align 4
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %98, label %99, !prof !12

98:                                               ; preds = %76
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 165, i32 noundef 9, ptr noundef null) #8
  br label %99

99:                                               ; preds = %98, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %100 = add nuw nsw i32 %77, 1
  %101 = load i32, ptr %13, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %76, label %103

103:                                              ; preds = %99, %70
  %104 = phi i32 [ %71, %70 ], [ %101, %99 ]
  %105 = load ptr, ptr %16, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %126, label %107

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store ptr @.str.7, ptr %8, align 4
  %108 = add i32 %104, 2
  %109 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %8, i32 noundef 1, i32 noundef %108) #8
  %110 = load ptr, ptr %16, align 4
  %111 = call i32 %110(ptr noundef nonnull %9) #8
  %112 = load ptr, ptr %8, align 4
  %113 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %112, ptr noundef null, i32 noundef 0, i32 noundef %111) #8
  %114 = load ptr, ptr @clk_data, align 4
  %115 = load i32, ptr %13, align 4
  %116 = add i32 %115, 2
  %117 = getelementptr ptr, ptr %114, i32 %116
  store ptr %113, ptr %117, align 4
  %118 = load ptr, ptr @clk_data, align 4
  %119 = load i32, ptr %13, align 4
  %120 = add i32 %119, 2
  %121 = getelementptr ptr, ptr %118, i32 %120
  %122 = load ptr, ptr %121, align 4
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %124, label %125, !prof !12

124:                                              ; preds = %107
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 176, i32 noundef 9, ptr noundef null) #8
  br label %125

125:                                              ; preds = %124, %107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %126

126:                                              ; preds = %125, %103
  call void @iounmap(ptr noundef nonnull %9) #8
  %127 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #8
  br label %128

128:                                              ; preds = %126, %30, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mvebu_clk_gating_setup(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 section ".init.text" {
  %3 = load ptr, ptr @ctrl, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %84

7:                                                ; preds = %2
  %8 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !12

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 248, i32 noundef 9, ptr noundef null) #8
  br label %84

11:                                               ; preds = %7
  %12 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @__clk_get_name(ptr noundef %12) #8
  tail call void @clk_put(ptr noundef %12) #8
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ null, %11 ], [ %15, %14 ]
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 20) #12
  store ptr %19, ptr @ctrl, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 258, i32 noundef 9, ptr noundef null) #8
  br label %83

22:                                               ; preds = %16
  store ptr @ctrl_gating_lock, ptr %19, align 8
  %23 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %19, i32 0, i32 3
  store ptr %8, ptr %23, align 4
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ 0, %22 ], [ %29, %24 ]
  %26 = getelementptr %struct.clk_gating_soc_desc, ptr %1, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = add i32 %25, 1
  br i1 %28, label %30, label %24

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %19, i32 0, i32 2
  store i32 %25, ptr %31, align 8
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #8
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %34, label %36, !prof !12

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %19, i32 0, i32 1
  store ptr null, ptr %35, align 4
  br label %46

36:                                               ; preds = %30
  %37 = extractvalue { i32, i1 } %32, 0
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #11
  %39 = load ptr, ptr @ctrl, align 4
  %40 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  %41 = icmp eq ptr %38, null
  br i1 %41, label %46, label %42, !prof !12

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %39, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %48, label %80

46:                                               ; preds = %36, %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 273, i32 noundef 9, ptr noundef null) #8
  %47 = load ptr, ptr @ctrl, align 4
  tail call void @kfree(ptr noundef %47) #8
  br label %83

48:                                               ; preds = %74, %42
  %49 = phi ptr [ %75, %74 ], [ %39, %42 ]
  %50 = phi i32 [ %76, %74 ], [ 0, %42 ]
  %51 = getelementptr %struct.clk_gating_soc_desc, ptr %1, i32 %50
  %52 = getelementptr %struct.clk_gating_soc_desc, ptr %1, i32 %50, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr %17, ptr %53
  %56 = load ptr, ptr %51, align 4
  %57 = getelementptr %struct.clk_gating_soc_desc, ptr %1, i32 %50, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.clk_gating_soc_desc, ptr %1, i32 %50, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = trunc i32 %60 to i8
  %62 = load ptr, ptr %49, align 4
  %63 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %56, ptr noundef %55, i32 noundef %58, ptr noundef nonnull %8, i8 noundef zeroext %61, i8 noundef zeroext 0, ptr noundef %62) #8
  %64 = load ptr, ptr @ctrl, align 4
  %65 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr ptr, ptr %66, i32 %50
  store ptr %63, ptr %67, align 4
  %68 = load ptr, ptr %65, align 4
  %69 = getelementptr ptr, ptr %68, i32 %50
  %70 = load ptr, ptr %69, align 4
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %74, !prof !12

72:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 282, i32 noundef 9, ptr noundef null) #8
  %73 = load ptr, ptr @ctrl, align 4
  br label %74

74:                                               ; preds = %72, %48
  %75 = phi ptr [ %73, %72 ], [ %64, %48 ]
  %76 = add nuw nsw i32 %50, 1
  %77 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %75, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %48, label %80

80:                                               ; preds = %74, %42
  %81 = phi ptr [ %39, %42 ], [ %75, %74 ]
  %82 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @clk_gating_get_src, ptr noundef %81) #8
  tail call void @register_syscore_ops(ptr noundef nonnull @clk_gate_syscore_ops) #8
  br label %84

83:                                               ; preds = %46, %21
  tail call void @iounmap(ptr noundef nonnull %8) #8
  br label %84

84:                                               ; preds = %83, %80, %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @clk_gating_get_src(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @ctrl, align 4
  %8 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %32, %11
  %14 = phi ptr [ %7, %11 ], [ %34, %32 ]
  %15 = phi i32 [ 0, %11 ], [ %33, %32 ]
  %16 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %15
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @__clk_get_hw(ptr noundef %19) #8
  %21 = load i32, ptr %12, align 4
  %22 = getelementptr inbounds %struct.clk_gate, ptr %20, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = load ptr, ptr @ctrl, align 4
  %28 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr ptr, ptr %29, i32 %15
  %31 = load ptr, ptr %30, align 4
  br label %38

32:                                               ; preds = %13
  %33 = add nuw nsw i32 %15, 1
  %34 = load ptr, ptr @ctrl, align 4
  %35 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %13, label %38

38:                                               ; preds = %32, %26, %6, %2
  %39 = phi ptr [ inttoptr (i32 -22 to ptr), %2 ], [ %31, %26 ], [ inttoptr (i32 -19 to ptr), %6 ], [ inttoptr (i32 -19 to ptr), %32 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_clk_gating_suspend() #0 {
  %1 = load ptr, ptr @ctrl, align 4
  %2 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %1, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %5 = load ptr, ptr @ctrl, align 4
  %6 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %5, i32 0, i32 4
  store i32 %4, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_clk_gating_resume() #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %1 = load ptr, ptr @ctrl, align 4
  %2 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %1, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 3024905}
!9 = !{i64 2150605663}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148330726, i64 2148331006, i64 2148331340, i64 2148331674}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"auto-init"}
!14 = !{i64 2150616696}
!15 = !{i64 2150616886}
!16 = !{i64 3024487}
