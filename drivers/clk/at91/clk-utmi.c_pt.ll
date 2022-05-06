; ModuleID = '/llk/IR/drivers/clk/at91/clk-utmi.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-utmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_utmi = type { %struct.clk_hw, ptr, ptr, %struct.at91_clk_pms }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }

@utmi_ops = internal constant %struct.clk_ops { ptr @clk_utmi_prepare, ptr @clk_utmi_unprepare, ptr @clk_utmi_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_utmi_save_context, ptr @clk_utmi_restore_context, ptr @clk_utmi_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sama7g5_utmi_ops = internal constant %struct.clk_ops { ptr @clk_utmi_sama7g5_prepare, ptr null, ptr @clk_utmi_sama7g5_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_utmi_sama7g5_save_context, ptr @clk_utmi_sama7g5_restore_context, ptr @clk_utmi_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [35 x i8] c"\013UTMICK: unsupported mainck rate\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\013UTMICK: sfr node required\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\013UTMICK: unsupported main_xtal rate\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_utmi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = tail call fastcc ptr @at91_clk_register_utmi_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @utmi_ops, i32 noundef 1) #8
  ret ptr %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_utmi_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 section ".init.text" {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  store ptr %3, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #9
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %6
  store ptr %2, ptr %8, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr %4, ptr %14, align 4
  %15 = icmp eq ptr %3, null
  %16 = select i1 %15, ptr null, ptr %7
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp ne ptr %3, null
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %22, align 8
  %23 = getelementptr inbounds %struct.clk_utmi, ptr %11, i32 0, i32 1
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_utmi, ptr %11, i32 0, i32 2
  store ptr %1, ptr %24, align 8
  %25 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %11) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %13
  call void @kfree(ptr noundef nonnull %11) #9
  %28 = inttoptr i32 %25 to ptr
  br label %29

29:                                               ; preds = %27, %13, %6
  %30 = phi ptr [ %28, %27 ], [ %11, %13 ], [ inttoptr (i32 -12 to ptr), %6 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #9
  ret ptr %30
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_sama7g5_register_utmi(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = tail call fastcc ptr @at91_clk_register_utmi_internal(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @sama7g5_utmi_ops, i32 noundef 0) #8
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_utmi_prepare(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %4 = tail call i32 @clk_hw_get_rate(ptr noundef %3) #9
  switch i32 %4, label %35 [
    i32 12000000, label %12
    i32 16000000, label %7
    i32 24000000, label %5
    i32 48000000, label %6
  ]

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %5, %1
  %8 = phi i32 [ 3, %6 ], [ 2, %5 ], [ 1, %1 ]
  %9 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %14, %12 ], [ %10, %7 ]
  %18 = phi i32 [ 0, %12 ], [ %8, %7 ]
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %17, i32 noundef 48, i32 noundef 3, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 28, i32 noundef 32571392, i32 noundef 32571392, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %24 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 104, ptr noundef nonnull %2) #9
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br i1 %28, label %29, label %38

29:                                               ; preds = %29, %20
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !10
  %30 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %31 = call i32 @regmap_read(ptr noundef %30, i32 noundef 104, ptr noundef nonnull %2) #9
  %32 = load i32, ptr %2, align 4
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br i1 %34, label %29, label %38

35:                                               ; preds = %7, %1
  %36 = phi ptr [ @.str, %1 ], [ @.str.1, %7 ]
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %36) #11
  br label %38

38:                                               ; preds = %35, %29, %20
  %39 = phi i32 [ 0, %20 ], [ -22, %35 ], [ 0, %29 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_utmi_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_utmi_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 104, ptr noundef nonnull %2) #9
  %6 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %7 = lshr i32 %6, 6
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_utmi_save_context(ptr nocapture noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 104, ptr noundef nonnull %2) #9
  %6 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %7 = lshr i32 %6, 6
  %8 = and i32 %7, 1
  %9 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 3, i32 2
  store i32 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_utmi_restore_context(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 3, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @clk_utmi_prepare(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @clk_utmi_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  ret i32 480000000
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_utmi_sama7g5_prepare(ptr noundef %0) #5 {
  %2 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %3 = tail call i32 @clk_hw_get_rate(ptr noundef %2) #9
  switch i32 %3, label %7 [
    i32 16000000, label %9
    i32 20000000, label %4
    i32 24000000, label %5
    i32 32000000, label %6
  ]

4:                                                ; preds = %1
  br label %9

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  br label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %14

9:                                                ; preds = %6, %5, %4, %1
  %10 = phi i32 [ 5, %6 ], [ 3, %5 ], [ 2, %4 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 52, i32 noundef %10) #9
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ -22, %7 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_utmi_sama7g5_is_prepared(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %4 = tail call i32 @clk_hw_get_rate(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 52, ptr noundef nonnull %2) #9
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 7
  switch i32 %9, label %18 [
    i32 0, label %10
    i32 2, label %12
    i32 3, label %14
    i32 5, label %16
  ]

10:                                               ; preds = %1
  %11 = icmp eq i32 %4, 16000000
  br i1 %11, label %19, label %18

12:                                               ; preds = %1
  %13 = icmp eq i32 %4, 20000000
  br i1 %13, label %19, label %18

14:                                               ; preds = %1
  %15 = icmp eq i32 %4, 24000000
  br i1 %15, label %19, label %18

16:                                               ; preds = %1
  %17 = icmp eq i32 %4, 32000000
  br i1 %17, label %19, label %18

18:                                               ; preds = %16, %14, %12, %10, %1
  br label %19

19:                                               ; preds = %18, %16, %14, %12, %10
  %20 = phi i32 [ 0, %18 ], [ 1, %10 ], [ 1, %12 ], [ 1, %14 ], [ 1, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_utmi_sama7g5_save_context(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %4 = tail call i32 @clk_hw_get_rate(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 52, ptr noundef nonnull %2) #9
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 7
  switch i32 %9, label %18 [
    i32 0, label %10
    i32 2, label %12
    i32 3, label %14
    i32 5, label %16
  ]

10:                                               ; preds = %1
  %11 = icmp eq i32 %4, 16000000
  br i1 %11, label %19, label %18

12:                                               ; preds = %1
  %13 = icmp eq i32 %4, 20000000
  br i1 %13, label %19, label %18

14:                                               ; preds = %1
  %15 = icmp eq i32 %4, 24000000
  br i1 %15, label %19, label %18

16:                                               ; preds = %1
  %17 = icmp eq i32 %4, 32000000
  br i1 %17, label %19, label %18

18:                                               ; preds = %16, %14, %12, %10, %1
  br label %19

19:                                               ; preds = %18, %16, %14, %12, %10
  %20 = phi i32 [ 0, %18 ], [ 1, %10 ], [ 1, %12 ], [ 1, %14 ], [ 1, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %21 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 3, i32 2
  store i32 %20, ptr %21, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_utmi_sama7g5_restore_context(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 3, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %7 = tail call i32 @clk_hw_get_rate(ptr noundef %6) #9
  switch i32 %7, label %11 [
    i32 16000000, label %13
    i32 20000000, label %8
    i32 24000000, label %9
    i32 32000000, label %10
  ]

8:                                                ; preds = %5
  br label %13

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %18

13:                                               ; preds = %10, %9, %8, %5
  %14 = phi i32 [ 5, %10 ], [ 3, %9 ], [ 2, %8 ], [ 0, %5 ]
  %15 = getelementptr inbounds %struct.clk_utmi, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 52, i32 noundef %14) #9
  br label %18

18:                                               ; preds = %13, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2151207973}
!10 = !{i64 2151207815}
