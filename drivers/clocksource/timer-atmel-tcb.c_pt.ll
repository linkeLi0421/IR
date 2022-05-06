; ModuleID = '/llk/IR/drivers/clocksource/timer-atmel-tcb.c_pt.bc'
source_filename = "../drivers/clocksource/timer-atmel-tcb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tc_clkevt_device = type { %struct.clock_event_device, ptr, i32, ptr, [52 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.delay_timer = type { ptr, i32 }
%struct.atmel_tcb_config = type { i32, i8, i8 }
%struct.anon.4 = type { i32, i32, i32, i8 }
%struct.atmel_tc = type { ptr, ptr, i32, ptr, [3 x i32], [3 x ptr], ptr, %struct.list_head, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__of_table_atmel_tcb_clksrc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,tcb-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_clksrc_init }, section "__timer_of_table", align 4
@tcaddr = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [7 x i8] c"t0_clk\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"slow_clk\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"t1_clk\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"t2_clk\00", align 1
@atmel_tcb_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sam9x5_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sama5d2_config }, %struct.of_device_id zeroinitializer], align 4
@atmel_tcb_divisors = internal unnamed_addr constant [4 x i8] c"\02\08 \80", align 1
@clksrc = internal global %struct.clocksource { ptr @tc_get_cycles, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr null, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 1, ptr null, ptr null, ptr @tc_clksrc_suspend, ptr @tc_clksrc_resume, ptr null, ptr null, ptr null }, align 8
@clkevt = internal global %struct.tc_clkevt_device { %struct.clock_event_device { ptr null, ptr @tc_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @tc_set_periodic, ptr @tc_set_oneshot, ptr null, ptr @tc_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 125, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, ptr null, i32 0, ptr null, [52 x i8] undef }, align 64
@tc_delay_timer = internal global %struct.delay_timer zeroinitializer, align 4
@tcb_rm9200_config = internal global %struct.atmel_tcb_config { i32 16, i8 0, i8 0 }, align 4
@tcb_sam9x5_config = internal global %struct.atmel_tcb_config { i32 32, i8 0, i8 0 }, align 4
@tcb_sama5d2_config = internal global %struct.atmel_tcb_config { i32 32, i8 1, i8 0 }, align 4
@tcb_cache = internal unnamed_addr global [3 x %struct.anon.4] zeroinitializer, align 4
@bmr_cache = internal unnamed_addr global i32 0, align 4
@timer_clock = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"tc_clkevt\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_atmel_tcb_clksrc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tcb_clksrc_init(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = alloca %struct.atmel_tc, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i32 56, i1 false), !annotation !8
  %3 = load ptr, ptr @tcaddr, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %123

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @of_iomap(ptr noundef %7, i32 noundef 0) #7
  %9 = getelementptr inbounds %struct.atmel_tc, ptr %2, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %123, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = tail call ptr @of_clk_get_by_name(ptr noundef %12, ptr noundef nonnull @.str) #7
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %13 to i32
  br label %123

17:                                               ; preds = %11
  %18 = load ptr, ptr %6, align 4
  %19 = tail call ptr @of_clk_get_by_name(ptr noundef %18, ptr noundef nonnull @.str.1) #7
  %20 = getelementptr inbounds %struct.atmel_tc, ptr %2, i32 0, i32 6
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i32
  br label %123

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.atmel_tc, ptr %2, i32 0, i32 5
  store ptr %13, ptr %25, align 4
  %26 = load ptr, ptr %6, align 4
  %27 = tail call ptr @of_clk_get_by_name(ptr noundef %26, ptr noundef nonnull @.str.2) #7
  %28 = getelementptr inbounds %struct.atmel_tc, ptr %2, i32 0, i32 5, i32 1
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %30 = select i1 %29, ptr %13, ptr %27
  store ptr %30, ptr %28, align 4
  %31 = load ptr, ptr %6, align 4
  %32 = tail call ptr @of_clk_get_by_name(ptr noundef %31, ptr noundef nonnull @.str.3) #7
  %33 = getelementptr inbounds %struct.atmel_tc, ptr %2, i32 0, i32 5, i32 2
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %35 = select i1 %34, ptr %13, ptr %32
  store ptr %35, ptr %33, align 4
  %36 = load ptr, ptr %6, align 4
  %37 = tail call i32 @of_irq_get(ptr noundef %36, i32 noundef 2) #7
  %38 = getelementptr inbounds %struct.atmel_tc, ptr %2, i32 0, i32 4, i32 2
  store i32 %37, ptr %38, align 4
  %39 = icmp slt i32 %37, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = load ptr, ptr %6, align 4
  %42 = tail call i32 @of_irq_get(ptr noundef %41, i32 noundef 0) #7
  store i32 %42, ptr %38, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %123, label %44

44:                                               ; preds = %40, %24
  %45 = load ptr, ptr %6, align 4
  %46 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_tcb_of_match, ptr noundef %45) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %123, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.of_device_id, ptr %46, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.atmel_tc, ptr %2, i32 0, i32 3
  store ptr %50, ptr %51, align 4
  %52 = load i32, ptr %50, align 4
  br label %53

53:                                               ; preds = %53, %48
  %54 = phi i32 [ 0, %48 ], [ %58, %53 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %55 = shl nuw nsw i32 %54, 6
  %56 = or i32 %55, 40
  %57 = getelementptr i8, ptr %8, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 255) #7, !srcloc !10
  %58 = add nuw nsw i32 %54, 1
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %53

60:                                               ; preds = %53
  %61 = tail call i32 @clk_prepare(ptr noundef %13) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %123

63:                                               ; preds = %60
  %64 = tail call i32 @clk_enable(ptr noundef %13) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %123

67:                                               ; preds = %63
  %68 = tail call i32 @clk_get_rate(ptr noundef %13) #7
  %69 = getelementptr inbounds %struct.atmel_tcb_config, ptr %50, i32 0, i32 1
  %70 = load i8, ptr %69, align 4, !range !11
  %71 = zext i8 %70 to i32
  %72 = getelementptr [4 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = udiv i32 %68, %74
  br label %76

76:                                               ; preds = %81, %67
  %77 = phi i32 [ %75, %67 ], [ %85, %81 ]
  %78 = phi i32 [ %71, %67 ], [ %79, %81 ]
  %79 = add nuw nsw i32 %78, 1
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = getelementptr [4 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %79
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = udiv i32 %68, %84
  %86 = icmp ult i32 %85, 5000000
  br i1 %86, label %87, label %76

87:                                               ; preds = %81, %76
  %88 = phi i32 [ %78, %81 ], [ 3, %76 ]
  %89 = load ptr, ptr %6, align 4
  %90 = getelementptr inbounds %struct.device_node, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = tail call ptr @strrchr(ptr noundef %91, i32 noundef 47) #7
  %93 = icmp eq ptr %92, null
  %94 = getelementptr i8, ptr %92, i32 1
  %95 = select i1 %93, ptr %91, ptr %94
  store ptr %95, ptr getelementptr inbounds (%struct.clocksource, ptr @clksrc, i32 0, i32 8), align 8
  %96 = load ptr, ptr %90, align 4
  %97 = tail call ptr @strrchr(ptr noundef %96, i32 noundef 47) #7
  %98 = icmp eq ptr %97, null
  %99 = getelementptr i8, ptr %97, i32 1
  %100 = select i1 %98, ptr %96, ptr %99
  store ptr %100, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 0, i32 21), align 4
  store ptr %8, ptr @tcaddr, align 4
  %101 = icmp eq i32 %52, 32
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  store ptr @tc_get_cycles32, ptr @clksrc, align 8
  tail call fastcc void @tcb_setup_single_chan(i32 noundef %88) #8
  br label %107

103:                                              ; preds = %87
  %104 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %30)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  tail call fastcc void @tcb_setup_dual_chan(i32 noundef %88) #8
  br label %107

107:                                              ; preds = %106, %102
  %108 = phi ptr [ @tc_delay_timer_read, %106 ], [ @tc_delay_timer_read32, %102 ]
  %109 = phi ptr [ @tc_sched_clock_read, %106 ], [ @tc_sched_clock_read32, %102 ]
  store ptr %108, ptr @tc_delay_timer, align 4
  %110 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @clksrc, i32 noundef 1, i32 noundef %77) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = call fastcc i32 @setup_clkevents(ptr noundef nonnull %2, i32 noundef %88) #8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  tail call void @sched_clock_register(ptr noundef nonnull %109, i32 noundef 32, i32 noundef %77) #7
  store i32 %77, ptr getelementptr inbounds (%struct.delay_timer, ptr @tc_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @tc_delay_timer) #7
  br label %123

116:                                              ; preds = %112
  %117 = tail call i32 @clocksource_unregister(ptr noundef nonnull @clksrc) #7
  br label %118

118:                                              ; preds = %116, %107
  %119 = phi i32 [ %110, %107 ], [ %113, %116 ]
  br i1 %101, label %121, label %120

120:                                              ; preds = %118
  tail call void @clk_disable(ptr noundef %30) #7
  tail call void @clk_unprepare(ptr noundef %30) #7
  br label %121

121:                                              ; preds = %120, %118, %103
  %122 = phi i32 [ %119, %120 ], [ %119, %118 ], [ %104, %103 ]
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  store ptr null, ptr @tcaddr, align 4
  br label %123

123:                                              ; preds = %121, %115, %66, %60, %44, %40, %22, %15, %5, %1
  %124 = phi i32 [ %16, %15 ], [ %23, %22 ], [ %122, %121 ], [ 0, %115 ], [ 0, %1 ], [ -6, %5 ], [ -22, %40 ], [ -19, %44 ], [ %64, %66 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #7
  ret i32 %124
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @tc_get_cycles32(ptr nocapture noundef readnone %0) #5 {
  %2 = load ptr, ptr @tcaddr, align 4
  %3 = getelementptr i8, ptr %2, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !12
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tcb_setup_single_chan(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2 = or i32 %0, 32768
  %3 = load ptr, ptr @tcaddr, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %5 = load ptr, ptr @tcaddr, align 4
  %6 = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 255) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr @tcaddr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr @tcaddr, align 4
  %9 = getelementptr i8, ptr %8, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @tc_sched_clock_read32() #5 {
  %1 = load ptr, ptr @tcaddr, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !12
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_delay_timer_read32() #5 {
  %1 = load ptr, ptr @tcaddr, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !12
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tcb_setup_dual_chan(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %2 = or i32 %0, 622592
  %3 = load ptr, ptr @tcaddr, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %5 = load ptr, ptr @tcaddr, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr @tcaddr, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 32768) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr @tcaddr, align 4
  %10 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 255) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr @tcaddr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr @tcaddr, align 4
  %13 = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 32774) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %14 = load ptr, ptr @tcaddr, align 4
  %15 = getelementptr i8, ptr %14, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 255) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %16 = load ptr, ptr @tcaddr, align 4
  %17 = getelementptr i8, ptr %16, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %18 = load ptr, ptr @tcaddr, align 4
  %19 = getelementptr i8, ptr %18, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 8) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %20 = load ptr, ptr @tcaddr, align 4
  %21 = getelementptr i8, ptr %20, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @tc_sched_clock_read() #5 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !27
  br label %2

2:                                                ; preds = %2, %0
  %3 = load ptr, ptr @tcaddr, align 4
  %4 = getelementptr i8, ptr %3, i32 80
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !12
  %6 = load ptr, ptr @tcaddr, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !12
  %9 = load ptr, ptr @tcaddr, align 4
  %10 = getelementptr i8, ptr %9, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !12
  %12 = icmp eq i32 %5, %11
  br i1 %12, label %13, label %2

13:                                               ; preds = %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #7, !srcloc !28
  %14 = shl i32 %5, 16
  %15 = or i32 %8, %14
  %16 = zext i32 %15 to i64
  ret i64 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_delay_timer_read() #5 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !27
  br label %2

2:                                                ; preds = %2, %0
  %3 = load ptr, ptr @tcaddr, align 4
  %4 = getelementptr i8, ptr %3, i32 80
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !12
  %6 = load ptr, ptr @tcaddr, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !12
  %9 = load ptr, ptr @tcaddr, align 4
  %10 = getelementptr i8, ptr %9, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !12
  %12 = icmp eq i32 %5, %11
  br i1 %12, label %13, label %2

13:                                               ; preds = %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #7, !srcloc !28
  %14 = shl i32 %5, 16
  %15 = or i32 %8, %14
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @setup_clkevents(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr %struct.atmel_tc, ptr %0, i32 0, i32 5, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.atmel_tc, ptr %0, i32 0, i32 4, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_tc, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = tail call i32 @clk_enable(ptr noundef %4) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %51

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.atmel_tc, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 3), align 8
  store ptr %4, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 1), align 64
  %19 = icmp eq i32 %9, 32
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  store i32 %1, ptr @timer_clock, align 4
  %21 = tail call i32 @clk_get_rate(ptr noundef %4) #7
  %22 = getelementptr [4 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = udiv i32 %21, %24
  store i32 %25, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 2), align 4
  br label %40

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.atmel_tc, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @clk_prepare(ptr noundef %28) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = tail call i32 @clk_enable(ptr noundef %28) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  tail call void @clk_unprepare(ptr noundef %28) #7
  br label %35

35:                                               ; preds = %34, %26
  %36 = phi i32 [ %32, %34 ], [ %29, %26 ]
  tail call void @clk_disable(ptr noundef %4) #7
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %51

37:                                               ; preds = %31
  %38 = load ptr, ptr %27, align 4
  %39 = tail call i32 @clk_get_rate(ptr noundef %38) #7
  store i32 %39, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 2), align 4
  store i32 4, ptr @timer_clock, align 4
  br label %40

40:                                               ; preds = %37, %20
  tail call void @clk_disable(ptr noundef %4) #7
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 0, i32 25), align 4
  %41 = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @ch2_irq, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.4, ptr noundef nonnull @clkevt) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  tail call void @clk_unprepare(ptr noundef %4) #7
  br i1 %19, label %51, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.atmel_tc, ptr %0, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  tail call void @clk_disable(ptr noundef %46) #7
  tail call void @clk_unprepare(ptr noundef %46) #7
  br label %51

47:                                               ; preds = %40
  %48 = load i32, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 2), align 4
  %49 = shl nsw i32 -1, %9
  %50 = xor i32 %49, -1
  tail call void @clockevents_config_and_register(ptr noundef nonnull @clkevt, i32 noundef %48, i32 noundef 1, i32 noundef %50) #7
  br label %51

51:                                               ; preds = %47, %44, %43, %35, %15, %2
  %52 = phi i32 [ 0, %47 ], [ %36, %35 ], [ %41, %44 ], [ %41, %43 ], [ %13, %15 ], [ %10, %2 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @tc_get_cycles(ptr nocapture noundef readnone %0) #5 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !27
  br label %3

3:                                                ; preds = %3, %1
  %4 = load ptr, ptr @tcaddr, align 4
  %5 = getelementptr i8, ptr %4, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !12
  %7 = load ptr, ptr @tcaddr, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !12
  %10 = load ptr, ptr @tcaddr, align 4
  %11 = getelementptr i8, ptr %10, i32 80
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !12
  %13 = icmp eq i32 %6, %12
  br i1 %13, label %14, label %3

14:                                               ; preds = %3
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #7, !srcloc !28
  %15 = shl i32 %6, 16
  %16 = or i32 %9, %15
  %17 = zext i32 %16 to i64
  ret i64 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc_clksrc_suspend(ptr nocapture noundef readnone %0) #5 {
  %2 = load ptr, ptr @tcaddr, align 4
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  store i32 %4, ptr @tcb_cache, align 4
  %5 = load ptr, ptr @tcaddr, align 4
  %6 = getelementptr i8, ptr %5, i32 44
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  store i32 %7, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 0, i32 1), align 4
  %8 = load ptr, ptr @tcaddr, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  store i32 %10, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 0, i32 2), align 4
  %11 = load ptr, ptr @tcaddr, align 4
  %12 = getelementptr i8, ptr %11, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !32
  %14 = lshr i32 %13, 16
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  store i8 %16, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 0, i32 3), align 4
  %17 = load ptr, ptr @tcaddr, align 4
  %18 = getelementptr i8, ptr %17, i32 68
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  store i32 %19, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 1), align 4
  %20 = load ptr, ptr @tcaddr, align 4
  %21 = getelementptr i8, ptr %20, i32 108
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  store i32 %22, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 1, i32 1), align 4
  %23 = load ptr, ptr @tcaddr, align 4
  %24 = getelementptr i8, ptr %23, i32 92
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  store i32 %25, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 1, i32 2), align 4
  %26 = load ptr, ptr @tcaddr, align 4
  %27 = getelementptr i8, ptr %26, i32 96
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !32
  %29 = lshr i32 %28, 16
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  store i8 %31, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 1, i32 3), align 4
  %32 = load ptr, ptr @tcaddr, align 4
  %33 = getelementptr i8, ptr %32, i32 132
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  store i32 %34, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 2), align 4
  %35 = load ptr, ptr @tcaddr, align 4
  %36 = getelementptr i8, ptr %35, i32 172
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  store i32 %37, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 2, i32 1), align 4
  %38 = load ptr, ptr @tcaddr, align 4
  %39 = getelementptr i8, ptr %38, i32 156
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  store i32 %40, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 2, i32 2), align 4
  %41 = load ptr, ptr @tcaddr, align 4
  %42 = getelementptr i8, ptr %41, i32 160
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !32
  %44 = lshr i32 %43, 16
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  store i8 %46, ptr getelementptr inbounds ([3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 2, i32 3), align 4
  %47 = load ptr, ptr @tcaddr, align 4
  %48 = getelementptr i8, ptr %47, i32 196
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  store i32 %49, ptr @bmr_cache, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc_clksrc_resume(ptr nocapture noundef readnone %0) #5 {
  br label %2

2:                                                ; preds = %35, %1
  %3 = phi i32 [ 0, %1 ], [ %36, %35 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr [3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr @tcaddr, align 4
  %7 = shl nuw nsw i32 %3, 6
  %8 = or i32 %7, 4
  %9 = getelementptr i8, ptr %6, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %5) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr [3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 %3, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr @tcaddr, align 4
  %13 = or i32 %7, 28
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %15 = load ptr, ptr @tcaddr, align 4
  %16 = or i32 %7, 20
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %18 = load ptr, ptr @tcaddr, align 4
  %19 = or i32 %7, 24
  %20 = getelementptr i8, ptr %18, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr @tcaddr, align 4
  %22 = or i32 %7, 40
  %23 = getelementptr i8, ptr %21, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 255) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %24 = getelementptr [3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 %3, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr @tcaddr, align 4
  %27 = or i32 %7, 36
  %28 = getelementptr i8, ptr %26, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #7, !srcloc !10
  %29 = getelementptr [3 x %struct.anon.4], ptr @tcb_cache, i32 0, i32 %3, i32 3
  %30 = load i8, ptr %29, align 4, !range !11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %33 = load ptr, ptr @tcaddr, align 4
  %34 = getelementptr i8, ptr %33, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1) #7, !srcloc !10
  br label %35

35:                                               ; preds = %32, %2
  %36 = add nuw nsw i32 %3, 1
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %2

38:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %39 = load i32, ptr @bmr_cache, align 4
  %40 = load ptr, ptr @tcaddr, align 4
  %41 = getelementptr i8, ptr %40, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %42 = load ptr, ptr @tcaddr, align 4
  %43 = getelementptr i8, ptr %42, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #5 {
  %3 = load ptr, ptr @tcaddr, align 4
  %4 = getelementptr i8, ptr %3, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %0) #7, !srcloc !10
  %5 = load ptr, ptr @tcaddr, align 4
  %6 = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 5) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_set_periodic(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.tc_clkevt_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %9 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 255) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 2) #7, !srcloc !10
  %11 = load i32, ptr %4, align 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tc_clkevt_device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 64
  tail call void @clk_disable(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %13, %8, %1
  %17 = getelementptr inbounds %struct.tc_clkevt_device, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 64
  %19 = tail call i32 @clk_enable(ptr noundef %18) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %20 = load i32, ptr @timer_clock, align 4
  %21 = or i32 %20, 49152
  %22 = getelementptr i8, ptr %3, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %23 = getelementptr inbounds %struct.tc_clkevt_device, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 50
  %26 = udiv i32 %25, 100
  %27 = load ptr, ptr @tcaddr, align 4
  %28 = getelementptr i8, ptr %27, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %29 = getelementptr i8, ptr %3, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 16) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %30 = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 5) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_set_oneshot(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.tc_clkevt_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %9 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 255) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 2) #7, !srcloc !10
  %11 = load i32, ptr %4, align 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tc_clkevt_device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 64
  tail call void @clk_disable(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %13, %8, %1
  %17 = getelementptr inbounds %struct.tc_clkevt_device, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 64
  %19 = tail call i32 @clk_enable(ptr noundef %18) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %20 = load i32, ptr @timer_clock, align 4
  %21 = or i32 %20, 49216
  %22 = getelementptr i8, ptr %3, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %23 = getelementptr i8, ptr %3, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 16) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_shutdown(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.tc_clkevt_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 255) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %5 = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 2) #7, !srcloc !10
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tc_clkevt_device, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 64
  tail call void @clk_disable(ptr noundef %11) #7
  br label %12

12:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ch2_irq(i32 noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.tc_clkevt_device, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 160
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !12
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 64
  tail call void %10(ptr noundef %1) #7
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold }

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
!9 = !{i64 2151393073}
!10 = !{i64 2801420}
!11 = !{i8 0, i8 2}
!12 = !{i64 2801838}
!13 = !{i64 2151390449}
!14 = !{i64 2151391005}
!15 = !{i64 2151391444}
!16 = !{i64 2151391798}
!17 = !{i64 2151385753}
!18 = !{i64 2151386357}
!19 = !{i64 2151386787}
!20 = !{i64 2151387217}
!21 = !{i64 2151387656}
!22 = !{i64 2151388147}
!23 = !{i64 2151388629}
!24 = !{i64 2151389068}
!25 = !{i64 2151389422}
!26 = !{i64 2151389757}
!27 = !{i64 345151, i64 345212}
!28 = !{i64 348168}
!29 = !{i64 2151372065}
!30 = !{i64 2151372523}
!31 = !{i64 2151372979}
!32 = !{i64 2151373435}
!33 = !{i64 2151373772}
!34 = !{i64 2151374423}
!35 = !{i64 2151374882}
!36 = !{i64 2151375325}
!37 = !{i64 2151375740}
!38 = !{i64 2151376160}
!39 = !{i64 2151376598}
!40 = !{i64 2151377061}
!41 = !{i64 2151377407}
!42 = !{i64 2151377744}
!43 = !{i64 2151380332}
!44 = !{i64 2151380767}
!45 = !{i64 2151382276}
!46 = !{i64 2151382811}
!47 = !{i64 2151383296}
!48 = !{i64 2151383761}
!49 = !{i64 2151381270}
!50 = !{i64 2151381793}
