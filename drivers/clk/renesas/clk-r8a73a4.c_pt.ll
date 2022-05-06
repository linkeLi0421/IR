; ModuleID = '/llk/IR/drivers/clk/renesas/clk-r8a73a4.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-r8a73a4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.div4_clk = type { ptr, i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.r8a73a4_cpg = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@__of_table_r8a73a4_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a73a4-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a73a4_cpg_clocks_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013%s: failed to count clocks\0A\00", align 1
@__func__.r8a73a4_cpg_clocks_init = private unnamed_addr constant [24 x i8] c"r8a73a4_cpg_clocks_init\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"drivers/clk/renesas/clk-r8a73a4.c\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pll0\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"extal2\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\014%s: unexpected parent of %s\0A\00", align 1
@__func__.r8a73a4_cpg_register_clock = private unnamed_addr constant [27 x i8] c"r8a73a4_cpg_register_clock\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"z2\00", align 1
@div4_clks = internal unnamed_addr constant [9 x %struct.div4_clk] [%struct.div4_clk { ptr @.str.12, i32 0, i32 20 }, %struct.div4_clk { ptr @.str.13, i32 0, i32 12 }, %struct.div4_clk { ptr @.str.14, i32 0, i32 8 }, %struct.div4_clk { ptr @.str.15, i32 0, i32 4 }, %struct.div4_clk { ptr @.str.16, i32 0, i32 0 }, %struct.div4_clk { ptr @.str.17, i32 4, i32 12 }, %struct.div4_clk { ptr @.str.18, i32 4, i32 8 }, %struct.div4_clk { ptr @.str.19, i32 4, i32 4 }, %struct.div4_clk zeroinitializer], align 4
@div4_div_table = internal constant [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table { i32 12, i32 10 }, %struct.clk_div_table zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"m3\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"m1\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"zx\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"zs\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_r8a73a4_cpg_clks], section "llvm.metadata"
@switch.table.r8a73a4_cpg_register_clock = private unnamed_addr constant [6 x i32] [i32 2, i32 2, i32 2, i32 4, i32 1, i32 1], align 4
@switch.table.r8a73a4_cpg_register_clock.20 = private unnamed_addr constant [6 x ptr] [ptr @.str.4, ptr @.str.8, ptr @.str.4, ptr @.str.8, ptr @.str.4, ptr @.str.8], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @r8a73a4_cpg_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = tail call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.r8a73a4_cpg_clocks_init) #9
  br label %45

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #10
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #8
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %45, label %12, !prof !8

12:                                               ; preds = %7
  %13 = extractvalue { i32, i1 } %10, 0
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #11
  %15 = icmp eq ptr %9, null
  %16 = icmp eq ptr %14, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %45, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %9, i32 0, i32 1
  store i32 0, ptr %19, align 8
  store ptr %14, ptr %9, align 8
  %20 = getelementptr inbounds %struct.clk_onecell_data, ptr %9, i32 0, i32 1
  store i32 %3, ptr %20, align 4
  %21 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %22 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %9, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %26, label %24, !prof !8

24:                                               ; preds = %18
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %43, label %27

26:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 217, i32 noundef 9, ptr noundef null) #8
  br label %45

27:                                               ; preds = %40, %24
  %28 = phi i32 [ %41, %40 ], [ 0, %24 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !9
  %29 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %28) #8
  %30 = load ptr, ptr %2, align 4
  %31 = call fastcc ptr @r8a73a4_cpg_register_clock(ptr noundef %0, ptr noundef %9, ptr noundef %30) #12
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load ptr, ptr %2, align 4
  %35 = ptrtoint ptr %31 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.r8a73a4_cpg_clocks_init, ptr noundef %0, ptr noundef %34, i32 noundef %35) #9
  br label %40

37:                                               ; preds = %27
  %38 = load ptr, ptr %9, align 8
  %39 = getelementptr ptr, ptr %38, i32 %28
  store ptr %31, ptr %39, align 4
  br label %40

40:                                               ; preds = %37, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %41 = add nuw i32 %28, 1
  %42 = icmp eq i32 %41, %3
  br i1 %42, label %43, label %27

43:                                               ; preds = %40, %24
  %44 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %9) #8
  br label %45

45:                                               ; preds = %43, %26, %12, %7, %5
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
define internal fastcc ptr @r8a73a4_cpg_register_clock(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 192
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %11 = lshr i32 %10, 28
  %12 = and i32 %11, 3
  switch i32 %12, label %21 [
    i32 0, label %13
    i32 1, label %15
    i32 2, label %17
    i32 3, label %19
  ]

13:                                               ; preds = %6
  %14 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  br label %110

15:                                               ; preds = %6
  %16 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  br label %110

17:                                               ; preds = %6
  %18 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 1) #8
  br label %110

19:                                               ; preds = %6
  %20 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 1) #8
  br label %110

21:                                               ; preds = %6
  unreachable

22:                                               ; preds = %3
  %23 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.5)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 216
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %30 = lshr i32 %29, 24
  %31 = and i32 %30, 127
  %32 = add nuw nsw i32 %31, 1
  %33 = and i32 %29, 1048576
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 1, i32 2
  br label %110

36:                                               ; preds = %22
  %37 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.6)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %1, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %44 = lshr i32 %43, 24
  %45 = and i32 %44, 127
  %46 = add nuw nsw i32 %45, 1
  %47 = and i32 %43, 128
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 1, i32 2
  br label %110

50:                                               ; preds = %36
  %51 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.7, i32 noundef 4)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = getelementptr i8, ptr %2, i32 4
  %55 = load i8, ptr %54, align 1
  switch i8 %55, label %126 [
    i8 0, label %58
    i8 115, label %56
    i8 104, label %57
  ]

56:                                               ; preds = %53
  br label %58

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %56, %53
  %59 = phi i32 [ 228, %57 ], [ 244, %56 ], [ 44, %53 ]
  %60 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %1, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 %59
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %64 = lshr i32 %63, 5
  %65 = and i32 %64, 7
  %66 = icmp ult i32 %65, 6
  br i1 %66, label %69, label %67

67:                                               ; preds = %69, %58
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.r8a73a4_cpg_register_clock, ptr noundef %2) #9
  br label %126

69:                                               ; preds = %58
  %70 = trunc i32 %65 to i8
  %71 = lshr i8 59, %70
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %67, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds [6 x i32], ptr @switch.table.r8a73a4_cpg_register_clock, i32 0, i32 %65
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds [6 x ptr], ptr @switch.table.r8a73a4_cpg_register_clock.20, i32 0, i32 %65
  %78 = load ptr, ptr %77, align 4
  %79 = lshr i32 %63, 24
  %80 = and i32 %79, 127
  %81 = add nuw nsw i32 %80, 1
  br label %110

82:                                               ; preds = %50
  %83 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(2) @.str.10)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(3) @.str.11)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85, %82
  %89 = getelementptr i8, ptr %2, i32 1
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, 50
  %92 = select i1 %91, i32 64, i32 32
  %93 = select i1 %91, i32 0, i32 8
  %94 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %1, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 224
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %98 = lshr i32 %97, %93
  %99 = and i32 %98, 31
  %100 = sub nuw nsw i32 32, %99
  br label %110

101:                                              ; preds = %106, %85
  %102 = phi ptr [ %108, %106 ], [ @.str.12, %85 ]
  %103 = phi ptr [ %107, %106 ], [ @div4_clks, %85 ]
  %104 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull %102)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %101
  %107 = getelementptr %struct.div4_clk, ptr %103, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %126, label %101

110:                                              ; preds = %88, %74, %39, %25, %19, %17, %15, %13
  %111 = phi i32 [ 1, %13 ], [ 2, %15 ], [ 1, %17 ], [ 2, %19 ], [ %35, %25 ], [ %49, %39 ], [ %76, %74 ], [ %92, %88 ]
  %112 = phi i32 [ 1, %13 ], [ 1, %15 ], [ 1, %17 ], [ 1, %19 ], [ %32, %25 ], [ %46, %39 ], [ %81, %74 ], [ %100, %88 ]
  %113 = phi ptr [ %14, %13 ], [ %16, %15 ], [ %18, %17 ], [ %20, %19 ], [ @.str.4, %25 ], [ @.str.4, %39 ], [ %78, %74 ], [ @.str.5, %88 ]
  %114 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %2, ptr noundef %113, i32 noundef 0, i32 noundef %112, i32 noundef %111) #8
  br label %126

115:                                              ; preds = %101
  %116 = getelementptr inbounds %struct.div4_clk, ptr %103, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.div4_clk, ptr %103, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %1, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i8, ptr %121, i32 %117
  %123 = trunc i32 %119 to i8
  %124 = getelementptr inbounds %struct.r8a73a4_cpg, ptr %1, i32 0, i32 1
  %125 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %122, i8 noundef zeroext %123, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @div4_div_table, ptr noundef %124) #8
  br label %126

126:                                              ; preds = %115, %110, %106, %67, %53
  %127 = phi ptr [ %125, %115 ], [ %114, %110 ], [ inttoptr (i32 -22 to ptr), %67 ], [ inttoptr (i32 -22 to ptr), %53 ], [ inttoptr (i32 -22 to ptr), %106 ]
  ret ptr %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

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
!10 = !{i64 2846917}
!11 = !{i64 2150570557}
!12 = !{i64 2150570890}
!13 = !{i64 2150571299}
!14 = !{i64 2150571714}
!15 = !{i64 2150572541}
