; ModuleID = '/llk/IR/drivers/clk/berlin/berlin2-avpll.c_pt.bc'
source_filename = "../drivers/clk/berlin/berlin2-avpll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.berlin2_avpll_vco = type { %struct.clk_hw, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.berlin2_avpll_channel = type { %struct.clk_hw, ptr, i8, i8 }

@berlin2_avpll_vco_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @berlin2_avpll_vco_enable, ptr @berlin2_avpll_vco_disable, ptr @berlin2_avpll_vco_is_enabled, ptr null, ptr null, ptr null, ptr @berlin2_avpll_vco_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@quirk_index = internal unnamed_addr constant [8 x i8] c"\00\06\05\04\03\02\01\07", section ".init.rodata", align 1
@berlin2_avpll_channel_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @berlin2_avpll_channel_enable, ptr @berlin2_avpll_channel_disable, ptr @berlin2_avpll_channel_is_enabled, ptr null, ptr null, ptr null, ptr @berlin2_avpll_channel_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vco_refdiv = internal unnamed_addr constant [4 x i8] c"\01\02\04\03", align 1
@div_hdmi = internal unnamed_addr constant [4 x i8] c"\01\02\04\06", align 1
@div_av1 = internal unnamed_addr constant [4 x i8] c"\01\02\05\05", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @berlin2_avpll_vco_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 section ".init.text" {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #6
  %8 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 12, i1 false), !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 20) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %10, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %10, i32 0, i32 2
  store i8 %3, ptr %14, align 8
  %15 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %7, ptr %15, align 8
  store ptr %1, ptr %7, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @berlin2_avpll_vco_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 %4, ptr %19, align 4
  %20 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %10) #6
  br label %21

21:                                               ; preds = %12, %5
  %22 = phi i32 [ %20, %12 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #6
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @berlin2_avpll_channel_register(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 section ".init.text" {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  store ptr %3, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #6
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 20) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %11, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  %15 = and i8 %4, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = zext i8 %2 to i32
  %19 = getelementptr [8 x i8], ptr @quirk_index, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i8 [ %20, %17 ], [ %2, %13 ]
  %23 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %11, i32 0, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %11, i32 0, i32 2
  store i8 %4, ptr %24, align 8
  %25 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %25, align 8
  store ptr %1, ptr %8, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @berlin2_avpll_channel_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %7, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %5, ptr %29, align 4
  %30 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %11) #6
  br label %31

31:                                               ; preds = %21, %6
  %32 = phi i32 [ %30, %21 ], [ -12, %6 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #6
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_vco_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 2, i32 32
  %10 = or i32 %9, %4
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #6, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @berlin2_avpll_vco_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 -3, i32 -33
  %10 = and i32 %9, %4
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_vco_is_enabled(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = lshr i32 %4, 4
  %10 = select i1 %8, i32 %4, i32 %9
  %11 = lshr i32 %10, 1
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_vco_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  %8 = and i32 %7, 63
  %9 = getelementptr [4 x i8], ptr @vco_refdiv, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %7, 6
  %13 = and i32 %12, 255
  %14 = zext i32 %13 to i64
  %15 = mul nuw nsw i64 %14, %3
  %16 = icmp ult i64 %15, 4294967296
  br i1 %16, label %17, label %20, !prof !11

17:                                               ; preds = %2
  %18 = trunc i64 %15 to i32
  %19 = udiv i32 %18, %11
  br label %24

20:                                               ; preds = %2
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %15) #8, !srcloc !12
  %22 = extractvalue { i64, i64 } %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_channel_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  %6 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 1048576, %8
  %10 = or i32 %9, %5
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @berlin2_avpll_channel_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  %6 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 1048576, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %5, %10
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_channel_is_enabled(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 7
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  %10 = load i8, ptr %2, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 1048576, %11
  %13 = and i32 %12, %9
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %5, %1
  %17 = phi i32 [ %15, %5 ], [ 1, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_channel_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 120
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  %8 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 131072, %10
  %12 = and i32 %11, %7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %139, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 4
  %16 = shl nuw nsw i32 %10, 2
  %17 = add nuw nsw i32 %16, 60
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !9
  %20 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %0, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = load i8, ptr %8, align 1
  %25 = icmp eq i8 %24, 0
  %26 = lshr i32 %19, 4
  %27 = select i1 %25, i32 %26, i32 %19
  %28 = select i1 %23, i32 %19, i32 %27
  %29 = and i32 %28, 131071
  %30 = load ptr, ptr %4, align 4
  %31 = zext i8 %24 to i32
  %32 = shl nuw nsw i32 %31, 2
  %33 = add nuw nsw i32 %32, 92
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !9
  %36 = and i32 %35, 131071
  %37 = zext i32 %36 to i64
  %38 = mul nuw nsw i64 %37, %3
  %39 = load i8, ptr %8, align 1
  %40 = icmp eq i8 %39, 7
  br i1 %40, label %139, label %41

41:                                               ; preds = %14
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i8, ptr %42, i32 44
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !9
  %45 = lshr i32 %44, 7
  %46 = load i8, ptr %8, align 1
  %47 = zext i8 %46 to i32
  %48 = mul nuw nsw i32 %47, 3
  %49 = lshr i32 %45, %48
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %41
  %53 = and i32 %49, 3
  %54 = getelementptr [4 x i8], ptr @div_hdmi, i32 0, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = mul nuw nsw i32 %29, %56
  br label %58

58:                                               ; preds = %52, %41
  %59 = phi i32 [ %57, %52 ], [ %29, %41 ]
  %60 = icmp eq i8 %46, 0
  %61 = load ptr, ptr %4, align 4
  br i1 %60, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %61, i32 44
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #6, !srcloc !9
  %65 = lshr i32 %64, 28
  br label %74

66:                                               ; preds = %58
  %67 = getelementptr i8, ptr %61, i32 48
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !9
  %69 = load i8, ptr %8, align 1
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %70, 3
  %72 = add nsw i32 %71, -3
  %73 = lshr i32 %68, %72
  br label %74

74:                                               ; preds = %66, %62
  %75 = phi i32 [ %65, %62 ], [ %73, %66 ]
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = and i32 %75, 3
  %80 = getelementptr [4 x i8], ptr @div_av1, i32 0, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = mul i32 %59, %82
  br label %84

84:                                               ; preds = %78, %74
  %85 = phi i32 [ %83, %78 ], [ %59, %74 ]
  %86 = load i8, ptr %8, align 1
  %87 = icmp ult i8 %86, 2
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load ptr, ptr %4, align 4
  %90 = getelementptr i8, ptr %89, i32 48
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #6, !srcloc !9
  %92 = load i8, ptr %8, align 1
  %93 = zext i8 %92 to i32
  %94 = mul nuw nsw i32 %93, 7
  %95 = add nuw nsw i32 %94, 18
  %96 = lshr i32 %91, %95
  br label %112

97:                                               ; preds = %84
  %98 = icmp ult i8 %86, 7
  %99 = load ptr, ptr %4, align 4
  br i1 %98, label %100, label %108

100:                                              ; preds = %97
  %101 = getelementptr i8, ptr %99, i32 52
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #6, !srcloc !9
  %103 = load i8, ptr %8, align 1
  %104 = zext i8 %103 to i32
  %105 = mul nuw nsw i32 %104, 7
  %106 = add nsw i32 %105, -14
  %107 = lshr i32 %102, %106
  br label %112

108:                                              ; preds = %97
  %109 = getelementptr i8, ptr %99, i32 56
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #6, !srcloc !9
  %111 = load i8, ptr %8, align 1
  br label %112

112:                                              ; preds = %108, %100, %88
  %113 = phi i8 [ %103, %100 ], [ %111, %108 ], [ %92, %88 ]
  %114 = phi i32 [ %107, %100 ], [ %110, %108 ], [ %96, %88 ]
  %115 = and i32 %114, 127
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %116, i32 %115, i32 1
  %118 = mul i32 %117, %85
  %119 = icmp ult i8 %113, 6
  %120 = load ptr, ptr %4, align 4
  br i1 %119, label %121, label %129

121:                                              ; preds = %112
  %122 = getelementptr i8, ptr %120, i32 56
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #6, !srcloc !9
  %124 = load i8, ptr %8, align 1
  %125 = zext i8 %124 to i32
  %126 = shl nuw nsw i32 %125, 2
  %127 = add nuw nsw i32 %126, 7
  %128 = lshr i32 %123, %127
  br label %132

129:                                              ; preds = %112
  %130 = getelementptr i8, ptr %120, i32 60
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #6, !srcloc !9
  br label %132

132:                                              ; preds = %129, %121
  %133 = phi i32 [ %128, %121 ], [ %131, %129 ]
  %134 = and i32 %133, 15
  %135 = icmp ne i32 %134, 0
  %136 = select i1 %116, i1 %135, i1 false
  %137 = zext i1 %136 to i64
  %138 = shl nuw nsw i64 %38, %137
  br label %139

139:                                              ; preds = %132, %14, %2
  %140 = phi i64 [ %3, %2 ], [ %38, %14 ], [ %138, %132 ]
  %141 = phi i32 [ 1, %2 ], [ %29, %14 ], [ %118, %132 ]
  %142 = icmp ult i64 %140, 4294967296
  br i1 %142, label %143, label %146, !prof !11

143:                                              ; preds = %139
  %144 = trunc i64 %140 to i32
  %145 = udiv i32 %144, %141
  br label %150

146:                                              ; preds = %139
  %147 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %141, i64 %140) #8, !srcloc !12
  %148 = extractvalue { i64, i64 } %147, 1
  %149 = trunc i64 %148 to i32
  br label %150

150:                                              ; preds = %146, %143
  %151 = phi i32 [ %145, %143 ], [ %149, %146 ]
  ret i32 %151
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 2851384}
!10 = !{i64 2850966}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148662054, i64 2148662334, i64 2148662668, i64 2148663002}
