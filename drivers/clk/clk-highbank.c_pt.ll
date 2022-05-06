; ModuleID = '/llk/IR/drivers/clk/clk-highbank.c_pt.bc'
source_filename = "../drivers/clk/clk-highbank.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hb_clk = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_hb_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_pll_init }, section "__clk_of_table", align 4
@__of_table_hb_a9periph = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-a9periph-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_a9periph_init }, section "__clk_of_table", align 4
@__of_table_hb_a9bus = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-a9bus-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_a9bus_init }, section "__clk_of_table", align 4
@__of_table_hb_emmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-emmc-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_emmc_init }, section "__clk_of_table", align 4
@clk_pll_ops = internal constant %struct.clk_ops { ptr @clk_pll_prepare, ptr @clk_pll_unprepare, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"drivers/clk/clk-highbank.c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"calxeda,hb-sregs\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@a9periphclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpu_periphclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@a9bclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpu_a9bclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@periclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_periclk_recalc_rate, ptr @clk_periclk_round_rate, ptr null, ptr null, ptr null, ptr @clk_periclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_hb_a9bus, ptr @__of_table_hb_a9periph, ptr @__of_table_hb_emmc, ptr @__of_table_hb_pll], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hb_pll_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @hb_clk_init(ptr noundef %0, ptr noundef nonnull @clk_pll_ops, i32 noundef 0) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hb_a9periph_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @hb_clk_init(ptr noundef %0, ptr noundef nonnull @a9periphclk_ops, i32 noundef 0) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hb_a9bus_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @hb_clk_init(ptr noundef %0, ptr noundef nonnull @a9bclk_ops, i32 noundef 2048) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hb_emmc_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @hb_clk_init(ptr noundef %0, ptr noundef nonnull @periclk_ops, i32 noundef 0) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @hb_clk_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #10
  %9 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #10
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %3
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 274, i32 noundef 9, ptr noundef null) #10
  br label %40

13:                                               ; preds = %3
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 20) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 278, i32 noundef 9, ptr noundef null) #10
  br label %40

18:                                               ; preds = %13
  %19 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #10
  %20 = call ptr @of_iomap(ptr noundef %19, i32 noundef 0) #10
  %21 = getelementptr inbounds %struct.hb_clk, ptr %15, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  call void @of_node_put(ptr noundef %19) #10
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24, !prof !10

23:                                               ; preds = %18
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/clk-highbank.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

24:                                               ; preds = %18
  %25 = load i32, ptr %4, align 4
  %26 = getelementptr i8, ptr %20, i32 %25
  store ptr %26, ptr %21, align 4
  %27 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #10
  %28 = load ptr, ptr %5, align 4
  store ptr %28, ptr %7, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr %1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 %2, ptr %30, align 4
  %31 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #10
  store ptr %31, ptr %6, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %6, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %7, ptr %34, align 8
  %35 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %15) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 300, i32 noundef 9, ptr noundef null) #10
  call void @kfree(ptr noundef nonnull %15) #10
  br label %40

38:                                               ; preds = %24
  %39 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %15) #10
  br label %40

40:                                               ; preds = %38, %37, %17, %12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
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
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %5 = and i32 %4, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !14
  tail call void @arm_heavy_mb() #10
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #10, !srcloc !15
  br label %7

7:                                                ; preds = %7, %1
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %10 = and i32 %9, 268435456
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %7, label %12

12:                                               ; preds = %12, %7
  %13 = load ptr, ptr %2, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %15 = and i32 %14, 536870912
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %12, label %17

17:                                               ; preds = %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pll_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %5 = or i32 %4, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #10, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %5 = or i32 %4, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #10, !srcloc !15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pll_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !22
  %5 = and i32 %4, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #10, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = lshr i32 %5, 20
  %10 = and i32 %9, 255
  %11 = lshr i32 %5, 16
  %12 = and i32 %11, 7
  %13 = add nuw nsw i32 %10, 1
  %14 = mul i32 %13, %1
  %15 = lshr i32 %14, %12
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %15, %8 ], [ %1, %2 ]
  ret i32 %17
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_pll_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 33328125) #10
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 2133000000) #10
  %7 = shl nuw i32 %6, 1
  %8 = icmp ugt i32 %6, 1066499999
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = shl i32 %6, 2
  %11 = icmp ugt i32 %10, 2132999999
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = shl i32 %6, 3
  %14 = icmp ugt i32 %13, 2132999999
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = shl i32 %6, 4
  %17 = icmp ugt i32 %16, 2132999999
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = shl i32 %6, 5
  %20 = icmp ugt i32 %19, 2132999999
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = shl i32 %6, 6
  %23 = icmp ugt i32 %22, 2132999999
  %24 = shl i32 %6, 7
  %25 = select i1 %23, i32 6, i32 7
  %26 = select i1 %23, i32 %22, i32 %24
  br label %27

27:                                               ; preds = %21, %18, %15, %12, %9, %3
  %28 = phi i32 [ 1, %3 ], [ 2, %9 ], [ 3, %12 ], [ 4, %15 ], [ 5, %18 ], [ %25, %21 ]
  %29 = phi i32 [ %7, %3 ], [ %10, %9 ], [ %13, %12 ], [ %16, %15 ], [ %19, %18 ], [ %26, %21 ]
  %30 = lshr i32 %4, 1
  %31 = add i32 %29, %30
  %32 = urem i32 %31, %4
  %33 = sub i32 %31, %32
  %34 = lshr i32 %33, %28
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 33328125) #10
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 2133000000) #10
  %6 = shl nuw i32 %5, 1
  %7 = icmp ugt i32 %5, 1066499999
  br i1 %7, label %26, label %8

8:                                                ; preds = %3
  %9 = shl i32 %5, 2
  %10 = icmp ugt i32 %9, 2132999999
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = shl i32 %5, 3
  %13 = icmp ugt i32 %12, 2132999999
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = shl i32 %5, 4
  %16 = icmp ugt i32 %15, 2132999999
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = shl i32 %5, 5
  %19 = icmp ugt i32 %18, 2132999999
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = shl i32 %5, 6
  %22 = icmp ugt i32 %21, 2132999999
  %23 = shl i32 %5, 7
  %24 = select i1 %22, i32 393216, i32 458752
  %25 = select i1 %22, i32 %21, i32 %23
  br label %26

26:                                               ; preds = %20, %17, %14, %11, %8, %3
  %27 = phi i32 [ 65536, %3 ], [ 131072, %8 ], [ 196608, %11 ], [ 262144, %14 ], [ 327680, %17 ], [ %24, %20 ]
  %28 = phi i32 [ %6, %3 ], [ %9, %8 ], [ %12, %11 ], [ %15, %14 ], [ %18, %17 ], [ %25, %20 ]
  %29 = lshr i32 %2, 1
  %30 = add i32 %28, %29
  %31 = udiv i32 %30, %2
  %32 = add i32 %31, -1
  %33 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %36 = lshr i32 %35, 20
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %64, label %39

39:                                               ; preds = %26
  %40 = or i32 %35, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !26
  tail call void @arm_heavy_mb() #10
  %41 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #10, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  %42 = or i32 %35, 6
  %43 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #10, !srcloc !15
  %44 = and i32 %40, -267845633
  %45 = shl i32 %32, 20
  %46 = or i32 %45, %27
  %47 = or i32 %46, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %48 = or i32 %47, 4
  %49 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %48) #10, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %50 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %47) #10, !srcloc !15
  br label %51

51:                                               ; preds = %51, %39
  %52 = load ptr, ptr %33, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !30
  %54 = and i32 %53, 268435456
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %51, label %56

56:                                               ; preds = %56, %51
  %57 = load ptr, ptr %33, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !31
  %59 = and i32 %58, 536870912
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %56, label %61

61:                                               ; preds = %56
  %62 = and i32 %47, -4
  %63 = or i32 %62, 1
  br label %71

64:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !32
  tail call void @arm_heavy_mb() #10
  %65 = or i32 %35, 2
  %66 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %65) #10, !srcloc !15
  %67 = and i32 %35, -458753
  %68 = or i32 %67, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !33
  tail call void @arm_heavy_mb() #10
  %69 = or i32 %68, 2
  %70 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %69) #10, !srcloc !15
  br label %71

71:                                               ; preds = %64, %61
  %72 = phi i32 [ %63, %61 ], [ %68, %64 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !34
  tail call void @arm_heavy_mb() #10
  %73 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %72) #10, !srcloc !15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_cpu_periphclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !35
  %6 = and i32 %5, 1
  %7 = or i32 %6, 2
  %8 = lshr i32 %1, %7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_cpu_a9bclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !36
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 3
  %8 = add nuw nsw i32 %7, 2
  %9 = udiv i32 %1, %8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !37
  %6 = shl i32 %5, 1
  %7 = and i32 %6, 62
  %8 = add nuw nsw i32 %7, 2
  %9 = udiv i32 %1, %8
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_periclk_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = load i32, ptr %2, align 4
  %5 = udiv i32 %4, %1
  %6 = add i32 %5, 1
  %7 = and i32 %6, -2
  %8 = udiv i32 %4, %7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periclk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = udiv i32 %2, %1
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !38
  tail call void @arm_heavy_mb() #10
  %8 = lshr i32 %4, 1
  %9 = getelementptr inbounds %struct.hb_clk, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #10, !srcloc !15
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2150593047, i64 2150593538, i64 2150593084, i64 2150593140, i64 2150593174, i64 2150593198, i64 2150593239, i64 2150593260, i64 2150593288, i64 2150593322}
!12 = !{i64 2994232}
!13 = !{i64 2150572914}
!14 = !{i64 2150573103}
!15 = !{i64 2993814}
!16 = !{i64 2150573538}
!17 = !{i64 2150573862}
!18 = !{i64 2150575343}
!19 = !{i64 2150575532}
!20 = !{i64 2150577124}
!21 = !{i64 2150577313}
!22 = !{i64 2150578905}
!23 = !{i64 2150579094}
!24 = !{i64 2150580686}
!25 = !{i64 2150582344}
!26 = !{i64 2150582571}
!27 = !{i64 2150582921}
!28 = !{i64 2150583299}
!29 = !{i64 2150583625}
!30 = !{i64 2150584060}
!31 = !{i64 2150584384}
!32 = !{i64 2150584619}
!33 = !{i64 2150584983}
!34 = !{i64 2150585309}
!35 = !{i64 2150586901}
!36 = !{i64 2150588382}
!37 = !{i64 2150589865}
!38 = !{i64 2150591208}
