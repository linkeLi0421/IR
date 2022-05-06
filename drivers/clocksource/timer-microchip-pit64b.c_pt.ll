; ModuleID = '/llk/IR/drivers/clocksource/timer-microchip-pit64b.c_pt.bc'
source_filename = "../drivers/clocksource/timer-microchip-pit64b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mchp_pit64b_timer = type { ptr, ptr, ptr, i32 }
%struct.mchp_pit64b_clkevt = type { %struct.mchp_pit64b_timer, [48 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mchp_pit64b_clksrc = type { %struct.mchp_pit64b_timer, %struct.clocksource }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_mchp_pit64b = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pit64b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp_pit64b_dt_init }, section "__timer_of_table", align 4
@mchp_pit64b_dt_init.inits = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gclk\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\016PIT64B: using clk=%s with prescaler %u, freq=%lu [Hz]\0A\00", align 1
@mchp_pit64b_ce_cycles = internal unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"pit64b\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pit64b_tick\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@mchp_pit64b_cs_base = internal unnamed_addr global ptr null, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_mchp_pit64b], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_dt_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load i32, ptr @mchp_pit64b_dt_init.inits, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @mchp_pit64b_dt_init.inits, align 4
  switch i32 %2, label %8 [
    i32 0, label %5
    i32 1, label %4
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %4 ], [ true, %1 ]
  %7 = tail call fastcc i32 @mchp_pit64b_dt_init_timer(ptr noundef %0, i1 noundef zeroext %6) #8
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ -22, %1 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mchp_pit64b_dt_init_timer(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.mchp_pit64b_timer, align 4
  %4 = select i1 %1, i32 32768, i32 5000000
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %5 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str) #9
  %7 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %6 to i32
  br label %66

11:                                               ; preds = %2
  %12 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  %13 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %3, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  br label %66

17:                                               ; preds = %11
  %18 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  store ptr %18, ptr %3, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %66, label %20

20:                                               ; preds = %17
  br i1 %1, label %21, label %24

21:                                               ; preds = %20
  %22 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ %22, %21 ], [ 0, %20 ]
  %26 = call fastcc i32 @mchp_pit64b_init_mode(ptr noundef nonnull %3, i32 noundef %4) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 4
  %30 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %3, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %13, align 4
  %39 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %37, %32
  %42 = phi ptr [ %38, %37 ], [ %29, %32 ]
  %43 = tail call i32 @clk_get_rate(ptr noundef %42) #9
  %44 = lshr i32 %34, 8
  %45 = and i32 %44, 15
  %46 = add nuw nsw i32 %45, 1
  %47 = udiv i32 %43, %46
  br i1 %1, label %48, label %50

48:                                               ; preds = %41
  %49 = call fastcc i32 @mchp_pit64b_init_clkevt(ptr noundef nonnull %3, i32 noundef %47, i32 noundef %25) #8
  br label %52

50:                                               ; preds = %41
  %51 = call fastcc i32 @mchp_pit64b_init_clksrc(ptr noundef nonnull %3, i32 noundef %47) #8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  br i1 %36, label %58, label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %57) #9
  tail call void @clk_unprepare(ptr noundef %57) #9
  br label %58

58:                                               ; preds = %56, %55, %37
  %59 = phi i32 [ %39, %37 ], [ %53, %56 ], [ %53, %55 ]
  tail call void @clk_disable(ptr noundef %29) #9
  tail call void @clk_unprepare(ptr noundef %29) #9
  br label %60

60:                                               ; preds = %58, %28, %24
  %61 = phi i32 [ %26, %24 ], [ %30, %28 ], [ %59, %58 ]
  tail call void @irq_dispose_mapping(i32 noundef %25) #9
  %62 = load ptr, ptr %3, align 4
  br label %63

63:                                               ; preds = %60, %21
  %64 = phi ptr [ %62, %60 ], [ %18, %21 ]
  %65 = phi i32 [ %61, %60 ], [ -19, %21 ]
  tail call void @iounmap(ptr noundef %64) #9
  br label %66

66:                                               ; preds = %63, %52, %17, %15, %9
  %67 = phi i32 [ %10, %9 ], [ %16, %15 ], [ %65, %63 ], [ -6, %17 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mchp_pit64b_init_mode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_get_rate(ptr noundef %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_round_rate(ptr noundef %10, i32 noundef %1) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = udiv i32 %5, %11
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %30, label %16

16:                                               ; preds = %19, %13
  %17 = phi i32 [ %20, %19 ], [ 0, %13 ]
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = add nuw nsw i32 %17, 1
  %21 = udiv i32 %11, %20
  %22 = icmp ugt i32 %21, %1
  br i1 %22, label %16, label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ 15, %16 ], [ %17, %19 ]
  %25 = add nuw i32 %24, 1
  %26 = udiv i32 %11, %25
  %27 = sub i32 %26, %1
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 false)
  %29 = icmp eq i32 %26, %1
  br i1 %29, label %47, label %30

30:                                               ; preds = %23, %13, %7
  %31 = phi i32 [ 0, %7 ], [ 0, %13 ], [ %24, %23 ]
  %32 = phi i32 [ -1, %7 ], [ -1, %13 ], [ %28, %23 ]
  br label %33

33:                                               ; preds = %36, %30
  %34 = phi i32 [ 0, %30 ], [ %37, %36 ]
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = add nuw nsw i32 %34, 1
  %38 = udiv i32 %5, %37
  %39 = icmp ugt i32 %38, %1
  br i1 %39, label %33, label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ 15, %33 ], [ %34, %36 ]
  %42 = add nuw i32 %41, 1
  %43 = udiv i32 %5, %42
  %44 = sub i32 %43, %1
  %45 = tail call i32 @llvm.abs.i32(i32 %44, i1 false)
  %46 = icmp ugt i32 %32, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %40, %23
  %48 = phi i32 [ %24, %23 ], [ %31, %40 ]
  %49 = load i32, ptr %8, align 4
  %50 = or i32 %49, 8
  store i32 %50, ptr %8, align 4
  %51 = load ptr, ptr %9, align 4
  %52 = tail call i32 @clk_set_rate(ptr noundef %51, i32 noundef %11) #9
  br label %53

53:                                               ; preds = %47, %40
  %54 = phi i32 [ %41, %40 ], [ %48, %47 ]
  %55 = shl i32 %54, 8
  %56 = and i32 %55, 3840
  %57 = load i32, ptr %8, align 4
  %58 = or i32 %56, %57
  store i32 %58, ptr %8, align 4
  %59 = and i32 %57, 8
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, ptr @.str, ptr @.str.1
  %62 = select i1 %60, i32 %5, i32 %11
  %63 = add i32 %54, 1
  %64 = udiv i32 %62, %63
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %61, i32 noundef %54, i32 noundef %64) #10
  br label %66

66:                                               ; preds = %53, %2
  %67 = phi i32 [ 0, %53 ], [ -22, %2 ]
  ret i32 %67
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mchp_pit64b_init_clkevt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = add i32 %1, 50
  %9 = udiv i32 %8, 100
  %10 = zext i32 %9 to i64
  store i64 %10, ptr @mchp_pit64b_ce_cycles, align 8
  %11 = load ptr, ptr %0, align 4
  store ptr %11, ptr %5, align 64
  %12 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %5, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %5, i32 0, i32 2
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %5, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 21
  store ptr @.str.3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 9
  store i32 3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 22
  store i32 150, ptr %23, align 8
  %24 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 14
  store ptr @mchp_pit64b_clkevt_shutdown, ptr %24, align 8
  %25 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 11
  store ptr @mchp_pit64b_clkevt_set_periodic, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 1
  store ptr @mchp_pit64b_clkevt_set_next_event, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 17
  store ptr @mchp_pit64b_clkevt_suspend, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 18
  store ptr @mchp_pit64b_clkevt_resume, ptr %28, align 8
  %29 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 25
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %29, align 4
  %30 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2, i32 23
  store i32 %2, ptr %30, align 4
  %31 = tail call i32 @request_threaded_irq(i32 noundef %2, ptr noundef nonnull @mchp_pit64b_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %36

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %5, i32 0, i32 2
  tail call void @clockevents_config_and_register(ptr noundef %35, i32 noundef %1, i32 noundef 1, i32 noundef -1) #9
  br label %36

36:                                               ; preds = %34, %33, %3
  %37 = phi i32 [ %31, %33 ], [ 0, %34 ], [ -12, %3 ]
  ret i32 %37
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mchp_pit64b_init_clksrc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 120) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 256) #9, !srcloc !9
  %8 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #9, !srcloc !9
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #9, !srcloc !9
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1) #9, !srcloc !9
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #9, !srcloc !9
  %19 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #9, !srcloc !9
  %20 = load ptr, ptr %0, align 4
  store ptr %20, ptr @mchp_pit64b_cs_base, align 4
  store ptr %20, ptr %4, align 8
  %21 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %4, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %4, i32 0, i32 2
  store ptr %25, ptr %26, align 8
  %27 = load i32, ptr %8, align 4
  %28 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %4, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %4, i32 0, i32 1, i32 8
  store ptr @.str.3, ptr %30, align 8
  %31 = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %4, i32 0, i32 1, i32 1
  store i64 -1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %4, i32 0, i32 1, i32 13
  store i32 1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %4, i32 0, i32 1, i32 10
  store i32 210, ptr %33, align 4
  store ptr @mchp_pit64b_clksrc_read, ptr %29, align 8
  %34 = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %4, i32 0, i32 1, i32 16
  store ptr @mchp_pit64b_clksrc_suspend, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %4, i32 0, i32 1, i32 17
  store ptr @mchp_pit64b_clksrc_resume, ptr %35, align 8
  %36 = tail call i32 @__clocksource_register_scale(ptr noundef %29, i32 noundef 1, i32 noundef %1) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %6
  %39 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 256) #9, !srcloc !9
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %41

40:                                               ; preds = %6
  tail call void @sched_clock_register(ptr noundef nonnull @mchp_pit64b_sched_read_clk, i32 noundef 64, i32 noundef %1) #9
  br label %41

41:                                               ; preds = %40, %38, %2
  %42 = phi i32 [ %36, %38 ], [ 0, %40 ], [ -12, %2 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_clkevt_shutdown(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 256) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_clkevt_set_periodic(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load i64, ptr @mchp_pit64b_ce_cycles, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %7 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 256) #9, !srcloc !9
  %8 = getelementptr i8, ptr %0, i32 -52
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #9, !srcloc !9
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #9, !srcloc !9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %4) #9, !srcloc !9
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #9, !srcloc !9
  %19 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_clkevt_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 256) #9, !srcloc !9
  %5 = getelementptr i8, ptr %1, i32 -52
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #9, !srcloc !9
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %0) #9, !srcloc !9
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1) #9, !srcloc !9
  %15 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mchp_pit64b_clkevt_suspend(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 256) #9, !srcloc !9
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -56
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #9
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr i8, ptr %0, i32 -60
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mchp_pit64b_clkevt_resume(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -64
  tail call fastcc void @mchp_pit64b_resume(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_interrupt(i32 noundef %0, ptr noundef %1) #5 {
  %3 = load ptr, ptr %1, align 64
  %4 = getelementptr i8, ptr %3, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  %6 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 64
  tail call void %7(ptr noundef %6) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mchp_pit64b_resume(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %10

10:                                               ; preds = %9, %6, %1
  %11 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #9
  br label %24

24:                                               ; preds = %23, %20, %15, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @mchp_pit64b_clksrc_read(ptr nocapture noundef readnone %0) #5 {
  %2 = load ptr, ptr @mchp_pit64b_cs_base, align 4
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !11
  %4 = getelementptr i8, ptr %2, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  %6 = getelementptr i8, ptr %2, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #9, !srcloc !12
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = zext i32 %5 to i64
  %11 = or i64 %9, %10
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mchp_pit64b_clksrc_suspend(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 256) #9, !srcloc !9
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #9
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mchp_pit64b_clksrc_resume(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call fastcc void @mchp_pit64b_resume(ptr noundef %2)
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 256) #9, !srcloc !9
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !9
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #9, !srcloc !9
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #9, !srcloc !9
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #9, !srcloc !9
  %15 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @mchp_pit64b_sched_read_clk() #5 {
  %1 = load ptr, ptr @mchp_pit64b_cs_base, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !11
  %3 = getelementptr i8, ptr %1, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !10
  %5 = getelementptr i8, ptr %1, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #9, !srcloc !12
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = zext i32 %4 to i64
  %10 = or i64 %8, %9
  ret i64 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
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
!9 = !{i64 2837180}
!10 = !{i64 2837598}
!11 = !{i64 347778, i64 347839}
!12 = !{i64 350795}
