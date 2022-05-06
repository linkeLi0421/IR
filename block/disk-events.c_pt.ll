; ModuleID = '/llk/IR/block/disk-events.c_pt.bc'
source_filename = "../block/disk-events.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdev_check_media_change:\09\09\09\09\09"
module asm "\09.asciz \09\22bdev_check_media_change\22\09\09\09\09\09"
module asm "__kstrtabns_bdev_check_media_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disk_force_media_change:\09\09\09\09\09"
module asm "\09.asciz \09\22disk_force_media_change\22\09\09\09\09\09"
module asm "__kstrtabns_disk_force_media_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.47 }
%union.anon.47 = type { ptr }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.lockdep_map = type {}
%struct.disk_events = type { %struct.list_head, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
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
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@system_freezable_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [40 x i8] c"\014VFS: busy inodes on changed media %s\0A\00", align 1
@__kstrtab_bdev_check_media_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdev_check_media_change = external dso_local constant [0 x i8], align 1
@__ksymtab_bdev_check_media_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdev_check_media_change to i32), ptr @__kstrtab_bdev_check_media_change, ptr @__kstrtabns_bdev_check_media_change }, section "___ksymtab+bdev_check_media_change", align 4
@__kstrtab_disk_force_media_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_disk_force_media_change = external dso_local constant [0 x i8], align 1
@__ksymtab_disk_force_media_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disk_force_media_change to i32), ptr @__kstrtab_disk_force_media_change, ptr @__kstrtabns_disk_force_media_change }, section "___ksymtab_gpl+disk_force_media_change", align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@dev_attr_events = dso_local local_unnamed_addr global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @disk_events_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"events_async\00", align 1
@dev_attr_events_async = dso_local local_unnamed_addr global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @disk_events_async_show, ptr null }, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"events_poll_msecs\00", align 1
@dev_attr_events_poll_msecs = dso_local local_unnamed_addr global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420 }, ptr @disk_events_poll_msecs_show, ptr @disk_events_poll_msecs_store }, align 4
@__param_str_events_dfl_poll_msecs = internal constant [28 x i8] c"block.events_dfl_poll_msecs\00", align 1
@disk_events_dfl_poll_msecs_param_ops = internal constant %struct.kernel_param_ops { i32 0, ptr @disk_events_set_dfl_poll_msecs, ptr @param_get_ulong, ptr null }, align 4
@disk_events_dfl_poll_msecs = internal global i32 0, align 4
@__param_events_dfl_poll_msecs = internal constant %struct.kernel_param { ptr @__param_str_events_dfl_poll_msecs, ptr null, ptr @disk_events_dfl_poll_msecs_param_ops, i16 420, i8 -1, i8 0, %union.anon.47 { ptr @disk_events_dfl_poll_msecs } }, section "__param", align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"\014%s: failed to initialize events\0A\00", align 1
@disk_alloc_events.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"&ev->block_mutex\00", align 1
@disk_events_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @disk_events_mutex, i64 12), ptr getelementptr (i8, ptr @disk_events_mutex, i64 12) } }, align 4
@disk_events = internal global %struct.list_head { ptr @disk_events, ptr @disk_events }, align 4
@disk_release_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"block/disk-events.c\00", align 1
@__disk_unblock_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@disk_clear_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"DISK_MEDIA_CHANGE=1\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"DISK_EJECT_REQUEST=1\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"media_change\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"eject_request\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_bdev_check_media_change, ptr @__ksymtab_disk_force_media_change, ptr @__param_events_dfl_poll_msecs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disk_block_events(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = icmp eq i32 %10, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.disk_events, ptr %14, i32 0, i32 8
  %16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %15) #9
  br label %17

17:                                               ; preds = %13, %5
  tail call void @mutex_unlock(ptr noundef %6) #9
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disk_unblock_events(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @__disk_unblock_events(ptr noundef %0, i1 noundef zeroext false)
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__disk_unblock_events(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 1
  %10 = load i1, ptr @__disk_unblock_events.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %2
  store i1 true, ptr @__disk_unblock_events.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 106, i32 noundef 9, ptr noundef null) #9
  br label %14

14:                                               ; preds = %13, %2
  br i1 %9, label %41, label %15

15:                                               ; preds = %14
  %16 = load i32, ptr %7, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.disk_events, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 5
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  %29 = load i32, ptr @disk_events_dfl_poll_msecs, align 4
  %30 = select i1 %28, i32 0, i32 %29
  br label %31

31:                                               ; preds = %24, %19
  %32 = phi i32 [ %22, %19 ], [ %30, %24 ]
  %33 = tail call i32 @__msecs_to_jiffies(i32 noundef %32) #9
  br i1 %1, label %36, label %34

34:                                               ; preds = %31
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ 0, %31 ], [ %33, %34 ]
  %38 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %39 = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 8
  %40 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %39, i32 noundef %37) #9
  br label %41

41:                                               ; preds = %36, %34, %15, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disk_flush_events(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %1
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %16 = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 8
  %17 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %16, i32 noundef 0) #9
  br label %18

18:                                               ; preds = %14, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %19 = load i16, ptr %7, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @bdev_check_media_change(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %54

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.disk_events, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.disk_events, ptr %6, i32 0, i32 2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.disk_events, ptr %6, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = icmp eq i32 %14, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #9
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.disk_events, ptr %18, i32 0, i32 8
  %20 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %19) #9
  br label %21

21:                                               ; preds = %17, %9
  tail call void @mutex_unlock(ptr noundef %10) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #9
  %22 = getelementptr inbounds %struct.disk_events, ptr %6, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, 3
  store i32 %24, ptr %2, align 4
  store i32 0, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %25 = load i16, ptr %11, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  call fastcc void @disk_check_events(ptr noundef nonnull %6, ptr noundef nonnull %2) #9
  %27 = load i32, ptr %22, align 4
  %28 = icmp ne i32 %27, 0
  tail call fastcc void @__disk_unblock_events(ptr noundef %4, i1 noundef zeroext %28) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #9
  %29 = getelementptr inbounds %struct.disk_events, ptr %6, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -4
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %32 = load i16, ptr %11, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %34 = load i32, ptr %2, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  %37 = load i1, ptr @disk_clear_events.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %21
  store i1 true, ptr @disk_clear_events.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 260, i32 noundef 9, ptr noundef null) #9
  br label %41

41:                                               ; preds = %40, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %42 = and i32 %30, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @__invalidate_device(ptr noundef %0, i1 noundef zeroext true) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 3
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %49) #10
  br label %51

51:                                               ; preds = %47, %44
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.gendisk, ptr %52, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %53) #9
  br label %54

54:                                               ; preds = %51, %41, %8
  %55 = phi i1 [ false, %8 ], [ false, %41 ], [ true, %51 ]
  ret i1 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__invalidate_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @disk_force_media_change(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [3 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #9
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 4
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = and i32 %1, 1
  %8 = and i32 %7, %6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = and i32 %1, 2
  %12 = and i32 %11, %6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %18

14:                                               ; preds = %2
  store ptr @.str.7, ptr %3, align 4
  %15 = and i32 %1, 2
  %16 = and i32 %15, %6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ 1, %14 ], [ 0, %10 ]
  %20 = getelementptr [3 x ptr], ptr %3, i32 0, i32 %19
  store ptr @.str.8, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 10
  %25 = call i32 @kobject_uevent_env(ptr noundef %24, i32 noundef 2, ptr noundef nonnull %3) #9
  br label %26

26:                                               ; preds = %21, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  %27 = icmp eq i32 %7, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @__invalidate_device(ptr noundef %30, i1 noundef zeroext true) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 3
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %34) #10
  br label %36

36:                                               ; preds = %33, %28
  %37 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %37) #9
  br label %38

38:                                               ; preds = %36, %26
  %39 = xor i1 %27, true
  ret i1 %39
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_events_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 5
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 4
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ @.str.11, %16 ], [ @.str.9, %10 ]
  %20 = phi i32 [ %17, %16 ], [ 0, %10 ]
  %21 = and i32 %13, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %2, i32 %20
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %24, ptr noundef nonnull @.str.10, ptr noundef nonnull %19, ptr noundef nonnull @.str.14) #9
  %26 = add i32 %25, %20
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i32 [ %26, %23 ], [ %20, %18 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %2, i32 %28
  store i16 10, ptr %31, align 1
  %32 = add i32 %28, 1
  br label %33

33:                                               ; preds = %30, %27, %3
  %34 = phi i32 [ 0, %3 ], [ %32, %30 ], [ 0, %27 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @disk_events_async_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #5 {
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_events_poll_msecs_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 667949, ptr %2, align 1
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.disk_events, ptr %7, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %9
  %15 = phi i32 [ %13, %10 ], [ 3, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_events_poll_msecs_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 496
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !14
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef nonnull %5)
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr %5, align 4
  %13 = icmp slt i32 %12, -1
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %35, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.disk_events, ptr %17, i32 0, i32 3
  call void @mutex_lock(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.disk_events, ptr %17, i32 0, i32 2
  %22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #9
  %23 = getelementptr inbounds %struct.disk_events, ptr %17, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = icmp eq i32 %24, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #9
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr inbounds %struct.disk_events, ptr %28, i32 0, i32 8
  %30 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %29) #9
  br label %31

31:                                               ; preds = %27, %19
  call void @mutex_unlock(ptr noundef %20) #9
  %32 = load i32, ptr %5, align 4
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr inbounds %struct.disk_events, ptr %33, i32 0, i32 7
  store i32 %32, ptr %34, align 4
  call fastcc void @__disk_unblock_events(ptr noundef %7, i1 noundef zeroext true)
  br label %35

35:                                               ; preds = %31, %15, %9, %4
  %36 = phi i32 [ %3, %31 ], [ -22, %9 ], [ -22, %4 ], [ -19, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @disk_alloc_events(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.block_device_operations, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 4
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 96) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 3
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %16) #10
  br label %31

18:                                               ; preds = %11
  store volatile ptr %13, ptr %13, align 8
  %19 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %13, ptr %19, align 4
  %20 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 1
  store ptr %0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 2
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.5, ptr noundef nonnull @disk_alloc_events.__key) #9
  %23 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 4
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 7
  store i32 -1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 8
  store i32 -32, ptr %25, align 4
  %26 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 8, i32 0, i32 1
  store volatile ptr %26, ptr %26, align 8
  %27 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 8, i32 0, i32 1, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 8, i32 0, i32 2
  store ptr @disk_events_workfn, ptr %28, align 8
  %29 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %29, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  %30 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 19
  store ptr %13, ptr %30, align 4
  br label %31

31:                                               ; preds = %18, %15, %7, %1
  %32 = phi i32 [ 0, %18 ], [ -12, %15 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @disk_events_workfn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -52
  %3 = getelementptr i8, ptr %0, i32 -8
  tail call fastcc void @disk_check_events(ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disk_add_events(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @disk_events_mutex) #9
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @disk_events, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @disk_events, i32 0, i32 1), align 4
  store ptr @disk_events, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  store volatile ptr %6, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @disk_events_mutex) #9
  tail call fastcc void @__disk_unblock_events(ptr noundef %0, i1 noundef zeroext true)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disk_del_events(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = icmp eq i32 %10, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.disk_events, ptr %14, i32 0, i32 8
  %16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %15) #9
  br label %17

17:                                               ; preds = %13, %5
  tail call void @mutex_unlock(ptr noundef %6) #9
  tail call void @mutex_lock(ptr noundef nonnull @disk_events_mutex) #9
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @disk_events_mutex) #9
  br label %23

23:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disk_release_events(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 1
  %9 = load i1, ptr @disk_release_events.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %14, !prof !8

12:                                               ; preds = %5
  store i1 true, ptr @disk_release_events.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 502, i32 noundef 9, ptr noundef null) #9
  %13 = load ptr, ptr %2, align 4
  br label %14

14:                                               ; preds = %12, %5, %1
  %15 = phi ptr [ null, %1 ], [ %13, %12 ], [ %3, %5 ]
  tail call void @kfree(ptr noundef %15) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @disk_check_events(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x ptr], align 4
  %4 = getelementptr inbounds %struct.disk_events, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.block_device_operations, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %5, i32 noundef %6) #9
  %12 = getelementptr inbounds %struct.disk_events, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.disk_events, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = or i32 %14, %11
  store i32 %17, ptr %13, align 4
  %18 = xor i32 %6, -1
  %19 = load i32, ptr %1, align 4
  %20 = and i32 %19, %18
  store i32 %20, ptr %1, align 4
  %21 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.disk_events, ptr %22, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 5
  %28 = load i16, ptr %27, align 2
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  %31 = load i32, ptr @disk_events_dfl_poll_msecs, align 4
  %32 = select i1 %30, i32 0, i32 %31
  br label %33

33:                                               ; preds = %26, %2
  %34 = phi i32 [ %24, %2 ], [ %32, %26 ]
  %35 = tail call i32 @__msecs_to_jiffies(i32 noundef %34) #9
  %36 = getelementptr inbounds %struct.disk_events, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = icmp ne i32 %35, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %43 = getelementptr inbounds %struct.disk_events, ptr %0, i32 0, i32 8
  %44 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %42, ptr noundef %43, i32 noundef %35) #9
  br label %45

45:                                               ; preds = %41, %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %46 = load i16, ptr %12, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %48 = and i32 %16, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void @inc_diskseq(ptr noundef %5) #9
  br label %51

51:                                               ; preds = %50, %45
  %52 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 5
  %53 = load i16, ptr %52, align 2
  %54 = and i16 %53, 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #9
  %57 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 4
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = and i32 %48, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = and i32 %16, 2
  %64 = and i32 %63, %59
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %70

66:                                               ; preds = %56
  store ptr @.str.7, ptr %3, align 4
  %67 = and i32 %16, 2
  %68 = and i32 %67, %59
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66, %62
  %71 = phi i32 [ 1, %66 ], [ 0, %62 ]
  %72 = getelementptr [3 x ptr], ptr %3, i32 0, i32 %71
  store ptr @.str.8, ptr %72, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.block_device, ptr %75, i32 0, i32 10
  %77 = call i32 @kobject_uevent_env(ptr noundef %76, i32 noundef 2, ptr noundef nonnull %3) #9
  br label %78

78:                                               ; preds = %73, %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  br label %79

79:                                               ; preds = %78, %51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_diskseq(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_events_set_dfl_poll_msecs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @param_set_ulong(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @disk_events_mutex) #9
  %6 = load ptr, ptr @disk_events, align 4
  %7 = icmp eq ptr %6, @disk_events
  br i1 %7, label %30, label %8

8:                                                ; preds = %27, %5
  %9 = phi ptr [ %28, %27 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.disk_events, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %22 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 8
  %23 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %21, ptr noundef %22, i32 noundef 0) #9
  br label %24

24:                                               ; preds = %20, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %25 = load i16, ptr %16, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %27

27:                                               ; preds = %24, %8
  %28 = load ptr, ptr %9, align 4
  %29 = icmp eq ptr %28, @disk_events
  br i1 %29, label %30, label %8

30:                                               ; preds = %27, %5
  tail call void @mutex_unlock(ptr noundef nonnull @disk_events_mutex) #9
  br label %31

31:                                               ; preds = %30, %2
  %32 = phi i32 [ 0, %30 ], [ %3, %2 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ulong(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_ulong(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2149082739}
!10 = !{i64 2149078563}
!11 = !{i64 2149078638, i64 2149078665, i64 2149078712, i64 2149078734, i64 2149078762, i64 2149078782}
!12 = !{i64 352454}
!13 = !{i64 2149106883}
!14 = !{!"auto-init"}
