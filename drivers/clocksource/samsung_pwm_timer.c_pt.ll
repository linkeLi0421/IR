; ModuleID = '/llk/IR/drivers/clocksource/samsung_pwm_timer.c_pt.bc'
source_filename = "../drivers/clocksource/samsung_pwm_timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_samsung_pwm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22samsung_pwm_lock\22\09\09\09\09\09"
module asm "__kstrtabns_samsung_pwm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.samsung_pwm_clocksource = type { ptr, ptr, [5 x i32], %struct.samsung_pwm_variant, ptr, i32, i32, i32, i32, i32, i32 }
%struct.samsung_pwm_variant = type { i8, i8, i8, i8, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@samsung_pwm_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@__kstrtab_samsung_pwm_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_samsung_pwm_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_samsung_pwm_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @samsung_pwm_lock to i32), ptr @__kstrtab_samsung_pwm_lock, ptr @__kstrtabns_samsung_pwm_lock }, section "___ksymtab+samsung_pwm_lock", align 4
@pwm = internal unnamed_addr global %struct.samsung_pwm_clocksource zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"timers\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get timers clock for timer\00", align 1
@__of_table_s3c2410_pwm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2410_pwm_clocksource_init }, section "__timer_of_table", align 4
@__of_table_s3c6400_pwm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6400-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c64xx_pwm_clocksource_init }, section "__timer_of_table", align 4
@__of_table_s5p6440_pwm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5p6440-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p64x0_pwm_clocksource_init }, section "__timer_of_table", align 4
@__of_table_s5pc100_pwm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pc100-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p_pwm_clocksource_init }, section "__timer_of_table", align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\012failed to find PWM channel for clocksource\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\012failed to find PWM channel for clock event\0A\00", align 1
@time_event_device = internal global %struct.clock_event_device { ptr null, ptr @samsung_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @samsung_set_periodic, ptr @samsung_shutdown, ptr null, ptr @samsung_shutdown, ptr @samsung_shutdown, ptr null, ptr null, ptr @samsung_clockevent_resume, i32 0, i32 0, ptr @.str.6, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@.str.4 = private unnamed_addr constant [17 x i8] c"samsung_time_irq\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\013%s: request_irq() failed\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"samsung_event_timer\00", align 1
@samsung_clocksource = internal global %struct.clocksource { ptr @samsung_clocksource_read, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.7, %struct.list_head zeroinitializer, i32 250, i32 0, i32 0, i32 1, ptr null, ptr null, ptr @samsung_clocksource_suspend, ptr @samsung_clocksource_resume, ptr null, ptr null, ptr null }, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"samsung_clocksource_timer\00", align 1
@s3c24xx_variant = internal constant %struct.samsung_pwm_variant { i8 16, i8 1, i8 16, i8 0, i8 0 }, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"samsung,pwm-outputs\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"\014%s: invalid channel index in samsung,pwm-outputs property\0A\00", align 1
@__func__.samsung_pwm_alloc = private unnamed_addr constant [18 x i8] c"samsung_pwm_alloc\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\013%s: failed to map PWM registers\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"\012failed to get timers clock for timer\0A\00", align 1
@s3c64xx_variant = internal constant %struct.samsung_pwm_variant { i8 32, i8 0, i8 -32, i8 0, i8 1 }, align 1
@s5p64x0_variant = internal constant %struct.samsung_pwm_variant { i8 32, i8 0, i8 0, i8 0, i8 1 }, align 1
@s5p_variant = internal constant %struct.samsung_pwm_variant { i8 32, i8 0, i8 32, i8 0, i8 1 }, align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_samsung_pwm_lock, ptr @__of_table_s3c2410_pwm, ptr @__of_table_s3c6400_pwm, ptr @__of_table_s5p6440_pwm, ptr @__of_table_s5pc100_pwm], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_pwm_clocksource_init(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 section ".init.text" {
  store ptr %0, ptr @pwm, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), ptr noundef align 1 dereferenceable(5) %2, i32 5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 2), ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %4 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str) #8
  store ptr %4, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #9
  unreachable

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @_samsung_pwm_clocksource_init() #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @_samsung_pwm_clocksource_init() unnamed_addr #0 section ".init.text" {
  %1 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 3), align 1
  %2 = and i8 %1, 31
  %3 = xor i8 %2, 31
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #8, !range !8
  %7 = sub nsw i32 31, %6
  %8 = select i1 %5, i32 -1, i32 %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %27

12:                                               ; preds = %0
  store i32 %8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %13 = shl nuw i32 1, %8
  %14 = trunc i32 %13 to i8
  %15 = xor i8 %14, -1
  %16 = and i8 %3, %15
  %17 = zext i8 %16 to i32
  %18 = icmp eq i8 %16, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #8, !range !8
  %20 = sub nsw i32 31, %19
  %21 = select i1 %18, i32 -1, i32 %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %27

25:                                               ; preds = %12
  store i32 %21, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  tail call fastcc void @samsung_timer_resources() #10
  tail call fastcc void @samsung_clockevent_init() #10
  %26 = tail call fastcc i32 @samsung_clocksource_init() #10
  br label %27

27:                                               ; preds = %25, %23, %10
  %28 = phi i32 [ -22, %10 ], [ -22, %23 ], [ %26, %25 ]
  ret i32 %28
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @s3c2410_pwm_clocksource_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @samsung_pwm_alloc(ptr noundef %0, ptr noundef nonnull @s3c24xx_variant) #10
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @s3c64xx_pwm_clocksource_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @samsung_pwm_alloc(ptr noundef %0, ptr noundef nonnull @s3c64xx_variant) #10
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @s5p64x0_pwm_clocksource_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @samsung_pwm_alloc(ptr noundef %0, ptr noundef nonnull @s5p64x0_variant) #10
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @s5p_pwm_clocksource_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @samsung_pwm_alloc(ptr noundef %0, ptr noundef nonnull @s5p_variant) #10
  ret i32 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @samsung_timer_resources() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %2 = tail call i32 @clk_prepare(ptr noundef %1) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = tail call i32 @clk_enable(ptr noundef %1) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %8

8:                                                ; preds = %7, %4, %0
  %9 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), align 4
  %10 = zext i8 %9 to i32
  %11 = shl nsw i32 -1, %10
  %12 = xor i32 %11, -1
  store i32 %12, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 7), align 4
  %13 = icmp eq i8 %9, 16
  %14 = select i1 %13, i32 25, i32 2
  %15 = select i1 %13, i32 2, i32 1
  store i32 %14, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  store i32 %15, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @samsung_clockevent_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %2 = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %3 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %5 = trunc i32 %4 to i16
  tail call fastcc void @samsung_timer_set_prescale(i32 noundef %3, i16 noundef zeroext %5)
  %6 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %8 = trunc i32 %7 to i8
  tail call fastcc void @samsung_timer_set_divisor(i32 noundef %6, i8 noundef zeroext %8)
  %9 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %11 = mul i32 %10, %9
  %12 = udiv i32 %2, %11
  %13 = udiv i32 %12, 100
  store i32 %13, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 10), align 4
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @time_event_device, i32 0, i32 25), align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 7), align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @time_event_device, i32 noundef %12, i32 noundef 1, i32 noundef %14) #8
  %15 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %16 = getelementptr %struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 2, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @samsung_clock_event_isr, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.4, ptr noundef nonnull @time_event_device) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %0
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #11
  br label %22

22:                                               ; preds = %20, %0
  %23 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 4), align 4, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %27 = shl nuw i32 1, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %28 = shl i32 %27, 5
  %29 = or i32 %28, %27
  %30 = load ptr, ptr @pwm, align 4
  %31 = getelementptr i8, ptr %30, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !11
  br label %32

32:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @samsung_clocksource_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %2 = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %3 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %5 = trunc i32 %4 to i16
  tail call fastcc void @samsung_timer_set_prescale(i32 noundef %3, i16 noundef zeroext %5)
  %6 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %8 = trunc i32 %7 to i8
  tail call fastcc void @samsung_timer_set_divisor(i32 noundef %6, i8 noundef zeroext %8)
  %9 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 7), align 4
  %13 = icmp eq i32 %11, 0
  %14 = add i32 %11, 1
  %15 = select i1 %13, i32 0, i32 %14
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %17 = load ptr, ptr @pwm, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !12
  %20 = shl i32 %15, 2
  %21 = icmp ult i32 %15, 5
  %22 = select i1 %21, i32 3, i32 2
  %23 = or i32 %22, %20
  %24 = shl nuw i32 1, %23
  %25 = shl nuw i32 1, %20
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %19, %27
  %29 = or i32 %20, 1
  %30 = shl nuw i32 1, %29
  %31 = or i32 %28, %30
  %32 = load ptr, ptr @pwm, align 4
  %33 = mul i32 %11, 12
  %34 = add i32 %33, 12
  %35 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %12) #8, !srcloc !11
  %36 = load ptr, ptr @pwm, align 4
  %37 = add i32 %33, 16
  %38 = getelementptr i8, ptr %36, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %12) #8, !srcloc !11
  %39 = load ptr, ptr @pwm, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %31) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %16) #8
  %41 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %42 = icmp eq i32 %41, 0
  %43 = add i32 %41, 1
  %44 = select i1 %42, i32 0, i32 %43
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %46 = load ptr, ptr @pwm, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !12
  %49 = shl i32 %44, 2
  %50 = or i32 %49, 1
  %51 = shl nuw i32 1, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  %54 = shl nuw i32 1, %49
  %55 = or i32 %53, %54
  %56 = icmp ult i32 %44, 5
  %57 = select i1 %56, i32 3, i32 2
  %58 = or i32 %57, %49
  %59 = shl nuw i32 1, %58
  %60 = or i32 %55, %59
  %61 = load ptr, ptr @pwm, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %45) #8
  %63 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %64 = icmp eq i32 %63, 4
  %65 = load ptr, ptr @pwm, align 4
  %66 = mul i32 %63, 12
  %67 = getelementptr i8, ptr %65, i32 %66
  %68 = getelementptr i8, ptr %67, i32 20
  %69 = getelementptr i8, ptr %65, i32 64
  %70 = select i1 %64, ptr %69, ptr %68
  store ptr %70, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 1), align 4
  %71 = mul i32 %10, %9
  %72 = udiv i32 %2, %71
  %73 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), align 4
  %74 = zext i8 %73 to i32
  tail call void @sched_clock_register(ptr noundef nonnull @samsung_read_sched_clock, i32 noundef %74, i32 noundef %72) #8
  %75 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), align 4
  %76 = zext i8 %75 to i32
  %77 = sub nsw i32 64, %76
  %78 = zext i32 %77 to i64
  %79 = lshr i64 -1, %78
  store i64 %79, ptr getelementptr inbounds (%struct.clocksource, ptr @samsung_clocksource, i32 0, i32 1), align 8
  %80 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @samsung_clocksource, i32 noundef 1, i32 noundef %72) #8
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @samsung_timer_set_prescale(i32 noundef %0, i16 noundef zeroext %1) unnamed_addr #7 {
  %3 = icmp ugt i32 %0, 1
  %4 = select i1 %3, i32 8, i32 0
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %6 = load ptr, ptr @pwm, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %8 = shl nuw nsw i32 255, %4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = zext i16 %1 to i32
  %12 = add nsw i32 %11, -1
  %13 = shl nsw i32 %12, %4
  %14 = or i32 %10, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr @pwm, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @samsung_timer_set_divisor(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #7 {
  %3 = shl i32 %0, 2
  %4 = zext i8 %1 to i32
  %5 = icmp eq i8 %1, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #8, !range !8
  %7 = sub nuw nsw i32 32, %6
  %8 = select i1 %5, i32 0, i32 %7
  %9 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 1), align 1
  %10 = zext i8 %9 to i32
  %11 = xor i32 %10, -1
  %12 = add nsw i32 %8, %11
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %14 = load ptr, ptr @pwm, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %17 = and i32 %3, 252
  %18 = shl i32 15, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %16, %19
  %21 = and i32 %12, 255
  %22 = shl i32 %21, %17
  %23 = or i32 %20, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr @pwm, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %13) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_clock_event_isr(i32 noundef %0, ptr noundef %1) #7 {
  %3 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 4), align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %7 = shl nuw i32 1, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %8 = shl i32 %7, 5
  %9 = or i32 %8, %7
  %10 = load ptr, ptr @pwm, align 4
  %11 = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !11
  br label %12

12:                                               ; preds = %5, %2
  %13 = load ptr, ptr %1, align 64
  tail call void %13(ptr noundef %1) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #7 {
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 1, i32 %0
  %5 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %6 = icmp eq i32 %5, 0
  %7 = add i32 %5, 1
  %8 = select i1 %6, i32 0, i32 %7
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %10 = load ptr, ptr @pwm, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !12
  %13 = shl i32 %8, 2
  %14 = icmp ult i32 %8, 5
  %15 = select i1 %14, i32 3, i32 2
  %16 = or i32 %15, %13
  %17 = shl nuw i32 1, %16
  %18 = shl nuw i32 1, %13
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %12, %20
  %22 = or i32 %13, 1
  %23 = shl nuw i32 1, %22
  %24 = or i32 %21, %23
  %25 = load ptr, ptr @pwm, align 4
  %26 = mul i32 %5, 12
  %27 = add i32 %26, 12
  %28 = getelementptr i8, ptr %25, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %4) #8, !srcloc !11
  %29 = load ptr, ptr @pwm, align 4
  %30 = add i32 %26, 16
  %31 = getelementptr i8, ptr %29, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %4) #8, !srcloc !11
  %32 = load ptr, ptr @pwm, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %24) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %9) #8
  %34 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %35 = icmp eq i32 %34, 0
  %36 = add i32 %34, 1
  %37 = select i1 %35, i32 0, i32 %36
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %39 = load ptr, ptr @pwm, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !12
  %42 = shl i32 %37, 2
  %43 = or i32 %42, 1
  %44 = shl nuw i32 1, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %41, %45
  %47 = shl nuw i32 1, %42
  %48 = or i32 %46, %47
  %49 = icmp ult i32 %37, 5
  %50 = select i1 %49, i32 3, i32 2
  %51 = or i32 %50, %42
  %52 = shl nuw i32 1, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %48, %53
  %55 = load ptr, ptr @pwm, align 4
  %56 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %38) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_set_periodic(ptr nocapture noundef readnone %0) #7 {
  %2 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %3 = icmp eq i32 %2, 0
  %4 = shl i32 %2, 2
  %5 = add i32 %4, 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %7 = load ptr, ptr @pwm, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !12
  %10 = shl nuw i32 1, %5
  %11 = xor i32 %10, -1
  %12 = select i1 %3, i32 -2, i32 %11
  %13 = and i32 %12, %9
  %14 = load ptr, ptr @pwm, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %6) #8
  %16 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 10), align 4
  %18 = add i32 %17, -1
  %19 = icmp eq i32 %16, 0
  %20 = add i32 %16, 1
  %21 = select i1 %19, i32 0, i32 %20
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %23 = load ptr, ptr @pwm, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !12
  %26 = shl i32 %21, 2
  %27 = icmp ult i32 %21, 5
  %28 = select i1 %27, i32 3, i32 2
  %29 = or i32 %28, %26
  %30 = shl nuw i32 1, %29
  %31 = shl nuw i32 1, %26
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %25, %33
  %35 = or i32 %26, 1
  %36 = shl nuw i32 1, %35
  %37 = or i32 %34, %36
  %38 = load ptr, ptr @pwm, align 4
  %39 = mul i32 %16, 12
  %40 = add i32 %39, 12
  %41 = getelementptr i8, ptr %38, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %18) #8, !srcloc !11
  %42 = load ptr, ptr @pwm, align 4
  %43 = add i32 %39, 16
  %44 = getelementptr i8, ptr %42, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %18) #8, !srcloc !11
  %45 = load ptr, ptr @pwm, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %37) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %22) #8
  %47 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %48 = icmp eq i32 %47, 0
  %49 = add i32 %47, 1
  %50 = select i1 %48, i32 0, i32 %49
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %52 = load ptr, ptr @pwm, align 4
  %53 = getelementptr i8, ptr %52, i32 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !12
  %55 = shl i32 %50, 2
  %56 = or i32 %55, 1
  %57 = shl nuw i32 1, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = shl nuw i32 1, %55
  %61 = or i32 %59, %60
  %62 = icmp ult i32 %50, 5
  %63 = select i1 %62, i32 3, i32 2
  %64 = or i32 %63, %55
  %65 = shl nuw i32 1, %64
  %66 = or i32 %61, %65
  %67 = load ptr, ptr @pwm, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %51) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_shutdown(ptr nocapture noundef readnone %0) #7 {
  %2 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %3 = icmp eq i32 %2, 0
  %4 = shl i32 %2, 2
  %5 = add i32 %4, 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %7 = load ptr, ptr @pwm, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !12
  %10 = shl nuw i32 1, %5
  %11 = xor i32 %10, -1
  %12 = select i1 %3, i32 -2, i32 %11
  %13 = and i32 %12, %9
  %14 = load ptr, ptr @pwm, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_clockevent_resume(ptr nocapture noundef readnone %0) #7 {
  %2 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %4 = icmp ugt i32 %2, 1
  %5 = select i1 %4, i32 8, i32 0
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %7 = load ptr, ptr @pwm, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %9 = shl nuw nsw i32 255, %5
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = and i32 %3, 65535
  %13 = add nsw i32 %12, -1
  %14 = shl nsw i32 %13, %5
  %15 = or i32 %11, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr @pwm, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %6) #8
  %17 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %19 = trunc i32 %18 to i8
  %20 = shl i32 %17, 2
  %21 = and i32 %18, 255
  %22 = icmp eq i8 %19, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 false) #8, !range !8
  %24 = sub nuw nsw i32 32, %23
  %25 = select i1 %22, i32 0, i32 %24
  %26 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 1), align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, -1
  %29 = add nsw i32 %25, %28
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %31 = load ptr, ptr @pwm, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %34 = and i32 %20, 252
  %35 = shl i32 15, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = and i32 %29, 255
  %39 = shl i32 %38, %34
  %40 = or i32 %39, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %41 = load ptr, ptr @pwm, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %30) #8
  %43 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 4), align 4, !range !9
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %1
  %46 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %47 = shl nuw i32 1, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %48 = shl i32 %47, 5
  %49 = or i32 %48, %47
  %50 = load ptr, ptr @pwm, align 4
  %51 = getelementptr i8, ptr %50, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !11
  br label %52

52:                                               ; preds = %45, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @samsung_read_sched_clock() #7 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 1), align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !12
  %3 = xor i32 %2, -1
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @samsung_clocksource_read(ptr nocapture noundef readnone %0) #7 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 1), align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !12
  %4 = xor i32 %3, -1
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_clocksource_suspend(ptr nocapture noundef readnone %0) #7 {
  %2 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %3 = icmp eq i32 %2, 0
  %4 = shl i32 %2, 2
  %5 = add i32 %4, 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %7 = load ptr, ptr @pwm, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !12
  %10 = shl nuw i32 1, %5
  %11 = xor i32 %10, -1
  %12 = select i1 %3, i32 -2, i32 %11
  %13 = and i32 %12, %9
  %14 = load ptr, ptr @pwm, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_clocksource_resume(ptr nocapture noundef readnone %0) #7 {
  %2 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %4 = icmp ugt i32 %2, 1
  %5 = select i1 %4, i32 8, i32 0
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %7 = load ptr, ptr @pwm, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %9 = shl nuw nsw i32 255, %5
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = and i32 %3, 65535
  %13 = add nsw i32 %12, -1
  %14 = shl nsw i32 %13, %5
  %15 = or i32 %11, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr @pwm, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %6) #8
  %17 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %19 = trunc i32 %18 to i8
  %20 = shl i32 %17, 2
  %21 = and i32 %18, 255
  %22 = icmp eq i8 %19, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 false) #8, !range !8
  %24 = sub nuw nsw i32 32, %23
  %25 = select i1 %22, i32 0, i32 %24
  %26 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 1), align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, -1
  %29 = add nsw i32 %25, %28
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %31 = load ptr, ptr @pwm, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %34 = and i32 %20, 252
  %35 = shl i32 15, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = and i32 %29, 255
  %39 = shl i32 %38, %34
  %40 = or i32 %39, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %41 = load ptr, ptr @pwm, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %30) #8
  %43 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %44 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 7), align 4
  %45 = icmp eq i32 %43, 0
  %46 = add i32 %43, 1
  %47 = select i1 %45, i32 0, i32 %46
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %49 = load ptr, ptr @pwm, align 4
  %50 = getelementptr i8, ptr %49, i32 8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !12
  %52 = shl i32 %47, 2
  %53 = icmp ult i32 %47, 5
  %54 = select i1 %53, i32 3, i32 2
  %55 = or i32 %54, %52
  %56 = shl nuw i32 1, %55
  %57 = shl nuw i32 1, %52
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %51, %59
  %61 = or i32 %52, 1
  %62 = shl nuw i32 1, %61
  %63 = or i32 %60, %62
  %64 = load ptr, ptr @pwm, align 4
  %65 = mul i32 %43, 12
  %66 = add i32 %65, 12
  %67 = getelementptr i8, ptr %64, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %44) #8, !srcloc !11
  %68 = load ptr, ptr @pwm, align 4
  %69 = add i32 %65, 16
  %70 = getelementptr i8, ptr %68, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %44) #8, !srcloc !11
  %71 = load ptr, ptr @pwm, align 4
  %72 = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %63) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %48) #8
  %73 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %74 = icmp eq i32 %73, 0
  %75 = add i32 %73, 1
  %76 = select i1 %74, i32 0, i32 %75
  %77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #8
  %78 = load ptr, ptr @pwm, align 4
  %79 = getelementptr i8, ptr %78, i32 8
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #8, !srcloc !12
  %81 = shl i32 %76, 2
  %82 = or i32 %81, 1
  %83 = shl nuw i32 1, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %80, %84
  %86 = shl nuw i32 1, %81
  %87 = or i32 %85, %86
  %88 = icmp ult i32 %76, 5
  %89 = select i1 %88, i32 3, i32 2
  %90 = or i32 %89, %81
  %91 = shl nuw i32 1, %90
  %92 = or i32 %87, %91
  %93 = load ptr, ptr @pwm, align 4
  %94 = getelementptr i8, ptr %93, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %77) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @samsung_pwm_alloc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !19
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), ptr noundef align 1 dereferenceable(5) %1, i32 5, i1 false)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %8, %4 ]
  %6 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef %5) #8
  %7 = getelementptr %struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 2, i32 %5
  store i32 %6, ptr %7, align 4
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %4

10:                                               ; preds = %4
  %11 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %12 = call ptr @of_prop_next_u32(ptr noundef %11, ptr noundef null, ptr noundef nonnull %3) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %25, %10
  %15 = phi ptr [ %26, %25 ], [ %12, %10 ]
  %16 = load i32, ptr %3, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.samsung_pwm_alloc) #11
  br label %25

20:                                               ; preds = %14
  %21 = shl nuw nsw i32 1, %16
  %22 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 3), align 1
  %23 = trunc i32 %21 to i8
  %24 = or i8 %22, %23
  store i8 %24, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 3), align 1
  br label %25

25:                                               ; preds = %20, %18
  %26 = call ptr @of_prop_next_u32(ptr noundef %11, ptr noundef nonnull %15, ptr noundef nonnull %3) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14

28:                                               ; preds = %25, %10
  %29 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  store ptr %29, ptr @pwm, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.samsung_pwm_alloc) #11
  br label %48

33:                                               ; preds = %28
  %34 = call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str) #8
  store ptr %34, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  %38 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %39 = ptrtoint ptr %38 to i32
  br label %45

40:                                               ; preds = %33
  %41 = call fastcc i32 @_samsung_pwm_clocksource_init() #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  call void @clk_put(ptr noundef %44) #8
  store ptr null, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i32 [ %39, %36 ], [ %41, %43 ]
  %47 = load ptr, ptr @pwm, align 4
  call void @iounmap(ptr noundef %47) #8
  store ptr null, ptr @pwm, align 4
  br label %48

48:                                               ; preds = %45, %40, %31
  %49 = phi i32 [ %46, %45 ], [ -6, %31 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold }
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
!8 = !{i32 0, i32 33}
!9 = !{i8 0, i8 2}
!10 = !{i64 2151739519}
!11 = !{i64 3061304}
!12 = !{i64 3061722}
!13 = !{i64 2151729292}
!14 = !{i64 2151729485}
!15 = !{i64 2151730329}
!16 = !{i64 2151730521}
!17 = !{i64 2151738365}
!18 = !{i64 2151733926}
!19 = !{!"auto-init"}
