; ModuleID = '/llk/IR/drivers/clk/renesas/clk-sh73a0.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-sh73a0.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.div4_clk = type { ptr, ptr, i32, i32 }
%struct.sh73a0_cpg = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@__of_table_sh73a0_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh73a0-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sh73a0_cpg_clocks_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013%s: failed to count clocks\0A\00", align 1
@__func__.sh73a0_cpg_clocks_init = private unnamed_addr constant [23 x i8] c"sh73a0_cpg_clocks_init\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"drivers/clk/renesas/clk-sh73a0.c\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dsi0phy\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dsi1phy\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"dsi1pck\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"dsi0pck\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"pll0\00", align 1
@z_div_table = internal constant [26 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 1 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 1 }, %struct.clk_div_table { i32 4, i32 1 }, %struct.clk_div_table { i32 5, i32 1 }, %struct.clk_div_table { i32 6, i32 1 }, %struct.clk_div_table { i32 7, i32 1 }, %struct.clk_div_table { i32 8, i32 1 }, %struct.clk_div_table { i32 9, i32 1 }, %struct.clk_div_table { i32 10, i32 1 }, %struct.clk_div_table { i32 11, i32 1 }, %struct.clk_div_table { i32 12, i32 1 }, %struct.clk_div_table { i32 13, i32 1 }, %struct.clk_div_table { i32 14, i32 1 }, %struct.clk_div_table { i32 15, i32 1 }, %struct.clk_div_table { i32 16, i32 2 }, %struct.clk_div_table { i32 17, i32 3 }, %struct.clk_div_table { i32 18, i32 4 }, %struct.clk_div_table { i32 19, i32 6 }, %struct.clk_div_table { i32 20, i32 8 }, %struct.clk_div_table { i32 21, i32 12 }, %struct.clk_div_table { i32 22, i32 16 }, %struct.clk_div_table { i32 24, i32 24 }, %struct.clk_div_table { i32 27, i32 48 }, %struct.clk_div_table zeroinitializer], align 4
@div4_clks = internal unnamed_addr constant [8 x %struct.div4_clk] [%struct.div4_clk { ptr @.str.12, ptr @.str.11, i32 0, i32 16 }, %struct.div4_clk { ptr @.str.13, ptr @.str.14, i32 0, i32 12 }, %struct.div4_clk { ptr @.str.15, ptr @.str.14, i32 0, i32 8 }, %struct.div4_clk { ptr @.str.16, ptr @.str.14, i32 0, i32 4 }, %struct.div4_clk { ptr @.str.17, ptr @.str.14, i32 0, i32 0 }, %struct.div4_clk { ptr @.str.18, ptr @.str.14, i32 4, i32 12 }, %struct.div4_clk { ptr @.str.19, ptr @.str.14, i32 4, i32 4 }, %struct.div4_clk zeroinitializer], align 4
@div4_div_table = internal constant [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table { i32 12, i32 7 }, %struct.clk_div_table zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"zg\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"m3\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"m1\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"zx\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_sh73a0_cpg_clks], section "llvm.metadata"
@switch.table.sh73a0_cpg_register_clock = private unnamed_addr constant [4 x i32] [i32 216, i32 40, i32 44, i32 220], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sh73a0_cpg_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = tail call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sh73a0_cpg_clocks_init) #9
  br label %48

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #10
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #8
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %48, label %12, !prof !8

12:                                               ; preds = %7
  %13 = extractvalue { i32, i1 } %10, 0
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #11
  %15 = icmp eq ptr %9, null
  %16 = icmp eq ptr %14, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %48, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sh73a0_cpg, ptr %9, i32 0, i32 1
  store i32 0, ptr %19, align 8
  store ptr %14, ptr %9, align 8
  %20 = getelementptr inbounds %struct.clk_onecell_data, ptr %9, i32 0, i32 1
  store i32 %3, ptr %20, align 4
  %21 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %22 = getelementptr inbounds %struct.sh73a0_cpg, ptr %9, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #8
  br label %48

25:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %26 = getelementptr i8, ptr %21, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 264) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %27 = getelementptr i8, ptr %21, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 264) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %28 = getelementptr i8, ptr %21, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 264) #8, !srcloc !10
  %29 = icmp eq i32 %3, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %43, %25
  %31 = phi i32 [ %44, %43 ], [ 0, %25 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !13
  %32 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %31) #8
  %33 = load ptr, ptr %2, align 4
  %34 = call fastcc ptr @sh73a0_cpg_register_clock(ptr noundef %0, ptr noundef %9, ptr noundef %33) #12
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load ptr, ptr %2, align 4
  %38 = ptrtoint ptr %34 to i32
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.sh73a0_cpg_clocks_init, ptr noundef %0, ptr noundef %37, i32 noundef %38) #9
  br label %43

40:                                               ; preds = %30
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr ptr, ptr %41, i32 %31
  store ptr %34, ptr %42, align 4
  br label %43

43:                                               ; preds = %40, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %44 = add nuw i32 %31, 1
  %45 = icmp eq i32 %44, %3
  br i1 %45, label %46, label %30

46:                                               ; preds = %43, %25
  %47 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %9) #8
  br label %48

48:                                               ; preds = %46, %24, %12, %7, %5
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @sh73a0_cpg_register_clock(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sh73a0_cpg, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 192
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %11 = lshr i32 %10, 28
  %12 = lshr i32 %10, 29
  %13 = and i32 %12, 1
  %14 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %13) #8
  %15 = and i32 %11, 1
  %16 = add nuw nsw i32 %15, 1
  br label %92

17:                                               ; preds = %3
  %18 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(4) @.str.5, i32 noundef 3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %2, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = add i8 %22, -48
  %25 = icmp ult i8 %24, 4
  br i1 %25, label %26, label %108

26:                                               ; preds = %20
  %27 = add nsw i32 %23, -48
  %28 = getelementptr inbounds %struct.sh73a0_cpg, ptr %1, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = sext i8 %24 to i32
  %31 = getelementptr inbounds [4 x i32], ptr @switch.table.sh73a0_cpg_register_clock, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = getelementptr i8, ptr %29, i32 208
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %36 = shl nuw i32 1, %27
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %92, label %39

39:                                               ; preds = %26
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %41 = lshr i32 %40, 24
  %42 = and i32 %41, 63
  %43 = add nuw nsw i32 %42, 1
  %44 = add nsw i32 %23, -49
  %45 = icmp ult i32 %44, 2
  br i1 %45, label %46, label %92

46:                                               ; preds = %39
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %48 = lshr i32 %47, 20
  %49 = and i32 %48, 1
  %50 = shl nuw nsw i32 %43, %49
  br label %92

51:                                               ; preds = %17
  %52 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(8) @.str.6)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(8) @.str.7)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54, %51
  %58 = getelementptr i8, ptr %2, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.sh73a0_cpg, ptr %1, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq i8 %59, 48
  %63 = select i1 %62, i32 108, i32 112
  %64 = getelementptr i8, ptr %61, i32 %63
  %65 = select i1 %62, ptr @.str.9, ptr @.str.8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %67 = and i32 %66, 32768
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %66, 63
  %70 = add nuw nsw i32 %69, 1
  %71 = select i1 %68, i32 1, i32 %70
  br label %92

72:                                               ; preds = %54
  %73 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(2) @.str.10)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %80, %72
  %76 = phi ptr [ %82, %80 ], [ @.str.12, %72 ]
  %77 = phi ptr [ %81, %80 ], [ @div4_clks, %72 ]
  %78 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull %76)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = getelementptr %struct.div4_clk, ptr %77, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %108, label %75

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.div4_clk, ptr %77, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.div4_clk, ptr %77, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.div4_clk, ptr %77, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = trunc i32 %90 to i8
  br label %97

92:                                               ; preds = %57, %46, %39, %26, %6
  %93 = phi i32 [ %16, %6 ], [ 1, %57 ], [ 1, %39 ], [ 1, %46 ], [ 1, %26 ]
  %94 = phi i32 [ 1, %6 ], [ %71, %57 ], [ %43, %39 ], [ %50, %46 ], [ 1, %26 ]
  %95 = phi ptr [ %14, %6 ], [ %65, %57 ], [ @.str.4, %39 ], [ @.str.4, %46 ], [ @.str.4, %26 ]
  %96 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %2, ptr noundef %95, i32 noundef 0, i32 noundef %94, i32 noundef %93) #8
  br label %108

97:                                               ; preds = %84, %72
  %98 = phi ptr [ @.str.11, %72 ], [ %86, %84 ]
  %99 = phi i8 [ 5, %72 ], [ 4, %84 ]
  %100 = phi i32 [ 4, %72 ], [ %88, %84 ]
  %101 = phi i8 [ 24, %72 ], [ %91, %84 ]
  %102 = phi ptr [ @z_div_table, %72 ], [ @div4_div_table, %84 ]
  %103 = getelementptr inbounds %struct.sh73a0_cpg, ptr %1, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr i8, ptr %104, i32 %100
  %106 = getelementptr inbounds %struct.sh73a0_cpg, ptr %1, i32 0, i32 1
  %107 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %2, ptr noundef %98, i32 noundef 0, ptr noundef %105, i8 noundef zeroext %101, i8 noundef zeroext %99, i8 noundef zeroext 0, ptr noundef nonnull %102, ptr noundef %106) #8
  br label %108

108:                                              ; preds = %97, %92, %80, %20
  %109 = phi ptr [ %107, %97 ], [ %96, %92 ], [ inttoptr (i32 -22 to ptr), %20 ], [ inttoptr (i32 -22 to ptr), %80 ]
  ret ptr %109
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
!9 = !{i64 2150574222}
!10 = !{i64 2846520}
!11 = !{i64 2150574543}
!12 = !{i64 2150574864}
!13 = !{!"auto-init"}
!14 = !{i64 2846938}
!15 = !{i64 2150570589}
!16 = !{i64 2150570945}
!17 = !{i64 2150571342}
!18 = !{i64 2150571655}
!19 = !{i64 2150572045}
