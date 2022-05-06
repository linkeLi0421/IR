; ModuleID = '/llk/IR/drivers/clk/imx/clk-pllv3.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pllv3.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pllv3 = type { %struct.clk_hw, ptr, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pllv3_sys_ops = internal constant %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_sys_recalc_rate, ptr @clk_pllv3_sys_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv3_sys_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_pllv3_vf610_ops = internal constant %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_vf610_recalc_rate, ptr @clk_pllv3_vf610_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv3_vf610_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_pllv3_ops = internal constant %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_recalc_rate, ptr @clk_pllv3_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv3_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_pllv3_av_ops = internal constant %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_av_recalc_rate, ptr @clk_pllv3_av_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv3_av_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_pllv3_enet_ops = internal constant %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_enet_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pllv3(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #8
  %8 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 12, i1 false), !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 44) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.clk_pllv3, ptr %10, i32 0, i32 2
  store i32 4096, ptr %13, align 8
  %14 = getelementptr inbounds %struct.clk_pllv3, ptr %10, i32 0, i32 7
  store i32 16, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_pllv3, ptr %10, i32 0, i32 8
  store i32 32, ptr %15, align 8
  switch i32 %0, label %28 [
    i32 1, label %29
    i32 7, label %16
    i32 3, label %17
    i32 2, label %19
    i32 9, label %21
    i32 4, label %22
    i32 6, label %23
    i32 5, label %25
    i32 8, label %27
  ]

16:                                               ; preds = %12
  store i32 32, ptr %14, align 4
  store i32 48, ptr %15, align 8
  br label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.clk_pllv3, ptr %10, i32 0, i32 5
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds %struct.clk_pllv3, ptr %10, i32 0, i32 3
  store i8 1, ptr %20, align 4
  br label %29

21:                                               ; preds = %12
  store i32 32, ptr %14, align 4
  store i32 48, ptr %15, align 8
  br label %22

22:                                               ; preds = %21, %12
  br label %29

23:                                               ; preds = %12
  store i32 32, ptr %13, align 8
  %24 = getelementptr inbounds %struct.clk_pllv3, ptr %10, i32 0, i32 6
  store i32 1000000000, ptr %24, align 8
  br label %29

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.clk_pllv3, ptr %10, i32 0, i32 6
  store i32 500000000, ptr %26, align 8
  br label %29

27:                                               ; preds = %12
  store i32 1048576, ptr %13, align 8
  store i32 32, ptr %14, align 4
  store i32 48, ptr %15, align 8
  br label %29

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28, %27, %25, %23, %22, %19, %16, %12
  %30 = phi ptr [ @clk_pllv3_ops, %28 ], [ @clk_pllv3_av_ops, %27 ], [ @clk_pllv3_enet_ops, %25 ], [ @clk_pllv3_enet_ops, %23 ], [ @clk_pllv3_av_ops, %22 ], [ @clk_pllv3_ops, %19 ], [ @clk_pllv3_vf610_ops, %16 ], [ @clk_pllv3_sys_ops, %12 ]
  %31 = getelementptr inbounds %struct.clk_pllv3, ptr %10, i32 0, i32 1
  store ptr %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_pllv3, ptr %10, i32 0, i32 4
  store i32 %4, ptr %32, align 8
  store ptr %1, ptr %7, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr %30, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %6, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %7, ptr %37, align 8
  %38 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %10) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  call void @kfree(ptr noundef nonnull %10) #8
  %41 = inttoptr i32 %38 to ptr
  br label %42

42:                                               ; preds = %40, %29, %5
  %43 = phi ptr [ %41, %40 ], [ %10, %29 ], [ inttoptr (i32 -12 to ptr), %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #8
  ret ptr %43
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
define internal i32 @clk_pllv3_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %4
  %11 = xor i32 %9, -1
  %12 = and i32 %4, %11
  %13 = select i1 %7, i32 %12, i32 %10
  %14 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #8, !srcloc !11
  %15 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %0)
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pllv3_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %4, %10
  %12 = or i32 %9, %4
  %13 = select i1 %7, i32 %12, i32 %11
  %14 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_is_prepared(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = lshr i32 %4, 31
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_sys_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  %6 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = mul i32 %8, %1
  %10 = lshr i32 %9, 1
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_pllv3_sys_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = load i32, ptr %2, align 4
  %5 = mul i32 %4, 54
  %6 = lshr exact i32 %5, 1
  %7 = mul i32 %4, 108
  %8 = lshr exact i32 %7, 1
  %9 = icmp ult i32 %8, %1
  %10 = tail call i32 @llvm.umax.i32(i32 %6, i32 %1)
  %11 = select i1 %9, i32 %8, i32 %10
  %12 = shl i32 %11, 1
  %13 = urem i32 %12, %4
  %14 = sub i32 %12, %13
  %15 = lshr i32 %14, 1
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_sys_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = mul i32 %2, 54
  %5 = lshr exact i32 %4, 1
  %6 = icmp ugt i32 %5, %1
  %7 = mul i32 %2, 108
  %8 = lshr exact i32 %7, 1
  %9 = icmp ult i32 %8, %1
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = shl i32 %1, 1
  %13 = udiv i32 %12, %2
  %14 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !9
  %17 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %16, %19
  %21 = or i32 %20, %13
  %22 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #8, !srcloc !11
  %23 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %0)
  br label %24

24:                                               ; preds = %11, %3
  %25 = phi i32 [ %23, %11 ], [ -22, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_pllv3_wait_lock(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, %4
  %8 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = icmp ne i32 %7, 0
  %12 = select i1 %10, i1 true, i1 %11
  %13 = xor i1 %12, true
  %14 = select i1 %10, i1 %11, i1 false
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %1
  %17 = tail call i64 @ktime_get() #8
  %18 = add i64 %17, 10000000
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %28, %16
  %23 = tail call i64 @ktime_get() #8
  %24 = icmp sgt i64 %23, %18
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load ptr, ptr %2, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !9
  br label %32

28:                                               ; preds = %22
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #8
  %29 = load ptr, ptr %2, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !9
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %22, label %32

32:                                               ; preds = %28, %25, %16
  %33 = phi i32 [ %27, %25 ], [ %20, %16 ], [ %30, %28 ]
  %34 = icmp slt i32 %33, 0
  %35 = select i1 %34, i32 0, i32 -110
  br label %36

36:                                               ; preds = %32, %1
  %37 = phi i32 [ %35, %32 ], [ 0, %1 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_vf610_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  %16 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %1 to i64
  %19 = zext i32 %8 to i64
  %20 = mul nuw i64 %19, %18
  %21 = icmp ult i64 %20, 4294967296
  br i1 %21, label %22, label %25, !prof !12

22:                                               ; preds = %2
  %23 = trunc i64 %20 to i32
  %24 = udiv i32 %23, %13
  br label %29

25:                                               ; preds = %2
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %20) #10, !srcloc !13
  %27 = extractvalue { i64, i64 } %26, 1
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %24, %22 ], [ %28, %25 ]
  %31 = and i32 %17, %15
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 20, i32 22
  %34 = mul i32 %33, %1
  %35 = add i32 %30, %34
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_vf610_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = mul i32 %4, 22
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %6, i32 20, i32 22
  %8 = mul i32 %7, %4
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = or i32 %7, 1
  %12 = mul i32 %11, %4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = sub i32 %1, %8
  %16 = zext i32 %15 to i64
  %17 = mul nuw nsw i64 %16, 1073741823
  %18 = icmp ult i64 %17, 4294967296
  br i1 %18, label %19, label %22, !prof !12

19:                                               ; preds = %14
  %20 = trunc i64 %17 to i32
  %21 = udiv i32 %20, %4
  br label %26

22:                                               ; preds = %14
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %17) #10, !srcloc !13
  %24 = extractvalue { i64, i64 } %23, 1
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %22, %19, %10, %3
  %27 = phi i32 [ 0, %3 ], [ 1073741822, %10 ], [ %21, %19 ], [ %25, %22 ]
  %28 = zext i32 %4 to i64
  %29 = zext i32 %27 to i64
  %30 = mul nuw i64 %29, %28
  %31 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9223372028264841208, i64 %30, i32 0) #10, !srcloc !14
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = extractvalue { i64, i32 } %31, 1
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9223372028264841208, i64 %30, i64 %32, i32 %33) #10, !srcloc !15
  %35 = extractvalue { i64, i32 } %34, 0
  %36 = lshr i64 %35, 29
  %37 = trunc i64 %36 to i32
  %38 = add i32 %8, %37
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_vf610_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = mul i32 %2, 22
  %5 = icmp ugt i32 %4, %1
  %6 = select i1 %5, i32 20, i32 22
  %7 = mul i32 %6, %2
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = or i32 %6, 1
  %11 = mul i32 %10, %2
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = sub i32 %1, %7
  %15 = zext i32 %14 to i64
  %16 = mul nuw nsw i64 %15, 1073741823
  %17 = icmp ult i64 %16, 4294967296
  br i1 %17, label %18, label %21, !prof !12

18:                                               ; preds = %13
  %19 = trunc i64 %16 to i32
  %20 = udiv i32 %19, %2
  br label %25

21:                                               ; preds = %13
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %16) #10, !srcloc !13
  %23 = extractvalue { i64, i64 } %22, 1
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %21, %18, %9, %3
  %26 = phi i32 [ 0, %3 ], [ 1073741822, %9 ], [ %20, %18 ], [ %24, %21 ]
  %27 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !9
  %30 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  %34 = or i32 %31, %29
  %35 = select i1 %5, i32 %33, i32 %34
  %36 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #8, !srcloc !11
  %37 = load ptr, ptr %27, align 4
  %38 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %37, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %26) #8, !srcloc !11
  %41 = load ptr, ptr %27, align 4
  %42 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1073741823) #8, !srcloc !11
  %45 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %0)
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  %6 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %5, %7
  %9 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, %10
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %12, i32 22, i32 20
  %14 = mul i32 %13, %1
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_pllv3_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = load i32, ptr %2, align 4
  %5 = mul i32 %4, 22
  %6 = icmp ugt i32 %5, %1
  %7 = mul i32 %4, 20
  %8 = select i1 %6, i32 %7, i32 %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = mul i32 %2, 22
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = mul i32 %2, 20
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %25

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 1, %3 ], [ 0, %6 ]
  %11 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  %14 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %15, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %13, %19
  %21 = shl nuw i32 %10, %17
  %22 = or i32 %20, %21
  %23 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #8, !srcloc !11
  %24 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %0)
  br label %25

25:                                               ; preds = %9, %6
  %26 = phi i32 [ %24, %9 ], [ -22, %6 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_av_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  %16 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %1 to i64
  %19 = zext i32 %8 to i64
  %20 = mul nuw i64 %19, %18
  %21 = icmp ult i64 %20, 4294967296
  br i1 %21, label %22, label %25, !prof !12

22:                                               ; preds = %2
  %23 = trunc i64 %20 to i32
  %24 = udiv i32 %23, %13
  br label %29

25:                                               ; preds = %2
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %20) #10, !srcloc !13
  %27 = extractvalue { i64, i64 } %26, 1
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %24, %22 ], [ %28, %25 ]
  %31 = and i32 %17, %15
  %32 = mul i32 %31, %1
  %33 = add i32 %30, %32
  ret i32 %33
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_pllv3_av_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i32, ptr %2, align 4
  %5 = mul i32 %4, 27
  %6 = mul i32 %4, 54
  %7 = icmp ult i32 %6, %1
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 %1)
  %9 = select i1 %7, i32 %6, i32 %8
  %10 = icmp ult i32 %4, 1073741824
  %11 = select i1 %10, i32 %4, i32 1000000
  %12 = urem i32 %9, %4
  %13 = zext i32 %12 to i64
  %14 = zext i32 %11 to i64
  %15 = mul nuw nsw i64 %14, %13
  %16 = icmp ult i64 %15, 4294967296
  br i1 %16, label %17, label %21, !prof !12

17:                                               ; preds = %3
  %18 = trunc i64 %15 to i32
  %19 = udiv i32 %18, %4
  %20 = zext i32 %19 to i64
  br label %24

21:                                               ; preds = %3
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %15) #10, !srcloc !13
  %23 = extractvalue { i64, i64 } %22, 1
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i64 [ %20, %17 ], [ %23, %21 ]
  %26 = zext i32 %4 to i64
  %27 = and i64 %25, 4294967295
  %28 = mul nuw i64 %27, %26
  %29 = icmp ult i64 %28, 4294967296
  br i1 %29, label %30, label %33, !prof !12

30:                                               ; preds = %24
  %31 = trunc i64 %28 to i32
  %32 = udiv i32 %31, %11
  br label %37

33:                                               ; preds = %24
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %28) #10, !srcloc !13
  %35 = extractvalue { i64, i64 } %34, 1
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i32 [ %32, %30 ], [ %36, %33 ]
  %39 = sub i32 %9, %12
  %40 = add i32 %39, %38
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv3_av_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = mul i32 %2, 27
  %5 = icmp ugt i32 %4, %1
  %6 = mul i32 %2, 54
  %7 = icmp ult i32 %6, %1
  %8 = or i1 %5, %7
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = icmp ult i32 %2, 1073741824
  %11 = select i1 %10, i32 %2, i32 1000000
  %12 = udiv i32 %1, %2
  %13 = mul i32 %12, %2
  %14 = sub i32 %1, %13
  %15 = zext i32 %14 to i64
  %16 = zext i32 %11 to i64
  %17 = mul nuw nsw i64 %15, %16
  %18 = icmp ult i64 %17, 4294967296
  br i1 %18, label %19, label %22, !prof !12

19:                                               ; preds = %9
  %20 = trunc i64 %17 to i32
  %21 = udiv i32 %20, %2
  br label %26

22:                                               ; preds = %9
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %17) #10, !srcloc !13
  %24 = extractvalue { i64, i64 } %23, 1
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %21, %19 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !9
  %31 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  %35 = or i32 %34, %12
  %36 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #8, !srcloc !11
  %37 = load ptr, ptr %28, align 4
  %38 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %37, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %27) #8, !srcloc !11
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %11) #8, !srcloc !11
  %45 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %0)
  br label %46

46:                                               ; preds = %26, %3
  %47 = phi i32 [ %45, %26 ], [ -22, %3 ]
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_pllv3_enet_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.clk_pllv3, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 3374620}
!10 = !{i8 0, i8 2}
!11 = !{i64 3374202}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148663328, i64 2148663608, i64 2148663942, i64 2148664276}
!14 = !{i64 1177784, i64 1177811, i64 1177833, i64 1177861}
!15 = !{i64 1178192, i64 1178219, i64 1178252, i64 1178273, i64 1178300, i64 1178326}
