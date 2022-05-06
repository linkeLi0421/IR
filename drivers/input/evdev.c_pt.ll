; ModuleID = '/llk/IR/drivers/input/evdev.c_pt.bc'
source_filename = "../drivers/input/evdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_value = type { i16, i16, i32 }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.evdev = type { i32, %struct.input_handle, ptr, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.device, %struct.cdev, i8 }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.evdev_client = type { i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, %struct.list_head, i32, i8, [32 x ptr], i32, [0 x %struct.input_event] }
%struct.input_event = type { i32, i32, i16, i16, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_mask = type { i32, i32, i64 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.input_mt = type { i32, i32, i32, i32, i32, ptr, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }

@evdev_handler = internal global %struct.input_handler { ptr null, ptr @evdev_event, ptr @evdev_events, ptr null, ptr null, ptr @evdev_connect, ptr @evdev_disconnect, ptr null, i8 1, i32 64, ptr @.str, ptr @evdev_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 4
@__initcall__kmod_evdev__240_1441_evdev_init6 = internal global ptr @evdev_init, section ".initcall6.init", align 4
@__exitcall_evdev_exit = internal global ptr @evdev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [45 x i8] c"evdev.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [50 x i8] c"evdev.description=Input driver event char devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [31 x i8] c"evdev.file=drivers/input/evdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [18 x i8] c"evdev.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [6 x i8] c"evdev\00", align 1
@evdev_ids = internal constant [2 x %struct.input_device_id] [%struct.input_device_id { i32 0, i16 0, i16 0, i16 0, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 1 }, %struct.input_device_id zeroinitializer], align 4
@evdev_get_mask_cnt.counts = internal unnamed_addr constant <{ [22 x i32], [10 x i32] }> <{ [22 x i32] [i32 32, i32 768, i32 16, i32 64, i32 8, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i32 128], [10 x i32] zeroinitializer }>, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\013evdev: failed to reserve new minor: %d\0A\00", align 1
@evdev_connect.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"&evdev->mutex\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"event%d\00", align 1
@input_class = external dso_local global %struct.class, align 4
@evdev_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @evdev_read, ptr @evdev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @evdev_poll, ptr @evdev_ioctl, ptr null, ptr null, i32 0, ptr @evdev_open, ptr null, ptr @evdev_release, ptr null, ptr @evdev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@evdev_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"&client->wait\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_evdev_exit, ptr @__initcall__kmod_evdev__240_1441_evdev_init6, ptr @evdev_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @evdev_exit() #0 section ".exit.text" {
  tail call void @input_unregister_handler(ptr noundef nonnull @evdev_handler) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @evdev_init() #0 section ".init.text" {
  %1 = tail call i32 @input_register_handler(ptr noundef nonnull @evdev_handler) #12
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @evdev_event(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca [1 x %struct.input_value], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = trunc i32 %1 to i16
  store i16 %6, ptr %5, align 8
  %7 = getelementptr inbounds %struct.input_value, ptr %5, i32 0, i32 1
  %8 = trunc i32 %2 to i16
  store i16 %8, ptr %7, align 2
  %9 = getelementptr inbounds %struct.input_value, ptr %5, i32 0, i32 2
  store i32 %3, ptr %9, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @input_get_timestamp(ptr noundef %12) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %14 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 2
  %15 = load volatile ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  call fastcc void @evdev_pass_values(ptr noundef nonnull %15, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %13) #12
  br label %27

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 3
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %18
  %23 = phi ptr [ %25, %22 ], [ %20, %18 ]
  %24 = getelementptr i8, ptr %23, i32 -36
  call fastcc void @evdev_pass_values(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %13) #12
  %25 = load volatile ptr, ptr %23, align 4
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %18, %17
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @evdev_events(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @input_get_timestamp(ptr noundef %6) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %8 = getelementptr inbounds %struct.evdev, ptr %4, i32 0, i32 2
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call fastcc void @evdev_pass_values(ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, ptr noundef %7)
  br label %21

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.evdev, ptr %4, i32 0, i32 3
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  %18 = getelementptr i8, ptr %17, i32 -36
  tail call fastcc void @evdev_pass_values(ptr noundef %18, ptr noundef %1, i32 noundef %2, ptr noundef %7)
  %19 = load volatile ptr, ptr %17, align 4
  %20 = icmp eq ptr %19, %13
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %12, %11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @evdev_connect(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = tail call i32 @input_get_new_minor(i32 noundef 64, i32 noundef 32, i1 noundef zeroext true) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %4) #13
  br label %58

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 616) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 3
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 4
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @evdev_connect.__key) #12
  %17 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 8
  store i8 1, ptr %17, align 4
  %18 = icmp ult i32 %4, 96
  %19 = add nsw i32 %4, -64
  %20 = select i1 %18, i32 %19, i32 %4
  %21 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 6
  %22 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %21, ptr noundef nonnull @.str.3, i32 noundef %20) #12
  %23 = icmp eq ptr %1, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  %26 = tail call ptr @get_device(ptr noundef %25) #12
  %27 = getelementptr i8, ptr %26, i32 -400
  br label %28

28:                                               ; preds = %24, %12
  %29 = phi ptr [ %27, %24 ], [ null, %12 ]
  %30 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 1
  %31 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 1, i32 3
  store ptr %29, ptr %31, align 8
  %32 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 6, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load ptr, ptr %21, align 8
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi ptr [ %36, %35 ], [ %33, %28 ]
  %39 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 1, i32 2
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 1, i32 4
  store ptr %0, ptr %40, align 4
  store ptr %10, ptr %30, align 4
  %41 = or i32 %4, 13631488
  %42 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 6, i32 27
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 6, i32 31
  store ptr @input_class, ptr %43, align 4
  %44 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  %45 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 6, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 6, i32 33
  store ptr @evdev_free, ptr %46, align 4
  tail call void @device_initialize(ptr noundef %21) #12
  %47 = tail call i32 @input_register_handle(ptr noundef %30) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 7
  tail call void @cdev_init(ptr noundef %50, ptr noundef nonnull @evdev_fops) #12
  %51 = tail call i32 @cdev_device_add(ptr noundef %50, ptr noundef %21) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  tail call fastcc void @evdev_cleanup(ptr noundef nonnull %10)
  tail call void @input_unregister_handle(ptr noundef %30) #12
  br label %54

54:                                               ; preds = %53, %37
  %55 = phi i32 [ %47, %37 ], [ %51, %53 ]
  tail call void @put_device(ptr noundef %21) #12
  br label %56

56:                                               ; preds = %54, %8
  %57 = phi i32 [ %55, %54 ], [ -12, %8 ]
  tail call void @input_free_minor(i32 noundef %4) #12
  br label %58

58:                                               ; preds = %56, %49, %6
  %59 = phi i32 [ %4, %6 ], [ %57, %56 ], [ 0, %49 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @evdev_disconnect(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.evdev, ptr %2, i32 0, i32 7
  %4 = getelementptr inbounds %struct.evdev, ptr %2, i32 0, i32 6
  tail call void @cdev_device_del(ptr noundef %3, ptr noundef %4) #12
  tail call fastcc void @evdev_cleanup(ptr noundef %2)
  %5 = getelementptr inbounds %struct.evdev, ptr %2, i32 0, i32 6, i32 27
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1048575
  tail call void @input_free_minor(i32 noundef %7) #12
  tail call void @input_unregister_handle(ptr noundef %0) #12
  tail call void @put_device(ptr noundef %4) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_get_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @evdev_pass_values(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %115

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %10 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i64, ptr %3, i32 %11
  %13 = load i64, ptr %12, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %13) #12
  %14 = load i64, ptr %5, align 8
  %15 = getelementptr inbounds i8, ptr %5, i32 8
  %16 = load i32, ptr %15, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  %17 = trunc i64 %14 to i32
  %18 = sdiv i32 %16, 1000
  %19 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %19) #12
  %20 = getelementptr %struct.input_value, ptr %1, i32 %2
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %112, label %22

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 10
  %24 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 2
  %25 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 11
  %26 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 5
  br label %28

28:                                               ; preds = %103, %22
  %29 = phi i1 [ false, %22 ], [ %104, %103 ]
  %30 = phi ptr [ %1, %22 ], [ %105, %103 ]
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.input_value, ptr %30, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = add nsw i32 %32, -32
  %37 = icmp ult i32 %36, -31
  br i1 %37, label %64, label %38

38:                                               ; preds = %28
  %39 = load ptr, ptr %23, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = lshr i32 %32, 5
  %43 = getelementptr i32, ptr %39, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = shl nuw i32 1, %32
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %103, label %48

48:                                               ; preds = %41, %38
  %49 = getelementptr [32 x i32], ptr @evdev_get_mask_cnt.counts, i32 0, i32 %32
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, %35
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = getelementptr %struct.evdev_client, ptr %0, i32 0, i32 10, i32 %32
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = lshr i32 %35, 5
  %58 = getelementptr i32, ptr %54, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %35, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %103, label %64

64:                                               ; preds = %56, %52, %48, %28
  %65 = icmp eq i16 %31, 0
  %66 = icmp eq i16 %34, 0
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %0, align 4
  br label %74

70:                                               ; preds = %64
  %71 = load i32, ptr %24, align 4
  %72 = load i32, ptr %0, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %103, label %74

74:                                               ; preds = %70, %68
  %75 = phi i32 [ %69, %68 ], [ %72, %70 ]
  %76 = phi i1 [ %29, %68 ], [ true, %70 ]
  %77 = getelementptr inbounds %struct.input_value, ptr %30, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %75, 1
  store i32 %79, ptr %0, align 4
  %80 = getelementptr %struct.evdev_client, ptr %0, i32 0, i32 12, i32 %75
  store i32 %17, ptr %80, align 4
  %81 = getelementptr inbounds i8, ptr %80, i32 4
  store i32 %18, ptr %81, align 4
  %82 = getelementptr inbounds i8, ptr %80, i32 8
  store i16 %31, ptr %82, align 4
  %83 = getelementptr inbounds i8, ptr %80, i32 10
  store i16 %34, ptr %83, align 2
  %84 = getelementptr inbounds i8, ptr %80, i32 12
  store i32 %78, ptr %84, align 4
  %85 = load i32, ptr %25, align 4
  %86 = add i32 %85, -1
  %87 = load i32, ptr %0, align 4
  %88 = and i32 %87, %86
  store i32 %88, ptr %0, align 4
  %89 = load i32, ptr %26, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %100, !prof !11

91:                                               ; preds = %74
  %92 = add i32 %88, -2
  %93 = and i32 %92, %86
  store i32 %93, ptr %26, align 4
  %94 = getelementptr %struct.evdev_client, ptr %0, i32 0, i32 12, i32 %93
  store i32 %17, ptr %94, align 4
  %95 = getelementptr inbounds i8, ptr %94, i32 4
  store i32 %18, ptr %95, align 4
  %96 = getelementptr inbounds i8, ptr %94, i32 8
  store i16 0, ptr %96, align 4
  %97 = getelementptr inbounds i8, ptr %94, i32 10
  store i16 3, ptr %97, align 2
  %98 = getelementptr inbounds i8, ptr %94, i32 12
  store i32 0, ptr %98, align 4
  %99 = load i32, ptr %26, align 4
  store i32 %99, ptr %24, align 4
  br label %100

100:                                              ; preds = %91, %74
  br i1 %67, label %101, label %103

101:                                              ; preds = %100
  %102 = load i32, ptr %0, align 4
  store i32 %102, ptr %24, align 4
  call void @kill_fasync(ptr noundef %27, i32 noundef 29, i32 noundef 1) #12
  br label %103

103:                                              ; preds = %101, %100, %70, %56, %41
  %104 = phi i1 [ %29, %56 ], [ %29, %70 ], [ %76, %100 ], [ %76, %101 ], [ %29, %41 ]
  %105 = getelementptr %struct.input_value, ptr %30, i32 1
  %106 = icmp eq ptr %105, %20
  br i1 %106, label %107, label %28

107:                                              ; preds = %103
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %108 = load i16, ptr %19, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br i1 %104, label %110, label %115

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 4
  call void @__wake_up(ptr noundef %111, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 325 to ptr)) #12
  br label %115

112:                                              ; preds = %9
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %113 = load i16, ptr %19, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %115

115:                                              ; preds = %112, %110, %107, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_new_minor(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @evdev_free(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40
  tail call void @put_device(ptr noundef %6) #12
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i32 -80
  tail call void @kfree(ptr noundef %8) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @evdev_cleanup(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.evdev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.evdev, ptr %0, i32 0, i32 8
  store i8 0, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.evdev, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.evdev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %12, %8 ], [ %6, %1 ]
  %10 = getelementptr i8, ptr %9, i32 -8
  tail call void @kill_fasync(ptr noundef %10, i32 noundef 29, i32 noundef 6) #12
  %11 = getelementptr i8, ptr %9, i32 -20
  tail call void @__wake_up(ptr noundef %11, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 24 to ptr)) #12
  %12 = load ptr, ptr %9, align 4
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %14, label %8

14:                                               ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %15 = load i16, ptr %4, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %17 = load i32, ptr %0, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.evdev, ptr %0, i32 0, i32 1
  %21 = tail call i32 @input_flush_device(ptr noundef %20, ptr noundef null) #12
  tail call void @input_close_device(ptr noundef %20) #12
  br label %22

22:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_minor(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @evdev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca %struct.input_event, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.evdev_client, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !16
  %11 = icmp eq i32 %2, 0
  %12 = icmp ult i32 %2, 16
  %13 = xor i1 %11, %12
  br i1 %13, label %107, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.evdev, ptr %10, i32 0, i32 8
  %16 = load i8, ptr %15, align 4, !range !10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %107, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.evdev_client, ptr %8, i32 0, i32 9
  %20 = getelementptr inbounds %struct.evdev_client, ptr %8, i32 0, i32 2
  %21 = getelementptr inbounds %struct.evdev_client, ptr %8, i32 0, i32 1
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %23 = getelementptr inbounds %struct.evdev_client, ptr %8, i32 0, i32 3
  %24 = getelementptr inbounds %struct.evdev_client, ptr %8, i32 0, i32 11
  %25 = getelementptr inbounds %struct.evdev_client, ptr %8, i32 0, i32 4
  br label %26

26:                                               ; preds = %102, %18
  %27 = load i8, ptr %19, align 4, !range !10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %107

29:                                               ; preds = %26
  %30 = load i32, ptr %20, align 4
  %31 = load i32, ptr %21, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, ptr %22, align 4
  %35 = and i32 %34, 2048
  %36 = icmp ne i32 %35, 0
  %37 = or i1 %11, %36
  br i1 %37, label %105, label %39

38:                                               ; preds = %29
  br i1 %11, label %107, label %39

39:                                               ; preds = %38, %33
  br label %40

40:                                               ; preds = %48, %39
  %41 = phi i32 [ %42, %48 ], [ 0, %39 ]
  %42 = add i32 %41, 16
  %43 = icmp ugt i32 %42, %2
  br i1 %43, label %63, label %44

44:                                               ; preds = %40
  call void @_raw_spin_lock_irq(ptr noundef %23) #12
  %45 = load i32, ptr %20, align 4
  %46 = load i32, ptr %21, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = add i32 %46, 1
  store i32 %49, ptr %21, align 4
  %50 = getelementptr %struct.evdev_client, ptr %8, i32 0, i32 12, i32 %46
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %50, i32 16, i1 false) #12
  %51 = load i32, ptr %24, align 4
  %52 = add i32 %51, -1
  %53 = load i32, ptr %21, align 4
  %54 = and i32 %53, %52
  store i32 %54, ptr %21, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %55 = load i16, ptr %23, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %57 = getelementptr i8, ptr %1, i32 %41
  %58 = call i32 @input_event_to_user(ptr noundef %57, ptr noundef nonnull %5) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %40, label %107

60:                                               ; preds = %44
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %61 = load i16, ptr %23, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  br label %63

63:                                               ; preds = %60, %40
  %64 = icmp eq i32 %41, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %63
  %66 = load i32, ptr %22, align 4
  %67 = and i32 %66, 2048
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %65
  %70 = load i32, ptr %20, align 4
  %71 = load i32, ptr %21, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load i8, ptr %15, align 4, !range !10
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %73
  %77 = load i8, ptr %19, align 4, !range !10
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !16
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #12
  %80 = call i32 @prepare_to_wait_event(ptr noundef %25, ptr noundef nonnull %6, i32 noundef 1) #12
  %81 = load i32, ptr %20, align 4
  %82 = load i32, ptr %21, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %93, %79
  %85 = phi i32 [ %94, %93 ], [ %80, %79 ]
  %86 = load i8, ptr %15, align 4, !range !10
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = load i8, ptr %19, align 4, !range !10
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = icmp eq i32 %85, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %91
  call void @schedule() #12
  %94 = call i32 @prepare_to_wait_event(ptr noundef %25, ptr noundef nonnull %6, i32 noundef 1) #12
  %95 = load i32, ptr %20, align 4
  %96 = load i32, ptr %21, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %84, label %98

98:                                               ; preds = %93, %88, %84, %79
  call void @finish_wait(ptr noundef %25, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  br label %100

99:                                               ; preds = %91
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  br label %107

100:                                              ; preds = %98, %69, %65
  %101 = load i8, ptr %15, align 4
  br label %102

102:                                              ; preds = %100, %76
  %103 = phi i8 [ %101, %100 ], [ 1, %76 ]
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %26

105:                                              ; preds = %33
  %106 = select i1 %36, i32 -11, i32 0
  br label %107

107:                                              ; preds = %105, %102, %99, %73, %63, %48, %38, %26, %14, %4
  %108 = phi i32 [ %85, %99 ], [ -22, %4 ], [ %106, %105 ], [ -19, %14 ], [ -14, %48 ], [ -19, %73 ], [ -19, %26 ], [ -19, %102 ], [ %41, %63 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @evdev_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca %struct.input_event, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.evdev_client, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !16
  %10 = add i32 %2, -1
  %11 = icmp ult i32 %10, 15
  br i1 %11, label %48, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.evdev, ptr %9, i32 0, i32 5
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.evdev, ptr %9, i32 0, i32 8
  %18 = load i8, ptr %17, align 4, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.evdev_client, ptr %7, i32 0, i32 9
  %22 = load i8, ptr %21, align 4, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = icmp ult i32 %2, 16
  br i1 %25, label %46, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.evdev, ptr %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.input_event, ptr %5, i32 0, i32 2
  %29 = getelementptr inbounds %struct.input_event, ptr %5, i32 0, i32 3
  %30 = getelementptr inbounds %struct.input_event, ptr %5, i32 0, i32 4
  br label %31

31:                                               ; preds = %37, %26
  %32 = phi i32 [ 16, %26 ], [ %44, %37 ]
  %33 = phi i32 [ 0, %26 ], [ %32, %37 ]
  %34 = getelementptr i8, ptr %1, i32 %33
  %35 = call i32 @input_event_from_user(ptr noundef %34, ptr noundef nonnull %5) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i16, ptr %28, align 4
  %39 = zext i16 %38 to i32
  %40 = load i16, ptr %29, align 2
  %41 = zext i16 %40 to i32
  %42 = load i32, ptr %30, align 4
  call void @input_inject_event(ptr noundef %27, i32 noundef %39, i32 noundef %41, i32 noundef %42) #12
  %43 = call i32 @__cond_resched() #12
  %44 = add i32 %32, 16
  %45 = icmp ugt i32 %44, %2
  br i1 %45, label %46, label %31

46:                                               ; preds = %37, %31, %24, %20, %16
  %47 = phi i32 [ -19, %20 ], [ -19, %16 ], [ 0, %24 ], [ %32, %37 ], [ -14, %31 ]
  call void @mutex_unlock(ptr noundef %13) #12
  br label %48

48:                                               ; preds = %46, %12, %4
  %49 = phi i32 [ %47, %46 ], [ %14, %12 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @evdev_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.evdev_client, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.evdev_client, ptr %4, i32 0, i32 4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %7, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void %10(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %1) #12
  br label %15

15:                                               ; preds = %14, %9, %2
  %16 = getelementptr inbounds %struct.evdev, ptr %6, i32 0, i32 8
  %17 = load i8, ptr %16, align 4, !range !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.evdev_client, ptr %4, i32 0, i32 9
  %21 = load i8, ptr %20, align 4, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ 24, %23 ], [ 260, %19 ]
  %26 = getelementptr inbounds %struct.evdev_client, ptr %4, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.evdev_client, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  %31 = or i32 %25, 65
  %32 = select i1 %30, i32 %25, i32 %31
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @evdev_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.input_keymap_entry, align 4
  %5 = alloca %struct.input_keymap_entry, align 4
  %6 = alloca %struct.input_keymap_entry, align 4
  %7 = alloca %struct.input_keymap_entry, align 4
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca %struct.input_absinfo, align 4
  %10 = alloca %struct.input_mask, align 8
  %11 = alloca %struct.ff_effect, align 4
  %12 = alloca i32, align 4
  %13 = inttoptr i32 %2 to ptr
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.evdev_client, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.evdev, ptr %17, i32 0, i32 5
  %19 = tail call i32 @mutex_lock_interruptible(ptr noundef %18) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %694

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.evdev, ptr %17, i32 0, i32 8
  %23 = load i8, ptr %22, align 4, !range !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %692, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.evdev_client, ptr %15, i32 0, i32 9
  %27 = load i8, ptr %26, align 4, !range !10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %692

29:                                               ; preds = %25
  %30 = load ptr, ptr %14, align 8
  %31 = getelementptr inbounds %struct.evdev_client, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.evdev, ptr %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.evdev, ptr %32, i32 0, i32 1, i32 3
  %35 = load ptr, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false) #12, !annotation !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i32 16, i1 false) #12, !annotation !16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %11, i8 0, i32 44, i1 false) #12, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  store i32 0, ptr %12, align 4, !annotation !16
  switch i32 %1, label %481 [
    i32 -2147203839, label %36
    i32 -2146941694, label %43
    i32 -2146941693, label %57
    i32 1074283779, label %82
    i32 1074021761, label %107
    i32 -2147203708, label %109
    i32 1074021776, label %129
    i32 1074021777, label %142
    i32 -2146417262, label %153
    i32 1074808211, label %238
    i32 1074021792, label %299
    i32 -2146941692, label %364
    i32 1074283780, label %397
    i32 -2144844540, label %429
    i32 1076380932, label %457
  ]

36:                                               ; preds = %29
  %37 = tail call ptr @llvm.thread.pointer() #12
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #15, !srcloc !19
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %42 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %13, i32 65537, i32 -1090519041) #12, !srcloc !22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %690

43:                                               ; preds = %29
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 8, i32 -1090519040) #16, !srcloc !23
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %690

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 3
  %49 = tail call ptr @llvm.thread.pointer() #12
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %50) #15, !srcloc !19
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %54 = tail call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef %48, i32 noundef 8) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 -14
  br label %690

57:                                               ; preds = %29
  %58 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 5
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1048576
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %690, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 24
  %64 = load i32, ptr %63, align 8
  %65 = tail call ptr @llvm.thread.pointer() #12
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #15, !srcloc !19
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %70 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %13, i32 %64, i32 -1090519041) #12, !srcloc !24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %690

72:                                               ; preds = %62
  %73 = getelementptr i32, ptr %13, i32 1
  %74 = getelementptr %struct.input_dev, ptr %35, i32 0, i32 24, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #15, !srcloc !19
  %77 = and i32 %76, -13
  %78 = or i32 %77, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %79 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %73, i32 %75, i32 -1090519041) #12, !srcloc !25
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 0, i32 -14
  br label %690

82:                                               ; preds = %29
  %83 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 5
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 1048576
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %690, label %87

87:                                               ; preds = %82
  %88 = tail call ptr @llvm.thread.pointer() #12
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 3
  %90 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %89) #15, !srcloc !19
  %91 = and i32 %90, -13
  %92 = or i32 %91, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %93 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %13, i32 -1090519041) #12, !srcloc !26
  %94 = extractvalue { i32, i32 } %93, 0
  %95 = extractvalue { i32, i32 } %93, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %97, label %690

97:                                               ; preds = %87
  %98 = getelementptr i32, ptr %13, i32 1
  %99 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %89) #15, !srcloc !19
  %100 = and i32 %99, -13
  %101 = or i32 %100, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %102 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %98, i32 -1090519041) #12, !srcloc !27
  %103 = extractvalue { i32, i32 } %102, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %690

105:                                              ; preds = %97
  %106 = extractvalue { i32, i32 } %102, 1
  tail call void @input_inject_event(ptr noundef %33, i32 noundef 20, i32 noundef 0, i32 noundef %95) #12
  tail call void @input_inject_event(ptr noundef %33, i32 noundef 20, i32 noundef 1, i32 noundef %106) #12
  br label %690

107:                                              ; preds = %29
  %108 = tail call i32 @input_ff_erase(ptr noundef %35, i32 noundef %2, ptr noundef %0) #12
  br label %690

109:                                              ; preds = %29
  %110 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 5
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %111, 2097152
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 20
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.ff_device, ptr %116, i32 0, i32 9
  %118 = load i32, ptr %117, align 4
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i32 [ %118, %114 ], [ 0, %109 ]
  store i32 %120, ptr %12, align 4
  %121 = tail call ptr @llvm.thread.pointer() #12
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 3
  %123 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %122) #15, !srcloc !19
  %124 = and i32 %123, -13
  %125 = or i32 %124, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %126 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %13, i32 %120, i32 -1090519041) #12, !srcloc !28
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 0, i32 -14
  br label %690

129:                                              ; preds = %29
  %130 = icmp eq i32 %2, 0
  %131 = getelementptr inbounds %struct.evdev, ptr %32, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8
  br i1 %130, label %139, label %133

133:                                              ; preds = %129
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %690

135:                                              ; preds = %133
  %136 = tail call i32 @input_grab_device(ptr noundef %33) #12
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %690

138:                                              ; preds = %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  store volatile ptr %30, ptr %131, align 8
  br label %690

139:                                              ; preds = %129
  %140 = icmp eq ptr %132, %30
  br i1 %140, label %141, label %690

141:                                              ; preds = %139
  store volatile ptr null, ptr %131, align 8
  tail call void @synchronize_rcu() #12
  tail call void @input_release_device(ptr noundef %33) #12
  br label %690

142:                                              ; preds = %29
  %143 = icmp eq i32 %2, 0
  br i1 %143, label %144, label %690

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.evdev_client, ptr %30, i32 0, i32 9
  store i8 1, ptr %145, align 4
  %146 = getelementptr inbounds %struct.evdev, ptr %32, i32 0, i32 2
  %147 = load ptr, ptr %146, align 8
  %148 = icmp eq ptr %147, %30
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store volatile ptr null, ptr %146, align 8
  tail call void @synchronize_rcu() #12
  tail call void @input_release_device(ptr noundef %33) #12
  br label %150

150:                                              ; preds = %149, %144
  %151 = tail call i32 @input_flush_device(ptr noundef %33, ptr noundef %0) #12
  %152 = getelementptr inbounds %struct.evdev_client, ptr %30, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %152, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 24 to ptr)) #12
  br label %690

153:                                              ; preds = %29
  %154 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 16, i32 -1090519040) #16, !srcloc !30
  %155 = extractvalue { i32, i32 } %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %165, !prof !31

157:                                              ; preds = %153
  %158 = tail call ptr @llvm.thread.pointer() #12
  %159 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 3
  %160 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %159) #15, !srcloc !19
  %161 = and i32 %160, -13
  %162 = or i32 %161, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %163 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %13, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %160) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165, !prof !31

165:                                              ; preds = %157, %153
  %166 = phi i32 [ %163, %157 ], [ 16, %153 ]
  %167 = sub i32 16, %166
  %168 = getelementptr i8, ptr %10, i32 %167
  call void @llvm.memset.p0.i32(ptr align 1 %168, i8 0, i32 %166, i1 false) #12
  br label %690

169:                                              ; preds = %157
  %170 = getelementptr inbounds %struct.input_mask, ptr %10, i32 0, i32 2
  %171 = load i64, ptr %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = inttoptr i32 %172 to ptr
  %174 = load i32, ptr %10, align 8
  %175 = getelementptr inbounds %struct.input_mask, ptr %10, i32 0, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = icmp ult i32 %174, 32
  br i1 %177, label %178, label %219

178:                                              ; preds = %169
  %179 = getelementptr [32 x i32], ptr @evdev_get_mask_cnt.counts, i32 0, i32 %174
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, 31
  %182 = lshr i32 %181, 3
  %183 = and i32 %182, 536870908
  %184 = call i32 @llvm.umin.i32(i32 %183, i32 %176) #12
  %185 = icmp eq i32 %180, 0
  br i1 %185, label %219, label %186

186:                                              ; preds = %178
  %187 = getelementptr %struct.evdev_client, ptr %30, i32 0, i32 10, i32 %174
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = icmp eq i32 %184, 0
  br i1 %191, label %219, label %211

192:                                              ; preds = %186
  %193 = add i32 %180, 30
  %194 = lshr i32 %193, 3
  %195 = and i32 %194, 536870908
  %196 = call i32 @llvm.umin.i32(i32 %195, i32 %184) #12
  %197 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %173, i32 %196, i32 -1090519040) #16, !srcloc !23
  %198 = extractvalue { i32, i32 } %197, 0
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %192
  %201 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %159) #15, !srcloc !19
  %202 = and i32 %201, -13
  %203 = or i32 %202, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %203) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %204 = call i32 @arm_copy_to_user(ptr noundef %173, ptr noundef nonnull %188, i32 noundef %196) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %201) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %205

205:                                              ; preds = %200, %192
  %206 = phi i32 [ %204, %200 ], [ %196, %192 ]
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %219, label %690

208:                                              ; preds = %211
  %209 = add nuw nsw i32 %212, 1
  %210 = icmp eq i32 %209, %184
  br i1 %210, label %219, label %211

211:                                              ; preds = %208, %190
  %212 = phi i32 [ %209, %208 ], [ 0, %190 ]
  %213 = getelementptr i8, ptr %173, i32 %212
  %214 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %159) #15, !srcloc !19
  %215 = and i32 %214, -13
  %216 = or i32 %215, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %216) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %217 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %213, i8 -1, i32 -1090519041) #12, !srcloc !32
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %214) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %208, label %690

219:                                              ; preds = %208, %205, %190, %178, %169
  %220 = phi i32 [ %184, %178 ], [ %184, %205 ], [ 0, %169 ], [ 0, %190 ], [ %184, %208 ]
  %221 = phi i32 [ %183, %178 ], [ %183, %205 ], [ 0, %169 ], [ %183, %190 ], [ %183, %208 ]
  %222 = icmp ult i32 %221, %176
  br i1 %222, label %223, label %237

223:                                              ; preds = %219
  %224 = getelementptr i8, ptr %173, i32 %220
  %225 = sub i32 %176, %220
  %226 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %224, i32 %225, i32 -1090519040) #16, !srcloc !33
  %227 = extractvalue { i32, i32 } %226, 0
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %223
  %230 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %159) #15, !srcloc !19
  %231 = and i32 %230, -13
  %232 = or i32 %231, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %232) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %233 = call i32 @arm_clear_user(ptr noundef %224, i32 noundef %225) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %230) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %234

234:                                              ; preds = %229, %223
  %235 = phi i32 [ %233, %229 ], [ %225, %223 ]
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %690

237:                                              ; preds = %234, %219
  br label %690

238:                                              ; preds = %29
  %239 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 16, i32 -1090519040) #16, !srcloc !30
  %240 = extractvalue { i32, i32 } %239, 0
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %250, !prof !31

242:                                              ; preds = %238
  %243 = tail call ptr @llvm.thread.pointer() #12
  %244 = getelementptr inbounds %struct.thread_info, ptr %243, i32 0, i32 3
  %245 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %244) #15, !srcloc !19
  %246 = and i32 %245, -13
  %247 = or i32 %246, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %247) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %248 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %13, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %245) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %254, label %250, !prof !31

250:                                              ; preds = %242, %238
  %251 = phi i32 [ %248, %242 ], [ 16, %238 ]
  %252 = sub i32 16, %251
  %253 = getelementptr i8, ptr %10, i32 %252
  call void @llvm.memset.p0.i32(ptr align 1 %253, i8 0, i32 %251, i1 false) #12
  br label %690

254:                                              ; preds = %242
  %255 = getelementptr inbounds %struct.input_mask, ptr %10, i32 0, i32 2
  %256 = load i64, ptr %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = inttoptr i32 %257 to ptr
  %259 = load i32, ptr %10, align 8
  %260 = getelementptr inbounds %struct.input_mask, ptr %10, i32 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = icmp ult i32 %259, 32
  br i1 %262, label %263, label %690

263:                                              ; preds = %254
  %264 = getelementptr [32 x i32], ptr @evdev_get_mask_cnt.counts, i32 0, i32 %259
  %265 = load i32, ptr %264, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %690, label %267

267:                                              ; preds = %263
  %268 = call ptr @bitmap_zalloc(i32 noundef %265, i32 noundef 3264) #12
  %269 = icmp eq ptr %268, null
  br i1 %269, label %690, label %270

270:                                              ; preds = %267
  %271 = and i32 %261, 3
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %292

273:                                              ; preds = %270
  %274 = add i32 %265, 30
  %275 = lshr i32 %274, 3
  %276 = and i32 %275, 536870908
  %277 = call i32 @llvm.umin.i32(i32 %276, i32 %261) #12
  %278 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %258, i32 %277, i32 -1090519040) #16, !srcloc !30
  %279 = extractvalue { i32, i32 } %278, 0
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %286, !prof !31

281:                                              ; preds = %273
  %282 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %244) #15, !srcloc !19
  %283 = and i32 %282, -13
  %284 = or i32 %283, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %284) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %285 = call i32 @arm_copy_from_user(ptr noundef nonnull %268, ptr noundef %258, i32 noundef %277) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %282) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %286

286:                                              ; preds = %281, %273
  %287 = phi i32 [ %285, %281 ], [ %277, %273 ]
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %294, label %289, !prof !31

289:                                              ; preds = %286
  %290 = sub i32 %277, %287
  %291 = getelementptr i8, ptr %268, i32 %290
  call void @llvm.memset.p0.i32(ptr align 1 %291, i8 0, i32 %287, i1 false) #12
  br label %292

292:                                              ; preds = %289, %270
  %293 = phi i32 [ -14, %289 ], [ -22, %270 ]
  call void @bitmap_free(ptr noundef nonnull %268) #12
  br label %690

294:                                              ; preds = %286
  %295 = getelementptr inbounds %struct.evdev_client, ptr %30, i32 0, i32 3
  %296 = call i32 @_raw_spin_lock_irqsave(ptr noundef %295) #12
  %297 = getelementptr %struct.evdev_client, ptr %30, i32 0, i32 10, i32 %259
  %298 = load ptr, ptr %297, align 4
  store ptr %268, ptr %297, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %295, i32 noundef %296) #12
  call void @bitmap_free(ptr noundef %298) #12
  br label %690

299:                                              ; preds = %29
  %300 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 4, i32 -1090519040) #16, !srcloc !30
  %301 = extractvalue { i32, i32 } %300, 0
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %311, !prof !31

303:                                              ; preds = %299
  %304 = tail call ptr @llvm.thread.pointer() #12
  %305 = getelementptr inbounds %struct.thread_info, ptr %304, i32 0, i32 3
  %306 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %305) #15, !srcloc !19
  %307 = and i32 %306, -13
  %308 = or i32 %307, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %308) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %309 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %13, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %306) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %315, label %311, !prof !31

311:                                              ; preds = %303, %299
  %312 = phi i32 [ %309, %303 ], [ 4, %299 ]
  %313 = sub i32 4, %312
  %314 = getelementptr i8, ptr %12, i32 %313
  call void @llvm.memset.p0.i32(ptr align 1 %314, i8 0, i32 %312, i1 false) #12
  br label %690

315:                                              ; preds = %303
  %316 = load i32, ptr %12, align 4
  switch i32 %316, label %690 [
    i32 0, label %319
    i32 1, label %317
    i32 7, label %318
  ]

317:                                              ; preds = %315
  br label %319

318:                                              ; preds = %315
  br label %319

319:                                              ; preds = %318, %317, %315
  %320 = phi i32 [ 2, %318 ], [ 1, %317 ], [ %316, %315 ]
  %321 = getelementptr inbounds %struct.evdev_client, ptr %30, i32 0, i32 8
  %322 = load i32, ptr %321, align 4
  %323 = icmp eq i32 %322, %320
  br i1 %323, label %690, label %324

324:                                              ; preds = %319
  store i32 %320, ptr %321, align 4
  %325 = getelementptr inbounds %struct.evdev_client, ptr %30, i32 0, i32 3
  %326 = call i32 @_raw_spin_lock_irqsave(ptr noundef %325) #12
  %327 = load i32, ptr %30, align 4
  %328 = getelementptr inbounds %struct.evdev_client, ptr %30, i32 0, i32 1
  %329 = load i32, ptr %328, align 4
  %330 = icmp eq i32 %327, %329
  br i1 %330, label %363, label %331

331:                                              ; preds = %324
  store i32 %329, ptr %30, align 4
  %332 = getelementptr inbounds %struct.evdev_client, ptr %30, i32 0, i32 2
  store i32 %329, ptr %332, align 4
  %333 = load ptr, ptr %31, align 4
  %334 = getelementptr inbounds %struct.evdev, ptr %333, i32 0, i32 1, i32 3
  %335 = load ptr, ptr %334, align 4
  %336 = call ptr @input_get_timestamp(ptr noundef %335) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #12, !annotation !16
  %337 = load i32, ptr %321, align 4
  %338 = getelementptr i64, ptr %336, i32 %337
  %339 = load i64, ptr %338, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %8, i64 noundef %339) #12
  %340 = load i64, ptr %8, align 8
  %341 = trunc i64 %340 to i32
  %342 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  %343 = load i32, ptr %342, align 8
  %344 = sdiv i32 %343, 1000
  %345 = load i32, ptr %30, align 4
  %346 = add i32 %345, 1
  store i32 %346, ptr %30, align 4
  %347 = getelementptr %struct.evdev_client, ptr %30, i32 0, i32 12, i32 %345
  store i32 %341, ptr %347, align 4
  %348 = getelementptr inbounds i8, ptr %347, i32 4
  store i32 %344, ptr %348, align 4
  %349 = getelementptr inbounds i8, ptr %347, i32 8
  store i16 0, ptr %349, align 4
  %350 = getelementptr inbounds i8, ptr %347, i32 10
  store i16 3, ptr %350, align 2
  %351 = getelementptr inbounds i8, ptr %347, i32 12
  store i32 0, ptr %351, align 4
  %352 = getelementptr inbounds %struct.evdev_client, ptr %30, i32 0, i32 11
  %353 = load i32, ptr %352, align 4
  %354 = add i32 %353, -1
  %355 = load i32, ptr %30, align 4
  %356 = and i32 %355, %354
  store i32 %356, ptr %30, align 4
  %357 = load i32, ptr %328, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %362, !prof !11

359:                                              ; preds = %331
  %360 = add i32 %356, -1
  %361 = and i32 %360, %354
  store i32 %361, ptr %328, align 4
  store i32 %361, ptr %332, align 4
  br label %362

362:                                              ; preds = %359, %331
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  br label %363

363:                                              ; preds = %362, %324
  call void @_raw_spin_unlock_irqrestore(ptr noundef %325, i32 noundef %326) #12
  br label %690

364:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %7, i8 0, i32 40, i1 false) #12
  %365 = getelementptr inbounds %struct.input_keymap_entry, ptr %7, i32 0, i32 1
  store i8 4, ptr %365, align 1
  %366 = getelementptr inbounds %struct.input_keymap_entry, ptr %7, i32 0, i32 4
  %367 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 4, i32 -1090519040) #16, !srcloc !30
  %368 = extractvalue { i32, i32 } %367, 0
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %378, !prof !31

370:                                              ; preds = %364
  %371 = tail call ptr @llvm.thread.pointer() #12
  %372 = getelementptr inbounds %struct.thread_info, ptr %371, i32 0, i32 3
  %373 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %372) #15, !srcloc !19
  %374 = and i32 %373, -13
  %375 = or i32 %374, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %375) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %376 = call i32 @arm_copy_from_user(ptr noundef %366, ptr noundef %13, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %373) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %382, label %378, !prof !31

378:                                              ; preds = %370, %364
  %379 = phi i32 [ %376, %370 ], [ 4, %364 ]
  %380 = sub i32 4, %379
  %381 = getelementptr i8, ptr %366, i32 %380
  call void @llvm.memset.p0.i32(ptr align 1 %381, i8 0, i32 %379, i1 false) #12
  br label %395

382:                                              ; preds = %370
  %383 = call i32 @input_get_keycode(ptr noundef %35, ptr noundef nonnull %7) #12
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %395

385:                                              ; preds = %382
  %386 = getelementptr i32, ptr %13, i32 1
  %387 = getelementptr inbounds %struct.input_keymap_entry, ptr %7, i32 0, i32 3
  %388 = load i32, ptr %387, align 4
  %389 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %372) #15, !srcloc !19
  %390 = and i32 %389, -13
  %391 = or i32 %390, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %391) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %392 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %386, i32 %388, i32 -1090519041) #12, !srcloc !34
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %389) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %393 = icmp eq i32 %392, 0
  %394 = select i1 %393, i32 0, i32 -14
  br label %395

395:                                              ; preds = %385, %382, %378
  %396 = phi i32 [ %383, %382 ], [ %394, %385 ], [ -14, %378 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  br label %690

397:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false) #12
  %398 = getelementptr inbounds %struct.input_keymap_entry, ptr %6, i32 0, i32 1
  store i8 4, ptr %398, align 1
  %399 = getelementptr inbounds %struct.input_keymap_entry, ptr %6, i32 0, i32 4
  %400 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 4, i32 -1090519040) #16, !srcloc !30
  %401 = extractvalue { i32, i32 } %400, 0
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %411, !prof !31

403:                                              ; preds = %397
  %404 = tail call ptr @llvm.thread.pointer() #12
  %405 = getelementptr inbounds %struct.thread_info, ptr %404, i32 0, i32 3
  %406 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %405) #15, !srcloc !19
  %407 = and i32 %406, -13
  %408 = or i32 %407, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %408) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %409 = call i32 @arm_copy_from_user(ptr noundef %399, ptr noundef %13, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %406) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %415, label %411, !prof !31

411:                                              ; preds = %403, %397
  %412 = phi i32 [ %409, %403 ], [ 4, %397 ]
  %413 = sub i32 4, %412
  %414 = getelementptr i8, ptr %399, i32 %413
  call void @llvm.memset.p0.i32(ptr align 1 %414, i8 0, i32 %412, i1 false) #12
  br label %427

415:                                              ; preds = %403
  %416 = getelementptr i32, ptr %13, i32 1
  %417 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %405) #15, !srcloc !19
  %418 = and i32 %417, -13
  %419 = or i32 %418, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %419) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %420 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %416, i32 -1090519041) #12, !srcloc !35
  %421 = extractvalue { i32, i32 } %420, 0
  %422 = extractvalue { i32, i32 } %420, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %417) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %423 = getelementptr inbounds %struct.input_keymap_entry, ptr %6, i32 0, i32 3
  store i32 %422, ptr %423, align 4
  %424 = icmp eq i32 %421, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %415
  %426 = call i32 @input_set_keycode(ptr noundef %35, ptr noundef nonnull %6) #12
  br label %427

427:                                              ; preds = %425, %415, %411
  %428 = phi i32 [ %426, %425 ], [ -14, %415 ], [ -14, %411 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #12
  br label %690

429:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false) #12, !annotation !16
  %430 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 40, i32 -1090519040) #16
  %431 = extractvalue { i32, i32 } %430, 0
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %441, !prof !31

433:                                              ; preds = %429
  %434 = tail call ptr @llvm.thread.pointer() #12
  %435 = getelementptr inbounds %struct.thread_info, ptr %434, i32 0, i32 3
  %436 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %435) #15, !srcloc !19
  %437 = and i32 %436, -13
  %438 = or i32 %437, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %438) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %439 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %13, i32 noundef 40) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %436) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %445, label %441, !prof !31

441:                                              ; preds = %433, %429
  %442 = phi i32 [ %439, %433 ], [ 40, %429 ]
  %443 = sub i32 40, %442
  %444 = getelementptr i8, ptr %5, i32 %443
  call void @llvm.memset.p0.i32(ptr align 1 %444, i8 0, i32 %442, i1 false) #12
  br label %455

445:                                              ; preds = %433
  %446 = call i32 @input_get_keycode(ptr noundef %35, ptr noundef nonnull %5) #12
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %455

448:                                              ; preds = %445
  %449 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %435) #15, !srcloc !19
  %450 = and i32 %449, -13
  %451 = or i32 %450, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %451) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %452 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %5, i32 noundef 40) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %449) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %453 = icmp eq i32 %452, 0
  %454 = select i1 %453, i32 0, i32 -14
  br label %455

455:                                              ; preds = %448, %445, %441
  %456 = phi i32 [ %446, %445 ], [ -14, %441 ], [ %454, %448 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  br label %690

457:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false) #12, !annotation !16
  %458 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 40, i32 -1090519040) #16, !srcloc !30
  %459 = extractvalue { i32, i32 } %458, 0
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %469, !prof !31

461:                                              ; preds = %457
  %462 = tail call ptr @llvm.thread.pointer() #12
  %463 = getelementptr inbounds %struct.thread_info, ptr %462, i32 0, i32 3
  %464 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %463) #15, !srcloc !19
  %465 = and i32 %464, -13
  %466 = or i32 %465, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %466) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %467 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %13, i32 noundef 40) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %464) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %469, !prof !31

469:                                              ; preds = %461, %457
  %470 = phi i32 [ %467, %461 ], [ 40, %457 ]
  %471 = sub i32 40, %470
  %472 = getelementptr i8, ptr %4, i32 %471
  call void @llvm.memset.p0.i32(ptr align 1 %472, i8 0, i32 %470, i1 false) #12
  br label %479

473:                                              ; preds = %461
  %474 = getelementptr inbounds %struct.input_keymap_entry, ptr %4, i32 0, i32 1
  %475 = load i8, ptr %474, align 1
  %476 = icmp ugt i8 %475, 32
  br i1 %476, label %479, label %477

477:                                              ; preds = %473
  %478 = call i32 @input_set_keycode(ptr noundef %35, ptr noundef nonnull %4) #12
  br label %479

479:                                              ; preds = %477, %473, %469
  %480 = phi i32 [ %478, %477 ], [ -22, %473 ], [ -14, %469 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %690

481:                                              ; preds = %29
  %482 = lshr i32 %1, 16
  %483 = and i32 %482, 16383
  %484 = and i32 %1, -1073676289
  switch i32 %484, label %581 [
    i32 -2147465975, label %485
    i32 -2147465974, label %502
    i32 -2147465960, label %540
    i32 -2147465959, label %543
    i32 -2147465958, label %546
    i32 -2147465957, label %549
    i32 -2147465978, label %552
    i32 -2147465977, label %555
    i32 -2147465976, label %559
    i32 1073759616, label %563
  ]

485:                                              ; preds = %481
  %486 = tail call i32 @llvm.umin.i32(i32 %483, i32 4) #12
  %487 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %486, i32 -1090519040) #16, !srcloc !23
  %488 = extractvalue { i32, i32 } %487, 0
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %498

490:                                              ; preds = %485
  %491 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 4
  %492 = tail call ptr @llvm.thread.pointer() #12
  %493 = getelementptr inbounds %struct.thread_info, ptr %492, i32 0, i32 3
  %494 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %493) #15, !srcloc !19
  %495 = and i32 %494, -13
  %496 = or i32 %495, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %496) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %497 = tail call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef %491, i32 noundef %486) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %494) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %498

498:                                              ; preds = %490, %485
  %499 = phi i32 [ %497, %490 ], [ %486, %485 ]
  %500 = icmp eq i32 %499, 0
  %501 = select i1 %500, i32 %486, i32 -14
  br label %690

502:                                              ; preds = %481
  %503 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 25
  %504 = load ptr, ptr %503, align 8
  %505 = tail call ptr @llvm.thread.pointer() #12
  %506 = getelementptr inbounds %struct.thread_info, ptr %505, i32 0, i32 3
  %507 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %506) #15, !srcloc !19
  %508 = and i32 %507, -13
  %509 = or i32 %508, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %509) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %510 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %13, i32 -1090519041) #12, !srcloc !36
  %511 = extractvalue { i32, i32 } %510, 0
  %512 = extractvalue { i32, i32 } %510, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %507) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %513 = icmp eq i32 %511, 0
  br i1 %513, label %514, label %690

514:                                              ; preds = %502
  %515 = icmp eq ptr %504, null
  br i1 %515, label %690, label %516

516:                                              ; preds = %514
  %517 = add i32 %512, -48
  %518 = icmp ult i32 %517, 14
  br i1 %518, label %519, label %690

519:                                              ; preds = %516
  %520 = add nsw i32 %483, -4
  %521 = lshr i32 %520, 2
  %522 = getelementptr inbounds %struct.input_mt, ptr %504, i32 0, i32 1
  br label %523

523:                                              ; preds = %529, %519
  %524 = phi i32 [ 0, %519 ], [ %533, %529 ]
  %525 = load i32, ptr %522, align 4
  %526 = icmp slt i32 %524, %525
  %527 = icmp ult i32 %524, %521
  %528 = and i1 %527, %526
  br i1 %528, label %529, label %690

529:                                              ; preds = %523
  %530 = getelementptr %struct.input_mt, ptr %504, i32 0, i32 6, i32 %524
  %531 = getelementptr [14 x i32], ptr %530, i32 0, i32 %517
  %532 = load i32, ptr %531, align 4
  %533 = add nuw nsw i32 %524, 1
  %534 = getelementptr i32, ptr %13, i32 %533
  %535 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %506) #15, !srcloc !19
  %536 = and i32 %535, -13
  %537 = or i32 %536, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %537) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %538 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %534, i32 %532, i32 -1090519041) #12, !srcloc !37
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %535) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %523, label %690

540:                                              ; preds = %481
  %541 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 27
  %542 = tail call fastcc i32 @evdev_handle_get_val(ptr noundef %30, ptr noundef %35, i32 noundef 1, ptr noundef %541, i32 noundef 767, i32 noundef %483, ptr noundef %13) #12
  br label %690

543:                                              ; preds = %481
  %544 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 28
  %545 = tail call fastcc i32 @evdev_handle_get_val(ptr noundef %30, ptr noundef %35, i32 noundef 17, ptr noundef %544, i32 noundef 15, i32 noundef %483, ptr noundef %13) #12
  br label %690

546:                                              ; preds = %481
  %547 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 29
  %548 = tail call fastcc i32 @evdev_handle_get_val(ptr noundef %30, ptr noundef %35, i32 noundef 18, ptr noundef %547, i32 noundef 7, i32 noundef %483, ptr noundef %13) #12
  br label %690

549:                                              ; preds = %481
  %550 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 30
  %551 = tail call fastcc i32 @evdev_handle_get_val(ptr noundef %30, ptr noundef %35, i32 noundef 5, ptr noundef %550, i32 noundef 16, i32 noundef %483, ptr noundef %13) #12
  br label %690

552:                                              ; preds = %481
  %553 = load ptr, ptr %35, align 8
  %554 = tail call fastcc i32 @str_to_user(ptr noundef %553, i32 noundef %483, ptr noundef %13) #12
  br label %690

555:                                              ; preds = %481
  %556 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 1
  %557 = load ptr, ptr %556, align 4
  %558 = tail call fastcc i32 @str_to_user(ptr noundef %557, i32 noundef %483, ptr noundef %13) #12
  br label %690

559:                                              ; preds = %481
  %560 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 2
  %561 = load ptr, ptr %560, align 8
  %562 = tail call fastcc i32 @str_to_user(ptr noundef %561, i32 noundef %483, ptr noundef %13) #12
  br label %690

563:                                              ; preds = %481
  %564 = call i32 @input_ff_effect_from_user(ptr noundef %13, i32 noundef %483, ptr noundef nonnull %11) #12
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %690

566:                                              ; preds = %563
  %567 = call i32 @input_ff_upload(ptr noundef %35, ptr noundef nonnull %11, ptr noundef %0) #12
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %690

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct.ff_effect, ptr %13, i32 0, i32 1
  %571 = getelementptr inbounds %struct.ff_effect, ptr %11, i32 0, i32 1
  %572 = load i16, ptr %571, align 2
  %573 = tail call ptr @llvm.thread.pointer() #12
  %574 = getelementptr inbounds %struct.thread_info, ptr %573, i32 0, i32 3
  %575 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %574) #15, !srcloc !19
  %576 = and i32 %575, -13
  %577 = or i32 %576, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %577) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %578 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %570, i16 %572, i32 -1090519041) #12, !srcloc !38
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %575) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %579 = icmp eq i32 %578, 0
  %580 = select i1 %579, i32 0, i32 -14
  br label %690

581:                                              ; preds = %481
  %582 = and i32 %1, 65280
  %583 = icmp eq i32 %582, 17664
  br i1 %583, label %584, label %690

584:                                              ; preds = %581
  %585 = lshr i32 %1, 30
  switch i32 %585, label %690 [
    i32 2, label %586
    i32 1, label %652
  ]

586:                                              ; preds = %584
  %587 = and i32 %1, 224
  %588 = icmp eq i32 %587, 32
  br i1 %588, label %589, label %627

589:                                              ; preds = %586
  %590 = and i32 %1, 31
  switch i32 %590, label %690 [
    i32 0, label %591
    i32 1, label %593
    i32 2, label %595
    i32 3, label %597
    i32 4, label %599
    i32 17, label %601
    i32 18, label %603
    i32 21, label %605
    i32 5, label %607
  ]

591:                                              ; preds = %589
  %592 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 5
  br label %609

593:                                              ; preds = %589
  %594 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6
  br label %609

595:                                              ; preds = %589
  %596 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 7
  br label %609

597:                                              ; preds = %589
  %598 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 8
  br label %609

599:                                              ; preds = %589
  %600 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 9
  br label %609

601:                                              ; preds = %589
  %602 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 10
  br label %609

603:                                              ; preds = %589
  %604 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 11
  br label %609

605:                                              ; preds = %589
  %606 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 12
  br label %609

607:                                              ; preds = %589
  %608 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 13
  br label %609

609:                                              ; preds = %607, %605, %603, %601, %599, %597, %595, %593, %591
  %610 = phi ptr [ %608, %607 ], [ %606, %605 ], [ %604, %603 ], [ %602, %601 ], [ %600, %599 ], [ %598, %597 ], [ %596, %595 ], [ %594, %593 ], [ %592, %591 ]
  %611 = phi i32 [ 4, %607 ], [ 16, %605 ], [ 4, %603 ], [ 4, %601 ], [ 4, %599 ], [ 8, %597 ], [ 4, %595 ], [ 96, %593 ], [ 4, %591 ]
  %612 = tail call i32 @llvm.umin.i32(i32 %611, i32 %483) #12
  %613 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %612, i32 -1090519040) #16, !srcloc !23
  %614 = extractvalue { i32, i32 } %613, 0
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %623

616:                                              ; preds = %609
  %617 = tail call ptr @llvm.thread.pointer() #12
  %618 = getelementptr inbounds %struct.thread_info, ptr %617, i32 0, i32 3
  %619 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %618) #15, !srcloc !19
  %620 = and i32 %619, -13
  %621 = or i32 %620, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %621) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %622 = tail call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef %610, i32 noundef %612) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %619) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %623

623:                                              ; preds = %616, %609
  %624 = phi i32 [ %622, %616 ], [ %612, %609 ]
  %625 = icmp eq i32 %624, 0
  %626 = select i1 %625, i32 %612, i32 -14
  br label %690

627:                                              ; preds = %586
  %628 = and i32 %1, 192
  %629 = icmp eq i32 %628, 64
  br i1 %629, label %630, label %690

630:                                              ; preds = %627
  %631 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 26
  %632 = load ptr, ptr %631, align 4
  %633 = icmp eq ptr %632, null
  br i1 %633, label %690, label %634

634:                                              ; preds = %630
  %635 = and i32 %1, 63
  %636 = getelementptr %struct.input_absinfo, ptr %632, i32 %635
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, ptr noundef align 4 dereferenceable(24) %636, i32 24, i1 false) #12
  %637 = tail call i32 @llvm.umin.i32(i32 %483, i32 24) #12
  %638 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %637, i32 -1090519040) #16, !srcloc !23
  %639 = extractvalue { i32, i32 } %638, 0
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %648

641:                                              ; preds = %634
  %642 = tail call ptr @llvm.thread.pointer() #12
  %643 = getelementptr inbounds %struct.thread_info, ptr %642, i32 0, i32 3
  %644 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %643) #15, !srcloc !19
  %645 = and i32 %644, -13
  %646 = or i32 %645, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %646) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %647 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %9, i32 noundef %637) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %644) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %648

648:                                              ; preds = %641, %634
  %649 = phi i32 [ %647, %641 ], [ %637, %634 ]
  %650 = icmp eq i32 %649, 0
  %651 = select i1 %650, i32 0, i32 -14
  br label %690

652:                                              ; preds = %584
  %653 = and i32 %1, 192
  %654 = icmp eq i32 %653, 192
  br i1 %654, label %655, label %690

655:                                              ; preds = %652
  %656 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 26
  %657 = load ptr, ptr %656, align 4
  %658 = icmp eq ptr %657, null
  br i1 %658, label %690, label %659

659:                                              ; preds = %655
  %660 = and i32 %1, 63
  %661 = tail call i32 @llvm.umin.i32(i32 %483, i32 24) #12
  %662 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %661, i32 -1090519040) #16, !srcloc !30
  %663 = extractvalue { i32, i32 } %662, 0
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %665, label %672, !prof !31

665:                                              ; preds = %659
  %666 = tail call ptr @llvm.thread.pointer() #12
  %667 = getelementptr inbounds %struct.thread_info, ptr %666, i32 0, i32 3
  %668 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %667) #15, !srcloc !19
  %669 = and i32 %668, -13
  %670 = or i32 %669, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %670) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %671 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %13, i32 noundef %661) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %668) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %672

672:                                              ; preds = %665, %659
  %673 = phi i32 [ %671, %665 ], [ %661, %659 ]
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %678, label %675, !prof !31

675:                                              ; preds = %672
  %676 = sub i32 %661, %673
  %677 = getelementptr i8, ptr %9, i32 %676
  call void @llvm.memset.p0.i32(ptr align 1 %677, i8 0, i32 %673, i1 false) #12
  br label %690

678:                                              ; preds = %672
  %679 = icmp ult i32 %483, 24
  br i1 %679, label %680, label %682

680:                                              ; preds = %678
  %681 = getelementptr inbounds %struct.input_absinfo, ptr %9, i32 0, i32 5
  store i32 0, ptr %681, align 4
  br label %682

682:                                              ; preds = %680, %678
  %683 = icmp eq i32 %660, 47
  br i1 %683, label %690, label %684

684:                                              ; preds = %682
  %685 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 36
  call void @_raw_spin_lock_irq(ptr noundef %685) #12
  %686 = load ptr, ptr %656, align 4
  %687 = getelementptr %struct.input_absinfo, ptr %686, i32 %660
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %687, ptr noundef nonnull align 4 dereferenceable(24) %9, i32 24, i1 false) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %688 = load i16, ptr %685, align 4
  %689 = add i16 %688, 1
  store i16 %689, ptr %685, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  br label %690

690:                                              ; preds = %684, %682, %675, %655, %652, %648, %630, %627, %623, %589, %584, %581, %569, %566, %563, %559, %555, %552, %549, %546, %543, %540, %529, %523, %516, %514, %502, %498, %479, %455, %427, %395, %363, %319, %315, %311, %294, %292, %267, %263, %254, %250, %237, %234, %211, %205, %165, %150, %142, %141, %139, %138, %135, %133, %119, %107, %105, %97, %87, %82, %72, %62, %57, %47, %43, %36
  %691 = phi i32 [ 0, %684 ], [ %562, %559 ], [ %558, %555 ], [ %554, %552 ], [ %551, %549 ], [ %548, %546 ], [ %545, %543 ], [ %542, %540 ], [ %480, %479 ], [ %456, %455 ], [ %428, %427 ], [ %396, %395 ], [ 0, %150 ], [ %108, %107 ], [ 0, %105 ], [ %42, %36 ], [ -38, %57 ], [ -14, %62 ], [ %81, %72 ], [ -38, %82 ], [ -14, %87 ], [ -14, %97 ], [ %128, %119 ], [ -22, %142 ], [ -14, %563 ], [ %567, %566 ], [ %580, %569 ], [ -22, %581 ], [ -22, %630 ], [ %651, %648 ], [ -22, %655 ], [ -22, %682 ], [ -22, %584 ], [ -22, %652 ], [ 0, %138 ], [ -16, %133 ], [ %136, %135 ], [ 0, %141 ], [ -22, %139 ], [ 0, %237 ], [ -14, %234 ], [ -14, %205 ], [ %293, %292 ], [ 0, %294 ], [ 0, %263 ], [ -12, %267 ], [ 0, %254 ], [ -22, %315 ], [ 0, %363 ], [ 0, %319 ], [ -14, %43 ], [ -14, %165 ], [ -14, %250 ], [ -14, %311 ], [ -14, %675 ], [ %56, %47 ], [ -22, %627 ], [ %501, %498 ], [ -14, %502 ], [ -22, %516 ], [ -22, %514 ], [ -22, %589 ], [ %626, %623 ], [ -14, %529 ], [ 0, %523 ], [ -14, %211 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  br label %692

692:                                              ; preds = %690, %25, %21
  %693 = phi i32 [ %691, %690 ], [ -19, %25 ], [ -19, %21 ]
  call void @mutex_unlock(ptr noundef %18) #12
  br label %694

694:                                              ; preds = %692, %3
  %695 = phi i32 [ %693, %692 ], [ %19, %3 ]
  ret i32 %695
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @evdev_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -552
  %6 = getelementptr i8, ptr %4, i32 -536
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 8
  %10 = shl i32 %9, 3
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 64) #12
  %12 = add i32 %11, -1
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #12, !range !39
  %14 = sub nuw nsw i32 32, %13
  %15 = shl nuw i32 1, %14
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 16) #12
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %19 = tail call i32 @llvm.uadd.sat.i32(i32 %18, i32 184) #12
  %20 = select i1 %17, i32 -1, i32 %19
  %21 = tail call noalias ptr @kvmalloc_node(i32 noundef %20, i32 noundef 3520, i32 noundef -1) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.evdev_client, ptr %21, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %24, ptr noundef nonnull @.str.7, ptr noundef nonnull @evdev_open.__key) #12
  %25 = getelementptr inbounds %struct.evdev_client, ptr %21, i32 0, i32 11
  store i32 %15, ptr %25, align 4
  %26 = getelementptr inbounds %struct.evdev_client, ptr %21, i32 0, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.evdev_client, ptr %21, i32 0, i32 6
  store ptr %5, ptr %27, align 4
  %28 = getelementptr i8, ptr %4, i32 -500
  tail call void @_raw_spin_lock(ptr noundef %28) #12
  %29 = getelementptr inbounds %struct.evdev_client, ptr %21, i32 0, i32 7
  %30 = getelementptr i8, ptr %4, i32 -508
  %31 = getelementptr i8, ptr %4, i32 -504
  %32 = load ptr, ptr %31, align 4
  store ptr %30, ptr %29, align 4
  %33 = getelementptr inbounds %struct.evdev_client, ptr %21, i32 0, i32 7, i32 1
  store ptr %32, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !40
  store volatile ptr %29, ptr %32, align 4
  store ptr %29, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %34 = load i16, ptr %28, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %36 = getelementptr i8, ptr %4, i32 -496
  %37 = tail call i32 @mutex_lock_interruptible(ptr noundef %36) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %23
  %40 = getelementptr i8, ptr %4, i32 60
  %41 = load i8, ptr %40, align 4, !range !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %5, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %5, align 8
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %4, i32 -548
  %49 = tail call i32 @input_open_device(ptr noundef %48) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %5, align 8
  %53 = add i32 %52, -1
  store i32 %53, ptr %5, align 8
  br label %54

54:                                               ; preds = %51, %39
  %55 = phi i32 [ %49, %51 ], [ -19, %39 ]
  tail call void @mutex_unlock(ptr noundef %36) #12
  br label %59

56:                                               ; preds = %47, %43
  tail call void @mutex_unlock(ptr noundef %36) #12
  %57 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %21, ptr %57, align 8
  %58 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #12
  br label %66

59:                                               ; preds = %54, %23
  %60 = phi i32 [ %55, %54 ], [ %37, %23 ]
  tail call void @_raw_spin_lock(ptr noundef %28) #12
  %61 = load ptr, ptr %33, align 4
  %62 = load ptr, ptr %29, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %64 = load i16, ptr %28, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  tail call void @synchronize_rcu() #12
  tail call void @kvfree(ptr noundef nonnull %21) #12
  br label %66

66:                                               ; preds = %59, %56, %2
  %67 = phi i32 [ %60, %59 ], [ 0, %56 ], [ -12, %2 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @evdev_release(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.evdev_client, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.evdev, ptr %6, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.evdev, ptr %6, i32 0, i32 8
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.evdev_client, ptr %4, i32 0, i32 9
  %13 = load i8, ptr %12, align 4, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.evdev, ptr %6, i32 0, i32 1
  %17 = tail call i32 @input_flush_device(ptr noundef %16, ptr noundef %1) #12
  br label %18

18:                                               ; preds = %15, %11, %2
  %19 = getelementptr inbounds %struct.evdev, ptr %6, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  store volatile ptr null, ptr %19, align 8
  tail call void @synchronize_rcu() #12
  %23 = getelementptr inbounds %struct.evdev, ptr %6, i32 0, i32 1
  tail call void @input_release_device(ptr noundef %23) #12
  br label %24

24:                                               ; preds = %22, %18
  tail call void @mutex_unlock(ptr noundef %7) #12
  %25 = getelementptr inbounds %struct.evdev, ptr %6, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %25) #12
  %26 = getelementptr inbounds %struct.evdev_client, ptr %4, i32 0, i32 7
  %27 = getelementptr inbounds %struct.evdev_client, ptr %4, i32 0, i32 7, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %31 = load i16, ptr %25, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  tail call void @synchronize_rcu() #12
  br label %33

33:                                               ; preds = %33, %24
  %34 = phi i32 [ 0, %24 ], [ %37, %33 ]
  %35 = getelementptr %struct.evdev_client, ptr %4, i32 0, i32 10, i32 %34
  %36 = load ptr, ptr %35, align 4
  tail call void @bitmap_free(ptr noundef %36) #12
  %37 = add nuw nsw i32 %34, 1
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %39, label %33

39:                                               ; preds = %33
  tail call void @kvfree(ptr noundef %4) #12
  tail call void @mutex_lock(ptr noundef %7) #12
  %40 = load i8, ptr %8, align 4, !range !10
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %6, align 8
  %44 = add i32 %43, -1
  store i32 %44, ptr %6, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.evdev, ptr %6, i32 0, i32 1
  tail call void @input_close_device(ptr noundef %47) #12
  br label %48

48:                                               ; preds = %46, %42, %39
  tail call void @mutex_unlock(ptr noundef %7) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @evdev_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.evdev_client, ptr %5, i32 0, i32 5
  %7 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %6) #12
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_event_to_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_event_from_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_erase(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @evdev_handle_get_val(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 {
  %8 = alloca %struct.timespec64, align 8
  %9 = tail call ptr @bitmap_alloc(i32 noundef %4, i32 noundef 3264) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %116, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %13) #12
  %14 = add i32 %4, 31
  %15 = lshr i32 %14, 3
  %16 = and i32 %15, 536870908
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %9, ptr align 4 %3, i32 %16, i1 false) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %17 = load i16, ptr %12, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %19 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %0, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %63, label %27

27:                                               ; preds = %56, %11
  %28 = phi i32 [ %58, %56 ], [ 1, %11 ]
  %29 = phi i32 [ %57, %56 ], [ %23, %11 ]
  %30 = phi i32 [ %60, %56 ], [ %23, %11 ]
  %31 = getelementptr %struct.evdev_client, ptr %0, i32 0, i32 12, i32 %30
  %32 = getelementptr %struct.evdev_client, ptr %0, i32 0, i32 12, i32 %30, i32 2
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = getelementptr %struct.evdev_client, ptr %0, i32 0, i32 12, i32 %30, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, 0
  br label %39

39:                                               ; preds = %35, %27
  %40 = phi i1 [ false, %27 ], [ %38, %35 ]
  %41 = zext i16 %33 to i32
  %42 = icmp eq i32 %41, %2
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = xor i1 %40, true
  %45 = icmp ne i32 %28, 0
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = icmp eq i32 %29, %30
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = getelementptr %struct.evdev_client, ptr %0, i32 0, i32 12, i32 %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %50, ptr noundef align 4 dereferenceable(16) %31, i32 16, i1 false) #12
  br label %51

51:                                               ; preds = %49, %47
  %52 = add i32 %28, 1
  %53 = add i32 %29, 1
  %54 = and i32 %53, %21
  br i1 %40, label %55, label %56

55:                                               ; preds = %51
  store i32 %54, ptr %24, align 4
  br label %56

56:                                               ; preds = %55, %51, %43, %39
  %57 = phi i32 [ %29, %39 ], [ %54, %55 ], [ %54, %51 ], [ %29, %43 ]
  %58 = phi i32 [ %28, %39 ], [ 0, %55 ], [ %52, %51 ], [ 0, %43 ]
  %59 = add i32 %30, 1
  %60 = and i32 %59, %21
  %61 = load i32, ptr %0, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %27

63:                                               ; preds = %56, %11
  %64 = phi i32 [ %23, %11 ], [ %57, %56 ]
  store i32 %64, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %65 = load i16, ptr %13, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %67 = tail call i32 @llvm.umin.i32(i32 %16, i32 %5) #12
  %68 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %67, i32 -1090519040) #16, !srcloc !23
  %69 = extractvalue { i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = tail call ptr @llvm.thread.pointer() #12
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %74 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %73) #15, !srcloc !19
  %75 = and i32 %74, -13
  %76 = or i32 %75, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %77 = tail call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %9, i32 noundef %67) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %78

78:                                               ; preds = %71, %63
  %79 = phi i32 [ %77, %71 ], [ %67, %63 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %114, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #12
  %83 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.evdev, ptr %84, i32 0, i32 1, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = tail call ptr @input_get_timestamp(ptr noundef %86) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #12, !annotation !16
  %88 = getelementptr inbounds %struct.evdev_client, ptr %0, i32 0, i32 8
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr i64, ptr %87, i32 %89
  %91 = load i64, ptr %90, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %8, i64 noundef %91) #12
  %92 = load i64, ptr %8, align 8
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  %95 = load i32, ptr %94, align 8
  %96 = sdiv i32 %95, 1000
  %97 = load i32, ptr %0, align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr %0, align 4
  %99 = getelementptr %struct.evdev_client, ptr %0, i32 0, i32 12, i32 %97
  store i32 %93, ptr %99, align 4
  %100 = getelementptr inbounds i8, ptr %99, i32 4
  store i32 %96, ptr %100, align 4
  %101 = getelementptr inbounds i8, ptr %99, i32 8
  store i16 0, ptr %101, align 4
  %102 = getelementptr inbounds i8, ptr %99, i32 10
  store i16 3, ptr %102, align 2
  %103 = getelementptr inbounds i8, ptr %99, i32 12
  store i32 0, ptr %103, align 4
  %104 = load i32, ptr %19, align 4
  %105 = add i32 %104, -1
  %106 = load i32, ptr %0, align 4
  %107 = and i32 %106, %105
  store i32 %107, ptr %0, align 4
  %108 = load i32, ptr %22, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113, !prof !11

110:                                              ; preds = %81
  %111 = add i32 %107, -1
  %112 = and i32 %111, %105
  store i32 %112, ptr %22, align 4
  store i32 %112, ptr %24, align 4
  br label %113

113:                                              ; preds = %110, %81
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %82) #12
  br label %114

114:                                              ; preds = %113, %78
  %115 = phi i32 [ -14, %113 ], [ %67, %78 ]
  call void @bitmap_free(ptr noundef nonnull %9) #12
  br label %116

116:                                              ; preds = %114, %7
  %117 = phi i32 [ %115, %114 ], [ -12, %7 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @str_to_user(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @strlen(ptr noundef nonnull %0)
  %7 = add i32 %6, 1
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %1)
  %9 = icmp slt i32 %8, 0
  %10 = load i1, ptr @check_copy_size.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %5
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %14

14:                                               ; preds = %13, %5
  br i1 %9, label %30, label %15, !prof !11

15:                                               ; preds = %14
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %8, i32 -1090519040) #16, !srcloc !23
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #12
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #15, !srcloc !19
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %25 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %8) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %25, %19 ], [ %8, %15 ]
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %8, i32 -14
  br label %30

30:                                               ; preds = %26, %14, %3
  %31 = phi i32 [ -2, %3 ], [ -14, %14 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_effect_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_upload(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_grab_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_release_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_flush_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_keycode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_set_keycode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{i64 2149256969}
!9 = !{i64 2149257186}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148972322}
!13 = !{i64 2148968146}
!14 = !{i64 2148968221, i64 2148968248, i64 2148968295, i64 2148968317, i64 2148968345, i64 2148968365}
!15 = !{i64 2148995325}
!16 = !{!"auto-init"}
!17 = !{i64 337749}
!18 = !{i64 2148996466}
!19 = !{i64 3492523}
!20 = !{i64 3492720}
!21 = !{i64 2150977999}
!22 = !{i64 2152849361, i64 2152849641, i64 2152849975, i64 2152850309}
!23 = !{i64 2150996989, i64 2150997014}
!24 = !{i64 2152859169, i64 2152859449, i64 2152859783, i64 2152860117}
!25 = !{i64 2152867333, i64 2152867613, i64 2152867947, i64 2152868281}
!26 = !{i64 2152883359, i64 2152883639, i64 2152883973, i64 2152884307}
!27 = !{i64 2152895270, i64 2152895550, i64 2152895884, i64 2152896218}
!28 = !{i64 2152905595, i64 2152905875, i64 2152906209, i64 2152906543}
!29 = !{i64 2152771217}
!30 = !{i64 2150996411, i64 2150996436}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2152836897, i64 2152837177, i64 2152837511, i64 2152837845}
!33 = !{i64 2150993701, i64 2150993726}
!34 = !{i64 2152797296, i64 2152797576, i64 2152797910, i64 2152798244}
!35 = !{i64 2152808514, i64 2152808794, i64 2152809128, i64 2152809462}
!36 = !{i64 2152820639, i64 2152820919, i64 2152821253, i64 2152821587}
!37 = !{i64 2152829573, i64 2152829853, i64 2152830187, i64 2152830521}
!38 = !{i64 2152924327, i64 2152924607, i64 2152924941, i64 2152925275}
!39 = !{i32 0, i32 33}
!40 = !{i64 2149282210}
