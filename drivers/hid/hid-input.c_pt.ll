; ModuleID = '/llk/IR/drivers/hid/hid-input.c_pt.bc'
source_filename = "../drivers/hid/hid-input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_calc_abs_res:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_calc_abs_res\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_calc_abs_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_report_event\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_get_led_field:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_get_led_field\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_get_led_field:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_count_leds:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_count_leds\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_count_leds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_connect\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidinput_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22hidinput_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_hidinput_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.66 = type { i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__kstrtab_hidinput_calc_abs_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_calc_abs_res = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_calc_abs_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_calc_abs_res to i32), ptr @__kstrtab_hidinput_calc_abs_res, ptr @__kstrtabns_hidinput_calc_abs_res }, section "___ksymtab_gpl+hidinput_calc_abs_res", align 4
@hid_hat_to_axis = internal unnamed_addr constant [9 x %struct.anon.66] [%struct.anon.66 zeroinitializer, %struct.anon.66 { i32 0, i32 -1 }, %struct.anon.66 { i32 1, i32 -1 }, %struct.anon.66 { i32 1, i32 0 }, %struct.anon.66 { i32 1, i32 1 }, %struct.anon.66 { i32 0, i32 1 }, %struct.anon.66 { i32 -1, i32 1 }, %struct.anon.66 { i32 -1, i32 0 }, %struct.anon.66 { i32 -1, i32 -1 }], align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [28 x i8] c"\017%s: Maximum Effects - %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"drivers/hid/hid-input.c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\017%s: PID Pool Report\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\017%s: Ignoring out-of-range value %x\0A\00", align 1
@__kstrtab_hidinput_report_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_report_event = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_report_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_report_event to i32), ptr @__kstrtab_hidinput_report_event, ptr @__kstrtabns_hidinput_report_event }, section "___ksymtab_gpl+hidinput_report_event", align 4
@__kstrtab_hidinput_get_led_field = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_get_led_field = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_get_led_field = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_get_led_field to i32), ptr @__kstrtab_hidinput_get_led_field, ptr @__kstrtabns_hidinput_get_led_field }, section "___ksymtab_gpl+hidinput_get_led_field", align 4
@__kstrtab_hidinput_count_leds = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_count_leds = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_count_leds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_count_leds to i32), ptr @__kstrtab_hidinput_count_leds, ptr @__kstrtabns_hidinput_count_leds }, section "___ksymtab_gpl+hidinput_count_leds", align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"No inputs registered, leaving\0A\00", align 1
@__kstrtab_hidinput_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_connect to i32), ptr @__kstrtab_hidinput_connect, ptr @__kstrtabns_hidinput_connect }, section "___ksymtab_gpl+hidinput_connect", align 4
@__kstrtab_hidinput_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidinput_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_hidinput_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidinput_disconnect to i32), ptr @__kstrtab_hidinput_disconnect, ptr @__kstrtabns_hidinput_disconnect }, section "___ksymtab_gpl+hidinput_disconnect", align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Keypad\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Stylus\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Pen\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Touchscreen\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"System Control\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Consumer Control\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Wireless Radio Control\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"System Multi Axis\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Out of memory during hid input probe\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"event field not found\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = private unnamed_addr constant [48 x i8] c"\017%s: Assigned keycode %d to HID usage code %x\0A\00", align 1
@hid_keyboard = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\1E0. \12!\22#\17$%&21\18\19\10\13\1F\14\16/\11-\15,\02\03\04\05\06\07\08\09\0A\0B\1C\01\0E\0F9\0C\0D\1A\1B++'()345:;<=>?@ABCDWXcFwnfhokmjilgEb7JN`OPQKLMGHIRSV\7Ftu\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\86\8A\82\84\80\81\83\89\85\87\88qsr\F0\F0\F0y\F0Y]|\\^_\F0\F0\F0z{Z[U\F0\F0\F0\F0\F0\F0\F0o\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\B3\B4\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0o\F0\F0\F0\F0\F0\F0\F0\1D*8}a6d~\A4\A6\A5\A3\A1srq\96\9E\9F\80\88\B1\B2\B0\8E\98\AD\8C\F0\F0\F0\F0", align 1
@hid_map_usage._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_hidinput_calc_abs_res, ptr @__ksymtab_hidinput_connect, ptr @__ksymtab_hidinput_count_leds, ptr @__ksymtab_hidinput_disconnect, ptr @__ksymtab_hidinput_get_led_field, ptr @__ksymtab_hidinput_report_event], section "llvm.metadata"
@switch.table.hidinput_configure_usage = private unnamed_addr constant [5 x i32] [i32 272, i32 272, i32 256, i32 288, i32 304], align 4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @hidinput_calc_abs_res(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp slt i32 %9, 1
  %16 = icmp slt i32 %14, 1
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %66, label %18

18:                                               ; preds = %2
  switch i16 %1, label %66 [
    i16 0, label %19
    i16 1, label %19
    i16 2, label %19
    i16 53, label %19
    i16 54, label %19
    i16 60, label %19
    i16 61, label %19
    i16 48, label %19
    i16 49, label %19
    i16 3, label %29
    i16 4, label %29
    i16 5, label %29
    i16 8, label %29
    i16 26, label %29
    i16 27, label %29
  ]

19:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18
  %20 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 16
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %66 [
    i32 17, label %22
    i32 19, label %24
  ]

22:                                               ; preds = %19
  %23 = add i32 %4, 1
  br label %37

24:                                               ; preds = %19
  %25 = mul i32 %14, 254
  %26 = icmp slt i32 %25, %14
  br i1 %26, label %66, label %27

27:                                               ; preds = %24
  %28 = add i32 %4, -1
  br label %37

29:                                               ; preds = %18, %18, %18, %18, %18, %18
  %30 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 16
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %66 [
    i32 20, label %32
    i32 18, label %37
  ]

32:                                               ; preds = %29
  %33 = mul i32 %9, 573
  %34 = icmp slt i32 %33, %9
  br i1 %34, label %66, label %35

35:                                               ; preds = %32
  %36 = add i32 %4, 1
  br label %37

37:                                               ; preds = %35, %29, %27, %22
  %38 = phi i32 [ %36, %35 ], [ %23, %22 ], [ %28, %27 ], [ %4, %29 ]
  %39 = phi i32 [ %33, %35 ], [ %9, %22 ], [ %9, %27 ], [ %9, %29 ]
  %40 = phi i32 [ %14, %35 ], [ %14, %22 ], [ %25, %27 ], [ %14, %29 ]
  %41 = icmp slt i32 %38, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = icmp eq i32 %38, 0
  br i1 %43, label %60, label %55

44:                                               ; preds = %49, %37
  %45 = phi i32 [ %47, %49 ], [ %39, %37 ]
  %46 = phi i32 [ %50, %49 ], [ %38, %37 ]
  %47 = mul i32 %45, 10
  %48 = icmp slt i32 %47, %45
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = add i32 %46, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %44

52:                                               ; preds = %55
  %53 = add nsw i32 %57, -1
  %54 = icmp sgt i32 %57, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %42
  %56 = phi i32 [ %58, %52 ], [ %40, %42 ]
  %57 = phi i32 [ %53, %52 ], [ %38, %42 ]
  %58 = mul i32 %56, 10
  %59 = icmp slt i32 %58, %56
  br i1 %59, label %66, label %52

60:                                               ; preds = %52, %49, %42
  %61 = phi i32 [ %39, %42 ], [ %47, %49 ], [ %39, %52 ]
  %62 = phi i32 [ %40, %42 ], [ %40, %49 ], [ %58, %52 ]
  %63 = sdiv i32 %62, 2
  %64 = add i32 %63, %61
  %65 = sdiv i32 %64, %62
  br label %66

66:                                               ; preds = %60, %55, %44, %32, %29, %24, %19, %18, %2
  %67 = phi i32 [ %65, %60 ], [ 0, %2 ], [ 0, %24 ], [ 0, %19 ], [ 0, %32 ], [ 0, %29 ], [ 0, %18 ], [ 0, %44 ], [ 0, %55 ]
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hidinput_hid_event(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %6 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 6
  %7 = load i8, ptr %6, align 4
  switch i8 %7, label %8 [
    i8 0, label %244
    i8 22, label %244
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %244, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hid_input, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq i8 %7, 3
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i32, ptr %5, align 4
  %18 = and i32 %17, 4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %16
  %25 = and i32 %17, 8192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %20
  %32 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %33, %3
  br label %35

35:                                               ; preds = %31, %27, %24, %12
  %36 = phi i32 [ %34, %31 ], [ %3, %27 ], [ %3, %24 ], [ %3, %12 ]
  %37 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 7
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 8
  %40 = load i8, ptr %39, align 2
  %41 = icmp slt i8 %38, %40
  %42 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 9
  %43 = load i8, ptr %42, align 1
  br i1 %41, label %48, label %44

44:                                               ; preds = %35
  %45 = icmp eq i8 %43, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %44
  %47 = sext i8 %43 to i32
  br label %60

48:                                               ; preds = %35
  %49 = sext i8 %43 to i32
  %50 = icmp eq i8 %43, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = sext i8 %38 to i32
  %53 = sub i32 %36, %52
  %54 = shl i32 %53, 3
  %55 = sext i8 %40 to i32
  %56 = sub nsw i32 1, %52
  %57 = add nsw i32 %56, %55
  %58 = sdiv i32 %54, %57
  %59 = add i32 %58, 1
  br label %60

60:                                               ; preds = %51, %48, %46
  %61 = phi i32 [ %49, %48 ], [ %59, %51 ], [ %47, %46 ]
  %62 = icmp ugt i32 %61, 8
  %63 = select i1 %62, i32 0, i32 %61
  %64 = zext i8 %7 to i32
  %65 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr [9 x %struct.anon.66], ptr @hid_hat_to_axis, i32 0, i32 %63
  %69 = load i32, ptr %68, align 4
  tail call void @input_event(ptr noundef %14, i32 noundef %64, i32 noundef %67, i32 noundef %69) #10
  %70 = load i8, ptr %6, align 4
  %71 = zext i8 %70 to i32
  %72 = load i16, ptr %65, align 2
  %73 = zext i16 %72 to i32
  %74 = add nuw nsw i32 %73, 1
  %75 = getelementptr [9 x %struct.anon.66], ptr @hid_hat_to_axis, i32 0, i32 %63, i32 1
  %76 = load i32, ptr %75, align 4
  tail call void @input_event(ptr noundef %14, i32 noundef %71, i32 noundef %74, i32 noundef %76) #10
  br label %244

77:                                               ; preds = %44
  %78 = load i32, ptr %2, align 4
  switch i32 %78, label %119 [
    i32 852028, label %79
    i32 852018, label %85
    i32 852016, label %104
  ]

79:                                               ; preds = %77
  %80 = icmp ne i32 %36, 0
  %81 = load i32, ptr %5, align 4
  %82 = and i32 %81, -2
  %83 = zext i1 %80 to i32
  %84 = or i32 %82, %83
  store i32 %84, ptr %5, align 4
  br label %244

85:                                               ; preds = %77
  %86 = icmp eq i32 %36, 0
  %87 = zext i8 %7 to i32
  br i1 %86, label %98, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %5, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %95, %92 ], [ 321, %88 ]
  tail call void @input_event(ptr noundef %14, i32 noundef %87, i32 noundef %97, i32 noundef 1) #10
  br label %244

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  tail call void @input_event(ptr noundef %14, i32 noundef %87, i32 noundef %101, i32 noundef 0) #10
  %102 = load i8, ptr %6, align 4
  %103 = zext i8 %102 to i32
  tail call void @input_event(ptr noundef %14, i32 noundef %103, i32 noundef 321, i32 noundef 0) #10
  br label %244

104:                                              ; preds = %77
  %105 = load i32, ptr %5, align 4
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %133, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 11
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 12
  %112 = load i32, ptr %111, align 4
  %113 = sub i32 %112, %110
  %114 = ashr i32 %113, 3
  %115 = add i32 %114, %110
  %116 = icmp sgt i32 %36, %115
  %117 = zext i1 %116 to i32
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 330, i32 noundef %117) #10
  %118 = load i32, ptr %2, align 4
  br label %119

119:                                              ; preds = %108, %77
  %120 = phi i32 [ %78, %77 ], [ %118, %108 ]
  switch i32 %120, label %121 [
    i32 983171, label %123
    i32 983167, label %128
  ]

121:                                              ; preds = %119
  %122 = load i8, ptr %6, align 4
  br label %133

123:                                              ; preds = %119
  %124 = load i32, ptr @hid_debug, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %244, label %126

126:                                              ; preds = %123
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %36) #11
  br label %244

128:                                              ; preds = %119
  %129 = load i32, ptr @hid_debug, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %244, label %131

131:                                              ; preds = %128
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #11
  br label %244

133:                                              ; preds = %121, %104
  %134 = phi i8 [ %122, %121 ], [ %7, %104 ]
  %135 = phi i32 [ %120, %121 ], [ 852016, %104 ]
  %136 = icmp eq i8 %134, 1
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %139 = load i16, ptr %138, align 2
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %244, label %166

141:                                              ; preds = %133
  switch i8 %134, label %166 [
    i8 2, label %142
    i8 3, label %148
  ]

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %144 = load i16, ptr %143, align 2
  %145 = add i16 %144, -11
  %146 = icmp ult i16 %145, 2
  br i1 %146, label %147, label %166

147:                                              ; preds = %142
  tail call fastcc void @hidinput_handle_scroll(ptr noundef %2, ptr noundef %14, i32 noundef %36)
  br label %244

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 5
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %155 = load i16, ptr %154, align 2
  %156 = icmp eq i16 %155, 32
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = tail call i32 @llvm.abs.i32(i32 %36, i1 false)
  %159 = icmp sgt i32 %36, 0
  %160 = select i1 %159, i32 115, i32 114
  %161 = icmp sgt i32 %158, 0
  br i1 %161, label %162, label %244

162:                                              ; preds = %162, %157
  %163 = phi i32 [ %164, %162 ], [ 0, %157 ]
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef %160, i32 noundef 1) #10
  tail call void @input_event(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef %160, i32 noundef 0) #10
  tail call void @input_event(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %164 = add nuw nsw i32 %163, 1
  %165 = icmp eq i32 %164, %158
  br i1 %165, label %244, label %162

166:                                              ; preds = %153, %148, %142, %141, %137
  %167 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 5
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %208, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 11
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 12
  %175 = load i32, ptr %174, align 4
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %171
  %178 = and i32 %168, 64
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %177
  %181 = icmp slt i32 %36, %173
  %182 = icmp sgt i32 %36, %175
  %183 = select i1 %181, i1 true, i1 %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i32, ptr @hid_debug, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %244, label %187

187:                                              ; preds = %184
  %188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %36) #11
  br label %244

189:                                              ; preds = %180, %177
  %190 = tail call i32 @llvm.smax.i32(i32 %36, i32 %173)
  %191 = tail call i32 @llvm.smin.i32(i32 %190, i32 %175)
  br label %192

192:                                              ; preds = %189, %171
  %193 = phi i32 [ %191, %189 ], [ %36, %171 ]
  %194 = and i32 %168, 262
  %195 = icmp eq i32 %194, 2
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 2
  %198 = load i32, ptr %197, align 4
  %199 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 4
  %200 = load i32, ptr %199, align 4
  %201 = icmp ult i32 %198, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 10
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr i32, ptr %204, i32 %198
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %193, %206
  br i1 %207, label %244, label %208

208:                                              ; preds = %202, %196, %192, %166
  %209 = phi i32 [ %193, %202 ], [ %193, %196 ], [ %193, %192 ], [ %36, %166 ]
  br i1 %136, label %210, label %225

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %212 = load i16, ptr %211, align 2
  %213 = zext i16 %212 to i32
  %214 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 27
  %215 = lshr i32 %213, 5
  %216 = getelementptr i32, ptr %214, i32 %215
  %217 = load volatile i32, ptr %216, align 4
  %218 = and i32 %213, 31
  %219 = xor i32 %217, -1
  %220 = lshr i32 %219, %218
  %221 = and i32 %220, 1
  %222 = icmp eq i32 %209, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %210
  tail call void @input_event(ptr noundef %14, i32 noundef 4, i32 noundef 4, i32 noundef %135) #10
  %224 = load i8, ptr %6, align 4
  br label %225

225:                                              ; preds = %223, %210, %208
  %226 = phi i8 [ %224, %223 ], [ 1, %210 ], [ %134, %208 ]
  %227 = zext i8 %226 to i32
  %228 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %229 = load i16, ptr %228, align 2
  %230 = zext i16 %229 to i32
  tail call void @input_event(ptr noundef %14, i32 noundef %227, i32 noundef %230, i32 noundef %209) #10
  %231 = load i32, ptr %167, align 4
  %232 = and i32 %231, 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %225
  %235 = load i8, ptr %6, align 4
  %236 = icmp eq i8 %235, 1
  %237 = icmp ne i32 %209, 0
  %238 = select i1 %236, i1 %237, i1 false
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  tail call void @input_event(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %240 = load i8, ptr %6, align 4
  %241 = zext i8 %240 to i32
  %242 = load i16, ptr %228, align 2
  %243 = zext i16 %242 to i32
  tail call void @input_event(ptr noundef %14, i32 noundef %241, i32 noundef %243, i32 noundef 0) #10
  br label %244

244:                                              ; preds = %239, %234, %225, %202, %187, %184, %162, %157, %147, %137, %131, %128, %126, %123, %98, %96, %79, %60, %8, %4, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hidinput_handle_scroll(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hid_usage, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 11
  %9 = select i1 %8, i32 8, i32 6
  %10 = mul i32 %2, 120
  %11 = getelementptr inbounds %struct.hid_usage, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = sext i8 %12 to i32
  %14 = sdiv i32 %10, %13
  %15 = getelementptr inbounds %struct.hid_usage, ptr %0, i32 0, i32 10
  %16 = load i16, ptr %15, align 4
  %17 = trunc i32 %14 to i16
  %18 = add i16 %16, %17
  %19 = sext i16 %18 to i32
  %20 = sdiv i16 %18, 120
  %21 = sext i16 %20 to i32
  %22 = add nsw i32 %19, 119
  %23 = icmp ult i32 %22, 239
  %24 = mul nsw i16 %20, -120
  %25 = select i1 %23, i16 0, i16 %24
  %26 = add i16 %25, %18
  store i16 %26, ptr %15, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef %9, i32 noundef %21) #10
  %27 = load i16, ptr %6, align 2
  %28 = zext i16 %27 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef %28, i32 noundef %14) #10
  br label %29

29:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hidinput_report_event(ptr noundef readonly %0, ptr nocapture readnone %1) #2 {
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %16, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %14, %10 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.hid_input, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @input_event(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %14 = load ptr, ptr %11, align 4
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %16, label %10

16:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hidinput_get_led_field(ptr noundef readonly %0) #5 {
  %2 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %34, label %8

5:                                                ; preds = %31, %8
  %6 = load ptr, ptr %9, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %34, label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.hid_report, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %31, %8
  %14 = phi i32 [ %32, %31 ], [ 0, %8 ]
  %15 = getelementptr %struct.hid_report, ptr %9, i32 0, i32 5, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.hid_field, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.hid_field, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  br label %26

23:                                               ; preds = %26
  %24 = add nuw i32 %27, 1
  %25 = icmp eq i32 %24, %18
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ 0, %20 ], [ %24, %23 ]
  %28 = getelementptr %struct.hid_usage, ptr %22, i32 %27, i32 6
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 17
  br i1 %30, label %34, label %23

31:                                               ; preds = %23, %13
  %32 = add nuw i32 %14, 1
  %33 = icmp eq i32 %32, %11
  br i1 %33, label %5, label %13

34:                                               ; preds = %26, %5, %1
  %35 = phi ptr [ null, %1 ], [ %16, %26 ], [ null, %5 ]
  ret ptr %35
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @hidinput_count_leds(ptr noundef readonly %0) #5 {
  %2 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %48, label %9

5:                                                ; preds = %44, %9
  %6 = phi i32 [ %11, %9 ], [ %45, %44 ]
  %7 = load ptr, ptr %10, align 4
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %48, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.hid_report, ptr %10, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %5, label %15

15:                                               ; preds = %44, %9
  %16 = phi i32 [ %46, %44 ], [ 0, %9 ]
  %17 = phi i32 [ %45, %44 ], [ %11, %9 ]
  %18 = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.hid_field, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.hid_field, ptr %19, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.hid_field, ptr %19, i32 0, i32 10
  br label %27

27:                                               ; preds = %40, %23
  %28 = phi i32 [ 0, %23 ], [ %42, %40 ]
  %29 = phi i32 [ %17, %23 ], [ %41, %40 ]
  %30 = getelementptr %struct.hid_usage, ptr %25, i32 %28, i32 6
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 17
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr i32, ptr %34, i32 %28
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = add i32 %29, %38
  br label %40

40:                                               ; preds = %33, %27
  %41 = phi i32 [ %29, %27 ], [ %39, %33 ]
  %42 = add nuw i32 %28, 1
  %43 = icmp eq i32 %42, %21
  br i1 %43, label %44, label %27

44:                                               ; preds = %40, %15
  %45 = phi i32 [ %17, %15 ], [ %41, %40 ]
  %46 = add nuw i32 %16, 1
  %47 = icmp eq i32 %46, %13
  br i1 %47, label %5, label %15

48:                                               ; preds = %5, %1
  %49 = phi i32 [ 0, %1 ], [ %6, %5 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hidinput_connect(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 27
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 27, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 16
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 16, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 16, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 16, i32 2
  store ptr @hidinput_led_worker, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 23
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, -5
  store i32 %13, ptr %11, align 8
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  br label %22

22:                                               ; preds = %36, %19
  %23 = phi i32 [ 0, %19 ], [ %37, %36 ]
  %24 = getelementptr %struct.hid_collection, ptr %21, i32 %23, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = getelementptr %struct.hid_collection, ptr %21, i32 %23, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -65536
  %31 = icmp ult i32 %30, 9
  %32 = add i32 %29, -851970
  %33 = icmp ult i32 %32, 5
  %34 = or i1 %31, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  switch i32 %29, label %36 [
    i32 65664, label %39
    i32 786433, label %39
    i32 65548, label %39
  ]

36:                                               ; preds = %35, %22
  %37 = add nuw i32 %23, 1
  %38 = icmp eq i32 %37, %17
  br i1 %38, label %662, label %22

39:                                               ; preds = %35, %35, %35, %27, %15
  %40 = phi i32 [ 0, %15 ], [ %23, %27 ], [ %23, %35 ], [ %23, %35 ], [ %23, %35 ]
  %41 = icmp eq i32 %40, %17
  br i1 %41, label %662, label %42

42:                                               ; preds = %39, %2
  %43 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 2, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %90, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.hid_driver, ptr %4, i32 0, i32 16
  br label %51

48:                                               ; preds = %86, %51
  %49 = load ptr, ptr %52, align 4
  %50 = icmp eq ptr %49, %43
  br i1 %50, label %90, label %51

51:                                               ; preds = %48, %46
  %52 = phi ptr [ %44, %46 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.hid_report, ptr %52, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %48, label %56

56:                                               ; preds = %86, %51
  %57 = phi i32 [ %87, %86 ], [ %54, %51 ]
  %58 = phi i32 [ %88, %86 ], [ 0, %51 ]
  %59 = getelementptr %struct.hid_report, ptr %52, i32 0, i32 5, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.hid_field, ptr %60, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.hid_field, ptr %60, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %78, %64
  %69 = phi ptr [ %79, %78 ], [ %60, %64 ]
  %70 = phi i32 [ %80, %78 ], [ 0, %64 ]
  %71 = load ptr, ptr %47, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.hid_field, ptr %69, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr %struct.hid_usage, ptr %75, i32 %70
  tail call void %71(ptr noundef %0, ptr noundef %69, ptr noundef %76) #10
  %77 = load ptr, ptr %59, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi ptr [ %69, %68 ], [ %77, %73 ]
  %80 = add nuw i32 %70, 1
  %81 = getelementptr inbounds %struct.hid_field, ptr %79, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %68, label %84

84:                                               ; preds = %78
  %85 = load i32, ptr %53, align 4
  br label %86

86:                                               ; preds = %84, %64, %56
  %87 = phi i32 [ %85, %84 ], [ %57, %64 ], [ %57, %56 ]
  %88 = add nuw i32 %58, 1
  %89 = icmp ult i32 %88, %87
  br i1 %89, label %56, label %48

90:                                               ; preds = %48, %42
  %91 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %92 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 7
  %93 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 30
  %94 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 31
  %95 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 32
  %96 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8
  %97 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  %98 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %99 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 12
  %100 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  br label %101

101:                                              ; preds = %290, %90
  %102 = phi ptr [ null, %90 ], [ %291, %290 ]
  %103 = phi i32 [ 0, %90 ], [ %292, %290 ]
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, ptr %91, align 8
  %107 = and i32 %106, 65536
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %294

109:                                              ; preds = %105, %101
  %110 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 %103, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %110
  br i1 %112, label %290, label %113

113:                                              ; preds = %286, %109
  %114 = phi ptr [ %288, %286 ], [ %111, %109 ]
  %115 = phi ptr [ %287, %286 ], [ %102, %109 ]
  %116 = getelementptr inbounds %struct.hid_report, ptr %114, i32 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %286, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.hid_report, ptr %114, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %91, align 8
  %123 = and i32 %122, 64
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %146, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.hid_report, ptr %114, i32 0, i32 8
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.hid_device, ptr %127, i32 0, i32 27
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, %128
  br i1 %130, label %172, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.hid_report, ptr %114, i32 0, i32 2
  br label %133

133:                                              ; preds = %143, %131
  %134 = phi ptr [ %129, %131 ], [ %144, %143 ]
  %135 = getelementptr inbounds %struct.hid_input, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.hid_report, ptr %136, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %132, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %169, label %143

143:                                              ; preds = %138, %133
  %144 = load ptr, ptr %134, align 4
  %145 = icmp eq ptr %144, %128
  br i1 %145, label %172, label %133

146:                                              ; preds = %119
  %147 = load i32, ptr %92, align 4
  %148 = icmp ult i32 %147, 2
  %149 = and i32 %122, 2048
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %148, i1 true, i1 %150
  br i1 %151, label %169, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.hid_report, ptr %114, i32 0, i32 8
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.hid_device, ptr %154, i32 0, i32 27
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %155
  br i1 %157, label %172, label %158

158:                                              ; preds = %166, %152
  %159 = phi ptr [ %167, %166 ], [ %156, %152 ]
  %160 = getelementptr inbounds %struct.hid_input, ptr %159, i32 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, %121
  br i1 %162, label %169, label %163

163:                                              ; preds = %158
  switch i32 %121, label %166 [
    i32 65664, label %164
    i32 786433, label %164
  ]

164:                                              ; preds = %163, %163
  %165 = icmp eq i32 %161, 65542
  br i1 %165, label %169, label %166

166:                                              ; preds = %164, %163
  %167 = load ptr, ptr %159, align 4
  %168 = icmp eq ptr %167, %155
  br i1 %168, label %172, label %158

169:                                              ; preds = %164, %158, %146, %138
  %170 = phi ptr [ %115, %146 ], [ %159, %158 ], [ %159, %164 ], [ %134, %138 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %245

172:                                              ; preds = %169, %166, %152, %143, %125
  %173 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %174 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %173, i32 noundef 3520, i32 noundef 36) #12
  %175 = tail call ptr @input_allocate_device() #10
  %176 = icmp ne ptr %174, null
  %177 = icmp ne ptr %175, null
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %179, label %212

179:                                              ; preds = %172
  %180 = load i32, ptr %91, align 8
  %181 = and i32 %180, 2048
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %213, label %183

183:                                              ; preds = %179
  %184 = load i32, ptr %92, align 4
  %185 = icmp ugt i32 %184, 1
  br i1 %185, label %186, label %213

186:                                              ; preds = %183
  switch i32 %121, label %213 [
    i32 65542, label %197
    i32 65543, label %187
    i32 65538, label %188
    i32 851970, label %189
    i32 852000, label %190
    i32 851972, label %191
    i32 851973, label %192
    i32 65664, label %193
    i32 786433, label %194
    i32 65548, label %195
    i32 65550, label %196
  ]

187:                                              ; preds = %186
  br label %197

188:                                              ; preds = %186
  br label %197

189:                                              ; preds = %186
  br label %197

190:                                              ; preds = %186
  br label %197

191:                                              ; preds = %186
  br label %197

192:                                              ; preds = %186
  br label %197

193:                                              ; preds = %186
  br label %197

194:                                              ; preds = %186
  br label %197

195:                                              ; preds = %186
  br label %197

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186
  %198 = phi ptr [ @.str.15, %196 ], [ @.str.14, %195 ], [ @.str.13, %194 ], [ @.str.12, %193 ], [ @.str.11, %192 ], [ @.str.10, %191 ], [ @.str.9, %190 ], [ @.str.8, %189 ], [ @.str.7, %188 ], [ @.str.6, %187 ], [ @.str.5, %186 ]
  %199 = tail call i32 @strlen(ptr noundef %93) #10
  %200 = tail call i32 @strlen(ptr noundef nonnull %198) #10
  %201 = icmp ult i32 %199, %200
  br i1 %201, label %208, label %202

202:                                              ; preds = %197
  %203 = getelementptr i8, ptr %93, i32 %199
  %204 = sub i32 0, %200
  %205 = getelementptr i8, ptr %203, i32 %204
  %206 = tail call i32 @strcmp(ptr noundef %205, ptr noundef nonnull %198) #10
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %202, %197
  %209 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.16, ptr noundef %93, ptr noundef nonnull %198) #10
  %210 = getelementptr inbounds %struct.hid_input, ptr %174, i32 0, i32 3
  store ptr %209, ptr %210, align 8
  %211 = icmp eq ptr %209, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %208, %172
  tail call void @kfree(ptr noundef %174) #10
  tail call void @input_free_device(ptr noundef %175) #10
  br label %638

213:                                              ; preds = %208, %202, %186, %183, %179
  %214 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 40, i32 8
  store ptr %0, ptr %214, align 8
  %215 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 34
  store ptr @hidinput_input_event, ptr %215, align 8
  %216 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 31
  store ptr @hidinput_open, ptr %216, align 4
  %217 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 32
  store ptr @hidinput_close, ptr %217, align 8
  %218 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 18
  store ptr @hidinput_setkeycode, ptr %218, align 8
  %219 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 19
  store ptr @hidinput_getkeycode, ptr %219, align 4
  %220 = getelementptr inbounds %struct.hid_input, ptr %174, i32 0, i32 3
  %221 = load ptr, ptr %220, align 8
  %222 = icmp eq ptr %221, null
  %223 = select i1 %222, ptr %93, ptr %221
  store ptr %223, ptr %175, align 8
  %224 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 1
  store ptr %94, ptr %224, align 4
  %225 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 2
  store ptr %95, ptr %225, align 8
  %226 = load i16, ptr %96, align 8
  %227 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 3
  store i16 %226, ptr %227, align 4
  %228 = load i32, ptr %97, align 4
  %229 = trunc i32 %228 to i16
  %230 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 3, i32 1
  store i16 %229, ptr %230, align 2
  %231 = load i32, ptr %98, align 8
  %232 = trunc i32 %231 to i16
  %233 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 3, i32 2
  store i16 %232, ptr %233, align 4
  %234 = load i32, ptr %99, align 4
  %235 = trunc i32 %234 to i16
  %236 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 3, i32 3
  store i16 %235, ptr %236, align 2
  %237 = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 40, i32 1
  store ptr %100, ptr %237, align 4
  %238 = getelementptr inbounds %struct.hid_input, ptr %174, i32 0, i32 2
  store ptr %175, ptr %238, align 4
  %239 = getelementptr inbounds %struct.hid_input, ptr %174, i32 0, i32 6
  store i32 %121, ptr %239, align 8
  %240 = load ptr, ptr %6, align 4
  store ptr %174, ptr %6, align 4
  store ptr %5, ptr %174, align 8
  %241 = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  store ptr %240, ptr %241, align 4
  store volatile ptr %174, ptr %240, align 4
  %242 = getelementptr inbounds %struct.hid_input, ptr %174, i32 0, i32 5
  store volatile ptr %242, ptr %242, align 8
  %243 = getelementptr inbounds %struct.hid_input, ptr %174, i32 0, i32 5, i32 1
  store ptr %242, ptr %243, align 4
  %244 = load i32, ptr %116, align 4
  br label %245

245:                                              ; preds = %213, %169
  %246 = phi i32 [ %117, %169 ], [ %244, %213 ]
  %247 = phi ptr [ %170, %169 ], [ %174, %213 ]
  %248 = icmp eq i32 %246, 0
  br i1 %248, label %274, label %249

249:                                              ; preds = %270, %245
  %250 = phi i32 [ %271, %270 ], [ %246, %245 ]
  %251 = phi i32 [ %272, %270 ], [ 0, %245 ]
  %252 = getelementptr %struct.hid_report, ptr %114, i32 0, i32 5, i32 %251
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.hid_field, ptr %253, i32 0, i32 4
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %270, label %257

257:                                              ; preds = %257, %249
  %258 = phi ptr [ %264, %257 ], [ %253, %249 ]
  %259 = phi i32 [ %263, %257 ], [ 0, %249 ]
  %260 = getelementptr inbounds %struct.hid_field, ptr %258, i32 0, i32 3
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr %struct.hid_usage, ptr %261, i32 %259
  tail call fastcc void @hidinput_configure_usage(ptr noundef %247, ptr noundef %258, ptr noundef %262) #10
  %263 = add nuw i32 %259, 1
  %264 = load ptr, ptr %252, align 4
  %265 = getelementptr inbounds %struct.hid_field, ptr %264, i32 0, i32 4
  %266 = load i32, ptr %265, align 4
  %267 = icmp ult i32 %263, %266
  br i1 %267, label %257, label %268

268:                                              ; preds = %257
  %269 = load i32, ptr %116, align 4
  br label %270

270:                                              ; preds = %268, %249
  %271 = phi i32 [ %269, %268 ], [ %250, %249 ]
  %272 = add nuw i32 %251, 1
  %273 = icmp ult i32 %272, %271
  br i1 %273, label %249, label %274

274:                                              ; preds = %270, %245
  %275 = load i32, ptr %91, align 8
  %276 = and i32 %275, 64
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.hid_input, ptr %247, i32 0, i32 1
  store ptr %114, ptr %279, align 4
  br label %280

280:                                              ; preds = %278, %274
  %281 = getelementptr inbounds %struct.hid_report, ptr %114, i32 0, i32 1
  %282 = getelementptr inbounds %struct.hid_input, ptr %247, i32 0, i32 5
  %283 = getelementptr inbounds %struct.hid_input, ptr %247, i32 0, i32 5, i32 1
  %284 = load ptr, ptr %283, align 4
  store ptr %281, ptr %283, align 4
  store ptr %282, ptr %281, align 4
  %285 = getelementptr inbounds %struct.hid_report, ptr %114, i32 0, i32 1, i32 1
  store ptr %284, ptr %285, align 4
  store volatile ptr %281, ptr %284, align 4
  br label %286

286:                                              ; preds = %280, %113
  %287 = phi ptr [ %247, %280 ], [ %115, %113 ]
  %288 = load ptr, ptr %114, align 4
  %289 = icmp eq ptr %288, %110
  br i1 %289, label %290, label %113

290:                                              ; preds = %286, %109
  %291 = phi ptr [ %102, %109 ], [ %287, %286 ]
  %292 = add nuw nsw i32 %103, 1
  %293 = icmp eq i32 %292, 2
  br i1 %293, label %294, label %101

294:                                              ; preds = %290, %105
  %295 = load ptr, ptr %43, align 4
  %296 = icmp eq ptr %295, %43
  br i1 %296, label %439, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  br label %299

299:                                              ; preds = %436, %297
  %300 = phi ptr [ %295, %297 ], [ %437, %436 ]
  %301 = getelementptr inbounds %struct.hid_report, ptr %300, i32 0, i32 6
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %436, label %304

304:                                              ; preds = %362, %299
  %305 = phi i32 [ %363, %362 ], [ %302, %299 ]
  %306 = phi i32 [ %366, %362 ], [ 0, %299 ]
  %307 = phi i1 [ %365, %362 ], [ false, %299 ]
  %308 = phi i1 [ %364, %362 ], [ false, %299 ]
  %309 = getelementptr %struct.hid_report, ptr %300, i32 0, i32 5, i32 %306
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr inbounds %struct.hid_field, ptr %310, i32 0, i32 12
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr inbounds %struct.hid_field, ptr %310, i32 0, i32 8
  %314 = load i32, ptr %313, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %316, label %362

316:                                              ; preds = %304
  %317 = getelementptr inbounds %struct.hid_field, ptr %310, i32 0, i32 4
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %362, label %320

320:                                              ; preds = %352, %316
  %321 = phi ptr [ %353, %352 ], [ %310, %316 ]
  %322 = phi i32 [ %356, %352 ], [ 0, %316 ]
  %323 = phi i1 [ %355, %352 ], [ %307, %316 ]
  %324 = phi i1 [ %354, %352 ], [ %308, %316 ]
  %325 = getelementptr inbounds %struct.hid_field, ptr %321, i32 0, i32 3
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr %struct.hid_usage, ptr %326, i32 %322
  %328 = load i32, ptr %327, align 4
  %329 = icmp eq i32 %328, 65608
  br i1 %329, label %330, label %352

330:                                              ; preds = %320
  br i1 %323, label %345, label %331

331:                                              ; preds = %330
  %332 = load i32, ptr %301, align 4
  %333 = icmp ugt i32 %332, 1
  br i1 %333, label %334, label %345

334:                                              ; preds = %331
  %335 = load i32, ptr %91, align 8
  %336 = and i32 %335, 536870912
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %368

338:                                              ; preds = %334
  tail call void @hid_hw_request(ptr noundef %0, ptr noundef %300, i32 noundef 1) #10
  %339 = load ptr, ptr %298, align 4
  %340 = getelementptr inbounds %struct.hid_ll_driver, ptr %339, i32 0, i32 7
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, null
  br i1 %342, label %345, label %343

343:                                              ; preds = %338
  %344 = tail call i32 %341(ptr noundef %0) #10
  br label %345

345:                                              ; preds = %343, %338, %331, %330
  %346 = phi i1 [ true, %330 ], [ false, %331 ], [ true, %338 ], [ true, %343 ]
  %347 = load ptr, ptr %309, align 4
  %348 = getelementptr inbounds %struct.hid_field, ptr %347, i32 0, i32 10
  %349 = load ptr, ptr %348, align 4
  %350 = getelementptr i32, ptr %349, i32 %322
  store i32 %312, ptr %350, align 4
  %351 = load ptr, ptr %309, align 4
  br label %352

352:                                              ; preds = %345, %320
  %353 = phi ptr [ %321, %320 ], [ %351, %345 ]
  %354 = phi i1 [ %324, %320 ], [ true, %345 ]
  %355 = phi i1 [ %323, %320 ], [ %346, %345 ]
  %356 = add nuw i32 %322, 1
  %357 = getelementptr inbounds %struct.hid_field, ptr %353, i32 0, i32 4
  %358 = load i32, ptr %357, align 4
  %359 = icmp ult i32 %356, %358
  br i1 %359, label %320, label %360

360:                                              ; preds = %352
  %361 = load i32, ptr %301, align 4
  br label %362

362:                                              ; preds = %360, %316, %304
  %363 = phi i32 [ %305, %304 ], [ %305, %316 ], [ %361, %360 ]
  %364 = phi i1 [ %308, %304 ], [ %308, %316 ], [ %354, %360 ]
  %365 = phi i1 [ %307, %304 ], [ %307, %316 ], [ %355, %360 ]
  %366 = add nuw i32 %306, 1
  %367 = icmp ult i32 %366, %363
  br i1 %367, label %304, label %368

368:                                              ; preds = %362, %334
  %369 = phi i1 [ %324, %334 ], [ %364, %362 ]
  br i1 %369, label %370, label %436

370:                                              ; preds = %368
  %371 = tail call i32 @__hid_request(ptr noundef %0, ptr noundef %300, i32 noundef 9) #10
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %436, label %373

373:                                              ; preds = %370
  %374 = load i32, ptr %301, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %440, label %376

376:                                              ; preds = %431, %373
  %377 = phi i32 [ %432, %431 ], [ %374, %373 ]
  %378 = phi i32 [ %434, %431 ], [ 0, %373 ]
  %379 = phi i1 [ %433, %431 ], [ false, %373 ]
  %380 = getelementptr %struct.hid_report, ptr %300, i32 0, i32 5, i32 %378
  %381 = load ptr, ptr %380, align 4
  %382 = getelementptr inbounds %struct.hid_field, ptr %381, i32 0, i32 11
  %383 = load i32, ptr %382, align 4
  %384 = getelementptr inbounds %struct.hid_field, ptr %381, i32 0, i32 8
  %385 = load i32, ptr %384, align 4
  %386 = icmp eq i32 %385, 1
  br i1 %386, label %387, label %431

387:                                              ; preds = %376
  %388 = getelementptr inbounds %struct.hid_field, ptr %381, i32 0, i32 4
  %389 = load i32, ptr %388, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %431, label %391

391:                                              ; preds = %422, %387
  %392 = phi ptr [ %423, %422 ], [ %381, %387 ]
  %393 = phi i32 [ %425, %422 ], [ 0, %387 ]
  %394 = phi i1 [ %424, %422 ], [ %379, %387 ]
  %395 = getelementptr inbounds %struct.hid_field, ptr %392, i32 0, i32 3
  %396 = load ptr, ptr %395, align 4
  %397 = getelementptr %struct.hid_usage, ptr %396, i32 %393
  %398 = load i32, ptr %397, align 4
  %399 = icmp eq i32 %398, 65608
  br i1 %399, label %400, label %422

400:                                              ; preds = %391
  br i1 %394, label %415, label %401

401:                                              ; preds = %400
  %402 = load i32, ptr %301, align 4
  %403 = icmp ugt i32 %402, 1
  br i1 %403, label %404, label %415

404:                                              ; preds = %401
  %405 = load i32, ptr %91, align 8
  %406 = and i32 %405, 536870912
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %440

408:                                              ; preds = %404
  tail call void @hid_hw_request(ptr noundef %0, ptr noundef %300, i32 noundef 1) #10
  %409 = load ptr, ptr %298, align 4
  %410 = getelementptr inbounds %struct.hid_ll_driver, ptr %409, i32 0, i32 7
  %411 = load ptr, ptr %410, align 4
  %412 = icmp eq ptr %411, null
  br i1 %412, label %415, label %413

413:                                              ; preds = %408
  %414 = tail call i32 %411(ptr noundef %0) #10
  br label %415

415:                                              ; preds = %413, %408, %401, %400
  %416 = phi i1 [ true, %400 ], [ false, %401 ], [ true, %408 ], [ true, %413 ]
  %417 = load ptr, ptr %380, align 4
  %418 = getelementptr inbounds %struct.hid_field, ptr %417, i32 0, i32 10
  %419 = load ptr, ptr %418, align 4
  %420 = getelementptr i32, ptr %419, i32 %393
  store i32 %383, ptr %420, align 4
  %421 = load ptr, ptr %380, align 4
  br label %422

422:                                              ; preds = %415, %391
  %423 = phi ptr [ %392, %391 ], [ %421, %415 ]
  %424 = phi i1 [ %394, %391 ], [ %416, %415 ]
  %425 = add nuw i32 %393, 1
  %426 = getelementptr inbounds %struct.hid_field, ptr %423, i32 0, i32 4
  %427 = load i32, ptr %426, align 4
  %428 = icmp ult i32 %425, %427
  br i1 %428, label %391, label %429

429:                                              ; preds = %422
  %430 = load i32, ptr %301, align 4
  br label %431

431:                                              ; preds = %429, %387, %376
  %432 = phi i32 [ %377, %376 ], [ %377, %387 ], [ %430, %429 ]
  %433 = phi i1 [ %379, %376 ], [ %379, %387 ], [ %424, %429 ]
  %434 = add nuw i32 %378, 1
  %435 = icmp ult i32 %434, %432
  br i1 %435, label %376, label %440

436:                                              ; preds = %370, %368, %299
  %437 = load ptr, ptr %300, align 4
  %438 = icmp eq ptr %437, %43
  br i1 %438, label %439, label %299

439:                                              ; preds = %436, %294
  tail call void @hid_setup_resolution_multiplier(ptr noundef %0) #10
  br label %440

440:                                              ; preds = %439, %431, %404, %373
  %441 = load ptr, ptr %5, align 8
  %442 = icmp eq ptr %441, %5
  br i1 %442, label %635, label %443

443:                                              ; preds = %440
  %444 = getelementptr inbounds %struct.hid_driver, ptr %4, i32 0, i32 15
  %445 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 0, i32 1
  %446 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1, i32 1
  br label %447

447:                                              ; preds = %633, %443
  %448 = phi ptr [ %441, %443 ], [ %449, %633 ]
  %449 = load ptr, ptr %448, align 4
  %450 = load ptr, ptr %444, align 4
  %451 = icmp eq ptr %450, null
  br i1 %451, label %455, label %452

452:                                              ; preds = %447
  %453 = tail call i32 %450(ptr noundef %0, ptr noundef %448) #10
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %640

455:                                              ; preds = %452, %447
  %456 = getelementptr inbounds %struct.hid_input, ptr %448, i32 0, i32 2
  %457 = load ptr, ptr %456, align 4
  %458 = getelementptr inbounds %struct.input_dev, ptr %457, i32 0, i32 5
  %459 = load i32, ptr %458, align 4
  %460 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 0
  %461 = load i32, ptr %460, align 4
  %462 = or i32 %461, %459
  %463 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 1
  %464 = load i32, ptr %463, align 4
  %465 = or i32 %462, %464
  %466 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 2
  %467 = load i32, ptr %466, align 4
  %468 = or i32 %465, %467
  %469 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 3
  %470 = load i32, ptr %469, align 4
  %471 = or i32 %468, %470
  %472 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 4
  %473 = load i32, ptr %472, align 4
  %474 = or i32 %471, %473
  %475 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 5
  %476 = load i32, ptr %475, align 4
  %477 = or i32 %474, %476
  %478 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 6
  %479 = load i32, ptr %478, align 4
  %480 = or i32 %477, %479
  %481 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 7
  %482 = load i32, ptr %481, align 4
  %483 = or i32 %480, %482
  %484 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 8
  %485 = load i32, ptr %484, align 4
  %486 = or i32 %483, %485
  %487 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 9
  %488 = load i32, ptr %487, align 4
  %489 = or i32 %486, %488
  %490 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 10
  %491 = load i32, ptr %490, align 4
  %492 = or i32 %489, %491
  %493 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 11
  %494 = load i32, ptr %493, align 4
  %495 = or i32 %492, %494
  %496 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 12
  %497 = load i32, ptr %496, align 4
  %498 = or i32 %495, %497
  %499 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 13
  %500 = load i32, ptr %499, align 4
  %501 = or i32 %498, %500
  %502 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 14
  %503 = load i32, ptr %502, align 4
  %504 = or i32 %501, %503
  %505 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 15
  %506 = load i32, ptr %505, align 4
  %507 = or i32 %504, %506
  %508 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 16
  %509 = load i32, ptr %508, align 4
  %510 = or i32 %507, %509
  %511 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 17
  %512 = load i32, ptr %511, align 4
  %513 = or i32 %510, %512
  %514 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 18
  %515 = load i32, ptr %514, align 4
  %516 = or i32 %513, %515
  %517 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 19
  %518 = load i32, ptr %517, align 4
  %519 = or i32 %516, %518
  %520 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 20
  %521 = load i32, ptr %520, align 4
  %522 = or i32 %519, %521
  %523 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 21
  %524 = load i32, ptr %523, align 4
  %525 = or i32 %522, %524
  %526 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 22
  %527 = load i32, ptr %526, align 4
  %528 = or i32 %525, %527
  %529 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 6, i32 23
  %530 = load i32, ptr %529, align 4
  %531 = or i32 %528, %530
  %532 = getelementptr inbounds %struct.input_dev, ptr %457, i32 0, i32 7
  %533 = load i32, ptr %532, align 4
  %534 = or i32 %531, %533
  %535 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 8, i32 0
  %536 = load i32, ptr %535, align 4
  %537 = or i32 %534, %536
  %538 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 8, i32 1
  %539 = load i32, ptr %538, align 4
  %540 = or i32 %537, %539
  %541 = getelementptr inbounds %struct.input_dev, ptr %457, i32 0, i32 9
  %542 = load i32, ptr %541, align 4
  %543 = or i32 %540, %542
  %544 = getelementptr inbounds %struct.input_dev, ptr %457, i32 0, i32 10
  %545 = load i32, ptr %544, align 4
  %546 = or i32 %543, %545
  %547 = getelementptr inbounds %struct.input_dev, ptr %457, i32 0, i32 11
  %548 = load i32, ptr %547, align 4
  %549 = or i32 %546, %548
  %550 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 12, i32 0
  %551 = load i32, ptr %550, align 4
  %552 = or i32 %549, %551
  %553 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 12, i32 1
  %554 = load i32, ptr %553, align 4
  %555 = or i32 %552, %554
  %556 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 12, i32 2
  %557 = load i32, ptr %556, align 4
  %558 = or i32 %555, %557
  %559 = getelementptr %struct.input_dev, ptr %457, i32 0, i32 12, i32 3
  %560 = load i32, ptr %559, align 4
  %561 = or i32 %558, %560
  %562 = getelementptr inbounds %struct.input_dev, ptr %457, i32 0, i32 13
  %563 = load i32, ptr %562, align 4
  %564 = or i32 %561, %563
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %628

566:                                              ; preds = %455
  %567 = getelementptr inbounds %struct.list_head, ptr %448, i32 0, i32 1
  %568 = load ptr, ptr %567, align 4
  %569 = load ptr, ptr %448, align 4
  %570 = getelementptr inbounds %struct.list_head, ptr %569, i32 0, i32 1
  store ptr %568, ptr %570, align 4
  store volatile ptr %569, ptr %568, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %448, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %567, align 4
  %571 = load ptr, ptr %456, align 4
  tail call void @input_free_device(ptr noundef %571) #10
  %572 = getelementptr inbounds %struct.hid_input, ptr %448, i32 0, i32 3
  %573 = load ptr, ptr %572, align 4
  tail call void @kfree(ptr noundef %573) #10
  %574 = load ptr, ptr %445, align 4
  %575 = icmp eq ptr %574, %445
  br i1 %575, label %598, label %579

576:                                              ; preds = %594, %579
  %577 = load ptr, ptr %580, align 4
  %578 = icmp eq ptr %577, %445
  br i1 %578, label %598, label %579

579:                                              ; preds = %576, %566
  %580 = phi ptr [ %577, %576 ], [ %574, %566 ]
  %581 = getelementptr inbounds %struct.hid_report, ptr %580, i32 0, i32 6
  %582 = load i32, ptr %581, align 4
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %576, label %584

584:                                              ; preds = %594, %579
  %585 = phi i32 [ %595, %594 ], [ %582, %579 ]
  %586 = phi i32 [ %596, %594 ], [ 0, %579 ]
  %587 = getelementptr %struct.hid_report, ptr %580, i32 0, i32 5, i32 %586
  %588 = load ptr, ptr %587, align 4
  %589 = getelementptr inbounds %struct.hid_field, ptr %588, i32 0, i32 19
  %590 = load ptr, ptr %589, align 4
  %591 = icmp eq ptr %590, %448
  br i1 %591, label %592, label %594

592:                                              ; preds = %584
  store ptr null, ptr %589, align 4
  %593 = load i32, ptr %581, align 4
  br label %594

594:                                              ; preds = %592, %584
  %595 = phi i32 [ %585, %584 ], [ %593, %592 ]
  %596 = add nuw i32 %586, 1
  %597 = icmp ult i32 %596, %595
  br i1 %597, label %584, label %576

598:                                              ; preds = %576, %566
  %599 = load i32, ptr %91, align 8
  %600 = and i32 %599, 65536
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %627

602:                                              ; preds = %598
  %603 = load ptr, ptr %446, align 4
  %604 = icmp eq ptr %603, %446
  br i1 %604, label %627, label %605

605:                                              ; preds = %624, %602
  %606 = phi ptr [ %625, %624 ], [ %603, %602 ]
  %607 = getelementptr inbounds %struct.hid_report, ptr %606, i32 0, i32 6
  %608 = load i32, ptr %607, align 4
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %624, label %610

610:                                              ; preds = %620, %605
  %611 = phi i32 [ %621, %620 ], [ %608, %605 ]
  %612 = phi i32 [ %622, %620 ], [ 0, %605 ]
  %613 = getelementptr %struct.hid_report, ptr %606, i32 0, i32 5, i32 %612
  %614 = load ptr, ptr %613, align 4
  %615 = getelementptr inbounds %struct.hid_field, ptr %614, i32 0, i32 19
  %616 = load ptr, ptr %615, align 4
  %617 = icmp eq ptr %616, %448
  br i1 %617, label %618, label %620

618:                                              ; preds = %610
  store ptr null, ptr %615, align 4
  %619 = load i32, ptr %607, align 4
  br label %620

620:                                              ; preds = %618, %610
  %621 = phi i32 [ %619, %618 ], [ %611, %610 ]
  %622 = add nuw i32 %612, 1
  %623 = icmp ult i32 %622, %621
  br i1 %623, label %610, label %624

624:                                              ; preds = %620, %605
  %625 = load ptr, ptr %606, align 4
  %626 = icmp eq ptr %625, %446
  br i1 %626, label %627, label %605

627:                                              ; preds = %624, %602, %598
  tail call void @kfree(ptr noundef %448) #10
  br label %633

628:                                              ; preds = %455
  %629 = tail call i32 @input_register_device(ptr noundef %457) #10
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %640

631:                                              ; preds = %628
  %632 = getelementptr inbounds %struct.hid_input, ptr %448, i32 0, i32 4
  store i8 1, ptr %632, align 4
  br label %633

633:                                              ; preds = %631, %627
  %634 = icmp eq ptr %449, %5
  br i1 %634, label %635, label %447

635:                                              ; preds = %633, %440
  %636 = load volatile ptr, ptr %5, align 4
  %637 = icmp eq ptr %636, %5
  br i1 %637, label %638, label %662

638:                                              ; preds = %635, %212
  %639 = phi ptr [ @.str.17, %212 ], [ @.str.4, %635 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull %639) #11
  br label %640

640:                                              ; preds = %638, %628, %452
  %641 = load ptr, ptr %5, align 8
  %642 = icmp eq ptr %641, %5
  br i1 %642, label %660, label %643

643:                                              ; preds = %656, %640
  %644 = phi ptr [ %645, %656 ], [ %641, %640 ]
  %645 = load ptr, ptr %644, align 4
  %646 = getelementptr inbounds %struct.list_head, ptr %644, i32 0, i32 1
  %647 = load ptr, ptr %646, align 4
  %648 = getelementptr inbounds %struct.list_head, ptr %645, i32 0, i32 1
  store ptr %647, ptr %648, align 4
  store volatile ptr %645, ptr %647, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %644, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %646, align 4
  %649 = getelementptr inbounds %struct.hid_input, ptr %644, i32 0, i32 4
  %650 = load i8, ptr %649, align 4, !range !8
  %651 = icmp eq i8 %650, 0
  %652 = getelementptr inbounds %struct.hid_input, ptr %644, i32 0, i32 2
  %653 = load ptr, ptr %652, align 4
  br i1 %651, label %655, label %654

654:                                              ; preds = %643
  tail call void @input_unregister_device(ptr noundef %653) #10
  br label %656

655:                                              ; preds = %643
  tail call void @input_free_device(ptr noundef %653) #10
  br label %656

656:                                              ; preds = %655, %654
  %657 = getelementptr inbounds %struct.hid_input, ptr %644, i32 0, i32 3
  %658 = load ptr, ptr %657, align 4
  tail call void @kfree(ptr noundef %658) #10
  tail call void @kfree(ptr noundef %644) #10
  %659 = icmp eq ptr %645, %5
  br i1 %659, label %660, label %643

660:                                              ; preds = %656, %640
  %661 = tail call zeroext i1 @cancel_work_sync(ptr noundef %7) #10
  br label %662

662:                                              ; preds = %660, %635, %39, %36
  %663 = phi i32 [ -1, %660 ], [ -1, %39 ], [ 0, %635 ], [ -1, %36 ]
  ret i32 %663
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hidinput_led_worker(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -3164
  %3 = getelementptr i8, ptr %0, i32 -2068
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %66, label %9

6:                                                ; preds = %32, %9
  %7 = load ptr, ptr %10, align 4
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %66, label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.hid_report, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %6, label %14

14:                                               ; preds = %32, %9
  %15 = phi i32 [ %33, %32 ], [ 0, %9 ]
  %16 = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  br label %27

24:                                               ; preds = %27
  %25 = add nuw i32 %28, 1
  %26 = icmp eq i32 %25, %19
  br i1 %26, label %32, label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ 0, %21 ], [ %25, %24 ]
  %29 = getelementptr %struct.hid_usage, ptr %23, i32 %28, i32 6
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 17
  br i1 %31, label %35, label %24

32:                                               ; preds = %24, %14
  %33 = add nuw i32 %15, 1
  %34 = icmp eq i32 %33, %12
  br i1 %34, label %6, label %14

35:                                               ; preds = %27
  %36 = icmp eq ptr %17, null
  br i1 %36, label %66, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %0, i32 512
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.hid_ll_driver, ptr %41, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  tail call void %43(ptr noundef %2, ptr noundef %39, i32 noundef 9) #10
  br label %66

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.hid_report, ptr %39, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 7
  %50 = lshr i32 %49, 3
  %51 = getelementptr inbounds %struct.hid_report, ptr %39, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = add nuw nsw i32 %50, %54
  %56 = tail call ptr @hid_alloc_report_buf(ptr noundef %39, i32 noundef 3264) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %46
  tail call void @hid_output_report(ptr noundef %39, ptr noundef nonnull %56) #10
  %59 = tail call i32 @hid_hw_output_report(ptr noundef %2, ptr noundef nonnull %56, i32 noundef %55) #10
  %60 = icmp eq i32 %59, -38
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, ptr %51, align 4
  %63 = trunc i32 %62 to i8
  %64 = tail call i32 @hid_hw_raw_request(ptr noundef %2, i8 noundef zeroext %63, ptr noundef nonnull %56, i32 noundef %55, i8 noundef zeroext 1, i32 noundef 9) #10
  br label %65

65:                                               ; preds = %61, %58
  tail call void @kfree(ptr noundef nonnull %56) #10
  br label %66

66:                                               ; preds = %65, %46, %45, %35, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hidinput_disconnect(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %22, label %5

5:                                                ; preds = %18, %1
  %6 = phi ptr [ %7, %18 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %11 = getelementptr inbounds %struct.hid_input, ptr %6, i32 0, i32 4
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.hid_input, ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  br i1 %13, label %17, label %16

16:                                               ; preds = %5
  tail call void @input_unregister_device(ptr noundef %15) #10
  br label %18

17:                                               ; preds = %5
  tail call void @input_free_device(ptr noundef %15) #10
  br label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.hid_input, ptr %6, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #10
  tail call void @kfree(ptr noundef %6) #10
  %21 = icmp eq ptr %7, %2
  br i1 %21, label %22, label %5

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 16
  %24 = tail call zeroext i1 @cancel_work_sync(ptr noundef %23) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_alloc_report_buf(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_output_report(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hidinput_input_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %56 [
    i32 21, label %7
    i32 17, label %9
  ]

7:                                                ; preds = %4
  %8 = tail call i32 @input_ff_event(ptr noundef %0, i32 noundef 21, i32 noundef %2, i32 noundef %3) #10
  br label %56

9:                                                ; preds = %4
  %10 = getelementptr %struct.hid_device, ptr %6, i32 0, i32 15, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %49, label %16

13:                                               ; preds = %44, %16
  %14 = load ptr, ptr %17, align 4
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %49, label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %14, %13 ], [ %11, %9 ]
  %18 = getelementptr inbounds %struct.hid_report, ptr %17, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %13, label %21

21:                                               ; preds = %44, %16
  %22 = phi i32 [ %45, %44 ], [ 0, %16 ]
  %23 = getelementptr %struct.hid_report, ptr %17, i32 0, i32 5, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hid_field, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.hid_field, ptr %24, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %41, %28
  %32 = phi i32 [ 0, %28 ], [ %42, %41 ]
  %33 = getelementptr %struct.hid_usage, ptr %30, i32 %32, i32 6
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 17
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr %struct.hid_usage, ptr %30, i32 %32, i32 5
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %47, label %41

41:                                               ; preds = %36, %31
  %42 = add nuw i32 %32, 1
  %43 = icmp eq i32 %42, %26
  br i1 %43, label %44, label %31

44:                                               ; preds = %41, %21
  %45 = add nuw i32 %22, 1
  %46 = icmp eq i32 %45, %19
  br i1 %46, label %13, label %21

47:                                               ; preds = %36
  %48 = icmp eq i32 %32, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %47, %13, %9
  %50 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.18) #11
  br label %56

51:                                               ; preds = %47
  %52 = tail call i32 @hid_set_field(ptr noundef %24, i32 noundef %32, i32 noundef %3) #10
  %53 = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 16
  %54 = load ptr, ptr @system_wq, align 4
  %55 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %54, ptr noundef %53) #10
  br label %56

56:                                               ; preds = %51, %49, %7, %4
  %57 = phi i32 [ %8, %7 ], [ -1, %49 ], [ 0, %51 ], [ -1, %4 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hidinput_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @hid_hw_open(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hidinput_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @hid_hw_close(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hidinput_setkeycode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc ptr @hidinput_locate_usage(ptr noundef %5, ptr noundef %1, ptr noundef null)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %118, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hid_usage, ptr %6, i32 0, i32 6
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hid_usage, ptr %6, i32 0, i32 5
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %15, %12 ], [ 0, %8 ]
  store i32 %17, ptr %2, align 4
  store i8 1, ptr %9, align 4
  %18 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.hid_usage, ptr %6, i32 0, i32 5
  store i16 %20, ptr %21, align 2
  %22 = load i32, ptr %2, align 4
  %23 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %22, ptr noundef %23) #10
  %24 = load i16, ptr %21, align 2
  %25 = zext i16 %24 to i32
  tail call void @_set_bit(i32 noundef %25, ptr noundef %23) #10
  %26 = load i32, ptr @hid_debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %16
  %29 = load i16, ptr %21, align 2
  %30 = zext i16 %29 to i32
  %31 = load i32, ptr %6, align 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef %30, i32 noundef %31) #11
  br label %33

33:                                               ; preds = %28, %16
  %34 = load i32, ptr %2, align 4
  %35 = getelementptr %struct.hid_device, ptr %5, i32 0, i32 15, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %72, label %41

38:                                               ; preds = %69, %41
  %39 = load ptr, ptr %42, align 4
  %40 = icmp eq ptr %39, %35
  br i1 %40, label %72, label %41

41:                                               ; preds = %38, %33
  %42 = phi ptr [ %39, %38 ], [ %36, %33 ]
  %43 = getelementptr inbounds %struct.hid_report, ptr %42, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %38, label %46

46:                                               ; preds = %69, %41
  %47 = phi i32 [ %70, %69 ], [ 0, %41 ]
  %48 = getelementptr %struct.hid_report, ptr %42, i32 0, i32 5, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.hid_field, ptr %49, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.hid_field, ptr %49, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %66, %53
  %57 = phi i32 [ %67, %66 ], [ 0, %53 ]
  %58 = getelementptr %struct.hid_usage, ptr %55, i32 %57, i32 6
  %59 = load i8, ptr %58, align 4
  %60 = icmp eq i8 %59, 1
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = getelementptr %struct.hid_usage, ptr %55, i32 %57, i32 5
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp eq i32 %34, %64
  br i1 %65, label %112, label %66

66:                                               ; preds = %61, %56
  %67 = add nuw i32 %57, 1
  %68 = icmp ult i32 %67, %51
  br i1 %68, label %56, label %69

69:                                               ; preds = %66, %46
  %70 = add nuw i32 %47, 1
  %71 = icmp eq i32 %70, %44
  br i1 %71, label %38, label %46

72:                                               ; preds = %38, %33
  %73 = getelementptr %struct.hid_device, ptr %5, i32 0, i32 15, i32 1, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %118, label %76

76:                                               ; preds = %107, %72
  %77 = phi ptr [ %108, %107 ], [ %74, %72 ]
  %78 = getelementptr inbounds %struct.hid_report, ptr %77, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %107, label %81

81:                                               ; preds = %104, %76
  %82 = phi i32 [ %105, %104 ], [ 0, %76 ]
  %83 = getelementptr %struct.hid_report, ptr %77, i32 0, i32 5, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.hid_field, ptr %84, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.hid_field, ptr %84, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  br label %91

91:                                               ; preds = %101, %88
  %92 = phi i32 [ %102, %101 ], [ 0, %88 ]
  %93 = getelementptr %struct.hid_usage, ptr %90, i32 %92, i32 6
  %94 = load i8, ptr %93, align 4
  %95 = icmp eq i8 %94, 1
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = getelementptr %struct.hid_usage, ptr %90, i32 %92, i32 5
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp eq i32 %34, %99
  br i1 %100, label %110, label %101

101:                                              ; preds = %96, %91
  %102 = add nuw i32 %92, 1
  %103 = icmp ult i32 %102, %86
  br i1 %103, label %91, label %104

104:                                              ; preds = %101, %81
  %105 = add nuw i32 %82, 1
  %106 = icmp eq i32 %105, %79
  br i1 %106, label %107, label %81

107:                                              ; preds = %104, %76
  %108 = load ptr, ptr %77, align 4
  %109 = icmp eq ptr %108, %73
  br i1 %109, label %118, label %76

110:                                              ; preds = %96
  %111 = getelementptr %struct.hid_usage, ptr %90, i32 %92
  br label %114

112:                                              ; preds = %61
  %113 = getelementptr %struct.hid_usage, ptr %55, i32 %57
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi ptr [ %111, %110 ], [ %113, %112 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  tail call void @_set_bit(i32 noundef %34, ptr noundef %23) #10
  br label %118

118:                                              ; preds = %117, %114, %107, %72, %3
  %119 = phi i32 [ 0, %117 ], [ 0, %114 ], [ -22, %3 ], [ 0, %72 ], [ 0, %107 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hidinput_getkeycode(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = call fastcc ptr @hidinput_locate_usage(ptr noundef %5, ptr noundef %1, ptr noundef nonnull %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hid_usage, ptr %6, i32 0, i32 6
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hid_usage, ptr %6, i32 0, i32 5
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %15, %12 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %3, align 4
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 2
  store i16 %20, ptr %21, align 2
  %22 = load i32, ptr %6, align 4
  %23 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 1
  store i8 4, ptr %23, align 1
  %24 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 4
  store i32 %22, ptr %24, align 4
  br label %25

25:                                               ; preds = %16, %2
  %26 = phi i32 [ 0, %16 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_set_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @hidinput_locate_usage(ptr noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = load i8, ptr %1, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %105, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 2
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %61, label %19

15:                                               ; preds = %57, %19
  %16 = phi i32 [ %21, %19 ], [ %58, %57 ]
  %17 = load ptr, ptr %20, align 4
  %18 = icmp eq ptr %17, %12
  br i1 %18, label %61, label %19

19:                                               ; preds = %15, %8
  %20 = phi ptr [ %17, %15 ], [ %13, %8 ]
  %21 = phi i32 [ %16, %15 ], [ 0, %8 ]
  %22 = getelementptr inbounds %struct.hid_report, ptr %20, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %15, label %25

25:                                               ; preds = %57, %19
  %26 = phi i32 [ %59, %57 ], [ 0, %19 ]
  %27 = phi i32 [ %58, %57 ], [ %21, %19 ]
  %28 = getelementptr %struct.hid_report, ptr %20, i32 0, i32 5, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %53, %33
  %37 = phi i32 [ %55, %53 ], [ 0, %33 ]
  %38 = phi i32 [ %54, %53 ], [ %27, %33 ]
  %39 = getelementptr %struct.hid_usage, ptr %35, i32 %37, i32 6
  %40 = load i8, ptr %39, align 4
  %41 = icmp ult i8 %40, 2
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = icmp eq i32 %38, %11
  br i1 %43, label %46, label %51

44:                                               ; preds = %89
  %45 = getelementptr %struct.hid_usage, ptr %82, i32 %84
  br label %48

46:                                               ; preds = %42
  %47 = getelementptr %struct.hid_usage, ptr %35, i32 %37
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %45, %44 ], [ %47, %46 ]
  %50 = icmp eq ptr %2, null
  br i1 %50, label %207, label %204

51:                                               ; preds = %42
  %52 = add i32 %38, 1
  br label %53

53:                                               ; preds = %51, %36
  %54 = phi i32 [ %52, %51 ], [ %38, %36 ]
  %55 = add nuw i32 %37, 1
  %56 = icmp ult i32 %55, %31
  br i1 %56, label %36, label %57

57:                                               ; preds = %53, %25
  %58 = phi i32 [ %27, %25 ], [ %54, %53 ]
  %59 = add nuw i32 %26, 1
  %60 = icmp eq i32 %59, %23
  br i1 %60, label %15, label %25

61:                                               ; preds = %15, %8
  %62 = phi i32 [ 0, %8 ], [ %16, %15 ]
  %63 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %207, label %66

66:                                               ; preds = %101, %61
  %67 = phi ptr [ %103, %101 ], [ %64, %61 ]
  %68 = phi i32 [ %102, %101 ], [ %62, %61 ]
  %69 = getelementptr inbounds %struct.hid_report, ptr %67, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %101, label %72

72:                                               ; preds = %97, %66
  %73 = phi i32 [ %99, %97 ], [ 0, %66 ]
  %74 = phi i32 [ %98, %97 ], [ %68, %66 ]
  %75 = getelementptr %struct.hid_report, ptr %67, i32 0, i32 5, i32 %73
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.hid_field, ptr %76, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.hid_field, ptr %76, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %93, %80
  %84 = phi i32 [ %95, %93 ], [ 0, %80 ]
  %85 = phi i32 [ %94, %93 ], [ %74, %80 ]
  %86 = getelementptr %struct.hid_usage, ptr %82, i32 %84, i32 6
  %87 = load i8, ptr %86, align 4
  %88 = icmp ult i8 %87, 2
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = icmp eq i32 %85, %11
  br i1 %90, label %44, label %91

91:                                               ; preds = %89
  %92 = add i32 %85, 1
  br label %93

93:                                               ; preds = %91, %83
  %94 = phi i32 [ %92, %91 ], [ %85, %83 ]
  %95 = add nuw i32 %84, 1
  %96 = icmp ult i32 %95, %78
  br i1 %96, label %83, label %97

97:                                               ; preds = %93, %72
  %98 = phi i32 [ %74, %72 ], [ %94, %93 ]
  %99 = add nuw i32 %73, 1
  %100 = icmp eq i32 %99, %70
  br i1 %100, label %101, label %72

101:                                              ; preds = %97, %66
  %102 = phi i32 [ %68, %66 ], [ %98, %97 ]
  %103 = load ptr, ptr %67, align 4
  %104 = icmp eq ptr %103, %63
  br i1 %104, label %207, label %66

105:                                              ; preds = %3
  %106 = call i32 @input_scancode_to_scalar(ptr noundef %1, ptr noundef nonnull %4) #10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %207

108:                                              ; preds = %105
  %109 = load i32, ptr %4, align 4
  %110 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %110
  br i1 %112, label %158, label %117

113:                                              ; preds = %154, %117
  %114 = phi i32 [ %119, %117 ], [ %155, %154 ]
  %115 = load ptr, ptr %118, align 4
  %116 = icmp eq ptr %115, %110
  br i1 %116, label %158, label %117

117:                                              ; preds = %113, %108
  %118 = phi ptr [ %115, %113 ], [ %111, %108 ]
  %119 = phi i32 [ %114, %113 ], [ 0, %108 ]
  %120 = getelementptr inbounds %struct.hid_report, ptr %118, i32 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %113, label %123

123:                                              ; preds = %154, %117
  %124 = phi i32 [ %156, %154 ], [ 0, %117 ]
  %125 = phi i32 [ %155, %154 ], [ %119, %117 ]
  %126 = getelementptr %struct.hid_report, ptr %118, i32 0, i32 5, i32 %124
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.hid_field, ptr %127, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %154, label %131

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.hid_field, ptr %127, i32 0, i32 3
  %133 = load ptr, ptr %132, align 4
  br label %134

134:                                              ; preds = %150, %131
  %135 = phi i32 [ %152, %150 ], [ 0, %131 ]
  %136 = phi i32 [ %151, %150 ], [ %125, %131 ]
  %137 = getelementptr %struct.hid_usage, ptr %133, i32 %135, i32 6
  %138 = load i8, ptr %137, align 4
  %139 = icmp ult i8 %138, 2
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = getelementptr %struct.hid_usage, ptr %133, i32 %135
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, %109
  br i1 %143, label %144, label %148

144:                                              ; preds = %186, %140
  %145 = phi i32 [ %182, %186 ], [ %136, %140 ]
  %146 = phi ptr [ %187, %186 ], [ %141, %140 ]
  %147 = icmp eq ptr %2, null
  br i1 %147, label %207, label %204

148:                                              ; preds = %140
  %149 = add i32 %136, 1
  br label %150

150:                                              ; preds = %148, %134
  %151 = phi i32 [ %149, %148 ], [ %136, %134 ]
  %152 = add nuw i32 %135, 1
  %153 = icmp ult i32 %152, %129
  br i1 %153, label %134, label %154

154:                                              ; preds = %150, %123
  %155 = phi i32 [ %125, %123 ], [ %151, %150 ]
  %156 = add nuw i32 %124, 1
  %157 = icmp eq i32 %156, %121
  br i1 %157, label %113, label %123

158:                                              ; preds = %113, %108
  %159 = phi i32 [ 0, %108 ], [ %114, %113 ]
  %160 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, %160
  br i1 %162, label %207, label %163

163:                                              ; preds = %200, %158
  %164 = phi ptr [ %202, %200 ], [ %161, %158 ]
  %165 = phi i32 [ %201, %200 ], [ %159, %158 ]
  %166 = getelementptr inbounds %struct.hid_report, ptr %164, i32 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %200, label %169

169:                                              ; preds = %196, %163
  %170 = phi i32 [ %198, %196 ], [ 0, %163 ]
  %171 = phi i32 [ %197, %196 ], [ %165, %163 ]
  %172 = getelementptr %struct.hid_report, ptr %164, i32 0, i32 5, i32 %170
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.hid_field, ptr %173, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %196, label %177

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.hid_field, ptr %173, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  br label %180

180:                                              ; preds = %192, %177
  %181 = phi i32 [ %194, %192 ], [ 0, %177 ]
  %182 = phi i32 [ %193, %192 ], [ %171, %177 ]
  %183 = getelementptr %struct.hid_usage, ptr %179, i32 %181, i32 6
  %184 = load i8, ptr %183, align 4
  %185 = icmp ult i8 %184, 2
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = getelementptr %struct.hid_usage, ptr %179, i32 %181
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %188, %109
  br i1 %189, label %144, label %190

190:                                              ; preds = %186
  %191 = add i32 %182, 1
  br label %192

192:                                              ; preds = %190, %180
  %193 = phi i32 [ %191, %190 ], [ %182, %180 ]
  %194 = add nuw i32 %181, 1
  %195 = icmp ult i32 %194, %175
  br i1 %195, label %180, label %196

196:                                              ; preds = %192, %169
  %197 = phi i32 [ %171, %169 ], [ %193, %192 ]
  %198 = add nuw i32 %170, 1
  %199 = icmp eq i32 %198, %167
  br i1 %199, label %200, label %169

200:                                              ; preds = %196, %163
  %201 = phi i32 [ %165, %163 ], [ %197, %196 ]
  %202 = load ptr, ptr %164, align 4
  %203 = icmp eq ptr %202, %160
  br i1 %203, label %207, label %163

204:                                              ; preds = %144, %48
  %205 = phi i32 [ %11, %48 ], [ %145, %144 ]
  %206 = phi ptr [ %49, %48 ], [ %146, %144 ]
  store i32 %205, ptr %2, align 4
  br label %207

207:                                              ; preds = %204, %200, %158, %144, %105, %101, %61, %48
  %208 = phi ptr [ null, %105 ], [ %49, %48 ], [ null, %61 ], [ %146, %144 ], [ null, %158 ], [ %206, %204 ], [ null, %200 ], [ null, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret ptr %208
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_scancode_to_scalar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hidinput_configure_usage(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.hid_input, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4
  %10 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 19
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %646

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %646, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, ptr %2, align 4
  %25 = and i32 %24, -65536
  %26 = icmp eq i32 %25, 524288
  br i1 %26, label %27, label %646

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 19
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.hid_driver, ptr %29, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = call i32 %31(ptr noundef %9, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %35 = icmp sgt i32 %34, 0
  %36 = lshr i32 %34, 30
  %37 = and i32 %36, 2
  %38 = select i1 %35, i32 3, i32 %37
  switch i32 %38, label %649 [
    i32 0, label %39
    i32 3, label %481
    i32 2, label %646
  ]

39:                                               ; preds = %33, %27
  %40 = load i32, ptr %2, align 4
  %41 = and i32 %40, -65536
  switch i32 %41, label %463 [
    i32 0, label %646
    i32 458752, label %42
    i32 589824, label %54
    i32 131072, label %92
    i32 65536, label %99
    i32 524288, label %183
    i32 851968, label %196
    i32 720896, label %240
    i32 786432, label %259
    i32 393216, label %426
    i32 8716288, label %430
    i32 -8454144, label %434
    i32 -16711680, label %450
    i32 -16777216, label %646
    i32 16711680, label %457
    i32 -4456448, label %646
    i32 -16187392, label %646
    i32 -12386304, label %646
    i32 983040, label %459
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5
  call void @_set_bit(i32 noundef 20, ptr noundef %43) #10
  %44 = load i32, ptr %2, align 4
  %45 = and i32 %44, 65535
  %46 = icmp ult i32 %45, 256
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = icmp ult i32 %45, 4
  br i1 %48, label %646, label %49

49:                                               ; preds = %47
  %50 = getelementptr [256 x i8], ptr @hid_keyboard, i32 0, i32 %45
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i16
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext %52)
  br label %481

53:                                               ; preds = %42
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef 240)
  br label %481

54:                                               ; preds = %39
  %55 = add i32 %40, 65535
  %56 = and i32 %55, 65535
  %57 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  switch i32 %58, label %82 [
    i32 65538, label %89
    i32 65537, label %89
    i32 65540, label %59
    i32 65541, label %62
    i32 786433, label %65
  ]

59:                                               ; preds = %54
  %60 = icmp ult i32 %56, 16
  %61 = select i1 %60, i32 288, i32 688
  br label %89

62:                                               ; preds = %54
  %63 = icmp ult i32 %56, 16
  %64 = select i1 %63, i32 304, i32 688
  br label %89

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 4
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.hid_usage, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr %struct.hid_collection, ptr %67, i32 %71, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = getelementptr %struct.hid_collection, ptr %67, i32 %71, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 786435
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = icmp ult i32 %56, 30
  %81 = select i1 %80, i32 656, i32 674
  br label %89

82:                                               ; preds = %75, %65, %54
  %83 = load i32, ptr %1, align 4
  %84 = add i32 %83, -65537
  %85 = icmp ult i32 %84, 5
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = getelementptr inbounds [5 x i32], ptr @switch.table.hidinput_configure_usage, i32 0, i32 %84
  %88 = load i32, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %82, %79, %62, %59, %54, %54
  %90 = phi i32 [ 272, %54 ], [ 272, %54 ], [ %61, %59 ], [ %64, %62 ], [ %81, %79 ], [ %88, %86 ], [ 256, %82 ]
  %91 = add nuw nsw i32 %56, %90
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef %91)
  br label %481

92:                                               ; preds = %39
  %93 = trunc i32 %40 to i16
  switch i16 %93, label %646 [
    i16 186, label %94
    i16 187, label %95
    i16 196, label %96
    i16 197, label %97
    i16 200, label %98
  ]

94:                                               ; preds = %92
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef 7)
  br label %481

95:                                               ; preds = %92
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef 6)
  br label %481

96:                                               ; preds = %92
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef 9)
  br label %481

97:                                               ; preds = %92
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef 10)
  br label %481

98:                                               ; preds = %92
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef 8)
  br label %481

99:                                               ; preds = %39
  %100 = and i32 %40, 240
  %101 = trunc i32 %100 to i8
  switch i8 %101, label %123 [
    i8 -128, label %102
    i8 -80, label %119
  ]

102:                                              ; preds = %99
  %103 = and i32 %40, 15
  switch i32 %103, label %463 [
    i32 1, label %104
    i32 2, label %105
    i32 3, label %106
    i32 4, label %107
    i32 5, label %108
    i32 6, label %109
    i32 7, label %110
    i32 8, label %111
    i32 9, label %112
    i32 10, label %113
    i32 11, label %114
    i32 12, label %115
    i32 13, label %116
    i32 14, label %117
    i32 15, label %118
  ]

104:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 116)
  br label %481

105:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 142)
  br label %481

106:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 143)
  br label %481

107:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 438)
  br label %481

108:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 139)
  br label %481

109:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 148)
  br label %481

110:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 138)
  br label %481

111:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 174)
  br label %481

112:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 353)
  br label %481

113:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 106)
  br label %481

114:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 105)
  br label %481

115:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 103)
  br label %481

116:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 108)
  br label %481

117:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 356)
  br label %481

118:                                              ; preds = %102
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 408)
  br label %481

119:                                              ; preds = %99
  %120 = and i32 %40, 15
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %646

122:                                              ; preds = %119
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 227)
  br label %481

123:                                              ; preds = %99
  %124 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 65664
  br i1 %126, label %646, label %127

127:                                              ; preds = %123
  %128 = icmp eq i32 %100, 144
  br i1 %128, label %129, label %143

129:                                              ; preds = %127
  %130 = add i32 %40, -65680
  %131 = icmp ult i32 %130, 4
  br i1 %131, label %132, label %463

132:                                              ; preds = %129
  %133 = shl i32 %130, 3
  %134 = lshr i32 117638401, %133
  %135 = trunc i32 %134 to i8
  %136 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 9
  store i8 %135, ptr %136, align 1
  %137 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 20
  %138 = load i16, ptr %137, align 4
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %132
  %141 = zext i16 %138 to i32
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef %141)
  br label %646

142:                                              ; preds = %132
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef 16)
  br label %481

143:                                              ; preds = %127
  switch i32 %40, label %463 [
    i32 65584, label %144
    i32 65585, label %144
    i32 65586, label %144
    i32 65587, label %144
    i32 65588, label %144
    i32 65589, label %144
    i32 65592, label %153
    i32 65590, label %160
    i32 65591, label %160
    i32 65593, label %167
    i32 65597, label %176
    i32 65598, label %177
    i32 65734, label %178
  ]

144:                                              ; preds = %143, %143, %143, %143, %143, %143
  %145 = load i32, ptr %11, align 4
  %146 = and i32 %145, 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = and i32 %40, 15
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 2, i32 noundef %149)
  br label %481

150:                                              ; preds = %144
  %151 = trunc i32 %40 to i16
  %152 = and i16 %151, 15
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i16 noundef zeroext %152)
  br label %481

153:                                              ; preds = %143
  %154 = load i32, ptr %11, align 4
  %155 = and i32 %154, 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 7
  call void @_set_bit(i32 noundef 8, ptr noundef %158) #10
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 2, i32 noundef 11)
  br label %481

159:                                              ; preds = %153
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef 8)
  br label %481

160:                                              ; preds = %143, %143
  %161 = load i32, ptr %11, align 4
  %162 = and i32 %161, 4
  %163 = icmp eq i32 %162, 0
  %164 = and i32 %40, 15
  br i1 %163, label %166, label %165

165:                                              ; preds = %160
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 2, i32 noundef %164)
  br label %481

166:                                              ; preds = %160
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef %164)
  br label %481

167:                                              ; preds = %143
  %168 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 11
  %169 = load i32, ptr %168, align 4
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 7
  store i8 %170, ptr %171, align 1
  %172 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 12
  %173 = load i32, ptr %172, align 4
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 8
  store i8 %174, ptr %175, align 2
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef 16)
  br label %481

176:                                              ; preds = %143
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 315)
  br label %481

177:                                              ; preds = %143
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 314)
  br label %481

178:                                              ; preds = %143
  %179 = icmp eq i32 %125, 65548
  br i1 %179, label %180, label %463

180:                                              ; preds = %178
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 247)
  %181 = load i32, ptr %11, align 4
  %182 = or i32 %181, 4
  store i32 %182, ptr %11, align 4
  br label %481

183:                                              ; preds = %39
  %184 = trunc i32 %40 to i16
  switch i16 %184, label %646 [
    i16 1, label %185
    i16 2, label %186
    i16 3, label %187
    i16 4, label %188
    i16 5, label %189
    i16 39, label %190
    i16 76, label %191
    i16 9, label %192
    i16 75, label %193
    i16 25, label %194
    i16 77, label %195
  ]

185:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 0)
  br label %481

186:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 1)
  br label %481

187:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 2)
  br label %481

188:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 3)
  br label %481

189:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 4)
  br label %481

190:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 5)
  br label %481

191:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 6)
  br label %481

192:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 7)
  br label %481

193:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 8)
  br label %481

194:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 9)
  br label %481

195:                                              ; preds = %183
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 10)
  br label %481

196:                                              ; preds = %39
  %197 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 2
  %198 = load i32, ptr %197, align 4
  %199 = trunc i32 %198 to i8
  switch i8 %199, label %206 [
    i8 1, label %201
    i8 2, label %200
  ]

200:                                              ; preds = %196
  br label %201

201:                                              ; preds = %200, %196
  %202 = phi i32 [ 2, %200 ], [ 1, %196 ]
  %203 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 4
  %204 = load i32, ptr %203, align 4
  %205 = or i32 %204, %202
  store i32 %205, ptr %203, align 4
  br label %206

206:                                              ; preds = %201, %196
  %207 = load i32, ptr %2, align 4
  %208 = trunc i32 %207 to i8
  switch i8 %208, label %463 [
    i8 0, label %646
    i8 48, label %209
    i8 50, label %221
    i8 59, label %227
    i8 60, label %229
    i8 61, label %230
    i8 62, label %231
    i8 51, label %232
    i8 66, label %232
    i8 67, label %232
    i8 68, label %236
    i8 69, label %237
    i8 70, label %238
    i8 90, label %238
    i8 91, label %239
    i8 110, label %239
  ]

209:                                              ; preds = %206
  %210 = getelementptr %struct.input_dev, ptr %7, i32 0, i32 6, i32 10
  %211 = load volatile i32, ptr %210, align 4
  %212 = and i32 %211, 1024
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 6
  %216 = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 25
  %217 = load i32, ptr %216, align 8
  %218 = or i32 %217, 2
  store i32 %218, ptr %216, align 8
  %219 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5
  call void @_set_bit(i32 noundef 1, ptr noundef %219) #10
  call void @_set_bit(i32 noundef 330, ptr noundef %215) #10
  br label %220

220:                                              ; preds = %214, %209
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i16 noundef zeroext 24)
  br label %481

221:                                              ; preds = %206
  %222 = load i32, ptr %1, align 4
  %223 = trunc i32 %222 to i8
  switch i8 %223, label %226 [
    i8 33, label %224
    i8 34, label %225
  ]

224:                                              ; preds = %221
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef 326)
  br label %481

225:                                              ; preds = %221
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef 325)
  br label %481

226:                                              ; preds = %221
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef 320)
  br label %481

227:                                              ; preds = %206
  %228 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 6
  store i8 22, ptr %228, align 4
  br label %649

229:                                              ; preds = %206
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 321)
  br label %481

230:                                              ; preds = %206
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i16 noundef zeroext 26)
  br label %481

231:                                              ; preds = %206
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i16 noundef zeroext 27)
  br label %481

232:                                              ; preds = %206, %206, %206
  %233 = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 25
  %234 = load i32, ptr %233, align 8
  %235 = and i32 %234, -3
  store i32 %235, ptr %233, align 8
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 330)
  br label %481

236:                                              ; preds = %206
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 331)
  br label %481

237:                                              ; preds = %206
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 330)
  br label %481

238:                                              ; preds = %206, %206
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 332)
  br label %481

239:                                              ; preds = %206, %206
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 4, i32 noundef 0)
  br label %481

240:                                              ; preds = %39
  %241 = trunc i32 %40 to i16
  switch i16 %241, label %646 [
    i16 47, label %242
    i16 176, label %243
    i16 177, label %244
    i16 178, label %245
    i16 179, label %246
    i16 180, label %247
    i16 181, label %248
    i16 182, label %249
    i16 183, label %250
    i16 184, label %251
    i16 185, label %252
    i16 186, label %253
    i16 187, label %254
    i16 188, label %255
    i16 189, label %256
    i16 190, label %257
    i16 191, label %258
  ]

242:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 248)
  br label %481

243:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 512)
  br label %481

244:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 513)
  br label %481

245:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 514)
  br label %481

246:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 515)
  br label %481

247:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 516)
  br label %481

248:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 517)
  br label %481

249:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 518)
  br label %481

250:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 519)
  br label %481

251:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 520)
  br label %481

252:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 521)
  br label %481

253:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 522)
  br label %481

254:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 523)
  br label %481

255:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 524)
  br label %481

256:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 525)
  br label %481

257:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 526)
  br label %481

258:                                              ; preds = %240
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 527)
  br label %481

259:                                              ; preds = %39
  %260 = trunc i32 %40 to i16
  switch i16 %260, label %425 [
    i16 0, label %646
    i16 48, label %261
    i16 49, label %262
    i16 50, label %263
    i16 52, label %264
    i16 53, label %265
    i16 54, label %266
    i16 64, label %267
    i16 65, label %268
    i16 66, label %269
    i16 67, label %270
    i16 68, label %271
    i16 69, label %272
    i16 70, label %273
    i16 71, label %274
    i16 72, label %275
    i16 96, label %276
    i16 97, label %277
    i16 99, label %278
    i16 101, label %279
    i16 105, label %280
    i16 106, label %281
    i16 107, label %282
    i16 108, label %283
    i16 109, label %284
    i16 111, label %285
    i16 112, label %286
    i16 114, label %287
    i16 115, label %288
    i16 116, label %289
    i16 117, label %290
    i16 121, label %291
    i16 122, label %292
    i16 124, label %293
    i16 130, label %294
    i16 131, label %295
    i16 132, label %296
    i16 136, label %297
    i16 137, label %298
    i16 138, label %299
    i16 139, label %300
    i16 140, label %301
    i16 141, label %302
    i16 142, label %303
    i16 143, label %304
    i16 144, label %305
    i16 145, label %306
    i16 146, label %307
    i16 147, label %308
    i16 148, label %309
    i16 149, label %310
    i16 150, label %311
    i16 151, label %312
    i16 152, label %313
    i16 154, label %314
    i16 156, label %315
    i16 157, label %316
    i16 160, label %317
    i16 176, label %318
    i16 177, label %319
    i16 178, label %320
    i16 179, label %321
    i16 180, label %322
    i16 181, label %323
    i16 182, label %324
    i16 183, label %325
    i16 184, label %326
    i16 188, label %327
    i16 185, label %328
    i16 191, label %329
    i16 205, label %330
    i16 207, label %331
    i16 216, label %332
    i16 217, label %333
    i16 224, label %334
    i16 226, label %335
    i16 229, label %336
    i16 233, label %337
    i16 234, label %338
    i16 245, label %339
    i16 385, label %340
    i16 386, label %341
    i16 387, label %342
    i16 388, label %343
    i16 389, label %344
    i16 390, label %345
    i16 391, label %346
    i16 392, label %347
    i16 393, label %348
    i16 394, label %349
    i16 395, label %350
    i16 396, label %351
    i16 397, label %352
    i16 398, label %353
    i16 399, label %354
    i16 400, label %355
    i16 401, label %356
    i16 402, label %357
    i16 403, label %358
    i16 404, label %359
    i16 406, label %360
    i16 409, label %361
    i16 412, label %362
    i16 414, label %363
    i16 415, label %364
    i16 418, label %365
    i16 419, label %366
    i16 420, label %367
    i16 422, label %368
    i16 423, label %369
    i16 427, label %370
    i16 430, label %371
    i16 433, label %372
    i16 436, label %373
    i16 438, label %374
    i16 439, label %375
    i16 440, label %376
    i16 444, label %377
    i16 445, label %378
    i16 459, label %379
    i16 513, label %380
    i16 514, label %381
    i16 515, label %382
    i16 516, label %383
    i16 519, label %384
    i16 520, label %385
    i16 521, label %386
    i16 538, label %387
    i16 539, label %388
    i16 540, label %389
    i16 541, label %390
    i16 543, label %391
    i16 545, label %392
    i16 546, label %393
    i16 547, label %394
    i16 548, label %395
    i16 549, label %396
    i16 550, label %397
    i16 551, label %398
    i16 554, label %399
    i16 557, label %400
    i16 558, label %401
    i16 559, label %402
    i16 562, label %403
    i16 563, label %404
    i16 564, label %405
    i16 568, label %406
    i16 573, label %408
    i16 607, label %409
    i16 617, label %410
    i16 618, label %411
    i16 633, label %412
    i16 649, label %413
    i16 651, label %414
    i16 652, label %415
    i16 669, label %416
    i16 674, label %417
    i16 711, label %418
    i16 712, label %419
    i16 713, label %420
    i16 714, label %421
    i16 715, label %422
    i16 716, label %423
    i16 671, label %424
  ]

261:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 116)
  br label %481

262:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 408)
  br label %481

263:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 142)
  br label %481

264:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 142)
  br label %481

265:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 228)
  br label %481

266:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 256)
  br label %481

267:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 139)
  br label %481

268:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 353)
  br label %481

269:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 103)
  br label %481

270:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 108)
  br label %481

271:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 105)
  br label %481

272:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 106)
  br label %481

273:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 1)
  br label %481

274:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 78)
  br label %481

275:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 74)
  br label %481

276:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 358)
  br label %481

277:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 370)
  br label %481

278:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 379)
  br label %481

279:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 212)
  br label %481

280:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 398)
  br label %481

281:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 399)
  br label %481

282:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 401)
  br label %481

283:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 400)
  br label %481

284:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 375)
  br label %481

285:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 225)
  br label %481

286:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 224)
  br label %481

287:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 431)
  br label %481

288:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 592)
  br label %481

289:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 593)
  br label %481

290:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 244)
  br label %481

291:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 230)
  br label %481

292:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 229)
  br label %481

293:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 228)
  br label %481

294:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 241)
  br label %481

295:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 405)
  br label %481

296:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 28)
  br label %481

297:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 376)
  br label %481

298:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 377)
  br label %481

299:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 150)
  br label %481

300:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 389)
  br label %481

301:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 169)
  br label %481

302:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 362)
  br label %481

303:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 416)
  br label %481

304:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 417)
  br label %481

305:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 396)
  br label %481

306:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 383)
  br label %481

307:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 379)
  br label %481

308:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 386)
  br label %481

309:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 174)
  br label %481

310:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 138)
  br label %481

311:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 384)
  br label %481

312:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 378)
  br label %481

313:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 381)
  br label %481

314:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 366)
  br label %481

315:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 402)
  br label %481

316:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 403)
  br label %481

317:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 380)
  br label %481

318:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 207)
  br label %481

319:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 119)
  br label %481

320:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 167)
  br label %481

321:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 208)
  br label %481

322:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 168)
  br label %481

323:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 163)
  br label %481

324:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 165)
  br label %481

325:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 166)
  br label %481

326:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 161)
  br label %481

327:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 439)
  br label %481

328:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 410)
  br label %481

329:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 409)
  br label %481

330:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 164)
  br label %481

331:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 582)
  br label %481

332:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 586)
  br label %481

333:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 585)
  br label %481

334:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i16 noundef zeroext 32)
  br label %481

335:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 113)
  br label %481

336:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 209)
  br label %481

337:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 115)
  br label %481

338:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 114)
  br label %481

339:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 409)
  br label %481

340:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 576)
  br label %481

341:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 156)
  br label %481

342:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 171)
  br label %481

343:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 421)
  br label %481

344:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 422)
  br label %481

345:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 423)
  br label %481

346:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 424)
  br label %481

347:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 425)
  br label %481

348:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 426)
  br label %481

349:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 155)
  br label %481

350:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 427)
  br label %481

351:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 428)
  br label %481

352:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 429)
  br label %481

353:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 397)
  br label %481

354:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 577)
  br label %481

355:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 578)
  br label %481

356:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 219)
  br label %481

357:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 140)
  br label %481

358:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 387)
  br label %481

359:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 144)
  br label %481

360:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 150)
  br label %481

361:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 216)
  br label %481

362:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 433)
  br label %481

363:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 152)
  br label %481

364:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 579)
  br label %481

365:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 580)
  br label %481

366:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 407)
  br label %481

367:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 412)
  br label %481

368:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 138)
  br label %481

369:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 235)
  br label %481

370:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 432)
  br label %481

371:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 374)
  br label %481

372:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 581)
  br label %481

373:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 144)
  br label %481

374:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 442)
  br label %481

375:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 392)
  br label %481

376:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 393)
  br label %481

377:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 430)
  br label %481

378:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 358)
  br label %481

379:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 583)
  br label %481

380:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 181)
  br label %481

381:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 134)
  br label %481

382:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 206)
  br label %481

383:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 174)
  br label %481

384:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 234)
  br label %481

385:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 210)
  br label %481

386:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 130)
  br label %481

387:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 131)
  br label %481

388:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 133)
  br label %481

389:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 137)
  br label %481

390:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 135)
  br label %481

391:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 136)
  br label %481

392:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 217)
  br label %481

393:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 354)
  br label %481

394:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 172)
  br label %481

395:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 158)
  br label %481

396:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 159)
  br label %481

397:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 128)
  br label %481

398:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 173)
  br label %481

399:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 156)
  br label %481

400:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 418)
  br label %481

401:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 419)
  br label %481

402:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 420)
  br label %481

403:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 372)
  br label %481

404:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 177)
  br label %481

405:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 178)
  br label %481

406:                                              ; preds = %259
  %407 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 7
  call void @_set_bit(i32 noundef 6, ptr noundef %407) #10
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 2, i32 noundef 12)
  br label %481

408:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 176)
  br label %481

409:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 223)
  br label %481

410:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 110)
  br label %481

411:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 111)
  br label %481

412:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 182)
  br label %481

413:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 232)
  br label %481

414:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 233)
  br label %481

415:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 231)
  br label %481

416:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 584)
  br label %481

417:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 204)
  br label %481

418:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 608)
  br label %481

419:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 609)
  br label %481

420:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 610)
  br label %481

421:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 611)
  br label %481

422:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 612)
  br label %481

423:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 613)
  br label %481

424:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 120)
  br label %481

425:                                              ; preds = %259
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 240)
  br label %481

426:                                              ; preds = %39
  %427 = icmp eq i32 %40, 393248
  br i1 %427, label %428, label %463

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 6
  store i8 22, ptr %429, align 4
  br label %649

430:                                              ; preds = %39
  %431 = icmp eq i32 %40, 8716389
  br i1 %431, label %432, label %463

432:                                              ; preds = %430
  %433 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 6
  store i8 22, ptr %433, align 4
  br label %649

434:                                              ; preds = %39
  %435 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5
  call void @_set_bit(i32 noundef 20, ptr noundef %435) #10
  %436 = load i32, ptr %2, align 4
  %437 = trunc i32 %436 to i16
  switch i16 %437, label %646 [
    i16 33, label %438
    i16 112, label %439
    i16 113, label %440
    i16 114, label %441
    i16 115, label %442
    i16 128, label %443
    i16 129, label %444
    i16 130, label %445
    i16 131, label %446
    i16 132, label %447
    i16 133, label %448
    i16 134, label %449
  ]

438:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 210)
  br label %481

439:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 211)
  br label %481

440:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 212)
  br label %481

441:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 213)
  br label %481

442:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 214)
  br label %481

443:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 215)
  br label %481

444:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 216)
  br label %481

445:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 217)
  br label %481

446:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 218)
  br label %481

447:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 219)
  br label %481

448:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 220)
  br label %481

449:                                              ; preds = %434
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 221)
  br label %481

450:                                              ; preds = %39
  %451 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5
  call void @_set_bit(i32 noundef 20, ptr noundef %451) #10
  %452 = load i32, ptr %2, align 4
  %453 = trunc i32 %452 to i16
  switch i16 %453, label %646 [
    i16 1, label %454
    i16 3, label %455
    i16 4, label %456
  ]

454:                                              ; preds = %450
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 248)
  br label %481

455:                                              ; preds = %450
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 224)
  br label %481

456:                                              ; preds = %450
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 225)
  br label %481

457:                                              ; preds = %39
  %458 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5
  call void @_set_bit(i32 noundef 20, ptr noundef %458) #10
  br label %646

459:                                              ; preds = %39
  %460 = and i32 %40, 65535
  %461 = icmp eq i32 %460, 164
  br i1 %461, label %462, label %646

462:                                              ; preds = %459
  call fastcc void @hid_map_usage_clear(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 303)
  br label %481

463:                                              ; preds = %430, %426, %206, %178, %143, %129, %102, %39
  %464 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 7
  %465 = load i32, ptr %464, align 4
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %467, label %475

467:                                              ; preds = %463
  %468 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 17
  %469 = load ptr, ptr %468, align 4
  %470 = getelementptr inbounds %struct.hid_report, ptr %469, i32 0, i32 3
  %471 = load i32, ptr %470, align 4
  %472 = icmp eq i32 %471, 1
  br i1 %472, label %473, label %474

473:                                              ; preds = %467
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 17, i32 noundef 8)
  br label %481

474:                                              ; preds = %467
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef 256)
  br label %481

475:                                              ; preds = %463
  %476 = load i32, ptr %11, align 4
  %477 = and i32 %476, 4
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %480, label %479

479:                                              ; preds = %475
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 2, i32 noundef 9)
  br label %481

480:                                              ; preds = %475
  call fastcc void @hid_map_usage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 3, i32 noundef 40)
  br label %481

481:                                              ; preds = %480, %479, %474, %473, %462, %456, %455, %454, %449, %448, %447, %446, %445, %444, %443, %442, %441, %440, %439, %438, %425, %424, %423, %422, %421, %420, %419, %418, %417, %416, %415, %414, %413, %412, %411, %410, %409, %408, %406, %405, %404, %403, %402, %401, %400, %399, %398, %397, %396, %395, %394, %393, %392, %391, %390, %389, %388, %387, %386, %385, %384, %383, %382, %381, %380, %379, %378, %377, %376, %375, %374, %373, %372, %371, %370, %369, %368, %367, %366, %365, %364, %363, %362, %361, %360, %359, %358, %357, %356, %355, %354, %353, %352, %351, %350, %349, %348, %347, %346, %345, %344, %343, %342, %341, %340, %339, %338, %337, %336, %335, %334, %333, %332, %331, %330, %329, %328, %327, %326, %325, %324, %323, %322, %321, %320, %319, %318, %317, %316, %315, %314, %313, %312, %311, %310, %309, %308, %307, %306, %305, %304, %303, %302, %301, %300, %299, %298, %297, %296, %295, %294, %293, %292, %291, %290, %289, %288, %287, %286, %285, %284, %283, %282, %281, %280, %279, %278, %277, %276, %275, %274, %273, %272, %271, %270, %269, %268, %267, %266, %265, %264, %263, %262, %261, %258, %257, %256, %255, %254, %253, %252, %251, %250, %249, %248, %247, %246, %245, %244, %243, %242, %239, %238, %237, %236, %232, %231, %230, %229, %226, %225, %224, %220, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %180, %177, %176, %167, %166, %165, %159, %157, %150, %148, %142, %122, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %98, %97, %96, %95, %94, %89, %53, %49, %33
  %482 = load ptr, ptr %5, align 4
  %483 = icmp eq ptr %482, null
  br i1 %483, label %649, label %484

484:                                              ; preds = %481
  %485 = load ptr, ptr %28, align 8
  %486 = getelementptr inbounds %struct.hid_driver, ptr %485, i32 0, i32 14
  %487 = load ptr, ptr %486, align 4
  %488 = icmp eq ptr %487, null
  br i1 %488, label %492, label %489

489:                                              ; preds = %484
  %490 = call i32 %487(ptr noundef %9, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %649, label %492

492:                                              ; preds = %489, %484
  %493 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 6
  %494 = load i8, ptr %493, align 4
  %495 = zext i8 %494 to i32
  %496 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5
  call void @_set_bit(i32 noundef %495, ptr noundef %496) #10
  %497 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %498 = load i16, ptr %497, align 2
  %499 = zext i16 %498 to i32
  %500 = load i32, ptr %4, align 4
  %501 = icmp slt i32 %500, %499
  br i1 %501, label %537, label %502

502:                                              ; preds = %492
  %503 = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 25
  br label %504

504:                                              ; preds = %516, %502
  %505 = phi i32 [ %499, %502 ], [ %524, %516 ]
  %506 = load ptr, ptr %5, align 4
  %507 = call i32 @_test_and_set_bit(i32 noundef %505, ptr noundef %506) #10
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %504
  %510 = load i16, ptr %497, align 2
  %511 = load i32, ptr %4, align 4
  br label %533

512:                                              ; preds = %504
  %513 = load i32, ptr %503, align 8
  %514 = and i32 %513, 1048576
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %527, label %516

516:                                              ; preds = %512
  %517 = load ptr, ptr %5, align 4
  %518 = load i32, ptr %4, align 4
  %519 = add i32 %518, 1
  %520 = load i16, ptr %497, align 2
  %521 = zext i16 %520 to i32
  %522 = call i32 @_find_next_zero_bit_le(ptr noundef %517, i32 noundef %519, i32 noundef %521) #10
  %523 = trunc i32 %522 to i16
  store i16 %523, ptr %497, align 2
  %524 = and i32 %522, 65535
  %525 = load i32, ptr %4, align 4
  %526 = icmp slt i32 %525, %524
  br i1 %526, label %531, label %504

527:                                              ; preds = %512
  %528 = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 23
  %529 = load i32, ptr %528, align 8
  %530 = or i32 %529, 4
  store i32 %530, ptr %528, align 8
  br label %646

531:                                              ; preds = %516
  %532 = trunc i32 %522 to i16
  br label %533

533:                                              ; preds = %531, %509
  %534 = phi i32 [ %511, %509 ], [ %525, %531 ]
  %535 = phi i16 [ %510, %509 ], [ %532, %531 ]
  %536 = zext i16 %535 to i32
  br label %537

537:                                              ; preds = %533, %492
  %538 = phi i32 [ %536, %533 ], [ %499, %492 ]
  %539 = phi i32 [ %534, %533 ], [ %500, %492 ]
  %540 = phi i16 [ %535, %533 ], [ %498, %492 ]
  %541 = icmp slt i32 %539, %538
  br i1 %541, label %646, label %542

542:                                              ; preds = %537
  %543 = load i8, ptr %493, align 4
  %544 = icmp eq i8 %543, 3
  br i1 %544, label %545, label %641

545:                                              ; preds = %542
  %546 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 11
  %547 = load i32, ptr %546, align 4
  %548 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 12
  %549 = load i32, ptr %548, align 4
  %550 = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 25
  %551 = load i32, ptr %550, align 8
  %552 = and i32 %551, 32
  %553 = icmp ne i32 %552, 0
  %554 = icmp ult i16 %540, 2
  %555 = select i1 %553, i1 %554, i1 false
  br i1 %555, label %556, label %557

556:                                              ; preds = %545
  store i32 0, ptr %546, align 4
  store i32 255, ptr %548, align 4
  br label %557

557:                                              ; preds = %556, %545
  %558 = phi i32 [ 0, %556 ], [ %547, %545 ]
  %559 = phi i32 [ 255, %556 ], [ %549, %545 ]
  %560 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 2
  %561 = load i32, ptr %560, align 4
  %562 = and i32 %561, -2
  %563 = icmp eq i32 %562, 65540
  %564 = load i16, ptr %497, align 2
  %565 = zext i16 %564 to i32
  br i1 %563, label %566, label %570

566:                                              ; preds = %557
  %567 = sub i32 %559, %558
  %568 = ashr i32 %567, 8
  %569 = ashr i32 %567, 4
  call void @input_set_abs_params(ptr noundef %7, i32 noundef %565, i32 noundef %558, i32 noundef %559, i32 noundef %568, i32 noundef %569) #10
  br label %571

570:                                              ; preds = %557
  call void @input_set_abs_params(ptr noundef %7, i32 noundef %565, i32 noundef %558, i32 noundef %559, i32 noundef 0, i32 noundef 0) #10
  br label %571

571:                                              ; preds = %570, %566
  %572 = load i16, ptr %497, align 2
  %573 = call i32 @hidinput_calc_abs_res(ptr noundef %1, i16 noundef zeroext %572)
  call void @input_alloc_absinfo(ptr noundef %7) #10
  %574 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 26
  %575 = load ptr, ptr %574, align 4
  %576 = icmp eq ptr %575, null
  br i1 %576, label %580, label %577

577:                                              ; preds = %571
  %578 = zext i16 %572 to i32
  %579 = getelementptr %struct.input_absinfo, ptr %575, i32 %578, i32 5
  store i32 %573, ptr %579, align 4
  br label %580

580:                                              ; preds = %577, %571
  %581 = load i16, ptr %497, align 2
  %582 = icmp eq i16 %581, 53
  br i1 %582, label %583, label %588

583:                                              ; preds = %580
  %584 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 14
  %585 = load i32, ptr %584, align 8
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %588

587:                                              ; preds = %583
  store i32 60, ptr %584, align 8
  br label %588

588:                                              ; preds = %587, %583, %580
  %589 = load i8, ptr %493, align 4
  %590 = icmp eq i8 %589, 3
  br i1 %590, label %591, label %641

591:                                              ; preds = %588
  %592 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 7
  %593 = load i8, ptr %592, align 1
  %594 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 8
  %595 = load i8, ptr %594, align 2
  %596 = icmp slt i8 %593, %595
  br i1 %596, label %601, label %597

597:                                              ; preds = %591
  %598 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 9
  %599 = load i8, ptr %598, align 1
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %628, label %601

601:                                              ; preds = %597, %591
  %602 = load i16, ptr %497, align 2
  %603 = zext i16 %602 to i32
  %604 = load i32, ptr %4, align 4
  %605 = icmp slt i32 %604, %603
  br i1 %605, label %618, label %606

606:                                              ; preds = %601
  %607 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 8
  br label %608

608:                                              ; preds = %608, %606
  %609 = phi i32 [ %603, %606 ], [ %610, %608 ]
  call void @input_set_abs_params(ptr noundef %7, i32 noundef %609, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @_set_bit(i32 noundef %609, ptr noundef %607) #10
  %610 = add nuw nsw i32 %609, 1
  %611 = load i16, ptr %497, align 2
  %612 = zext i16 %611 to i32
  %613 = add nuw nsw i32 %612, 2
  %614 = icmp ult i32 %610, %613
  %615 = load i32, ptr %4, align 4
  %616 = icmp slt i32 %609, %615
  %617 = select i1 %614, i1 %616, i1 false
  br i1 %617, label %608, label %618

618:                                              ; preds = %608, %601
  %619 = phi i16 [ %602, %601 ], [ %611, %608 ]
  %620 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 9
  %621 = load i8, ptr %620, align 1
  %622 = icmp eq i8 %621, 0
  br i1 %622, label %628, label %623

623:                                              ; preds = %618
  %624 = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 20
  %625 = load i16, ptr %624, align 4
  %626 = icmp eq i16 %625, 0
  br i1 %626, label %627, label %628

627:                                              ; preds = %623
  store i16 %619, ptr %624, align 4
  br label %628

628:                                              ; preds = %627, %623, %618, %597
  %629 = load i8, ptr %493, align 4
  %630 = icmp eq i8 %629, 3
  br i1 %630, label %631, label %641

631:                                              ; preds = %628
  %632 = load i32, ptr %11, align 4
  %633 = and i32 %632, 4
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %649, label %635

635:                                              ; preds = %631
  %636 = load i16, ptr %497, align 2
  %637 = icmp eq i16 %636, 32
  br i1 %637, label %638, label %649

638:                                              ; preds = %635
  %639 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 6
  call void @_set_bit(i32 noundef 115, ptr noundef %639) #10
  call void @_set_bit(i32 noundef 114, ptr noundef %639) #10
  %640 = load i8, ptr %493, align 4
  br label %641

641:                                              ; preds = %638, %628, %588, %542
  %642 = phi i8 [ %629, %628 ], [ %543, %542 ], [ %589, %588 ], [ %640, %638 ]
  %643 = icmp eq i8 %642, 1
  br i1 %643, label %644, label %649

644:                                              ; preds = %641
  call void @_set_bit(i32 noundef 4, ptr noundef %496) #10
  %645 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 9
  call void @_set_bit(i32 noundef 4, ptr noundef %645) #10
  br label %649

646:                                              ; preds = %537, %527, %459, %457, %450, %434, %259, %240, %206, %183, %140, %123, %119, %92, %47, %39, %39, %39, %39, %39, %33, %23, %15, %3
  %647 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 6
  store i8 0, ptr %647, align 4
  %648 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  store i16 0, ptr %648, align 2
  br label %649

649:                                              ; preds = %646, %644, %641, %635, %631, %489, %481, %432, %428, %227, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hid_map_usage_clear(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4, i16 noundef zeroext %5) unnamed_addr #8 {
  %7 = zext i16 %5 to i32
  %8 = getelementptr inbounds %struct.hid_input, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = zext i8 %4 to i32
  switch i8 %4, label %27 [
    i8 3, label %11
    i8 2, label %13
    i8 1, label %15
    i8 17, label %17
    i8 4, label %19
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 8
  br label %21

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 7
  br label %21

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 6
  br label %21

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 10
  br label %21

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 9
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %11
  %22 = phi ptr [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ]
  %23 = phi i32 [ 7, %19 ], [ 15, %17 ], [ 767, %15 ], [ 15, %13 ], [ 63, %11 ]
  %24 = icmp ult i32 %23, %7
  %25 = icmp eq ptr %22, null
  %26 = select i1 %24, i1 true, i1 %25, !prof !10
  br i1 %26, label %27, label %34, !prof !10

27:                                               ; preds = %21, %6
  %28 = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %9, align 8
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %31, i32 noundef %7, i32 noundef %10) #11
  br label %33

33:                                               ; preds = %30, %27
  store ptr null, ptr %2, align 4
  br label %39

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.hid_usage, ptr %1, i32 0, i32 6
  store i8 %4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.hid_usage, ptr %1, i32 0, i32 5
  store i16 %5, ptr %36, align 2
  store i32 %23, ptr %3, align 4
  store ptr %22, ptr %2, align 4
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  tail call void @_clear_bit(i32 noundef %38, ptr noundef nonnull %22) #10
  br label %39

39:                                               ; preds = %34, %33
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hid_map_usage(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4, i32 noundef %5) unnamed_addr #8 {
  %7 = getelementptr inbounds %struct.hid_input, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = zext i8 %4 to i32
  switch i8 %4, label %26 [
    i8 3, label %10
    i8 2, label %12
    i8 1, label %14
    i8 17, label %16
    i8 4, label %18
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 8
  br label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 7
  br label %20

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 6
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 10
  br label %20

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 9
  br label %20

20:                                               ; preds = %18, %16, %14, %12, %10
  %21 = phi ptr [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  %22 = phi i32 [ 7, %18 ], [ 15, %16 ], [ 767, %14 ], [ 15, %12 ], [ 63, %10 ]
  %23 = icmp ult i32 %22, %5
  %24 = icmp eq ptr %21, null
  %25 = select i1 %23, i1 true, i1 %24, !prof !10
  br i1 %25, label %26, label %32, !prof !10

26:                                               ; preds = %20, %6
  %27 = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %8, align 8
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %30, i32 noundef %5, i32 noundef %9) #11
  br label %36

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.hid_usage, ptr %1, i32 0, i32 6
  store i8 %4, ptr %33, align 4
  %34 = trunc i32 %5 to i16
  %35 = getelementptr inbounds %struct.hid_usage, ptr %1, i32 0, i32 5
  store i16 %34, ptr %35, align 2
  store i32 %22, ptr %3, align 4
  br label %36

36:                                               ; preds = %32, %29, %26
  %37 = phi ptr [ %21, %32 ], [ null, %29 ], [ null, %26 ]
  store ptr %37, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_setup_resolution_multiplier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
