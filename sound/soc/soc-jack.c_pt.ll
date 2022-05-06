; ModuleID = '/llk/IR/sound/soc/soc-jack.c_pt.bc'
source_filename = "../sound/soc/soc-jack.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_jack_report:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_jack_report\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_jack_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_jack_add_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_jack_add_zones\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_jack_add_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_jack_get_type:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_jack_get_type\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_jack_get_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_jack_add_pins:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_jack_add_pins\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_jack_add_pins:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_jack_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_jack_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_jack_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_jack_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_jack_notifier_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_jack_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_jack_add_gpios:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_jack_add_gpios\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_jack_add_gpios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_jack_add_gpiods:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_jack_add_gpiods\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_jack_add_gpiods:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_jack_free_gpios:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_jack_free_gpios\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_jack_free_gpios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.snd_soc_jack_zone = type { i32, i32, i32, i32, %struct.list_head }
%struct.jack_gpio_tbl = type { i32, ptr, ptr }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@__kstrtab_snd_soc_jack_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_jack_report = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_jack_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_jack_report to i32), ptr @__kstrtab_snd_soc_jack_report, ptr @__kstrtabns_snd_soc_jack_report }, section "___ksymtab_gpl+snd_soc_jack_report", align 4
@__kstrtab_snd_soc_jack_add_zones = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_jack_add_zones = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_jack_add_zones = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_jack_add_zones to i32), ptr @__kstrtab_snd_soc_jack_add_zones, ptr @__kstrtabns_snd_soc_jack_add_zones }, section "___ksymtab_gpl+snd_soc_jack_add_zones", align 4
@__kstrtab_snd_soc_jack_get_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_jack_get_type = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_jack_get_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_jack_get_type to i32), ptr @__kstrtab_snd_soc_jack_get_type, ptr @__kstrtabns_snd_soc_jack_get_type }, section "___ksymtab_gpl+snd_soc_jack_get_type", align 4
@.str = private unnamed_addr constant [26 x i8] c"ASoC: No name for pin %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ASoC: No mask for pin %d (%s)\0A\00", align 1
@__kstrtab_snd_soc_jack_add_pins = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_jack_add_pins = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_jack_add_pins = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_jack_add_pins to i32), ptr @__kstrtab_snd_soc_jack_add_pins, ptr @__kstrtabns_snd_soc_jack_add_pins }, section "___ksymtab_gpl+snd_soc_jack_add_pins", align 4
@__kstrtab_snd_soc_jack_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_jack_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_jack_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_jack_notifier_register to i32), ptr @__kstrtab_snd_soc_jack_notifier_register, ptr @__kstrtabns_snd_soc_jack_notifier_register }, section "___ksymtab_gpl+snd_soc_jack_notifier_register", align 4
@__kstrtab_snd_soc_jack_notifier_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_jack_notifier_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_jack_notifier_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_jack_notifier_unregister to i32), ptr @__kstrtab_snd_soc_jack_notifier_unregister, ptr @__kstrtabns_snd_soc_jack_notifier_unregister }, section "___ksymtab_gpl+snd_soc_jack_notifier_unregister", align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"jack_devres_free_gpios\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ASoC: No name for gpio at index %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ASoC: Cannot get gpio at index %d: %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"ASoC: Invalid gpio %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"ASoC: Failed to mark GPIO at index %d as wake source: %d\0A\00", align 1
@__kstrtab_snd_soc_jack_add_gpios = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_jack_add_gpios = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_jack_add_gpios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_jack_add_gpios to i32), ptr @__kstrtab_snd_soc_jack_add_gpios, ptr @__kstrtabns_snd_soc_jack_add_gpios }, section "___ksymtab_gpl+snd_soc_jack_add_gpios", align 4
@__kstrtab_snd_soc_jack_add_gpiods = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_jack_add_gpiods = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_jack_add_gpiods = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_jack_add_gpiods to i32), ptr @__kstrtab_snd_soc_jack_add_gpiods, ptr @__kstrtabns_snd_soc_jack_add_gpiods }, section "___ksymtab_gpl+snd_soc_jack_add_gpiods", align 4
@__kstrtab_snd_soc_jack_free_gpios = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_jack_free_gpios = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_jack_free_gpios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_jack_free_gpios to i32), ptr @__kstrtab_snd_soc_jack_free_gpios, ptr @__kstrtabns_snd_soc_jack_free_gpios }, section "___ksymtab_gpl+snd_soc_jack_free_gpios", align 4
@__tracepoint_snd_soc_jack_report = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_snd_soc_jack_notify = external dso_local global %struct.tracepoint, align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_snd_soc_jack_irq = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_snd_soc_jack_add_gpiods, ptr @__ksymtab_snd_soc_jack_add_gpios, ptr @__ksymtab_snd_soc_jack_add_pins, ptr @__ksymtab_snd_soc_jack_add_zones, ptr @__ksymtab_snd_soc_jack_free_gpios, ptr @__ksymtab_snd_soc_jack_get_type, ptr @__ksymtab_snd_soc_jack_notifier_register, ptr @__ksymtab_snd_soc_jack_notifier_unregister, ptr @__ksymtab_snd_soc_jack_report], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_jack_report(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %3
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_report, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #6
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %20 = tail call i32 @__traceiter_snd_soc_jack_report(ptr noundef null, ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  br label %21

21:                                               ; preds = %19, %8, %5
  %22 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_soc_card, ptr %23, i32 0, i32 51
  tail call void @mutex_lock(ptr noundef nonnull %0) #6
  %25 = xor i32 %2, -1
  %26 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %25
  %29 = and i32 %2, %1
  %30 = or i32 %28, %29
  store i32 %30, ptr %26, align 4
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_notify, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %21
  %34 = tail call ptr @llvm.thread.pointer() #6
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %45 = tail call i32 @__traceiter_snd_soc_jack_notify(ptr noundef null, ptr noundef nonnull %0, i32 noundef %1) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %46

46:                                               ; preds = %44, %33, %21
  %47 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %77, label %50

50:                                               ; preds = %69, %46
  %51 = phi ptr [ %70, %69 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.snd_soc_jack_pin, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %26, align 4
  %55 = and i32 %54, %53
  %56 = getelementptr inbounds %struct.snd_soc_jack_pin, ptr %51, i32 0, i32 3
  %57 = load i8, ptr %56, align 4, !range !12
  %58 = icmp eq i8 %57, 0
  %59 = icmp eq i32 %55, 0
  %60 = zext i1 %59 to i32
  %61 = select i1 %58, i32 %55, i32 %60
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.snd_soc_jack_pin, ptr %51, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  br i1 %62, label %67, label %65

65:                                               ; preds = %50
  %66 = tail call i32 @snd_soc_dapm_enable_pin(ptr noundef %24, ptr noundef %64) #6
  br label %69

67:                                               ; preds = %50
  %68 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %24, ptr noundef %64) #6
  br label %69

69:                                               ; preds = %67, %65
  %70 = load ptr, ptr %51, align 4
  %71 = icmp eq ptr %70, %47
  br i1 %71, label %72, label %50

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 5
  %74 = load i32, ptr %26, align 4
  %75 = tail call i32 @blocking_notifier_call_chain(ptr noundef %73, i32 noundef %74, ptr noundef nonnull %0) #6
  %76 = tail call i32 @snd_soc_dapm_sync(ptr noundef %24) #6
  br label %81

77:                                               ; preds = %46
  %78 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 5
  %79 = load i32, ptr %26, align 4
  %80 = tail call i32 @blocking_notifier_call_chain(ptr noundef %78, i32 noundef %79, ptr noundef nonnull %0) #6
  br label %81

81:                                               ; preds = %77, %72
  %82 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load i32, ptr %26, align 4
  tail call void @snd_jack_report(ptr noundef %83, i32 noundef %84) #6
  tail call void @mutex_unlock(ptr noundef nonnull %0) #6
  br label %85

85:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_jack_report(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_jack_add_zones(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  %9 = getelementptr %struct.snd_soc_jack_zone, ptr %2, i32 %8, i32 4
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr %struct.snd_soc_jack_zone, ptr %2, i32 %8, i32 4, i32 1
  store ptr %9, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  store ptr %11, ptr %9, align 4
  store ptr %6, ptr %10, align 4
  store volatile ptr %9, ptr %6, align 4
  %13 = add nuw nsw i32 %8, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %3
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snd_soc_jack_get_type(ptr noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %21, label %6

6:                                                ; preds = %18, %2
  %7 = phi ptr [ %19, %18 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 -12
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %7, i32 -8
  %17 = load i32, ptr %16, align 4
  br label %21

18:                                               ; preds = %11, %6
  %19 = load ptr, ptr %7, align 4
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %21, label %6

21:                                               ; preds = %18, %15, %2
  %22 = phi i32 [ %17, %15 ], [ 0, %2 ], [ 0, %18 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_jack_add_pins(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %38

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %28, %5
  %9 = phi i32 [ 0, %5 ], [ %36, %28 ]
  %10 = getelementptr %struct.snd_soc_jack_pin, ptr %2, i32 %9
  %11 = getelementptr %struct.snd_soc_jack_pin, ptr %2, i32 %9, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_soc_card, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef %9) #7
  br label %39

19:                                               ; preds = %8
  %20 = getelementptr %struct.snd_soc_jack_pin, ptr %2, i32 %9, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_soc_card, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.1, i32 noundef %9, ptr noundef nonnull %12) #7
  br label %39

28:                                               ; preds = %19
  store volatile ptr %10, ptr %10, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %10, ptr %29, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %10, ptr %31, align 4
  store ptr %30, ptr %10, align 4
  store ptr %6, ptr %29, align 4
  store volatile ptr %10, ptr %6, align 4
  %32 = load ptr, ptr %7, align 4
  %33 = load ptr, ptr %11, align 4
  %34 = load i32, ptr %20, align 4
  %35 = tail call i32 @snd_jack_add_new_kctl(ptr noundef %32, ptr noundef %33, i32 noundef %34) #6
  %36 = add nuw nsw i32 %9, 1
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %8

38:                                               ; preds = %28, %3
  tail call void @snd_soc_jack_report(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %39

39:                                               ; preds = %38, %23, %14
  %40 = phi i32 [ -22, %23 ], [ -22, %14 ], [ 0, %38 ]
  ret i32 %40
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_add_new_kctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_jack_notifier_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 5
  %4 = tail call i32 @blocking_notifier_chain_register(ptr noundef %3, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_jack_notifier_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 5
  %4 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %3, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_jack_add_gpios(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @jack_devres_free_gpios, i32 noundef 12, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %112, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.jack_gpio_tbl, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  store i32 %1, ptr %4, align 4
  %8 = getelementptr inbounds %struct.jack_gpio_tbl, ptr %4, i32 0, i32 2
  store ptr %2, ptr %8, align 4
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %86

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %76, %10
  %13 = phi i32 [ 0, %10 ], [ %84, %76 ]
  %14 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13
  %15 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.snd_soc_card, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.3, i32 noundef %13) #7
  br label %93

22:                                               ; preds = %12
  %23 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @gpiod_get_index(ptr noundef nonnull %28, ptr noundef nonnull %16, i32 noundef %32, i32 noundef 1) #6
  store ptr %33, ptr %23, align 4
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = ptrtoint ptr %33 to i32
  %37 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.4, i32 noundef %13, i32 noundef %36) #7
  br label %93

38:                                               ; preds = %26
  %39 = load i32, ptr %14, align 4
  %40 = icmp ult i32 %39, 2048
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %11, align 4
  %43 = getelementptr inbounds %struct.snd_soc_card, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.5, i32 noundef %39) #7
  br label %93

45:                                               ; preds = %38
  %46 = tail call i32 @gpio_request_one(i32 noundef %39, i32 noundef 1, ptr noundef nonnull %16) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %45
  %49 = load i32, ptr %14, align 4
  %50 = tail call ptr @gpio_to_desc(i32 noundef %49) #6
  store ptr %50, ptr %23, align 4
  br label %51

51:                                               ; preds = %48, %30, %22
  %52 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 9
  store i32 -32, ptr %52, align 4
  %53 = getelementptr inbounds %struct.work_struct, ptr %52, i32 0, i32 1
  store volatile ptr %53, ptr %53, align 4
  %54 = getelementptr inbounds %struct.work_struct, ptr %52, i32 0, i32 1, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.work_struct, ptr %52, i32 0, i32 2
  store ptr @gpio_work, ptr %55, align 4
  %56 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %56, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %57 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 8
  store ptr %0, ptr %57, align 4
  %58 = load ptr, ptr %23, align 4
  %59 = tail call i32 @gpiod_to_irq(ptr noundef %58) #6
  %60 = load ptr, ptr %15, align 4
  %61 = tail call i32 @request_any_context_irq(i32 noundef %59, ptr noundef nonnull @gpio_handler, i32 noundef 3, ptr noundef %60, ptr noundef %14) #6
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %51
  %64 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 7
  %65 = load i8, ptr %64, align 4, !range !12
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %23, align 4
  %69 = tail call i32 @gpiod_to_irq(ptr noundef %68) #6
  %70 = tail call i32 @irq_set_irq_wake(i32 noundef %69, i32 noundef 1) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %11, align 4
  %74 = getelementptr inbounds %struct.snd_soc_card, ptr %73, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.6, i32 noundef %13, i32 noundef %70) #7
  br label %76

76:                                               ; preds = %72, %67, %63
  %77 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 10
  store ptr @snd_soc_jack_pm_notifier, ptr %77, align 4
  %78 = tail call i32 @register_pm_notifier(ptr noundef %77) #6
  %79 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %13, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = tail call i32 @__msecs_to_jiffies(i32 noundef %80) #6
  %82 = load ptr, ptr @system_wq, align 4
  %83 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %82, ptr noundef %52, i32 noundef %81) #6
  %84 = add nuw nsw i32 %13, 1
  %85 = icmp eq i32 %84, %1
  br i1 %85, label %86, label %12

86:                                               ; preds = %76, %6
  %87 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.snd_soc_card, ptr %88, i32 0, i32 6
  %90 = load ptr, ptr %89, align 4
  tail call void @devres_add(ptr noundef %90, ptr noundef nonnull %4) #6
  br label %112

91:                                               ; preds = %51
  %92 = load i32, ptr %14, align 4
  tail call void @gpio_free(i32 noundef %92) #6
  br label %93

93:                                               ; preds = %91, %45, %41, %35, %18
  %94 = phi i32 [ %61, %91 ], [ %36, %35 ], [ -22, %41 ], [ -22, %18 ], [ %46, %45 ]
  %95 = icmp eq i32 %13, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %96, %93
  %97 = phi i32 [ %109, %96 ], [ 0, %93 ]
  %98 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %97
  %99 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %97, i32 11
  %100 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %97, i32 10
  %101 = tail call i32 @unregister_pm_notifier(ptr noundef %100) #6
  %102 = load ptr, ptr %99, align 4
  %103 = tail call i32 @gpiod_to_irq(ptr noundef %102) #6
  %104 = tail call ptr @free_irq(i32 noundef %103, ptr noundef %98) #6
  %105 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %97, i32 9
  %106 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %105) #6
  %107 = load ptr, ptr %99, align 4
  tail call void @gpiod_put(ptr noundef %107) #6
  %108 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %97, i32 8
  store ptr null, ptr %108, align 4
  %109 = add nuw nsw i32 %97, 1
  %110 = icmp eq i32 %109, %13
  br i1 %110, label %111, label %96

111:                                              ; preds = %96, %93
  tail call void @devres_free(ptr noundef nonnull %4) #6
  br label %112

112:                                              ; preds = %111, %86, %3
  %113 = phi i32 [ %94, %111 ], [ 0, %86 ], [ -12, %3 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @jack_devres_free_gpios(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.jack_gpio_tbl, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %20, %7 ], [ 0, %2 ]
  %9 = getelementptr %struct.snd_soc_jack_gpio, ptr %5, i32 %8
  %10 = getelementptr %struct.snd_soc_jack_gpio, ptr %5, i32 %8, i32 11
  %11 = getelementptr %struct.snd_soc_jack_gpio, ptr %5, i32 %8, i32 10
  %12 = tail call i32 @unregister_pm_notifier(ptr noundef %11) #6
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 @gpiod_to_irq(ptr noundef %13) #6
  %15 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %9) #6
  %16 = getelementptr %struct.snd_soc_jack_gpio, ptr %5, i32 %8, i32 9
  %17 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %16) #6
  %18 = load ptr, ptr %10, align 4
  tail call void @gpiod_put(ptr noundef %18) #6
  %19 = getelementptr %struct.snd_soc_jack_gpio, ptr %5, i32 %8, i32 8
  store ptr null, ptr %19, align 4
  %20 = add nuw nsw i32 %8, 1
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %22, label %7

22:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 56
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %5) #6
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %6, 0
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 %6, i32 %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 -20
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %19 = getelementptr i8, ptr %0, i32 64
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %0, i32 60
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %20(ptr noundef %24) #6
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %25, %22 ], [ %18, %17 ]
  %28 = getelementptr i8, ptr %0, i32 -20
  %29 = load i32, ptr %28, align 4
  tail call void @snd_soc_jack_report(ptr noundef %3, i32 noundef %27, i32 noundef %29) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_any_context_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_jack_gpio, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_jack, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_jack_gpio, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #6
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %25 = tail call i32 @__traceiter_snd_soc_jack_irq(ptr noundef null, ptr noundef %10) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  br label %26

26:                                               ; preds = %24, %13, %2
  %27 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.snd_soc_jack_gpio, ptr %1, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 50
  tail call void @pm_wakeup_dev_event(ptr noundef %8, i32 noundef %38, i1 noundef zeroext false) #6
  br label %39

39:                                               ; preds = %35, %31, %26
  %40 = load ptr, ptr @system_power_efficient_wq, align 4
  %41 = getelementptr inbounds %struct.snd_soc_jack_gpio, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @__msecs_to_jiffies(i32 noundef %42) #6
  %44 = getelementptr inbounds %struct.snd_soc_jack_gpio, ptr %1, i32 0, i32 9
  %45 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %40, ptr noundef %44, i32 noundef %43) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soc_jack_pm_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  switch i32 %1, label %8 [
    i32 4, label %4
    i32 2, label %4
    i32 6, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = load ptr, ptr @system_power_efficient_wq, align 4
  %6 = getelementptr i8, ptr %0, i32 -44
  %7 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %6, i32 noundef 0) #6
  br label %8

8:                                                ; preds = %4, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_jack_add_gpiods(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %9, %6 ], [ 0, %4 ]
  %8 = getelementptr %struct.snd_soc_jack_gpio, ptr %3, i32 %7, i32 2
  store ptr %0, ptr %8, align 4
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %4
  %12 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_jack_free_gpios(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %18, %5 ], [ 0, %3 ]
  %7 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %6
  %8 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %6, i32 11
  %9 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %6, i32 10
  %10 = tail call i32 @unregister_pm_notifier(ptr noundef %9) #6
  %11 = load ptr, ptr %8, align 4
  %12 = tail call i32 @gpiod_to_irq(ptr noundef %11) #6
  %13 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %7) #6
  %14 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %6, i32 9
  %15 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %14) #6
  %16 = load ptr, ptr %8, align 4
  tail call void @gpiod_put(ptr noundef %16) #6
  %17 = getelementptr %struct.snd_soc_jack_gpio, ptr %2, i32 %6, i32 8
  store ptr null, ptr %17, align 4
  %18 = add nuw nsw i32 %6, 1
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %5

20:                                               ; preds = %5, %3
  %21 = getelementptr inbounds %struct.snd_soc_jack, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.snd_soc_card, ptr %22, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @devres_destroy(ptr noundef %24, ptr noundef nonnull @jack_devres_free_gpios, ptr noundef null, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_jack_report(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_jack_notify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_jack_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 2154422729}
!9 = !{i64 2154422909}
!10 = !{i64 2154435935}
!11 = !{i64 2154436103}
!12 = !{i8 0, i8 2}
!13 = !{i64 2154405428}
!14 = !{i64 2154405580}
