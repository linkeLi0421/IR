; ModuleID = '/llk/IR/drivers/input/ff-memless.c_pt.bc'
source_filename = "../drivers/input/ff-memless.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_create_memless:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_create_memless\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_create_memless:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ml_device = type { ptr, [16 x %struct.ml_effect_state], i32, %struct.timer_list, ptr, ptr }
%struct.ml_effect_state = type { ptr, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }

@__UNIQUE_ID_license206 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author207 = internal constant [47 x i8] c"author=Anssi Hannula <anssi.hannula@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [58 x i8] c"description=Force feedback support for memoryless devices\00", section ".modinfo", align 1
@__kstrtab_input_ff_create_memless = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_create_memless = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_create_memless = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_create_memless to i32), ptr @__kstrtab_input_ff_create_memless, ptr @__kstrtabns_input_ff_create_memless }, section "___ksymtab_gpl+input_ff_create_memless", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [53 x i8] c"\013ff_memless: invalid type in get_compatible_type()\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\013ff_memless: invalid type in ml_combine_effects()\0A\00", align 1
@sin_table = internal unnamed_addr constant [91 x i32] [i32 0, i32 37478757, i32 74946098, i32 112390610, i32 149800886, i32 187165532, i32 224473165, i32 261712422, i32 298871958, i32 335940455, i32 372906621, i32 409759197, i32 446486956, i32 483078710, i32 519523314, i32 555809666, i32 591926714, i32 627863454, i32 663608942, i32 699152287, i32 734482664, i32 769589311, i32 804461533, i32 839088708, i32 873460289, i32 907565806, i32 941394869, i32 974937174, i32 1008182503, i32 1041120731, i32 1073741823, i32 1106035843, i32 1137992954, i32 1169603421, i32 1200857615, i32 1231746017, i32 1262259217, i32 1292387920, i32 1322122950, i32 1351455248, i32 1380375880, i32 1408876036, i32 1436947034, i32 1464580325, i32 1491767490, i32 1518500249, i32 1544770457, i32 1570570114, i32 1595891360, i32 1620726481, i32 1645067914, i32 1668908243, i32 1692240207, i32 1715056697, i32 1737350765, i32 1759115619, i32 1780344629, i32 1801031329, i32 1821169418, i32 1840752761, i32 1859775392, i32 1878231518, i32 1896115516, i32 1913421940, i32 1930145516, i32 1946281151, i32 1961823931, i32 1976769119, i32 1991112165, i32 2004848699, i32 2017974536, i32 2030485679, i32 2042378316, i32 2053648824, i32 2064293772, i32 2074309916, i32 2083694204, i32 2092443780, i32 2100555976, i32 2108028323, i32 2114858545, i32 2121044559, i32 2126584483, i32 2131476629, i32 2135719506, i32 2139311823, i32 2142252484, i32 2144540595, i32 2146175457, i32 2147156574, i32 2147483647], align 4
@get_envelope.empty_envelope = internal unnamed_addr constant %struct.ff_envelope zeroinitializer, align 2
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_license206, ptr @__ksymtab_input_ff_create_memless], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_ff_create_memless(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 420) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %77, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ml_device, ptr %5, i32 0, i32 4
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %5, align 8
  %9 = getelementptr inbounds %struct.ml_device, ptr %5, i32 0, i32 5
  store ptr %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ml_device, ptr %5, i32 0, i32 2
  store i32 65535, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ml_device, ptr %5, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %11, ptr noundef nonnull @ml_effect_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %12 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 96, ptr noundef %12) #8
  %13 = tail call i32 @input_ff_create(ptr noundef %0, i32 noundef 16) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %77

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ff_device, ptr %18, i32 0, i32 6
  store ptr %5, ptr %19, align 4
  store ptr @ml_ff_upload, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ff_device, ptr %18, i32 0, i32 2
  store ptr @ml_ff_playback, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ff_device, ptr %18, i32 0, i32 3
  store ptr @ml_ff_set_gain, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ff_device, ptr %18, i32 0, i32 5
  store ptr @ml_ff_destroy, ptr %22, align 4
  %23 = getelementptr %struct.ff_device, ptr %18, i32 0, i32 7, i32 2
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  tail call void @_set_bit(i32 noundef 81, ptr noundef %12) #8
  tail call void @_set_bit(i32 noundef 90, ptr noundef %12) #8
  tail call void @_set_bit(i32 noundef 89, ptr noundef %12) #8
  tail call void @_set_bit(i32 noundef 88, ptr noundef %12) #8
  br label %28

28:                                               ; preds = %27, %16
  %29 = getelementptr inbounds %struct.ff_device, ptr %18, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 0
  store ptr %30, ptr %31, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr %struct.ff_effect, ptr %32, i32 1
  %34 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 1
  store ptr %33, ptr %34, align 4
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr %struct.ff_effect, ptr %35, i32 2
  %37 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 2
  store ptr %36, ptr %37, align 4
  %38 = load ptr, ptr %29, align 4
  %39 = getelementptr %struct.ff_effect, ptr %38, i32 3
  %40 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 3
  store ptr %39, ptr %40, align 4
  %41 = load ptr, ptr %29, align 4
  %42 = getelementptr %struct.ff_effect, ptr %41, i32 4
  %43 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 4
  store ptr %42, ptr %43, align 4
  %44 = load ptr, ptr %29, align 4
  %45 = getelementptr %struct.ff_effect, ptr %44, i32 5
  %46 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 5
  store ptr %45, ptr %46, align 4
  %47 = load ptr, ptr %29, align 4
  %48 = getelementptr %struct.ff_effect, ptr %47, i32 6
  %49 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 6
  store ptr %48, ptr %49, align 4
  %50 = load ptr, ptr %29, align 4
  %51 = getelementptr %struct.ff_effect, ptr %50, i32 7
  %52 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 7
  store ptr %51, ptr %52, align 4
  %53 = load ptr, ptr %29, align 4
  %54 = getelementptr %struct.ff_effect, ptr %53, i32 8
  %55 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 8
  store ptr %54, ptr %55, align 4
  %56 = load ptr, ptr %29, align 4
  %57 = getelementptr %struct.ff_effect, ptr %56, i32 9
  %58 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 9
  store ptr %57, ptr %58, align 4
  %59 = load ptr, ptr %29, align 4
  %60 = getelementptr %struct.ff_effect, ptr %59, i32 10
  %61 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 10
  store ptr %60, ptr %61, align 4
  %62 = load ptr, ptr %29, align 4
  %63 = getelementptr %struct.ff_effect, ptr %62, i32 11
  %64 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 11
  store ptr %63, ptr %64, align 4
  %65 = load ptr, ptr %29, align 4
  %66 = getelementptr %struct.ff_effect, ptr %65, i32 12
  %67 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 12
  store ptr %66, ptr %67, align 4
  %68 = load ptr, ptr %29, align 4
  %69 = getelementptr %struct.ff_effect, ptr %68, i32 13
  %70 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 13
  store ptr %69, ptr %70, align 4
  %71 = load ptr, ptr %29, align 4
  %72 = getelementptr %struct.ff_effect, ptr %71, i32 14
  %73 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 14
  store ptr %72, ptr %73, align 4
  %74 = load ptr, ptr %29, align 4
  %75 = getelementptr %struct.ff_effect, ptr %74, i32 15
  %76 = getelementptr %struct.ml_device, ptr %5, i32 0, i32 1, i32 15
  store ptr %75, ptr %76, align 4
  br label %77

77:                                               ; preds = %28, %15, %3
  %78 = phi i32 [ %13, %15 ], [ -12, %3 ], [ 0, %28 ]
  ret i32 %78
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ml_effect_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -392
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 36
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  tail call fastcc void @ml_play_effects(ptr noundef %2)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ml_ff_upload(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ff_effect, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #8
  %12 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %10, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %3
  %17 = and i32 %13, -3
  store i32 %17, ptr %12, align 4
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ff_effect, ptr %20, i32 0, i32 4, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = tail call i32 @__msecs_to_jiffies(i32 noundef %23) #8
  %25 = load ptr, ptr %19, align 4
  %26 = add i32 %24, %18
  %27 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %10, i32 3
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ff_effect, ptr %25, i32 0, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = tail call i32 @__msecs_to_jiffies(i32 noundef %30) #8
  %32 = load i32, ptr %27, align 4
  %33 = add i32 %31, %26
  %34 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %10, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %10, i32 5
  store i32 %32, ptr %35, align 4
  tail call fastcc void @ml_schedule_timer(ptr noundef %7)
  br label %36

36:                                               ; preds = %16, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %37 = load i16, ptr %11, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ml_ff_playback(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp sgt i32 %2, 0
  %9 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %1, i32 1
  br i1 %8, label %10, label %32

10:                                               ; preds = %3
  %11 = load i32, ptr %9, align 4
  %12 = or i32 %11, 1
  store i32 %12, ptr %9, align 4
  %13 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %1, i32 2
  store i32 %2, ptr %13, align 4
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ff_effect, ptr %16, i32 0, i32 4, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call i32 @__msecs_to_jiffies(i32 noundef %19) #8
  %21 = load ptr, ptr %15, align 4
  %22 = add i32 %20, %14
  %23 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %1, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ff_effect, ptr %21, i32 0, i32 4
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = tail call i32 @__msecs_to_jiffies(i32 noundef %26) #8
  %28 = load i32, ptr %23, align 4
  %29 = add i32 %27, %22
  %30 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %1, i32 4
  store i32 %29, ptr %30, align 4
  %31 = getelementptr %struct.ml_device, ptr %7, i32 0, i32 1, i32 %1, i32 5
  store i32 %28, ptr %31, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load volatile i32, ptr %9, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = or i32 %33, 4
  store i32 %37, ptr %9, align 4
  br label %40

38:                                               ; preds = %32
  %39 = and i32 %33, -2
  store i32 %39, ptr %9, align 4
  br label %40

40:                                               ; preds = %38, %36, %10
  tail call fastcc void @ml_play_effects(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ml_ff_set_gain(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ff_device, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = zext i16 %1 to i32
  %8 = getelementptr inbounds %struct.ml_device, ptr %6, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -3
  store i32 %11, ptr %9, align 4
  %12 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -3
  store i32 %14, ptr %12, align 4
  %15 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -3
  store i32 %17, ptr %15, align 4
  %18 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 3, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -3
  store i32 %20, ptr %18, align 4
  %21 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 4, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -3
  store i32 %23, ptr %21, align 4
  %24 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 5, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -3
  store i32 %26, ptr %24, align 4
  %27 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 6, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -3
  store i32 %29, ptr %27, align 4
  %30 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 7, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, -3
  store i32 %32, ptr %30, align 4
  %33 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 8, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -3
  store i32 %35, ptr %33, align 4
  %36 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 9, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -3
  store i32 %38, ptr %36, align 4
  %39 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 10, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -3
  store i32 %41, ptr %39, align 4
  %42 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 11, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -3
  store i32 %44, ptr %42, align 4
  %45 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 12, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -3
  store i32 %47, ptr %45, align 4
  %48 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 13, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, -3
  store i32 %50, ptr %48, align 4
  %51 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 14, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -3
  store i32 %53, ptr %51, align 4
  %54 = getelementptr %struct.ml_device, ptr %6, i32 0, i32 1, i32 15, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, -3
  store i32 %56, ptr %54, align 4
  tail call fastcc void @ml_play_effects(ptr noundef %6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ml_ff_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ff_device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ml_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @del_timer_sync(ptr noundef %4) #8
  %6 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %6) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ml_play_effects(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.ff_effect, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.ml_device, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.ml_device, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ff_effect, ptr %2, i32 0, i32 5
  %6 = getelementptr inbounds %struct.ff_effect, ptr %2, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ff_effect, ptr %2, i32 0, i32 5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ml_device, ptr %0, i32 0, i32 5
  br label %9

9:                                                ; preds = %310, %1
  %10 = phi i32 [ %304, %310 ], [ 0, %1 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #8
  br label %11

11:                                               ; preds = %303, %9
  %12 = phi i32 [ %10, %9 ], [ %304, %303 ]
  %13 = phi i32 [ 0, %9 ], [ %305, %303 ]
  %14 = shl nuw i32 1, %13
  %15 = or i32 %12, %14
  %16 = and i32 %12, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %303

18:                                               ; preds = %11
  %19 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %13
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %13, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %303, label %25

25:                                               ; preds = %18
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %13, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %26, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %303, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 20
  %34 = load ptr, ptr %33, align 8
  %35 = load i16, ptr %20, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.ff_device, ptr %34, i32 0, i32 7
  %38 = lshr i32 %36, 5
  %39 = getelementptr i32, ptr %37, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %36, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %31
  %46 = icmp eq i16 %35, 81
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = getelementptr %struct.ff_device, ptr %34, i32 0, i32 7, i32 2
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 65536
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %45
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %54

54:                                               ; preds = %52, %47, %31
  %55 = phi i32 [ 0, %52 ], [ %36, %31 ], [ 80, %47 ]
  %56 = load i16, ptr %2, align 4
  %57 = zext i16 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = icmp eq i16 %56, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = xor i32 %14, -1
  %63 = and i32 %12, %62
  br label %303

64:                                               ; preds = %59
  %65 = trunc i32 %55 to i16
  store i16 %65, ptr %2, align 4
  br label %66

66:                                               ; preds = %64, %54
  %67 = load i32, ptr %21, align 4
  %68 = and i32 %67, -5
  store i32 %68, ptr %21, align 4
  %69 = and i32 %67, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = and i32 %67, -8
  store i32 %72, ptr %21, align 4
  br label %303

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.ff_effect, ptr %20, i32 0, i32 4
  %75 = load i16, ptr %74, align 2
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %73
  %78 = load volatile i32, ptr @jiffies, align 64
  %79 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %13, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = sub i32 %78, %80
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = and i32 %67, -7
  store i32 %84, ptr %21, align 4
  %85 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %13, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, -1
  store i32 %87, ptr %85, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = and i32 %67, -8
  store i32 %90, ptr %21, align 4
  br label %303

91:                                               ; preds = %83
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = getelementptr inbounds %struct.ff_effect, ptr %20, i32 0, i32 4, i32 1
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  %96 = call i32 @__msecs_to_jiffies(i32 noundef %95) #8
  %97 = add i32 %96, %92
  store i32 %97, ptr %27, align 4
  %98 = load i16, ptr %74, align 2
  %99 = zext i16 %98 to i32
  %100 = call i32 @__msecs_to_jiffies(i32 noundef %99) #8
  %101 = add i32 %100, %97
  store i32 %101, ptr %79, align 4
  br label %303

102:                                              ; preds = %77, %73
  %103 = or i32 %68, 2
  store i32 %103, ptr %21, align 4
  %104 = load volatile i32, ptr @jiffies, align 64
  %105 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %13, i32 5
  store i32 %104, ptr %105, align 4
  %106 = load i32, ptr %4, align 4
  %107 = load ptr, ptr %19, align 4
  %108 = load i16, ptr %107, align 4
  switch i16 %108, label %301 [
    i16 82, label %109
    i16 80, label %180
    i16 81, label %257
  ]

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 2
  %111 = load i16, ptr %110, align 4
  %112 = zext i16 %111 to i32
  %113 = mul nuw nsw i32 %112, 360
  %114 = udiv i32 %113, 65535
  %115 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 5
  %116 = load i16, ptr %115, align 4
  %117 = sext i16 %116 to i32
  %118 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 5, i32 0, i32 1
  %119 = call fastcc i32 @apply_envelope(ptr noundef %19, i32 noundef %117, ptr noundef %118) #8
  %120 = trunc i32 %119 to i16
  %121 = ashr i16 %120, 8
  %122 = trunc i32 %114 to i16
  %123 = urem i16 %122, 360
  %124 = add nuw nsw i16 %123, 360
  %125 = urem i16 %124, 360
  %126 = zext i16 %125 to i32
  %127 = icmp ugt i16 %125, 180
  %128 = add nsw i32 %126, -180
  %129 = select i1 %127, i32 %128, i32 %126
  %130 = icmp ugt i32 %129, 90
  %131 = sub nuw nsw i32 180, %129
  %132 = select i1 %130, i32 %131, i32 %129
  %133 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %132
  %134 = load i32, ptr %133, align 4
  %135 = sub i32 0, %134
  %136 = select i1 %127, i32 %135, i32 %134
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, -256
  %139 = sdiv i32 %138, 32767
  %140 = sext i16 %121 to i32
  %141 = mul nsw i32 %139, %140
  %142 = ashr i32 %141, 8
  %143 = mul i32 %142, %106
  %144 = sdiv i32 %143, 65535
  %145 = add nuw nsw i16 %122, 90
  %146 = urem i16 %145, 360
  %147 = add nuw nsw i16 %146, 360
  %148 = urem i16 %147, 360
  %149 = zext i16 %148 to i32
  %150 = icmp ugt i16 %148, 180
  %151 = add nsw i32 %149, -180
  %152 = select i1 %150, i32 %151, i32 %149
  %153 = icmp ugt i32 %152, 90
  %154 = sub nuw nsw i32 180, %152
  %155 = select i1 %153, i32 %154, i32 %152
  %156 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %155
  %157 = load i32, ptr %156, align 4
  %158 = sub i32 0, %157
  %159 = select i1 %150, i32 %158, i32 %157
  %160 = and i32 %159, -65536
  %161 = sub i32 0, %160
  %162 = ashr exact i32 %161, 8
  %163 = sdiv i32 %162, 32767
  %164 = mul nsw i32 %163, %140
  %165 = ashr i32 %164, 8
  %166 = mul i32 %165, %106
  %167 = sdiv i32 %166, 65535
  %168 = load i16, ptr %5, align 4
  %169 = sext i16 %168 to i32
  %170 = add nsw i32 %144, %169
  %171 = call i32 @llvm.smax.i32(i32 %170, i32 -128) #8
  %172 = call i32 @llvm.smin.i32(i32 %171, i32 127) #8
  %173 = trunc i32 %172 to i16
  store i16 %173, ptr %5, align 4
  %174 = load i16, ptr %7, align 2
  %175 = sext i16 %174 to i32
  %176 = add nsw i32 %167, %175
  %177 = call i32 @llvm.smax.i32(i32 %176, i32 -128) #8
  %178 = call i32 @llvm.smin.i32(i32 %177, i32 127) #8
  %179 = trunc i32 %178 to i16
  store i16 %179, ptr %7, align 2
  br label %303

180:                                              ; preds = %102
  %181 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 5
  %182 = load i16, ptr %181, align 4
  %183 = zext i16 %182 to i32
  %184 = mul i32 %106, %183
  %185 = udiv i32 %184, 65535
  %186 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 5, i32 0, i32 1
  %187 = load i16, ptr %186, align 2
  %188 = zext i16 %187 to i32
  %189 = mul i32 %106, %188
  %190 = udiv i32 %189, 65535
  %191 = load i16, ptr %5, align 4
  %192 = zext i16 %191 to i32
  %193 = sub nsw i32 0, %192
  %194 = icmp eq i32 %185, %193
  br i1 %194, label %220, label %195

195:                                              ; preds = %180
  %196 = load i16, ptr %6, align 4
  %197 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 2
  %198 = load i16, ptr %197, align 4
  %199 = icmp eq i16 %191, 0
  br i1 %199, label %216, label %200

200:                                              ; preds = %195
  %201 = trunc i32 %185 to i16
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %216, label %203

203:                                              ; preds = %200
  %204 = lshr i16 %196, 1
  %205 = zext i16 %204 to i32
  %206 = mul nuw nsw i32 %205, %192
  %207 = lshr i16 %198, 1
  %208 = zext i16 %207 to i32
  %209 = and i32 %185, 65535
  %210 = mul nuw nsw i32 %209, %208
  %211 = add nuw i32 %210, %206
  %212 = add nuw nsw i32 %209, %192
  %213 = udiv i32 %211, %212
  %214 = trunc i32 %213 to i16
  %215 = shl i16 %214, 1
  br label %216

216:                                              ; preds = %203, %200, %195
  %217 = phi i16 [ %215, %203 ], [ %198, %195 ], [ %196, %200 ]
  store i16 %217, ptr %6, align 4
  %218 = load i16, ptr %7, align 2
  %219 = zext i16 %218 to i32
  br label %249

220:                                              ; preds = %180
  %221 = load i16, ptr %7, align 2
  %222 = zext i16 %221 to i32
  %223 = sub nsw i32 0, %222
  %224 = icmp eq i32 %190, %223
  br i1 %224, label %248, label %225

225:                                              ; preds = %220
  %226 = load i16, ptr %6, align 4
  %227 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 2
  %228 = load i16, ptr %227, align 4
  %229 = icmp eq i16 %221, 0
  br i1 %229, label %246, label %230

230:                                              ; preds = %225
  %231 = trunc i32 %190 to i16
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %246, label %233

233:                                              ; preds = %230
  %234 = lshr i16 %226, 1
  %235 = zext i16 %234 to i32
  %236 = mul nuw nsw i32 %235, %222
  %237 = lshr i16 %228, 1
  %238 = zext i16 %237 to i32
  %239 = and i32 %190, 65535
  %240 = mul nuw nsw i32 %239, %238
  %241 = add nuw i32 %240, %236
  %242 = add nuw nsw i32 %239, %222
  %243 = udiv i32 %241, %242
  %244 = trunc i32 %243 to i16
  %245 = shl i16 %244, 1
  br label %246

246:                                              ; preds = %233, %230, %225
  %247 = phi i16 [ %245, %233 ], [ %228, %225 ], [ %226, %230 ]
  store i16 %247, ptr %6, align 4
  br label %249

248:                                              ; preds = %220
  store i16 0, ptr %6, align 4
  br label %249

249:                                              ; preds = %248, %246, %216
  %250 = phi i32 [ %222, %246 ], [ %222, %248 ], [ %219, %216 ]
  %251 = add nuw nsw i32 %185, %192
  %252 = call i32 @llvm.umin.i32(i32 %251, i32 65535) #8
  %253 = trunc i32 %252 to i16
  store i16 %253, ptr %5, align 4
  %254 = add nuw nsw i32 %250, %190
  %255 = call i32 @llvm.umin.i32(i32 %254, i32 65535) #8
  %256 = trunc i32 %255 to i16
  store i16 %256, ptr %7, align 2
  br label %303

257:                                              ; preds = %102
  %258 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 5, i32 0, i32 2
  %259 = load i16, ptr %258, align 4
  %260 = call i16 @llvm.abs.i16(i16 %259, i1 false) #8
  %261 = zext i16 %260 to i32
  %262 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 5, i32 0, i32 5
  %263 = call fastcc i32 @apply_envelope(ptr noundef %19, i32 noundef %261, ptr noundef %262) #8
  %264 = mul i32 %263, %106
  %265 = udiv i32 %264, 32767
  %266 = load i16, ptr %5, align 4
  %267 = zext i16 %266 to i32
  %268 = sub nsw i32 0, %267
  %269 = icmp eq i32 %265, %268
  br i1 %269, label %291, label %270

270:                                              ; preds = %257
  %271 = load i16, ptr %6, align 4
  %272 = getelementptr inbounds %struct.ff_effect, ptr %107, i32 0, i32 2
  %273 = load i16, ptr %272, align 4
  %274 = icmp eq i16 %266, 0
  br i1 %274, label %291, label %275

275:                                              ; preds = %270
  %276 = trunc i32 %265 to i16
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %291, label %278

278:                                              ; preds = %275
  %279 = lshr i16 %271, 1
  %280 = zext i16 %279 to i32
  %281 = mul nuw nsw i32 %280, %267
  %282 = lshr i16 %273, 1
  %283 = zext i16 %282 to i32
  %284 = and i32 %265, 65535
  %285 = mul nuw nsw i32 %284, %283
  %286 = add nuw i32 %285, %281
  %287 = add nuw nsw i32 %284, %267
  %288 = udiv i32 %286, %287
  %289 = trunc i32 %288 to i16
  %290 = shl i16 %289, 1
  br label %291

291:                                              ; preds = %278, %275, %270, %257
  %292 = phi i16 [ %290, %278 ], [ %273, %270 ], [ %271, %275 ], [ 0, %257 ]
  store i16 %292, ptr %6, align 4
  %293 = add nuw nsw i32 %265, %267
  %294 = call i32 @llvm.umin.i32(i32 %293, i32 65535) #8
  %295 = trunc i32 %294 to i16
  store i16 %295, ptr %5, align 4
  %296 = load i16, ptr %7, align 2
  %297 = zext i16 %296 to i32
  %298 = add nuw nsw i32 %265, %297
  %299 = call i32 @llvm.umin.i32(i32 %298, i32 65535) #8
  %300 = trunc i32 %299 to i16
  store i16 %300, ptr %7, align 2
  br label %303

301:                                              ; preds = %102
  %302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %303

303:                                              ; preds = %301, %291, %249, %109, %91, %89, %71, %61, %25, %18, %11
  %304 = phi i32 [ %15, %301 ], [ %15, %291 ], [ %15, %249 ], [ %15, %109 ], [ %15, %91 ], [ %15, %89 ], [ %15, %71 ], [ %63, %61 ], [ %15, %25 ], [ %15, %18 ], [ %15, %11 ]
  %305 = add nuw nsw i32 %13, 1
  %306 = icmp eq i32 %305, 16
  br i1 %306, label %307, label %11

307:                                              ; preds = %303
  %308 = load i16, ptr %2, align 4
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr %8, align 4
  %312 = load ptr, ptr %3, align 4
  %313 = load ptr, ptr %0, align 4
  %314 = call i32 %311(ptr noundef %312, ptr noundef %313, ptr noundef nonnull %2) #8
  br label %9

315:                                              ; preds = %307
  call fastcc void @ml_schedule_timer(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ml_schedule_timer(ptr noundef %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  br label %3

3:                                                ; preds = %84, %1
  %4 = phi i32 [ 0, %1 ], [ %86, %84 ]
  %5 = phi i32 [ 0, %1 ], [ %87, %84 ]
  %6 = phi i32 [ 0, %1 ], [ %85, %84 ]
  %7 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %5
  %8 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %5, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %84, label %12

12:                                               ; preds = %3
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 4
  %18 = load i16, ptr %17, align 4
  switch i16 %18, label %23 [
    i16 81, label %19
    i16 82, label %21
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ff_effect, ptr %17, i32 0, i32 5, i32 0, i32 5
  br label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ff_effect, ptr %17, i32 0, i32 5, i32 0, i32 1
  br label %23

23:                                               ; preds = %21, %19, %16
  %24 = phi ptr [ %22, %21 ], [ %20, %19 ], [ @get_envelope.empty_envelope, %16 ]
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %5, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = zext i16 %25 to i32
  %31 = tail call i32 @__msecs_to_jiffies(i32 noundef %30) #8
  %32 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %5, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %31, %29
  %35 = sub i32 %33, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = load ptr, ptr %7, align 4
  br label %41

39:                                               ; preds = %27
  %40 = add i32 %33, 5
  br label %73

41:                                               ; preds = %37, %23
  %42 = phi ptr [ %38, %37 ], [ %17, %23 ]
  %43 = getelementptr inbounds %struct.ff_effect, ptr %42, i32 0, i32 4
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ff_envelope, ptr %24, i32 0, i32 2
  %48 = load i16, ptr %47, align 2
  %49 = icmp eq i16 %48, 0
  %50 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %5, i32 4
  %51 = load i32, ptr %50, align 4
  br i1 %49, label %65, label %52

52:                                               ; preds = %46
  %53 = zext i16 %48 to i32
  %54 = tail call i32 @__msecs_to_jiffies(i32 noundef %53) #8
  %55 = sub i32 %51, %54
  %56 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %5, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 %57, %55
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %52
  %61 = add i32 %57, 5
  %62 = load i32, ptr %50, align 4
  %63 = sub i32 %61, %62
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60, %46
  %66 = phi i32 [ %62, %60 ], [ %51, %46 ]
  br label %73

67:                                               ; preds = %41
  %68 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %5, i32 3
  %69 = load i32, ptr %68, align 4
  br label %73

70:                                               ; preds = %12
  %71 = getelementptr %struct.ml_device, ptr %0, i32 0, i32 1, i32 %5, i32 3
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %67, %65, %60, %52, %39
  %74 = phi i32 [ %72, %70 ], [ %40, %39 ], [ %66, %65 ], [ %69, %67 ], [ %55, %52 ], [ %61, %60 ]
  %75 = sub i32 %74, %2
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = add i32 %6, 1
  %79 = icmp eq i32 %6, 0
  %80 = sub i32 %74, %4
  %81 = icmp slt i32 %80, 0
  %82 = select i1 %79, i1 true, i1 %81
  %83 = select i1 %82, i32 %74, i32 %4
  br label %84

84:                                               ; preds = %77, %73, %3
  %85 = phi i32 [ %6, %73 ], [ %6, %3 ], [ %78, %77 ]
  %86 = phi i32 [ %4, %73 ], [ %4, %3 ], [ %83, %77 ]
  %87 = add nuw nsw i32 %5, 1
  %88 = icmp eq i32 %87, 16
  br i1 %88, label %89, label %3

89:                                               ; preds = %84
  %90 = icmp eq i32 %85, 0
  %91 = getelementptr inbounds %struct.ml_device, ptr %0, i32 0, i32 3
  br i1 %90, label %92, label %94

92:                                               ; preds = %89
  %93 = tail call i32 @del_timer(ptr noundef %91) #8
  br label %96

94:                                               ; preds = %89
  %95 = tail call i32 @mod_timer(ptr noundef %91, i32 noundef %86) #8
  br label %96

96:                                               ; preds = %94, %92
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @apply_envelope(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = load i16, ptr %2, align 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ml_effect_state, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = zext i16 %6 to i32
  %12 = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #8
  %13 = add i32 %10, %12
  %14 = sub i32 %5, %13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load i32, ptr %9, align 4
  %18 = sub i32 %5, %17
  %19 = tail call i32 @jiffies_to_msecs(i32 noundef %18) #8
  %20 = getelementptr inbounds %struct.ff_envelope, ptr %2, i32 0, i32 1
  br label %45

21:                                               ; preds = %8, %3
  %22 = getelementptr inbounds %struct.ff_envelope, ptr %2, i32 0, i32 2
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp eq i16 %23, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ff_effect, ptr %4, i32 0, i32 4
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ml_effect_state, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @__msecs_to_jiffies(i32 noundef %24) #8
  %34 = add i32 %5, %33
  %35 = sub i32 %32, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %30
  %38 = load i32, ptr %31, align 4
  %39 = sub i32 %5, %38
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = sub i32 %38, %5
  %43 = tail call i32 @jiffies_to_msecs(i32 noundef %42) #8
  %44 = getelementptr inbounds %struct.ff_envelope, ptr %2, i32 0, i32 3
  br label %45

45:                                               ; preds = %41, %16
  %46 = phi ptr [ %44, %41 ], [ %20, %16 ]
  %47 = phi ptr [ %22, %41 ], [ %2, %16 ]
  %48 = phi i32 [ %43, %41 ], [ %19, %16 ]
  %49 = load i16, ptr %46, align 2
  %50 = tail call i16 @llvm.umin.i16(i16 %49, i16 32767)
  %51 = zext i16 %50 to i32
  %52 = load i16, ptr %47, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp slt i32 %1, 0
  %55 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %56 = sub i32 %55, %51
  %57 = mul i32 %56, %48
  %58 = sdiv i32 %57, %53
  %59 = add i32 %58, %51
  %60 = sub i32 0, %59
  %61 = select i1 %54, i32 %60, i32 %59
  br label %62

62:                                               ; preds = %45, %37, %30, %26, %21
  %63 = phi i32 [ %61, %45 ], [ %1, %37 ], [ %1, %30 ], [ %1, %26 ], [ %1, %21 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 2148936270}
!9 = !{i64 2148932094}
!10 = !{i64 2148932169, i64 2148932196, i64 2148932243, i64 2148932265, i64 2148932293, i64 2148932313}
!11 = !{i64 673589}
!12 = !{i64 2148960414}
