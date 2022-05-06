; ModuleID = '/llk/IR/drivers/tty/serial/serial_mctrl_gpio.c_pt.bc'
source_filename = "../drivers/tty/serial/serial_mctrl_gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctrl_gpio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22mctrl_gpio_set\22\09\09\09\09\09"
module asm "__kstrtabns_mctrl_gpio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctrl_gpio_to_gpiod:\09\09\09\09\09"
module asm "\09.asciz \09\22mctrl_gpio_to_gpiod\22\09\09\09\09\09"
module asm "__kstrtabns_mctrl_gpio_to_gpiod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctrl_gpio_get:\09\09\09\09\09"
module asm "\09.asciz \09\22mctrl_gpio_get\22\09\09\09\09\09"
module asm "__kstrtabns_mctrl_gpio_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctrl_gpio_get_outputs:\09\09\09\09\09"
module asm "\09.asciz \09\22mctrl_gpio_get_outputs\22\09\09\09\09\09"
module asm "__kstrtabns_mctrl_gpio_get_outputs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctrl_gpio_init_noauto:\09\09\09\09\09"
module asm "\09.asciz \09\22mctrl_gpio_init_noauto\22\09\09\09\09\09"
module asm "__kstrtabns_mctrl_gpio_init_noauto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctrl_gpio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mctrl_gpio_init\22\09\09\09\09\09"
module asm "__kstrtabns_mctrl_gpio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctrl_gpio_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mctrl_gpio_free\22\09\09\09\09\09"
module asm "__kstrtabns_mctrl_gpio_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctrl_gpio_enable_ms:\09\09\09\09\09"
module asm "\09.asciz \09\22mctrl_gpio_enable_ms\22\09\09\09\09\09"
module asm "__kstrtabns_mctrl_gpio_enable_ms:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctrl_gpio_disable_ms:\09\09\09\09\09"
module asm "\09.asciz \09\22mctrl_gpio_disable_ms\22\09\09\09\09\09"
module asm "__kstrtabns_mctrl_gpio_disable_ms:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.anon.65 = type { ptr, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mctrl_gpios = type { ptr, [6 x ptr], [6 x i32], i32, i8 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.1, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.1 = type { ptr }
%struct.llist_head = type { ptr }

@mctrl_gpios_desc = internal unnamed_addr constant [6 x %struct.anon.65] [%struct.anon.65 { ptr @.str.3, i32 32, i32 1 }, %struct.anon.65 { ptr @.str.4, i32 256, i32 1 }, %struct.anon.65 { ptr @.str.5, i32 64, i32 1 }, %struct.anon.65 { ptr @.str.6, i32 128, i32 1 }, %struct.anon.65 { ptr @.str.7, i32 4, i32 3 }, %struct.anon.65 { ptr @.str.8, i32 2, i32 3 }], align 4
@__kstrtab_mctrl_gpio_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctrl_gpio_set = external dso_local constant [0 x i8], align 1
@__ksymtab_mctrl_gpio_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctrl_gpio_set to i32), ptr @__kstrtab_mctrl_gpio_set, ptr @__kstrtabns_mctrl_gpio_set }, section "___ksymtab_gpl+mctrl_gpio_set", align 4
@__kstrtab_mctrl_gpio_to_gpiod = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctrl_gpio_to_gpiod = external dso_local constant [0 x i8], align 1
@__ksymtab_mctrl_gpio_to_gpiod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctrl_gpio_to_gpiod to i32), ptr @__kstrtab_mctrl_gpio_to_gpiod, ptr @__kstrtabns_mctrl_gpio_to_gpiod }, section "___ksymtab_gpl+mctrl_gpio_to_gpiod", align 4
@__kstrtab_mctrl_gpio_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctrl_gpio_get = external dso_local constant [0 x i8], align 1
@__ksymtab_mctrl_gpio_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctrl_gpio_get to i32), ptr @__kstrtab_mctrl_gpio_get, ptr @__kstrtabns_mctrl_gpio_get }, section "___ksymtab_gpl+mctrl_gpio_get", align 4
@__kstrtab_mctrl_gpio_get_outputs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctrl_gpio_get_outputs = external dso_local constant [0 x i8], align 1
@__ksymtab_mctrl_gpio_get_outputs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctrl_gpio_get_outputs to i32), ptr @__kstrtab_mctrl_gpio_get_outputs, ptr @__kstrtabns_mctrl_gpio_get_outputs }, section "___ksymtab_gpl+mctrl_gpio_get_outputs", align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-gpios\00", align 1
@__kstrtab_mctrl_gpio_init_noauto = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctrl_gpio_init_noauto = external dso_local constant [0 x i8], align 1
@__ksymtab_mctrl_gpio_init_noauto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctrl_gpio_init_noauto to i32), ptr @__kstrtab_mctrl_gpio_init_noauto, ptr @__kstrtabns_mctrl_gpio_init_noauto }, section "___ksymtab_gpl+mctrl_gpio_init_noauto", align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"failed to find corresponding irq for %s (idx=%d, err=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to request irq for %s (idx=%d, err=%d)\0A\00", align 1
@__kstrtab_mctrl_gpio_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctrl_gpio_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mctrl_gpio_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctrl_gpio_init to i32), ptr @__kstrtab_mctrl_gpio_init, ptr @__kstrtabns_mctrl_gpio_init }, section "___ksymtab_gpl+mctrl_gpio_init", align 4
@__kstrtab_mctrl_gpio_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctrl_gpio_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mctrl_gpio_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctrl_gpio_free to i32), ptr @__kstrtab_mctrl_gpio_free, ptr @__kstrtabns_mctrl_gpio_free }, section "___ksymtab_gpl+mctrl_gpio_free", align 4
@__kstrtab_mctrl_gpio_enable_ms = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctrl_gpio_enable_ms = external dso_local constant [0 x i8], align 1
@__ksymtab_mctrl_gpio_enable_ms = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctrl_gpio_enable_ms to i32), ptr @__kstrtab_mctrl_gpio_enable_ms, ptr @__kstrtabns_mctrl_gpio_enable_ms }, section "___ksymtab_gpl+mctrl_gpio_enable_ms", align 4
@__kstrtab_mctrl_gpio_disable_ms = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctrl_gpio_disable_ms = external dso_local constant [0 x i8], align 1
@__ksymtab_mctrl_gpio_disable_ms = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctrl_gpio_disable_ms to i32), ptr @__kstrtab_mctrl_gpio_disable_ms, ptr @__kstrtabns_mctrl_gpio_disable_ms }, section "___ksymtab_gpl+mctrl_gpio_disable_ms", align 4
@__UNIQUE_ID_file210 = internal constant [60 x i8] c"serial_mctrl_gpio.file=drivers/tty/serial/serial_mctrl_gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [30 x i8] c"serial_mctrl_gpio.license=GPL\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cts\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dsr\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dcd\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dtr\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__ksymtab_mctrl_gpio_disable_ms, ptr @__ksymtab_mctrl_gpio_enable_ms, ptr @__ksymtab_mctrl_gpio_free, ptr @__ksymtab_mctrl_gpio_get, ptr @__ksymtab_mctrl_gpio_get_outputs, ptr @__ksymtab_mctrl_gpio_init, ptr @__ksymtab_mctrl_gpio_init_noauto, ptr @__ksymtab_mctrl_gpio_set, ptr @__ksymtab_mctrl_gpio_to_gpiod], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mctrl_gpio_set(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [6 x ptr], align 4
  %4 = alloca [1 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %5 = icmp eq ptr %0, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  store ptr %8, ptr %3, align 4
  %11 = lshr i32 %1, 2
  %12 = and i32 %11, 1
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %12, %10 ], [ 0, %6 ]
  %15 = phi i32 [ 1, %10 ], [ 0, %6 ]
  %16 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = getelementptr [6 x ptr], ptr %3, i32 0, i32 %15
  store ptr %17, ptr %20, align 4
  %21 = and i32 %1, 2
  %22 = icmp eq i32 %21, 0
  %23 = shl nuw nsw i32 1, %15
  %24 = xor i32 %23, -1
  %25 = and i32 %14, %24
  %26 = or i32 %14, %23
  %27 = select i1 %22, i32 %25, i32 %26
  %28 = add nuw nsw i32 %15, 1
  br label %29

29:                                               ; preds = %19, %13
  %30 = phi i32 [ %27, %19 ], [ %14, %13 ]
  %31 = phi i32 [ %28, %19 ], [ %15, %13 ]
  store i32 %30, ptr %4, align 4
  %32 = call i32 @gpiod_set_array_value(i32 noundef %31, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %4) #6
  br label %33

33:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 %1
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mctrl_gpio_get(ptr noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %64, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 0
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @gpiod_get_value(ptr noundef nonnull %6) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 4
  %13 = or i32 %12, 32
  br label %17

14:                                               ; preds = %8
  %15 = load i32, ptr %1, align 4
  %16 = and i32 %15, -33
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %16, %14 ], [ %13, %11 ]
  store i32 %18, ptr %1, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @gpiod_get_value(ptr noundef nonnull %21) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %1, align 4
  %28 = or i32 %27, 256
  br label %32

29:                                               ; preds = %23
  %30 = load i32, ptr %1, align 4
  %31 = and i32 %30, -257
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ %31, %29 ], [ %28, %26 ]
  store i32 %33, ptr %1, align 4
  br label %34

34:                                               ; preds = %32, %19
  %35 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @gpiod_get_value(ptr noundef nonnull %36) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %1, align 4
  %43 = or i32 %42, 64
  br label %47

44:                                               ; preds = %38
  %45 = load i32, ptr %1, align 4
  %46 = and i32 %45, -65
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i32 [ %46, %44 ], [ %43, %41 ]
  store i32 %48, ptr %1, align 4
  br label %49

49:                                               ; preds = %47, %34
  %50 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @gpiod_get_value(ptr noundef nonnull %51) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %1, align 4
  %58 = or i32 %57, 128
  br label %62

59:                                               ; preds = %53
  %60 = load i32, ptr %1, align 4
  %61 = and i32 %60, -129
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i32 [ %61, %59 ], [ %58, %56 ]
  store i32 %63, ptr %1, align 4
  br label %64

64:                                               ; preds = %62, %49, %2
  %65 = load i32, ptr %1, align 4
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mctrl_gpio_get_outputs(ptr noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @gpiod_get_value(ptr noundef nonnull %6) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 4
  %13 = or i32 %12, 4
  br label %17

14:                                               ; preds = %8
  %15 = load i32, ptr %1, align 4
  %16 = and i32 %15, -5
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %16, %14 ], [ %13, %11 ]
  store i32 %18, ptr %1, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @gpiod_get_value(ptr noundef nonnull %21) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %1, align 4
  %28 = or i32 %27, 2
  br label %32

29:                                               ; preds = %23
  %30 = load i32, ptr %1, align 4
  %31 = and i32 %30, -3
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ %31, %29 ], [ %28, %26 ]
  store i32 %33, ptr %1, align 4
  br label %34

34:                                               ; preds = %32, %19, %2
  %35 = load i32, ptr %1, align 4
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mctrl_gpio_init_noauto(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 60, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %19, %2
  %6 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %7 = getelementptr [6 x %struct.anon.65], ptr @mctrl_gpios_desc, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %8) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = tail call zeroext i1 @device_property_present(ptr noundef %0, ptr noundef nonnull %9) #6
  tail call void @kfree(ptr noundef nonnull %9) #6
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr [6 x %struct.anon.65], ptr @mctrl_gpios_desc, i32 0, i32 %6, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %0, ptr noundef %8, i32 noundef %1, i32 noundef %15) #6
  %17 = getelementptr %struct.mctrl_gpios, ptr %3, i32 0, i32 1, i32 %6
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %22, label %19

19:                                               ; preds = %13, %11, %5
  %20 = add nuw nsw i32 %6, 1
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %5

22:                                               ; preds = %19, %13, %2
  %23 = phi ptr [ inttoptr (i32 -12 to ptr), %2 ], [ %16, %13 ], [ %3, %19 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mctrl_gpio_init(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @mctrl_gpio_init_noauto(ptr noundef %4, i32 noundef %1)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  store ptr %0, ptr %5, align 4
  br label %8

8:                                                ; preds = %42, %7
  %9 = phi i32 [ 0, %7 ], [ %43, %42 ]
  %10 = getelementptr %struct.mctrl_gpios, ptr %5, i32 0, i32 1, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = and i32 %9, 1073741822
  %14 = icmp eq i32 %13, 4
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %42, label %16

16:                                               ; preds = %8
  %17 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %11) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr [6 x %struct.anon.65], ptr @mctrl_gpios_desc, i32 0, i32 %9
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef %22, i32 noundef %1, i32 noundef %17) #7
  %23 = inttoptr i32 %17 to ptr
  br label %45

24:                                               ; preds = %16
  %25 = getelementptr %struct.mctrl_gpios, ptr %5, i32 0, i32 2, i32 %9
  store i32 %17, ptr %25, align 4
  tail call void @irq_modify_status(i32 noundef %17, i32 noundef 0, i32 noundef 4096) #6
  %26 = load ptr, ptr %3, align 4
  %27 = load i32, ptr %25, align 4
  %28 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load ptr, ptr %26, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi ptr [ %32, %31 ], [ %29, %24 ]
  %35 = tail call i32 @devm_request_threaded_irq(ptr noundef %26, i32 noundef %27, ptr noundef nonnull @mctrl_gpio_irq_handle, ptr noundef null, i32 noundef 3, ptr noundef %34, ptr noundef %5) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr [6 x %struct.anon.65], ptr @mctrl_gpios_desc, i32 0, i32 %9
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef %40, i32 noundef %1, i32 noundef %35) #7
  %41 = inttoptr i32 %35 to ptr
  br label %45

42:                                               ; preds = %33, %8
  %43 = add nuw nsw i32 %9, 1
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %8

45:                                               ; preds = %42, %37, %19, %2
  %46 = phi ptr [ %5, %2 ], [ %23, %19 ], [ %41, %37 ], [ %5, %42 ]
  ret ptr %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mctrl_gpio_irq_handle(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.mctrl_gpios, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 0
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @gpiod_get_value(ptr noundef nonnull %9) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = or i32 %5, 32
  br label %18

16:                                               ; preds = %11
  %17 = and i32 %5, -33
  br label %18

18:                                               ; preds = %16, %14, %7
  %19 = phi i32 [ %5, %7 ], [ %17, %16 ], [ %15, %14 ]
  %20 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @gpiod_get_value(ptr noundef nonnull %21) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = or i32 %19, 256
  br label %30

28:                                               ; preds = %23
  %29 = and i32 %19, -257
  br label %30

30:                                               ; preds = %28, %26, %18
  %31 = phi i32 [ %19, %18 ], [ %29, %28 ], [ %27, %26 ]
  %32 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = tail call i32 @gpiod_get_value(ptr noundef nonnull %33) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = or i32 %31, 64
  br label %42

40:                                               ; preds = %35
  %41 = and i32 %31, -65
  br label %42

42:                                               ; preds = %40, %38, %30
  %43 = phi i32 [ %31, %30 ], [ %41, %40 ], [ %39, %38 ]
  %44 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = tail call i32 @gpiod_get_value(ptr noundef nonnull %45) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = or i32 %43, 128
  br label %54

52:                                               ; preds = %47
  %53 = and i32 %43, -129
  br label %54

54:                                               ; preds = %52, %50, %42, %2
  %55 = phi i32 [ %5, %2 ], [ %43, %42 ], [ %53, %52 ], [ %51, %50 ]
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %57 = load i32, ptr %4, align 4
  %58 = xor i32 %57, %55
  store i32 %55, ptr %4, align 4
  %59 = and i32 %58, 480
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 30
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %93, label %65

65:                                               ; preds = %61
  %66 = and i32 %58, %55
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 31, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = and i32 %66, 256
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 31, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = and i32 %58, 64
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = and i32 %55, 64
  tail call void @uart_handle_dcd_change(ptr noundef %3, i32 noundef %84) #6
  br label %85

85:                                               ; preds = %83, %80
  %86 = and i32 %58, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = and i32 %55, 32
  tail call void @uart_handle_cts_change(ptr noundef %3, i32 noundef %89) #6
  br label %90

90:                                               ; preds = %88, %85
  %91 = load ptr, ptr %62, align 4
  %92 = getelementptr inbounds %struct.tty_port, ptr %91, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %92, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %93

93:                                               ; preds = %90, %61, %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %56) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mctrl_gpio_free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %83, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 2, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 45
  %11 = load ptr, ptr %10, align 4
  tail call void @devm_free_irq(ptr noundef %11, i32 noundef %6, ptr noundef nonnull %1) #6
  br label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 0
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @devm_gpiod_put(ptr noundef %0, ptr noundef nonnull %14) #6
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 45
  %24 = load ptr, ptr %23, align 4
  tail call void @devm_free_irq(ptr noundef %24, i32 noundef %19, ptr noundef nonnull %1) #6
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @devm_gpiod_put(ptr noundef %0, ptr noundef nonnull %27) #6
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 2, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 45
  %37 = load ptr, ptr %36, align 4
  tail call void @devm_free_irq(ptr noundef %37, i32 noundef %32, ptr noundef nonnull %1) #6
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @devm_gpiod_put(ptr noundef %0, ptr noundef nonnull %40) #6
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 2, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %1, align 4
  %49 = getelementptr inbounds %struct.uart_port, ptr %48, i32 0, i32 45
  %50 = load ptr, ptr %49, align 4
  tail call void @devm_free_irq(ptr noundef %50, i32 noundef %45, ptr noundef nonnull %1) #6
  br label %51

51:                                               ; preds = %47, %43
  %52 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @devm_gpiod_put(ptr noundef %0, ptr noundef nonnull %53) #6
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 2, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %1, align 4
  %62 = getelementptr inbounds %struct.uart_port, ptr %61, i32 0, i32 45
  %63 = load ptr, ptr %62, align 4
  tail call void @devm_free_irq(ptr noundef %63, i32 noundef %58, ptr noundef nonnull %1) #6
  br label %64

64:                                               ; preds = %60, %56
  %65 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @devm_gpiod_put(ptr noundef %0, ptr noundef nonnull %66) #6
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 2, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %1, align 4
  %75 = getelementptr inbounds %struct.uart_port, ptr %74, i32 0, i32 45
  %76 = load ptr, ptr %75, align 4
  tail call void @devm_free_irq(ptr noundef %76, i32 noundef %71, ptr noundef nonnull %1) #6
  br label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr %struct.mctrl_gpios, ptr %1, i32 0, i32 1, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @devm_gpiod_put(ptr noundef %0, ptr noundef nonnull %79) #6
  br label %82

82:                                               ; preds = %81, %77
  tail call void @devm_kfree(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %83

83:                                               ; preds = %82, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mctrl_gpio_enable_ms(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %82, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mctrl_gpios, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %82

7:                                                ; preds = %3
  store i8 1, ptr %4, align 4
  %8 = getelementptr inbounds %struct.mctrl_gpios, ptr %0, i32 0, i32 3
  %9 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @gpiod_get_value(ptr noundef nonnull %10) #6
  %14 = icmp eq i32 %13, 0
  %15 = load i32, ptr %8, align 4
  %16 = and i32 %15, -33
  %17 = select i1 %14, i32 0, i32 32
  %18 = or i32 %16, %17
  store i32 %18, ptr %8, align 4
  br label %19

19:                                               ; preds = %12, %7
  %20 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @gpiod_get_value(ptr noundef nonnull %21) #6
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %8, align 4
  %27 = and i32 %26, -257
  %28 = select i1 %25, i32 0, i32 256
  %29 = or i32 %27, %28
  store i32 %29, ptr %8, align 4
  br label %30

30:                                               ; preds = %23, %19
  %31 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @gpiod_get_value(ptr noundef nonnull %32) #6
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr %8, align 4
  %38 = and i32 %37, -65
  %39 = select i1 %36, i32 0, i32 64
  %40 = or i32 %38, %39
  store i32 %40, ptr %8, align 4
  br label %41

41:                                               ; preds = %34, %30
  %42 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 1, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @gpiod_get_value(ptr noundef nonnull %43) #6
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %8, align 4
  %49 = and i32 %48, -129
  %50 = select i1 %47, i32 0, i32 128
  %51 = or i32 %49, %50
  store i32 %51, ptr %8, align 4
  br label %52

52:                                               ; preds = %45, %41
  %53 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 0
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @enable_irq(i32 noundef %54) #6
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @enable_irq(i32 noundef %59) #6
  br label %62

62:                                               ; preds = %61, %57
  %63 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @enable_irq(i32 noundef %64) #6
  br label %67

67:                                               ; preds = %66, %62
  %68 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void @enable_irq(i32 noundef %69) #6
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void @enable_irq(i32 noundef %74) #6
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @enable_irq(i32 noundef %79) #6
  br label %82

82:                                               ; preds = %81, %77, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mctrl_gpio_disable_ms(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mctrl_gpios, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  store i8 0, ptr %4, align 4
  %8 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @disable_irq(i32 noundef %9) #6
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @disable_irq(i32 noundef %14) #6
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @disable_irq(i32 noundef %19) #6
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @disable_irq(i32 noundef %24) #6
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @disable_irq(i32 noundef %29) #6
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr %struct.mctrl_gpios, ptr %0, i32 0, i32 2, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @disable_irq(i32 noundef %34) #6
  br label %37

37:                                               ; preds = %36, %32, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
