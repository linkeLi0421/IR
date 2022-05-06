; ModuleID = '/llk/IR/drivers/clocksource/timer-ti-dm-systimer.c_pt.bc'
source_filename = "../drivers/clocksource/timer-ti-dm-systimer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dmtimer_clockevent = type { %struct.clock_event_device, %struct.dmtimer_systimer, i32, [32 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dmtimer_systimer = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dmtimer_clocksource = type { %struct.clocksource, %struct.dmtimer_systimer, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__initcall__kmod_timer_ti_dm_systimer__170_685_dmtimer_percpu_timer_startup4 = internal global ptr @dmtimer_percpu_timer_startup, section ".initcall4.init", align 4
@__of_table_systimer_omap2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_omap3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_omap4 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_omap5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_am33x = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_am3ms = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer-1ms\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_dm814 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_dm816 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@dmtimer_percpu_timer = internal global %struct.dmtimer_clockevent zeroinitializer, section ".data..percpu", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str = private unnamed_addr constant [34 x i8] c"clockevents/omap/gptimer:starting\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@clocksource = internal unnamed_addr global i32 0, align 4
@clockevent = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"\013%s: unable to detect system timers, update dtb?\0A\00", align 1
@__func__.dmtimer_systimer_init = private unnamed_addr constant [22 x i8] c"dmtimer_systimer_init\00", align 1
@counter_32k = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ti,dra7\00", align 1
@counter_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-counter32k\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ti,omap3-beagle-ab4\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ti,am43\00", align 1
@dmtimer_match_table = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer-1ms\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"ti,timer-alwon\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ti,no-reset-on-init\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ti,no-idle\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ti,timer-secure\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"assigned-clocks\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"assigned-clock-parents\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"ti,timer-dsp\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"ti,timer-pwm\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"dmtimer\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\016TI gptimer clocksource: %s%pOF\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"always-on \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dmtimer_sched_clock_counter = internal unnamed_addr global ptr null, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"\013Could not register clocksource %pOF\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"ti,sysc\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"\013%s: clock source init failed: %i\0A\00", align 1
@__func__.dmtimer_systimer_setup = private unnamed_addr constant [23 x i8] c"dmtimer_systimer_setup\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"\013%s failed with %i\0A\00", align 1
@__func__.dmtimer_systimer_reset = private unnamed_addr constant [23 x i8] c"dmtimer_systimer_reset\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.23 = private unnamed_addr constant [44 x i8] c"\013could not enable timer fck on resume: %i\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"clockevent\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ti,am33xx\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"\016TI gptimer %s: %s%lu Hz at %pOF\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"arm,armv7-timer\00", align 1
@dmtimer_percpu_quirk_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"\014ARM architected timer wrap issue i940 detected\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"\014Incomplete dtb for percpu dmtimer %pOF\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"percpu-dmtimer\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__initcall__kmod_timer_ti_dm_systimer__170_685_dmtimer_percpu_timer_startup4, ptr @__of_table_systimer_am33x, ptr @__of_table_systimer_am3ms, ptr @__of_table_systimer_dm814, ptr @__of_table_systimer_dm816, ptr @__of_table_systimer_omap2, ptr @__of_table_systimer_omap3, ptr @__of_table_systimer_omap4, ptr @__of_table_systimer_omap5], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dmtimer_percpu_timer_startup() #0 section ".init.text" {
  %1 = load i32, ptr @__per_cpu_offset, align 4
  %2 = add i32 %1, ptrtoint (ptr @dmtimer_percpu_timer to i32)
  %3 = inttoptr i32 %2 to ptr
  %4 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %3, i32 0, i32 1, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = tail call i32 @__cpuhp_setup_state(i32 noundef 135, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @omap_dmtimer_starting_cpu, ptr noundef null, i1 noundef zeroext false) #7
  br label %9

9:                                                ; preds = %7, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dmtimer_systimer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load i32, ptr @clocksource, align 4
  %3 = icmp ne i32 %2, 0
  %4 = load i32, ptr @clockevent, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  tail call fastcc void @dmtimer_systimer_select_best() #8
  %8 = load i32, ptr @clocksource, align 4
  %9 = load i32, ptr @clockevent, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ %4, %1 ]
  %12 = phi i32 [ %8, %7 ], [ %2, %1 ]
  %13 = icmp ne i32 %12, 0
  %14 = icmp ne i32 %11, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dmtimer_systimer_init) #9
  br label %41

18:                                               ; preds = %10
  %19 = tail call ptr @__of_get_address(ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %20 = tail call i64 @of_translate_address(ptr noundef %0, ptr noundef %19) #7
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr @counter_32k, align 4
  %25 = icmp slt i32 %24, 1
  %26 = load i32, ptr @clocksource, align 4
  %27 = icmp eq i32 %26, %21
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @dmtimer_clocksource_init(ptr noundef %0) #8
  br label %41

31:                                               ; preds = %23
  %32 = load i32, ptr @clockevent, align 4
  %33 = icmp eq i32 %32, %21
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @dmtimer_clockevent_init(ptr noundef %0) #8
  br label %41

36:                                               ; preds = %31
  %37 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @dmtimer_percpu_quirk_init(ptr noundef %0, i32 noundef %21) #8
  br label %41

41:                                               ; preds = %39, %36, %34, %29, %18, %16
  %42 = phi i32 [ %30, %29 ], [ %35, %34 ], [ %40, %39 ], [ -22, %16 ], [ -22, %18 ], [ 0, %36 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dmtimer_starting_cpu(i32 noundef %0) #2 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @dmtimer_percpu_timer to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %5, i32 0, i32 1, i32 12
  %7 = load i32, ptr %6, align 4
  tail call void @clockevents_config_and_register(ptr noundef %5, i32 noundef %7, i32 noundef 3, i32 noundef -1) #7
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 23
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %0, 31
  %11 = add nuw nsw i32 %10, 1
  %12 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %11
  %13 = lshr i32 %0, 5
  %14 = sub nsw i32 0, %13
  %15 = getelementptr i32, ptr %12, i32 %14
  %16 = tail call i32 @irq_force_affinity(i32 noundef %9, ptr noundef %15) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_force_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @dmtimer_systimer_select_best() unnamed_addr #0 section ".init.text" {
  tail call fastcc void @dmtimer_systimer_check_counter32k() #8
  tail call fastcc void @dmtimer_systimer_assign_alwon() #8
  %1 = load i32, ptr @clockevent, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @dmtimer_systimer_find_first_available() #8
  store i32 %4, ptr @clockevent, align 4
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_clocksource_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 136) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %3, i32 0, i32 1
  %7 = tail call fastcc i32 @dmtimer_systimer_setup(ptr noundef %0, ptr noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.clocksource, ptr %3, i32 0, i32 8
  store ptr @.str.13, ptr %10, align 8
  %11 = getelementptr inbounds %struct.clocksource, ptr %3, i32 0, i32 10
  store i32 300, ptr %11, align 4
  store ptr @dmtimer_clocksource_read_cycles, ptr %3, align 8
  %12 = getelementptr inbounds %struct.clocksource, ptr %3, i32 0, i32 1
  store i64 4294967295, ptr %12, align 8
  %13 = getelementptr inbounds %struct.clocksource, ptr %3, i32 0, i32 13
  store i32 1, ptr %13, align 8
  %14 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.clocksource, ptr %3, i32 0, i32 16
  store ptr @dmtimer_clocksource_suspend, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clocksource, ptr %3, i32 0, i32 17
  store ptr @dmtimer_clocksource_resume, ptr %18, align 8
  br label %19

19:                                               ; preds = %16, %9
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %3, i32 0, i32 1, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #7, !srcloc !8
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %3, i32 0, i32 1, i32 7
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 3) #7, !srcloc !8
  %30 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str.16, ptr @.str.15
  %33 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %32, ptr noundef %34) #9
  %36 = load ptr, ptr @dmtimer_sched_clock_counter, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load ptr, ptr %6, align 8
  %40 = load i8, ptr %21, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %39, i32 %41
  store ptr %42, ptr @dmtimer_sched_clock_counter, align 4
  %43 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %3, i32 0, i32 1, i32 12
  %44 = load i32, ptr %43, align 8
  tail call void @sched_clock_register(ptr noundef nonnull @dmtimer_read_sched_clock, i32 noundef 32, i32 noundef %44) #7
  br label %45

45:                                               ; preds = %38, %19
  %46 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %3, i32 0, i32 1, i32 12
  %47 = load i32, ptr %46, align 8
  %48 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull %3, i32 noundef 1, i32 noundef %47) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %0) #9
  br label %53

52:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %53

53:                                               ; preds = %52, %50, %45, %1
  %54 = phi i32 [ -19, %52 ], [ -12, %1 ], [ 0, %50 ], [ 0, %45 ]
  ret i32 %54
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_clockevent_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @dmtimer_clkevt_init_common(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 3, ptr noundef nonnull @__cpu_possible_mask, ptr noundef nonnull @.str.24, i32 noundef 300) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %3, i32 0, i32 1, i32 12
  %10 = load i32, ptr %9, align 8
  tail call void @clockevents_config_and_register(ptr noundef nonnull %3, i32 noundef %10, i32 noundef 3, i32 noundef -1) #7
  %11 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.25) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13, %8
  %17 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 17
  store ptr @omap_clockevent_idle, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 18
  store ptr @omap_clockevent_unidle, ptr %18, align 8
  br label %20

19:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %20

20:                                               ; preds = %19, %16, %13, %1
  %21 = phi i32 [ %6, %19 ], [ -12, %1 ], [ 0, %16 ], [ 0, %13 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_percpu_quirk_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27) #7
  %4 = tail call zeroext i1 @of_device_is_available(ptr noundef %3) #7
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load i1, ptr @dmtimer_percpu_quirk_init.__already_done, align 1
  br i1 %6, label %14, label %7, !prof !9

7:                                                ; preds = %5
  store i1 true, ptr @dmtimer_percpu_quirk_init.__already_done, align 1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  br label %14

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 1208172544, label %10
    i32 1208180736, label %12
  ]

10:                                               ; preds = %9
  %11 = tail call fastcc i32 @dmtimer_percpu_timer_init(ptr noundef %0, i32 noundef 0) #8
  br label %14

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @dmtimer_percpu_timer_init(ptr noundef %0, i32 noundef 1) #8
  br label %14

14:                                               ; preds = %12, %10, %9, %7, %5
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ], [ 0, %7 ], [ 0, %5 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @dmtimer_systimer_check_counter32k() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @counter_32k, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @counter_match_table, ptr noundef null) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i32 -19, ptr @counter_32k, align 4
  br label %10

7:                                                ; preds = %3
  %8 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %4) #7
  %9 = select i1 %8, i32 1, i32 -19
  store i32 %9, ptr @counter_32k, align 4
  tail call void @of_node_put(ptr noundef nonnull %4) #7
  br label %10

10:                                               ; preds = %7, %6, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @dmtimer_systimer_assign_alwon() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i32 -19, ptr @counter_32k, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = xor i1 %2, true
  %6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i32 -19, ptr @counter_32k, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @dmtimer_match_table, ptr noundef null) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %29, %9
  %13 = phi ptr [ %31, %29 ], [ %10, %9 ]
  %14 = phi i32 [ %30, %29 ], [ 0, %9 ]
  %15 = tail call fastcc zeroext i1 @dmtimer_is_preferred(ptr noundef nonnull %13) #8
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = tail call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @__of_get_address(ptr noundef nonnull %13, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %21 = tail call i64 @of_translate_address(ptr noundef nonnull %13, ptr noundef %20) #7
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = icmp eq i32 %22, 1211203584
  %26 = select i1 %5, i1 %25, i1 false
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = trunc i64 %21 to i32
  tail call void @of_node_put(ptr noundef nonnull %13) #7
  br label %33

29:                                               ; preds = %24, %19, %16, %12
  %30 = phi i32 [ %14, %16 ], [ %14, %12 ], [ 1211203584, %24 ], [ 0, %19 ]
  %31 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %13, ptr noundef nonnull @dmtimer_match_table, ptr noundef null) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %12

33:                                               ; preds = %29, %27, %9
  %34 = phi i32 [ %28, %27 ], [ 0, %9 ], [ %30, %29 ]
  %35 = load i32, ptr @counter_32k, align 4
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 %34, ptr @clockevent, align 4
  store i32 0, ptr @clocksource, align 4
  br label %39

38:                                               ; preds = %33
  store i32 %34, ptr @clocksource, align 4
  store i32 -1, ptr @clockevent, align 4
  br label %39

39:                                               ; preds = %38, %37
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_find_first_available() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @dmtimer_match_table, ptr noundef null) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %19, %0
  %4 = phi ptr [ %20, %19 ], [ %1, %0 ]
  %5 = tail call fastcc zeroext i1 @dmtimer_is_preferred(ptr noundef nonnull %4) #8
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @__of_get_address(ptr noundef nonnull %4, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %8 = tail call i64 @of_translate_address(ptr noundef nonnull %4, ptr noundef %7) #7
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr @clocksource, align 4
  %13 = icmp eq i32 %12, %9
  %14 = load i32, ptr @clockevent, align 4
  %15 = icmp eq i32 %14, %9
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = trunc i64 %8 to i32
  tail call void @of_node_put(ptr noundef nonnull %4) #7
  br label %22

19:                                               ; preds = %11, %6, %3
  %20 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %4, ptr noundef nonnull @dmtimer_match_table, ptr noundef null) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %3

22:                                               ; preds = %19, %17, %0
  %23 = phi i32 [ %18, %17 ], [ 0, %0 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dmtimer_is_preferred(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call zeroext i1 @of_device_is_available(ptr noundef %0) #7
  br i1 %2, label %3, label %27

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  %10 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18, %12
  %22 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %26 = icmp eq ptr %25, null
  br label %27

27:                                               ; preds = %24, %21, %18, %15, %8, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %8 ], [ false, %15 ], [ false, %18 ], [ false, %21 ], [ %26, %24 ]
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.18) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  store ptr %9, ptr %1, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @of_clk_set_defaults(ptr noundef %0, i1 noundef zeroext false) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dmtimer_systimer_setup, i32 noundef %12) #9
  br label %16

16:                                               ; preds = %14, %11
  %17 = load ptr, ptr %4, align 4
  %18 = call fastcc i32 @dmtimer_systimer_init_clock(ptr noundef %1, ptr noundef %17, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = load i32, ptr %3, align 4
  %22 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 12
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = call fastcc i32 @dmtimer_systimer_init_clock(ptr noundef %1, ptr noundef %23, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %20
  %27 = load ptr, ptr %1, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !11
  %29 = icmp ult i32 %28, 65536
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8 [ 40, %30 ], [ 24, %26 ]
  %33 = phi i8 [ 44, %30 ], [ 28, %26 ]
  %34 = phi i8 [ 72, %30 ], [ 52, %26 ]
  %35 = phi i8 [ 20, %30 ], [ 0, %26 ]
  %36 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 2
  store i8 %32, ptr %36, align 1
  %37 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 3
  store i8 %33, ptr %37, align 2
  %38 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 4
  store i8 %34, ptr %38, align 1
  %39 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 1
  store i8 16, ptr %39, align 4
  %40 = add nuw nsw i8 %35, 44
  %41 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 5
  store i8 %40, ptr %41, align 4
  %42 = or i8 %35, 40
  %43 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 6
  store i8 %42, ptr %43, align 1
  %44 = add nuw nsw i8 %35, 36
  %45 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 7
  store i8 %44, ptr %45, align 2
  %46 = or i8 %35, 32
  %47 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 8
  store i8 %46, ptr %47, align 1
  %48 = or i8 %35, 64
  %49 = getelementptr inbounds %struct.dmtimer_systimer, ptr %1, i32 0, i32 9
  store i8 %48, ptr %49, align 4
  tail call fastcc void @dmtimer_systimer_reset(ptr noundef %1) #8
  %50 = load ptr, ptr %1, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !11
  %52 = icmp ult i32 %51, 65536
  %53 = select i1 %52, i32 533, i32 12
  %54 = load ptr, ptr %1, align 4
  %55 = load i8, ptr %39, align 4
  %56 = zext i8 %55 to i32
  %57 = getelementptr i8, ptr %54, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %53) #7, !srcloc !8
  br label %61

58:                                               ; preds = %20, %16
  %59 = phi i32 [ %18, %16 ], [ %24, %20 ]
  %60 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %60) #7
  br label %61

61:                                               ; preds = %58, %31, %8, %2
  %62 = phi i32 [ %59, %58 ], [ 0, %31 ], [ -22, %2 ], [ -6, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @dmtimer_clocksource_read_cycles(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1, i32 6
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %9 = zext i32 %8 to i64
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dmtimer_clocksource_suspend(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1, i32 6
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %9 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  %12 = icmp ult i32 %11, 65536
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 3) #7, !srcloc !8
  br label %19

19:                                               ; preds = %13, %1
  %20 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1, i32 10
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dmtimer_clocksource_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_enable(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %4) #9
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  %12 = icmp ult i32 %11, 65536
  %13 = select i1 %12, i32 533, i32 12
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #7, !srcloc !8
  %19 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1, i32 6
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr i8, ptr %21, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #7, !srcloc !8
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %0, i32 0, i32 1, i32 7
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = getelementptr i8, ptr %26, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 3) #7, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @dmtimer_read_sched_clock() #2 {
  %1 = load ptr, ptr @dmtimer_sched_clock_counter, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !11
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_init_clock(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 section ".init.text" {
  %5 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(4) @.str.21, i32 noundef 3)
  %6 = icmp eq i32 %5, 0
  %7 = tail call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef %2) #7
  %8 = icmp ne ptr %7, inttoptr (i32 -22 to ptr)
  %9 = xor i1 %6, true
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = ptrtoint ptr %7 to i32
  %13 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @clk_prepare(ptr noundef %7) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = tail call i32 @clk_enable(ptr noundef %7) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %28

21:                                               ; preds = %17
  %22 = tail call i32 @clk_get_rate(ptr noundef %7) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.dmtimer_systimer, ptr %0, i32 0, i32 10
  %26 = getelementptr inbounds %struct.dmtimer_systimer, ptr %0, i32 0, i32 11
  %27 = select i1 %6, ptr %26, ptr %25
  store ptr %7, ptr %27, align 4
  store i32 %22, ptr %3, align 4
  br label %28

28:                                               ; preds = %24, %21, %20, %14, %11, %4
  %29 = phi i32 [ 0, %24 ], [ 0, %4 ], [ -19, %21 ], [ %12, %11 ], [ %18, %20 ], [ %15, %14 ]
  ret i32 %29
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @dmtimer_systimer_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !11
  %4 = icmp ult i32 %3, 65536
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @dmtimer_systimer_type1_reset(ptr noundef %0) #8
  br label %9

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @dmtimer_systimer_type2_reset(ptr noundef %0) #8
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dmtimer_systimer_reset, i32 noundef %10) #9
  br label %14

14:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_type1_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !11
  %5 = icmp ult i32 %4, 65536
  %6 = select i1 %5, i32 533, i32 12
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.dmtimer_systimer, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %6) #7, !srcloc !8
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.dmtimer_systimer, ptr %0, i32 0, i32 9
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 6) #7, !srcloc !8
  %17 = tail call i64 @ktime_get() #7
  %18 = add i64 %17, 100000000
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %25, %1
  %23 = tail call i64 @ktime_get() #7
  %24 = icmp sgt i64 %23, %18
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #7
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %22, label %35

30:                                               ; preds = %22
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 -110, i32 0
  br label %35

35:                                               ; preds = %30, %25, %1
  %36 = phi i32 [ 0, %1 ], [ %34, %30 ], [ 0, %25 ]
  ret i32 %36
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_type2_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dmtimer_systimer, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %2, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !11
  %8 = icmp ult i32 %7, 65536
  %9 = select i1 %8, i32 533, i32 12
  %10 = load ptr, ptr %0, align 4
  %11 = load i8, ptr %3, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %10, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %9) #7, !srcloc !8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  %15 = or i32 %14, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %15) #7, !srcloc !8
  %16 = tail call i64 @ktime_get() #7
  %17 = add i64 %16, 100000000
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %24, %1
  %22 = tail call i64 @ktime_get() #7
  %23 = icmp sgt i64 %22, %17
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #7
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %21

29:                                               ; preds = %21
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24, %1
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ 0, %33 ], [ -110, %29 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_clkevt_init_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 section ".init.text" {
  %7 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 22
  store i32 %5, ptr %9, align 8
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 1
  store ptr @dmtimer_set_next_event, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 14
  store ptr @dmtimer_clockevent_shutdown, ptr %11, align 8
  %12 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 11
  store ptr @dmtimer_set_periodic, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 12
  store ptr @dmtimer_clockevent_shutdown, ptr %13, align 64
  %14 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 13
  store ptr @dmtimer_clockevent_shutdown, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 15
  store ptr @dmtimer_clockevent_shutdown, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 25
  store ptr %3, ptr %16, align 4
  %17 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #7
  %18 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 23
  store i32 %17, ptr %18, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %6
  %21 = tail call fastcc i32 @dmtimer_systimer_setup(ptr noundef %1, ptr noundef %7) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 50
  %27 = udiv i32 %26, 100
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 9
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %30, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 4) #7, !srcloc !8
  %35 = load i32, ptr %18, align 4
  %36 = tail call i32 @request_threaded_irq(i32 noundef %35, ptr noundef nonnull @dmtimer_clockevent_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef %4, ptr noundef %0) #7
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr %7, align 4
  br i1 %37, label %39, label %56

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 3
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = getelementptr i8, ptr %38, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 2) #7, !srcloc !8
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr i8, ptr %44, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 2) #7, !srcloc !8
  %49 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr @.str.16, ptr @.str.15
  %52 = load i32, ptr %24, align 4
  %53 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %4, ptr noundef nonnull %51, i32 noundef %52, ptr noundef %54) #9
  br label %57

56:                                               ; preds = %23
  tail call void @iounmap(ptr noundef %38) #7
  br label %57

57:                                               ; preds = %56, %39, %20, %6
  %58 = phi i32 [ %36, %56 ], [ 0, %39 ], [ -6, %6 ], [ %21, %20 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_clockevent_idle(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !11
  %5 = icmp ult i32 %4, 65536
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 3) #7, !srcloc !8
  br label %12

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 10
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_clockevent_unidle(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_enable(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %4) #9
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  %12 = icmp ult i32 %11, 65536
  %13 = select i1 %12, i32 533, i32 12
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #7, !srcloc !8
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 3
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %19, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 2) #7, !srcloc !8
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 8
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 2) #7, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmtimer_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %1, i32 0, i32 1, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !11
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %12, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !17
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !11
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12, %2
  %17 = xor i32 %0, -1
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %1, i32 0, i32 1, i32 6
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr i8, ptr %18, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %17) #7, !srcloc !8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !11
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %26, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !19
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !11
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26, %16
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %1, i32 0, i32 1, i32 7
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = getelementptr i8, ptr %31, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 1) #7, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmtimer_clockevent_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 7
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = and i32 %8, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %12) #7, !srcloc !8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %14 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = udiv i32 3500000, %15
  %17 = add nuw nsw i32 %16, 1
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %17) #7
  br label %19

19:                                               ; preds = %11, %1
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 2) #7, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmtimer_set_periodic(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 7
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = getelementptr i8, ptr %3, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !11
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = and i32 %12, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %16) #7, !srcloc !8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !11
  %18 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = udiv i32 3500000, %19
  %21 = add nuw nsw i32 %20, 1
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %21) #7
  br label %23

23:                                               ; preds = %15, %1
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 2) #7, !srcloc !8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %32, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !21
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %32

36:                                               ; preds = %32, %23
  %37 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 5
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = getelementptr i8, ptr %39, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %38) #7, !srcloc !8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %47, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !23
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %47

51:                                               ; preds = %47, %36
  %52 = load i32, ptr %37, align 4
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %0, i32 0, i32 1, i32 6
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr i8, ptr %53, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %52) #7, !srcloc !8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %61, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !25
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %61

65:                                               ; preds = %61, %51
  %66 = load ptr, ptr %2, align 4
  %67 = load i8, ptr %8, align 2
  %68 = zext i8 %67 to i32
  %69 = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 3) #7, !srcloc !8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmtimer_clockevent_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %1, i32 0, i32 1, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 2) #7, !srcloc !8
  %9 = load ptr, ptr %1, align 64
  tail call void %9(ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_percpu_timer_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load volatile i32, ptr @__cpu_possible_mask, align 4
  %4 = and i32 %1, 31
  %5 = shl nuw i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr %9, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %18) #9
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, ptrtoint (ptr @dmtimer_percpu_timer to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = add nuw nsw i32 %4, 1
  %26 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %25
  %27 = lshr i32 %1, 5
  %28 = sub nsw i32 0, %27
  %29 = getelementptr i32, ptr %26, i32 %28
  %30 = tail call fastcc i32 @dmtimer_clkevt_init_common(ptr noundef %24, ptr noundef %0, i32 noundef 2, ptr noundef %29, ptr noundef nonnull @.str.30, i32 noundef 500) #8
  br label %31

31:                                               ; preds = %20, %2
  %32 = phi i32 [ -22, %2 ], [ %30, %20 ]
  ret i32 %32
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 2838171}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i64 2838589}
!12 = !{i64 2151792323}
!13 = !{i64 2151792618}
!14 = !{i64 2151795578}
!15 = !{i64 2151795873}
!16 = !{i64 2151807413}
!17 = !{i64 2151807255}
!18 = !{i64 2151808005}
!19 = !{i64 2151807847}
!20 = !{i64 2151809925}
!21 = !{i64 2151809767}
!22 = !{i64 2151810504}
!23 = !{i64 2151810346}
!24 = !{i64 2151811086}
!25 = !{i64 2151810928}
