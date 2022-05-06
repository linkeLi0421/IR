; ModuleID = '/llk/IR/drivers/clk/renesas/clk-r8a7740.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-r8a7740.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.div4_clk = type { ptr, i32, i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.r8a7740_cpg = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@__of_table_r8a7740_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7740-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7740_cpg_clocks_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [13 x i8] c"renesas,mode\00", align 1
@cpg_mode = internal global i32 0, section ".init.data", align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\014%s: missing renesas,mode property\0A\00", align 1
@__func__.r8a7740_cpg_clocks_init = private unnamed_addr constant [24 x i8] c"r8a7740_cpg_clocks_init\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\013%s: failed to count clocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"drivers/clk/renesas/clk-r8a7740.c\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pllc0\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"pllc1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pllc2\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"usb24s\00", align 1
@div4_clks = internal unnamed_addr constant [12 x %struct.div4_clk] [%struct.div4_clk { ptr @.str.12, i32 0, i32 20, i32 1 }, %struct.div4_clk { ptr @.str.13, i32 0, i32 16, i32 1 }, %struct.div4_clk { ptr @.str.14, i32 0, i32 8, i32 1 }, %struct.div4_clk { ptr @.str.15, i32 0, i32 4, i32 1 }, %struct.div4_clk { ptr @.str.16, i32 4, i32 4, i32 0 }, %struct.div4_clk { ptr @.str.17, i32 224, i32 20, i32 0 }, %struct.div4_clk { ptr @.str.18, i32 224, i32 16, i32 0 }, %struct.div4_clk { ptr @.str.19, i32 224, i32 12, i32 0 }, %struct.div4_clk { ptr @.str.20, i32 224, i32 8, i32 0 }, %struct.div4_clk { ptr @.str.21, i32 224, i32 4, i32 0 }, %struct.div4_clk { ptr @.str.22, i32 224, i32 0, i32 0 }, %struct.div4_clk zeroinitializer], align 4
@div4_div_table = internal constant [15 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 9, i32 32 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table { i32 13, i32 72 }, %struct.clk_div_table { i32 14, i32 96 }, %struct.clk_div_table zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"zg\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"m1\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"hpp\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"usbp\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"zb\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"m3\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_r8a7740_cpg_clks], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @r8a7740_cpg_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @cpg_mode, i32 noundef 1, i32 noundef 0) #8
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.r8a7740_cpg_clocks_init) #9
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.r8a7740_cpg_clocks_init) #9
  br label %50

12:                                               ; preds = %7
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 16) #10
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #8
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %50, label %17, !prof !8

17:                                               ; preds = %12
  %18 = extractvalue { i32, i1 } %15, 0
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #11
  %20 = icmp eq ptr %14, null
  %21 = icmp eq ptr %19, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %50, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.r8a7740_cpg, ptr %14, i32 0, i32 1
  store i32 0, ptr %24, align 8
  store ptr %19, ptr %14, align 8
  %25 = getelementptr inbounds %struct.clk_onecell_data, ptr %14, i32 0, i32 1
  store i32 %8, ptr %25, align 4
  %26 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %27 = getelementptr inbounds %struct.r8a7740_cpg, ptr %14, i32 0, i32 2
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %31, label %29, !prof !8

29:                                               ; preds = %23
  %30 = icmp eq i32 %8, 0
  br i1 %30, label %48, label %32

31:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 176, i32 noundef 9, ptr noundef null) #8
  br label %50

32:                                               ; preds = %45, %29
  %33 = phi i32 [ %46, %45 ], [ 0, %29 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !9
  %34 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %33) #8
  %35 = load ptr, ptr %2, align 4
  %36 = call fastcc ptr @r8a7740_cpg_register_clock(ptr noundef %0, ptr noundef %14, ptr noundef %35) #12
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load ptr, ptr %2, align 4
  %40 = ptrtoint ptr %36 to i32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.r8a7740_cpg_clocks_init, ptr noundef %0, ptr noundef %39, i32 noundef %40) #9
  br label %45

42:                                               ; preds = %32
  %43 = load ptr, ptr %14, align 8
  %44 = getelementptr ptr, ptr %43, i32 %33
  store ptr %36, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %46 = add nuw i32 %33, 1
  %47 = icmp eq i32 %46, %8
  br i1 %47, label %48, label %32

48:                                               ; preds = %45, %29
  %49 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %14) #8
  br label %50

50:                                               ; preds = %48, %31, %17, %12, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @r8a7740_cpg_register_clock(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(2) @.str.6)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load i32, ptr @cpg_mode, align 4
  %8 = and i32 %7, 6
  switch i32 %8, label %13 [
    i32 6, label %9
    i32 4, label %11
  ]

9:                                                ; preds = %6
  %10 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  br label %82

11:                                               ; preds = %6
  %12 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  br label %82

13:                                               ; preds = %6
  %14 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 2) #8
  br label %82

15:                                               ; preds = %3
  %16 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(7) @.str.7)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %20 = load i32, ptr @cpg_mode, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 1, i32 2
  br label %82

24:                                               ; preds = %15
  %25 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.8)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.r8a7740_cpg, ptr %1, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 224
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %32 = lshr i32 %31, 24
  %33 = and i32 %32, 127
  %34 = add nuw nsw i32 %33, 1
  br label %82

35:                                               ; preds = %24
  %36 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.9)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.r8a7740_cpg, ptr %1, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %42 = lshr i32 %41, 24
  %43 = and i32 %42, 127
  %44 = add nuw nsw i32 %43, 1
  br label %82

45:                                               ; preds = %35
  %46 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.10)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.r8a7740_cpg, ptr %1, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 44
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %53 = lshr i32 %52, 24
  %54 = and i32 %53, 63
  %55 = add nuw nsw i32 %54, 1
  br label %82

56:                                               ; preds = %45
  %57 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(7) @.str.11)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.r8a7740_cpg, ptr %1, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 140
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %64 = and i32 %63, 128
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 1) #8
  br label %68

68:                                               ; preds = %66, %59
  %69 = phi ptr [ %67, %66 ], [ @.str.7, %59 ]
  %70 = and i32 %63, 64
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 2, i32 1
  br label %82

73:                                               ; preds = %78, %56
  %74 = phi ptr [ %80, %78 ], [ @.str.12, %56 ]
  %75 = phi ptr [ %79, %78 ], [ @div4_clks, %56 ]
  %76 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull %74)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %73
  %79 = getelementptr %struct.div4_clk, ptr %75, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %98, label %73

82:                                               ; preds = %68, %48, %38, %27, %18, %13, %11, %9
  %83 = phi i32 [ %23, %18 ], [ 2048, %9 ], [ 1024, %11 ], [ 1, %13 ], [ 1, %27 ], [ 2, %38 ], [ 1, %48 ], [ %72, %68 ]
  %84 = phi i32 [ 1, %18 ], [ 1, %9 ], [ 1, %11 ], [ 1, %13 ], [ %34, %27 ], [ %44, %38 ], [ %55, %48 ], [ 1, %68 ]
  %85 = phi ptr [ %19, %18 ], [ %10, %9 ], [ %12, %11 ], [ %14, %13 ], [ @.str.7, %27 ], [ @.str.7, %38 ], [ @.str.7, %48 ], [ %69, %68 ]
  %86 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %2, ptr noundef %85, i32 noundef 0, i32 noundef %84, i32 noundef %83) #8
  br label %98

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.div4_clk, ptr %75, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.div4_clk, ptr %75, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.r8a7740_cpg, ptr %1, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 %89
  %95 = trunc i32 %91 to i8
  %96 = getelementptr inbounds %struct.r8a7740_cpg, ptr %1, i32 0, i32 1
  %97 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef %94, i8 noundef zeroext %95, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @div4_div_table, ptr noundef %96) #8
  br label %98

98:                                               ; preds = %87, %82, %78
  %99 = phi ptr [ %97, %87 ], [ %86, %82 ], [ inttoptr (i32 -22 to ptr), %78 ]
  ret ptr %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold }

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
!9 = !{!"auto-init"}
!10 = !{i64 2846571}
!11 = !{i64 2150571079}
!12 = !{i64 2150571412}
!13 = !{i64 2150571745}
!14 = !{i64 2150572078}
