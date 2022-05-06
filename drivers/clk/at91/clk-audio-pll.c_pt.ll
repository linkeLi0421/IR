; ModuleID = '/llk/IR/drivers/clk/at91/clk-audio-pll.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-audio-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_audio_frac = type { %struct.clk_hw, ptr, i32, i8 }
%struct.clk_audio_pad = type { %struct.clk_hw, ptr, i8, i8 }
%struct.clk_audio_pmc = type { %struct.clk_hw, ptr, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@audio_pll_frac_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_frac_enable, ptr @clk_audio_pll_frac_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_frac_recalc_rate, ptr null, ptr @clk_audio_pll_frac_determine_rate, ptr null, ptr null, ptr @clk_audio_pll_frac_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@audio_pll_pad_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pad_enable, ptr @clk_audio_pll_pad_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pad_recalc_rate, ptr @clk_audio_pll_pad_round_rate, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pad_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@audio_pll_pmc_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pmc_enable, ptr @clk_audio_pll_pmc_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pmc_recalc_rate, ptr @clk_audio_pll_pmc_round_rate, ptr null, ptr null, ptr null, ptr @clk_audio_pll_pmc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_audio_pll_frac(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false)
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 24) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  store ptr %1, ptr %5, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @audio_pll_frac_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 2
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.clk_audio_frac, ptr %8, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %8) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #10
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi ptr [ %20, %19 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #10
  ret ptr %22
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_audio_pll_pad(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 20) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  store ptr %1, ptr %5, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @audio_pll_pad_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 2
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.clk_audio_pad, ptr %8, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %8) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #10
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi ptr [ %20, %19 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #10
  ret ptr %22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_audio_pll_pmc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 20) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  store ptr %1, ptr %5, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @audio_pll_pmc_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 2
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.clk_audio_pmc, ptr %8, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %8) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #10
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi ptr [ %20, %19 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #10
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_frac_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_audio_frac, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 332, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 332, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.clk_audio_frac, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 336, i32 noundef 4194303, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.clk_audio_frac, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %15, 1
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 332, i32 noundef 32513, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_audio_pll_frac_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_audio_frac, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 332, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 332, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_audio_pll_frac_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_audio_frac, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.clk_audio_frac, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %1 to i64
  %9 = zext i32 %7 to i64
  %10 = mul nuw i64 %9, %8
  %11 = add nuw i64 %10, 2097152
  %12 = lshr i64 %11, 22
  %13 = trunc i64 %12 to i32
  %14 = add nuw nsw i32 %5, 1
  %15 = mul i32 %14, %1
  %16 = add i32 %15, %13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_frac_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #5 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 620000000)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 700000000)
  store i32 %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 620000000)
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 700000000)
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = freeze i32 %5
  %15 = freeze i32 %13
  %16 = udiv i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %17, -127
  %19 = icmp ult i64 %18, -126
  br i1 %19, label %49, label %20

20:                                               ; preds = %2
  %21 = mul i32 %16, %15
  %22 = sub i32 %14, %21
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 22
  %25 = lshr i32 %13, 1
  %26 = zext i32 %25 to i64
  %27 = add nuw nsw i64 %24, %26
  %28 = icmp ult i64 %27, 4294967296
  br i1 %28, label %29, label %33, !prof !9

29:                                               ; preds = %20
  %30 = trunc i64 %27 to i32
  %31 = udiv i32 %30, %13
  %32 = zext i32 %31 to i64
  br label %36

33:                                               ; preds = %20
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %27) #12, !srcloc !10
  %35 = extractvalue { i64, i64 } %34, 1
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i64 [ %32, %29 ], [ %35, %33 ]
  %38 = icmp ugt i64 %37, 4194303
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = zext i32 %13 to i64
  %41 = mul nuw nsw i64 %37, %40
  %42 = add nuw nsw i64 %41, 2097152
  %43 = lshr i64 %42, 22
  %44 = trunc i64 %43 to i32
  %45 = mul i32 %13, %16
  %46 = add i32 %45, %44
  store i32 %46, ptr %1, align 4
  %47 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #10
  %48 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %39, %36, %2
  %50 = phi i32 [ 0, %39 ], [ -22, %36 ], [ -22, %2 ]
  ret i32 %50
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define internal i32 @clk_audio_pll_frac_set_rate(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = add i32 %1, -700000001
  %5 = icmp ult i32 %4, -80000001
  br i1 %5, label %36, label %6

6:                                                ; preds = %3
  %7 = udiv i32 %1, %2
  %8 = zext i32 %7 to i64
  %9 = add nsw i64 %8, -127
  %10 = icmp ult i64 %9, -126
  br i1 %10, label %36, label %11

11:                                               ; preds = %6
  %12 = mul i32 %7, %2
  %13 = sub i32 %1, %12
  %14 = zext i32 %13 to i64
  %15 = trunc i32 %7 to i8
  %16 = add nsw i8 %15, -1
  %17 = shl nuw nsw i64 %14, 22
  %18 = lshr i32 %2, 1
  %19 = zext i32 %18 to i64
  %20 = add nuw nsw i64 %17, %19
  %21 = icmp ult i64 %20, 4294967296
  br i1 %21, label %22, label %26, !prof !9

22:                                               ; preds = %11
  %23 = trunc i64 %20 to i32
  %24 = udiv i32 %23, %2
  %25 = zext i32 %24 to i64
  br label %29

26:                                               ; preds = %11
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %20) #12, !srcloc !10
  %28 = extractvalue { i64, i64 } %27, 1
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %25, %22 ], [ %28, %26 ]
  %31 = icmp ugt i64 %30, 4194303
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = trunc i64 %30 to i32
  %34 = getelementptr inbounds %struct.clk_audio_frac, ptr %0, i32 0, i32 3
  store i8 %16, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_audio_frac, ptr %0, i32 0, i32 2
  store i32 %33, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %29, %6, %3
  %37 = phi i32 [ 0, %32 ], [ -22, %3 ], [ -22, %6 ], [ -22, %29 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pad_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_audio_pad, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_audio_pad, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = shl i32 %6, 26
  %8 = and i32 %7, 2080374784
  %9 = getelementptr inbounds %struct.clk_audio_pad, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = and i32 %12, 50331648
  %14 = or i32 %13, %8
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 336, i32 noundef 2130706432, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %16 = load ptr, ptr %2, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 332, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_audio_pll_pad_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_audio_pad, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 332, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_audio_pll_pad_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_audio_pad, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_audio_pad, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = zext i8 %9 to i32
  %13 = mul nuw nsw i32 %12, %5
  %14 = udiv i32 %1, %13
  br label %15

15:                                               ; preds = %11, %7, %2
  %16 = phi i32 [ %14, %11 ], [ 0, %7 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pad_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #10
  br label %5

5:                                                ; preds = %35, %3
  %6 = phi i32 [ -22, %3 ], [ %37, %35 ]
  %7 = phi i32 [ 1, %3 ], [ %38, %35 ]
  %8 = phi i32 [ -1, %3 ], [ %36, %35 ]
  %9 = urem i32 %7, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = shl nuw nsw i32 %7, 1
  %13 = mul i32 %12, %1
  %14 = tail call i32 @clk_hw_round_rate(ptr noundef %4, i32 noundef %13) #10
  %15 = udiv i32 %14, %12
  %16 = sub i32 %1, %15
  %17 = tail call i32 @llvm.abs.i32(i32 %16, i1 false)
  %18 = icmp slt i32 %8, 0
  %19 = icmp sgt i32 %8, %17
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 %14, ptr %2, align 4
  br label %22

22:                                               ; preds = %21, %11, %5
  %23 = phi i32 [ %17, %21 ], [ %8, %5 ], [ %8, %11 ]
  %24 = phi i32 [ %15, %21 ], [ %6, %5 ], [ %6, %11 ]
  %25 = mul nuw nsw i32 %7, 3
  %26 = mul i32 %25, %1
  %27 = tail call i32 @clk_hw_round_rate(ptr noundef %4, i32 noundef %26) #10
  %28 = udiv i32 %27, %25
  %29 = sub i32 %1, %28
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 false)
  %31 = icmp slt i32 %23, 0
  %32 = icmp sgt i32 %23, %30
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 %27, ptr %2, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = phi i32 [ %30, %34 ], [ %23, %22 ]
  %37 = phi i32 [ %28, %34 ], [ %24, %22 ]
  %38 = add nuw nsw i32 %7, 1
  %39 = icmp eq i32 %38, 31
  br i1 %39, label %40, label %5

40:                                               ; preds = %35
  ret i32 %37
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @clk_audio_pll_pad_set_rate(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = udiv i32 %2, %1
  %7 = trunc i32 %6 to i8
  %8 = udiv i8 %7, 3
  %9 = mul i8 %8, 3
  %10 = sub i8 %7, %9
  %11 = icmp eq i8 %10, 0
  %12 = lshr i8 %7, 1
  %13 = select i1 %11, i8 %8, i8 %12
  %14 = select i1 %11, i8 3, i8 2
  %15 = getelementptr inbounds %struct.clk_audio_pad, ptr %0, i32 0, i32 2
  store i8 %13, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_audio_pad, ptr %0, i32 0, i32 3
  store i8 %14, ptr %16, align 1
  br label %17

17:                                               ; preds = %5, %3
  %18 = phi i32 [ -22, %3 ], [ 0, %5 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pmc_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_audio_pmc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_audio_pmc, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = or i32 %7, 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 332, i32 noundef 8323076, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_audio_pll_pmc_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_audio_pmc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 332, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_audio_pll_pmc_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_audio_pmc, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = add nuw nsw i32 %5, 1
  %7 = udiv i32 %1, %6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_audio_pll_pmc_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #10
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clk_hw, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_round_rate(ptr noundef %8, i32 noundef 1) #10
  %10 = udiv i32 %9, %1
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 1)
  %12 = icmp ult i32 %11, 128
  br i1 %12, label %13, label %33

13:                                               ; preds = %28, %6
  %14 = phi i32 [ %30, %28 ], [ -22, %6 ]
  %15 = phi i32 [ %31, %28 ], [ %11, %6 ]
  %16 = phi i32 [ %29, %28 ], [ -1, %6 ]
  %17 = load ptr, ptr %7, align 4
  %18 = mul i32 %15, %1
  %19 = tail call i32 @clk_round_rate(ptr noundef %17, i32 noundef %18) #10
  %20 = udiv i32 %19, %15
  %21 = sub i32 %1, %20
  %22 = tail call i32 @llvm.abs.i32(i32 %21, i1 false)
  %23 = icmp slt i32 %16, 0
  %24 = icmp sgt i32 %16, %22
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  store i32 %19, ptr %2, align 4
  %27 = icmp eq i32 %20, %1
  br i1 %27, label %33, label %28

28:                                               ; preds = %26, %13
  %29 = phi i32 [ %22, %26 ], [ %16, %13 ]
  %30 = phi i32 [ %20, %26 ], [ %14, %13 ]
  %31 = add nuw nsw i32 %15, 1
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %13

33:                                               ; preds = %28, %26, %6, %3
  %34 = phi i32 [ 0, %3 ], [ -22, %6 ], [ %1, %26 ], [ %30, %28 ]
  ret i32 %34
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @clk_audio_pll_pmc_set_rate(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = udiv i32 %2, %1
  %7 = trunc i32 %6 to i8
  %8 = add i8 %7, -1
  %9 = getelementptr inbounds %struct.clk_audio_pmc, ptr %0, i32 0, i32 2
  store i8 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

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
!10 = !{i64 2148368681, i64 2148368961, i64 2148369295, i64 2148369629}
