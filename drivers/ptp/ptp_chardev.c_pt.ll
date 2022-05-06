; ModuleID = '/llk/IR/drivers/ptp/ptp_chardev.c_pt.bc'
source_filename = "../drivers/ptp/ptp_chardev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ptp_clock_request = type { i32, %union.anon.64 }
%union.anon.64 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.65, %struct.ptp_clock_time, i32, i32, %union.anon.66 }
%union.anon.65 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.66 = type { %struct.ptp_clock_time }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i32, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_sys_offset_precise = type { %struct.ptp_clock_time, %struct.ptp_clock_time, %struct.ptp_clock_time, [4 x i32] }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_clock_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.ptp_sys_offset_extended = type { i32, [3 x i32], [25 x [3 x %struct.ptp_clock_time]] }
%struct.ptp_sys_offset = type { i32, [3 x i32], [51 x %struct.ptp_clock_time] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [43 x i8] c"\013driver cannot use function %u on pin %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_set_pinfunc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ptp_clock_request, align 8
  %6 = alloca %struct.ptp_clock_request, align 8
  %7 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %23, %4
  %15 = phi i32 [ %24, %23 ], [ 0, %4 ]
  %16 = getelementptr %struct.ptp_pin_desc, ptr %10, i32 %15, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr %struct.ptp_pin_desc, ptr %10, i32 %15, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %14
  %24 = add nuw i32 %15, 1
  %25 = icmp eq i32 %24, %12
  br i1 %25, label %32, label %14

26:                                               ; preds = %19
  %27 = getelementptr %struct.ptp_pin_desc, ptr %10, i32 %15
  %28 = icmp eq ptr %27, null
  %29 = xor i1 %28, true
  %30 = icmp eq i32 %15, %1
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %81, label %32

32:                                               ; preds = %26, %23, %4
  %33 = phi i1 [ %28, %26 ], [ true, %4 ], [ true, %23 ]
  %34 = phi ptr [ %27, %26 ], [ null, %4 ], [ null, %23 ]
  switch i32 %2, label %81 [
    i32 0, label %45
    i32 1, label %35
    i32 2, label %39
    i32 3, label %43
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, %3
  br i1 %38, label %45, label %81

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, %3
  br i1 %42, label %45, label %81

43:                                               ; preds = %32
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %43, %39, %35, %32
  %46 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 18
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %8, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %3) #11
  br label %81

52:                                               ; preds = %45
  br i1 %33, label %66, label %53

53:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false) #10
  switch i32 %2, label %63 [
    i32 2, label %56
    i32 1, label %54
  ]

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.ptp_clock_request, ptr %6, i32 0, i32 1
  br label %58

56:                                               ; preds = %53
  store i32 1, ptr %6, align 8
  %57 = getelementptr inbounds %struct.ptp_clock_request, ptr %6, i32 0, i32 1, i32 0, i32 2
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %55, %54 ], [ %57, %56 ]
  store i32 %3, ptr %59, align 8
  %60 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 17
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %8, ptr noundef nonnull %6, i32 noundef 0) #10
  br label %63

63:                                               ; preds = %58, %53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  %64 = getelementptr inbounds %struct.ptp_pin_desc, ptr %34, i32 0, i32 2
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ptp_pin_desc, ptr %34, i32 0, i32 3
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %52
  %67 = getelementptr %struct.ptp_pin_desc, ptr %10, i32 %1, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr %struct.ptp_pin_desc, ptr %10, i32 %1, i32 3
  %70 = load i32, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false) #10
  switch i32 %68, label %80 [
    i32 2, label %73
    i32 1, label %71
  ]

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ptp_clock_request, ptr %5, i32 0, i32 1
  br label %75

73:                                               ; preds = %66
  store i32 1, ptr %5, align 8
  %74 = getelementptr inbounds %struct.ptp_clock_request, ptr %5, i32 0, i32 1, i32 0, i32 2
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %72, %71 ], [ %74, %73 ]
  store i32 %70, ptr %76, align 8
  %77 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 17
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %8, ptr noundef nonnull %5, i32 noundef 0) #10
  br label %80

80:                                               ; preds = %75, %66
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  store i32 %2, ptr %67, align 4
  store i32 %3, ptr %69, align 4
  br label %81

81:                                               ; preds = %80, %50, %43, %39, %35, %32, %26
  %82 = phi i32 [ -95, %50 ], [ 0, %80 ], [ 0, %26 ], [ -22, %35 ], [ -22, %39 ], [ -22, %43 ], [ -22, %32 ]
  ret i32 %82
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ptp_open(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ptp_sys_offset_precise, align 8
  %5 = alloca %struct.system_device_crosststamp, align 8
  %6 = alloca %struct.ptp_system_timestamp, align 8
  %7 = alloca %struct.ptp_clock_request, align 8
  %8 = alloca %struct.ptp_clock_caps, align 4
  %9 = alloca %struct.ptp_pin_desc, align 4
  %10 = alloca %struct.timespec64, align 8
  %11 = alloca %struct.timespec64, align 8
  %12 = alloca %struct.timespec64, align 8
  %13 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !8
  %14 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %8, i8 0, i32 80, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %9, i8 0, i32 96, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i32 16, i1 false), !annotation !8
  switch i32 %1, label %514 [
    i32 -2142225151, label %16
    i32 -2142225142, label %16
    i32 1074806018, label %58
    i32 1074806027, label %58
    i32 1077427459, label %115
    i32 1077427468, label %115
    i32 1074019588, label %210
    i32 1074019597, label %210
    i32 -1069531896, label %222
    i32 -1069531887, label %222
    i32 -994034423, label %261
    i32 -994034414, label %261
    i32 1128283397, label %329
    i32 1128283406, label %329
    i32 -1067434746, label %388
    i32 -1067434737, label %388
    i32 1080048903, label %453
    i32 1080048912, label %453
  ]

16:                                               ; preds = %3, %3
  %17 = getelementptr inbounds i8, ptr %8, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %17, i8 0, i32 48, i1 false)
  %18 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %8, align 4
  %20 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ptp_clock_caps, ptr %8, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ptp_clock_caps, ptr %8, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ptp_clock_caps, ptr %8, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ptp_clock_caps, ptr %8, i32 0, i32 4
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ptp_clock_caps, ptr %8, i32 0, i32 5
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ne ptr %36, null
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.ptp_clock_caps, ptr %8, i32 0, i32 6
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ne ptr %41, null
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.ptp_clock_caps, ptr %8, i32 0, i32 7
  store i32 %43, ptr %44, align 4
  %45 = inttoptr i32 %2 to ptr
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %45, i32 80, i32 -1090519040) #12, !srcloc !9
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %514

49:                                               ; preds = %16
  %50 = tail call ptr @llvm.thread.pointer() #10
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #13, !srcloc !10
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %55 = call i32 @arm_copy_to_user(ptr noundef %45, ptr noundef nonnull %8, i32 noundef 80) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 0, i32 -14
  br label %514

58:                                               ; preds = %3, %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false)
  %59 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1
  %60 = inttoptr i32 %2 to ptr
  %61 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %60, i32 16, i32 -1090519040) #12, !srcloc !13
  %62 = extractvalue { i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72, !prof !14

64:                                               ; preds = %58
  %65 = tail call ptr @llvm.thread.pointer() #10
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #13, !srcloc !10
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %70 = call i32 @arm_copy_from_user(ptr noundef %59, ptr noundef %60, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72, !prof !14

72:                                               ; preds = %64, %58
  %73 = phi i32 [ %70, %64 ], [ 16, %58 ]
  %74 = sub i32 16, %73
  %75 = getelementptr i8, ptr %59, i32 %74
  call void @llvm.memset.p0.i32(ptr align 1 %75, i8 0, i32 %73, i1 false) #10
  br label %514

76:                                               ; preds = %64
  switch i32 %1, label %99 [
    i32 1074806027, label %77
    i32 1074806018, label %93
  ]

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.ptp_extts_request, ptr %59, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %79, 8
  store i32 %80, ptr %78, align 4
  %81 = icmp ugt i32 %79, 15
  %82 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %83 = load i32, ptr %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = select i1 %81, i1 true, i1 %84
  %86 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %85, i1 true, i1 %88
  %90 = and i32 %79, 7
  %91 = icmp eq i32 %90, 1
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %514, label %99

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.ptp_extts_request, ptr %59, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 7
  store i32 %96, ptr %94, align 4
  %97 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  store i32 0, ptr %97, align 8
  %98 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  store i32 0, ptr %98, align 4
  br label %99

99:                                               ; preds = %93, %77, %76
  %100 = load i32, ptr %59, align 8
  %101 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = icmp ult i32 %100, %102
  br i1 %103, label %104, label %514

104:                                              ; preds = %99
  store i32 0, ptr %7, align 8
  %105 = getelementptr inbounds %struct.ptp_extts_request, ptr %59, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 9
  %108 = call i32 @mutex_lock_interruptible(ptr noundef %107) #10
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %518

110:                                              ; preds = %104
  %111 = and i32 %106, 1
  %112 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 17
  %113 = load ptr, ptr %112, align 4
  %114 = call i32 %113(ptr noundef %15, ptr noundef nonnull %7, i32 noundef %111) #10
  call void @mutex_unlock(ptr noundef %107) #10
  br label %514

115:                                              ; preds = %3, %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false)
  %116 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1
  %117 = inttoptr i32 %2 to ptr
  %118 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %117, i32 56, i32 -1090519040) #12, !srcloc !13
  %119 = extractvalue { i32, i32 } %118, 0
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129, !prof !14

121:                                              ; preds = %115
  %122 = tail call ptr @llvm.thread.pointer() #10
  %123 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 3
  %124 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %123) #13, !srcloc !10
  %125 = and i32 %124, -13
  %126 = or i32 %125, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %126) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %127 = call i32 @arm_copy_from_user(ptr noundef %116, ptr noundef %117, i32 noundef 56) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129, !prof !14

129:                                              ; preds = %121, %115
  %130 = phi i32 [ %127, %121 ], [ 56, %115 ]
  %131 = sub i32 56, %130
  %132 = getelementptr i8, ptr %116, i32 %131
  call void @llvm.memset.p0.i32(ptr align 1 %132, i8 0, i32 %130, i1 false) #10
  br label %514

133:                                              ; preds = %121
  switch i32 %1, label %188 [
    i32 1077427468, label %134
    i32 1077427459, label %186
  ]

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = icmp ult i32 %136, 8
  br i1 %137, label %138, label %514

138:                                              ; preds = %134
  %139 = and i32 %136, 2
  %140 = icmp eq i32 %139, 0
  %141 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 4
  br i1 %140, label %142, label %157

142:                                              ; preds = %138
  %143 = load i32, ptr %141, align 8
  %144 = icmp eq i32 %143, 0
  %145 = getelementptr inbounds [4 x i32], ptr %141, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %144, i1 %147, i1 false
  %149 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 4, i32 0, i32 1
  %150 = load i32, ptr %149, align 8
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %148, i1 %151, i1 false
  %153 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %152, i1 %155, i1 false
  br i1 %156, label %170, label %514

157:                                              ; preds = %138
  %158 = load i64, ptr %141, align 8
  %159 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 1
  %160 = load i64, ptr %159, align 8
  %161 = icmp sgt i64 %158, %160
  br i1 %161, label %514, label %162

162:                                              ; preds = %157
  %163 = icmp eq i64 %158, %160
  br i1 %163, label %164, label %170

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 4, i32 0, i32 1
  %166 = load i32, ptr %165, align 8
  %167 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 1, i32 1
  %168 = load i32, ptr %167, align 8
  %169 = icmp ugt i32 %166, %168
  br i1 %169, label %514, label %170

170:                                              ; preds = %164, %162, %142
  %171 = and i32 %136, 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %188, label %173

173:                                              ; preds = %170
  %174 = load i64, ptr %116, align 8
  %175 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 1
  %176 = load i64, ptr %175, align 8
  %177 = icmp sgt i64 %174, %176
  br i1 %177, label %514, label %178

178:                                              ; preds = %173
  %179 = icmp eq i64 %174, %176
  br i1 %179, label %180, label %188

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %182 = load i32, ptr %181, align 8
  %183 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 1, i32 1
  %184 = load i32, ptr %183, align 8
  %185 = icmp ult i32 %182, %184
  br i1 %185, label %188, label %514

186:                                              ; preds = %133
  %187 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %187, i8 0, i64 20, i1 false)
  br label %188

188:                                              ; preds = %186, %180, %178, %170, %133
  %189 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 5
  %192 = load i32, ptr %191, align 4
  %193 = icmp ult i32 %190, %192
  br i1 %193, label %194, label %514

194:                                              ; preds = %188
  store i32 1, ptr %7, align 8
  %195 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 1
  %196 = load i64, ptr %195, align 8
  %197 = getelementptr inbounds %struct.ptp_clock_request, ptr %7, i32 0, i32 1, i32 0, i32 1, i32 1
  %198 = load i32, ptr %197, align 8
  %199 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 9
  %200 = call i32 @mutex_lock_interruptible(ptr noundef %199) #10
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %518

202:                                              ; preds = %194
  %203 = icmp ne i64 %196, 0
  %204 = icmp ne i32 %198, 0
  %205 = select i1 %203, i1 true, i1 %204
  %206 = zext i1 %205 to i32
  %207 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 17
  %208 = load ptr, ptr %207, align 4
  %209 = call i32 %208(ptr noundef %15, ptr noundef nonnull %7, i32 noundef %206) #10
  call void @mutex_unlock(ptr noundef %199) #10
  br label %514

210:                                              ; preds = %3, %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false)
  %211 = tail call zeroext i1 @capable(i32 noundef 25) #10
  br i1 %211, label %212, label %518

212:                                              ; preds = %210
  store i32 2, ptr %7, align 8
  %213 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 9
  %214 = tail call i32 @mutex_lock_interruptible(ptr noundef %213) #10
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %518

216:                                              ; preds = %212
  %217 = icmp ne i32 %2, 0
  %218 = zext i1 %217 to i32
  %219 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 17
  %220 = load ptr, ptr %219, align 4
  %221 = call i32 %220(ptr noundef %15, ptr noundef nonnull %7, i32 noundef %218) #10
  call void @mutex_unlock(ptr noundef %213) #10
  br label %514

222:                                              ; preds = %3, %3
  %223 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 15
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %514, label %226

226:                                              ; preds = %222
  %227 = call i32 %224(ptr noundef %15, ptr noundef nonnull %5) #10
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %514

229:                                              ; preds = %226
  %230 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %230, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  %231 = load i64, ptr %5, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %11, i64 noundef %231) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  %232 = load i64, ptr %10, align 8
  store i64 %232, ptr %4, align 8
  %233 = getelementptr inbounds %struct.timespec64, ptr %10, i32 0, i32 1
  %234 = load i32, ptr %233, align 8
  %235 = getelementptr inbounds %struct.ptp_clock_time, ptr %4, i32 0, i32 1
  store i32 %234, ptr %235, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #10
  %236 = getelementptr inbounds %struct.system_device_crosststamp, ptr %5, i32 0, i32 1
  %237 = load i64, ptr %236, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %12, i64 noundef %237) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #10
  %238 = load i64, ptr %10, align 8
  %239 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %4, i32 0, i32 1
  store i64 %238, ptr %239, align 8
  %240 = load i32, ptr %233, align 8
  %241 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %4, i32 0, i32 1, i32 1
  store i32 %240, ptr %241, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #10
  %242 = getelementptr inbounds %struct.system_device_crosststamp, ptr %5, i32 0, i32 2
  %243 = load i64, ptr %242, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %13, i64 noundef %243) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #10
  %244 = load i64, ptr %10, align 8
  %245 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %4, i32 0, i32 2
  store i64 %244, ptr %245, align 8
  %246 = load i32, ptr %233, align 8
  %247 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %4, i32 0, i32 2, i32 1
  store i32 %246, ptr %247, align 8
  %248 = inttoptr i32 %2 to ptr
  %249 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %248, i32 64, i32 -1090519040) #12, !srcloc !9
  %250 = extractvalue { i32, i32 } %249, 0
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %514

252:                                              ; preds = %229
  %253 = tail call ptr @llvm.thread.pointer() #10
  %254 = getelementptr inbounds %struct.thread_info, ptr %253, i32 0, i32 3
  %255 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %254) #13, !srcloc !10
  %256 = and i32 %255, -13
  %257 = or i32 %256, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %257) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %258 = call i32 @arm_copy_to_user(ptr noundef %248, ptr noundef nonnull %4, i32 noundef 64) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %255) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %259 = icmp eq i32 %258, 0
  %260 = select i1 %259, i32 0, i32 -14
  br label %514

261:                                              ; preds = %3, %3
  %262 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 14
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %514, label %265

265:                                              ; preds = %261
  %266 = inttoptr i32 %2 to ptr
  %267 = tail call ptr @memdup_user(ptr noundef %266, i32 noundef 1216) #10
  %268 = icmp ugt ptr %267, inttoptr (i32 -4096 to ptr)
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = ptrtoint ptr %267 to i32
  br label %514

271:                                              ; preds = %265
  %272 = load i32, ptr %267, align 8
  %273 = icmp ugt i32 %272, 25
  br i1 %273, label %514, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %267, i32 0, i32 1
  %276 = load i32, ptr %275, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %514

278:                                              ; preds = %274
  %279 = getelementptr %struct.ptp_sys_offset_extended, ptr %267, i32 0, i32 1, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %514

282:                                              ; preds = %278
  %283 = getelementptr %struct.ptp_sys_offset_extended, ptr %267, i32 0, i32 1, i32 2
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %514

286:                                              ; preds = %282
  %287 = icmp eq i32 %272, 0
  br i1 %287, label %316, label %288

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.timespec64, ptr %6, i32 0, i32 1
  %290 = getelementptr inbounds %struct.timespec64, ptr %10, i32 0, i32 1
  %291 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %6, i32 0, i32 1
  %292 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %6, i32 0, i32 1, i32 1
  br label %293

293:                                              ; preds = %300, %288
  %294 = phi i32 [ 0, %288 ], [ %313, %300 ]
  %295 = load ptr, ptr %14, align 8
  %296 = getelementptr inbounds %struct.ptp_clock_info, ptr %295, i32 0, i32 14
  %297 = load ptr, ptr %296, align 4
  %298 = call i32 %297(ptr noundef %295, ptr noundef nonnull %10, ptr noundef nonnull %6) #10
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %514

300:                                              ; preds = %293
  %301 = load i64, ptr %6, align 8
  %302 = getelementptr %struct.ptp_sys_offset_extended, ptr %267, i32 0, i32 2, i32 %294
  store i64 %301, ptr %302, align 8
  %303 = load i32, ptr %289, align 8
  %304 = getelementptr inbounds %struct.ptp_clock_time, ptr %302, i32 0, i32 1
  store i32 %303, ptr %304, align 8
  %305 = load i64, ptr %10, align 8
  %306 = getelementptr %struct.ptp_sys_offset_extended, ptr %267, i32 0, i32 2, i32 %294, i32 1
  store i64 %305, ptr %306, align 8
  %307 = load i32, ptr %290, align 8
  %308 = getelementptr %struct.ptp_sys_offset_extended, ptr %267, i32 0, i32 2, i32 %294, i32 1, i32 1
  store i32 %307, ptr %308, align 8
  %309 = load i64, ptr %291, align 8
  %310 = getelementptr %struct.ptp_sys_offset_extended, ptr %267, i32 0, i32 2, i32 %294, i32 2
  store i64 %309, ptr %310, align 8
  %311 = load i32, ptr %292, align 8
  %312 = getelementptr %struct.ptp_sys_offset_extended, ptr %267, i32 0, i32 2, i32 %294, i32 2, i32 1
  store i32 %311, ptr %312, align 8
  %313 = add nuw i32 %294, 1
  %314 = load i32, ptr %267, align 8
  %315 = icmp ult i32 %313, %314
  br i1 %315, label %293, label %316

316:                                              ; preds = %300, %286
  %317 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %266, i32 1216, i32 -1090519040) #12, !srcloc !9
  %318 = extractvalue { i32, i32 } %317, 0
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %514

320:                                              ; preds = %316
  %321 = tail call ptr @llvm.thread.pointer() #10
  %322 = getelementptr inbounds %struct.thread_info, ptr %321, i32 0, i32 3
  %323 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %322) #13, !srcloc !10
  %324 = and i32 %323, -13
  %325 = or i32 %324, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %325) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %326 = call i32 @arm_copy_to_user(ptr noundef %266, ptr noundef %267, i32 noundef 1216) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %323) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %327 = icmp eq i32 %326, 0
  %328 = select i1 %327, i32 0, i32 -14
  br label %514

329:                                              ; preds = %3, %3
  %330 = inttoptr i32 %2 to ptr
  %331 = tail call ptr @memdup_user(ptr noundef %330, i32 noundef 832) #10
  %332 = icmp ugt ptr %331, inttoptr (i32 -4096 to ptr)
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = ptrtoint ptr %331 to i32
  br label %514

335:                                              ; preds = %329
  %336 = load i32, ptr %331, align 8
  %337 = icmp ugt i32 %336, 25
  br i1 %337, label %514, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.ptp_sys_offset, ptr %331, i32 0, i32 2
  %340 = icmp eq i32 %336, 0
  br i1 %340, label %370, label %341

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.timespec64, ptr %10, i32 0, i32 1
  %343 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 14
  %344 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 13
  br label %345

345:                                              ; preds = %362, %341
  %346 = phi ptr [ %339, %341 ], [ %366, %362 ]
  %347 = phi i32 [ 0, %341 ], [ %367, %362 ]
  call void @ktime_get_real_ts64(ptr noundef nonnull %10) #10
  %348 = load i64, ptr %10, align 8
  store i64 %348, ptr %346, align 8
  %349 = load i32, ptr %342, align 8
  %350 = getelementptr inbounds %struct.ptp_clock_time, ptr %346, i32 0, i32 1
  store i32 %349, ptr %350, align 8
  %351 = getelementptr %struct.ptp_clock_time, ptr %346, i32 1
  %352 = load ptr, ptr %343, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %345
  %355 = call i32 %352(ptr noundef %15, ptr noundef nonnull %10, ptr noundef null) #10
  br label %359

356:                                              ; preds = %345
  %357 = load ptr, ptr %344, align 4
  %358 = call i32 %357(ptr noundef %15, ptr noundef nonnull %10) #10
  br label %359

359:                                              ; preds = %356, %354
  %360 = phi i32 [ %355, %354 ], [ %358, %356 ]
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %514

362:                                              ; preds = %359
  %363 = load i64, ptr %10, align 8
  store i64 %363, ptr %351, align 8
  %364 = load i32, ptr %342, align 8
  %365 = getelementptr %struct.ptp_clock_time, ptr %346, i32 1, i32 1
  store i32 %364, ptr %365, align 8
  %366 = getelementptr %struct.ptp_clock_time, ptr %346, i32 2
  %367 = add nuw i32 %347, 1
  %368 = load i32, ptr %331, align 8
  %369 = icmp ult i32 %367, %368
  br i1 %369, label %345, label %370

370:                                              ; preds = %362, %338
  %371 = phi ptr [ %339, %338 ], [ %366, %362 ]
  call void @ktime_get_real_ts64(ptr noundef nonnull %10) #10
  %372 = load i64, ptr %10, align 8
  store i64 %372, ptr %371, align 8
  %373 = getelementptr inbounds %struct.timespec64, ptr %10, i32 0, i32 1
  %374 = load i32, ptr %373, align 8
  %375 = getelementptr inbounds %struct.ptp_clock_time, ptr %371, i32 0, i32 1
  store i32 %374, ptr %375, align 8
  %376 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %330, i32 832, i32 -1090519040) #12, !srcloc !9
  %377 = extractvalue { i32, i32 } %376, 0
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %514

379:                                              ; preds = %370
  %380 = tail call ptr @llvm.thread.pointer() #10
  %381 = getelementptr inbounds %struct.thread_info, ptr %380, i32 0, i32 3
  %382 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %381) #13, !srcloc !10
  %383 = and i32 %382, -13
  %384 = or i32 %383, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %384) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %385 = call i32 @arm_copy_to_user(ptr noundef %330, ptr noundef %331, i32 noundef 832) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %382) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %386 = icmp eq i32 %385, 0
  %387 = select i1 %386, i32 0, i32 -14
  br label %514

388:                                              ; preds = %3, %3
  %389 = inttoptr i32 %2 to ptr
  %390 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %389, i32 96, i32 -1090519040) #12
  %391 = extractvalue { i32, i32 } %390, 0
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %401, !prof !14

393:                                              ; preds = %388
  %394 = tail call ptr @llvm.thread.pointer() #10
  %395 = getelementptr inbounds %struct.thread_info, ptr %394, i32 0, i32 3
  %396 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %395) #13, !srcloc !10
  %397 = and i32 %396, -13
  %398 = or i32 %397, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %398) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %399 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %389, i32 noundef 96) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %396) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %405, label %401, !prof !14

401:                                              ; preds = %393, %388
  %402 = phi i32 [ %399, %393 ], [ 96, %388 ]
  %403 = sub i32 96, %402
  %404 = getelementptr i8, ptr %9, i32 %403
  call void @llvm.memset.p0.i32(ptr align 1 %404, i8 0, i32 %402, i1 false) #10
  br label %514

405:                                              ; preds = %393
  %406 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4
  %407 = load i32, ptr %406, align 4
  %408 = icmp eq i32 %407, 0
  %409 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4, i32 1
  %410 = load i32, ptr %409, align 4
  %411 = icmp eq i32 %410, 0
  %412 = select i1 %408, i1 %411, i1 false
  %413 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4, i32 2
  %414 = load i32, ptr %413, align 4
  %415 = icmp eq i32 %414, 0
  %416 = select i1 %412, i1 %415, i1 false
  %417 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4, i32 3
  %418 = load i32, ptr %417, align 4
  %419 = icmp eq i32 %418, 0
  %420 = select i1 %416, i1 %419, i1 false
  br i1 %420, label %421, label %427

421:                                              ; preds = %405
  %422 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4, i32 4
  %423 = load i32, ptr %422, align 4
  %424 = icmp ne i32 %423, 0
  %425 = icmp eq i32 %1, -1067434737
  %426 = and i1 %425, %424
  br i1 %426, label %514, label %428

427:                                              ; preds = %405
  switch i32 %1, label %431 [
    i32 -1067434737, label %514
    i32 -1067434746, label %430
  ]

428:                                              ; preds = %421
  %429 = icmp eq i32 %1, -1067434746
  br i1 %429, label %430, label %431

430:                                              ; preds = %428, %427
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %406, i8 0, i64 20, i1 false)
  br label %431

431:                                              ; preds = %430, %428, %427
  %432 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 1
  %433 = load i32, ptr %432, align 4
  %434 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 6
  %435 = load i32, ptr %434, align 4
  %436 = icmp ult i32 %433, %435
  br i1 %436, label %437, label %514

437:                                              ; preds = %431
  %438 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %433, i32 %435) #10, !srcloc !15
  %439 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 9
  %440 = call i32 @mutex_lock_interruptible(ptr noundef %439) #10
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %518

442:                                              ; preds = %437
  %443 = and i32 %438, %433
  %444 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 8
  %445 = load ptr, ptr %444, align 4
  %446 = getelementptr %struct.ptp_pin_desc, ptr %445, i32 %443
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %9, ptr noundef align 4 dereferenceable(96) %446, i32 96, i1 false)
  call void @mutex_unlock(ptr noundef %439) #10
  %447 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %395) #13, !srcloc !10
  %448 = and i32 %447, -13
  %449 = or i32 %448, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %449) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %450 = call i32 @arm_copy_to_user(ptr noundef %389, ptr noundef nonnull %9, i32 noundef 96) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %447) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %451 = icmp eq i32 %450, 0
  %452 = select i1 %451, i32 0, i32 -14
  br label %514

453:                                              ; preds = %3, %3
  %454 = inttoptr i32 %2 to ptr
  %455 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %454, i32 96, i32 -1090519040) #12, !srcloc !13
  %456 = extractvalue { i32, i32 } %455, 0
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %466, !prof !14

458:                                              ; preds = %453
  %459 = tail call ptr @llvm.thread.pointer() #10
  %460 = getelementptr inbounds %struct.thread_info, ptr %459, i32 0, i32 3
  %461 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %460) #13, !srcloc !10
  %462 = and i32 %461, -13
  %463 = or i32 %462, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %463) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %464 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %454, i32 noundef 96) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %461) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %470, label %466, !prof !14

466:                                              ; preds = %458, %453
  %467 = phi i32 [ %464, %458 ], [ 96, %453 ]
  %468 = sub i32 96, %467
  %469 = getelementptr i8, ptr %9, i32 %468
  call void @llvm.memset.p0.i32(ptr align 1 %469, i8 0, i32 %467, i1 false) #10
  br label %514

470:                                              ; preds = %458
  %471 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4
  %472 = load i32, ptr %471, align 4
  %473 = icmp eq i32 %472, 0
  %474 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4, i32 1
  %475 = load i32, ptr %474, align 4
  %476 = icmp eq i32 %475, 0
  %477 = select i1 %473, i1 %476, i1 false
  %478 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4, i32 2
  %479 = load i32, ptr %478, align 4
  %480 = icmp eq i32 %479, 0
  %481 = select i1 %477, i1 %480, i1 false
  %482 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4, i32 3
  %483 = load i32, ptr %482, align 4
  %484 = icmp eq i32 %483, 0
  %485 = select i1 %481, i1 %484, i1 false
  br i1 %485, label %486, label %492

486:                                              ; preds = %470
  %487 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 4, i32 4
  %488 = load i32, ptr %487, align 4
  %489 = icmp ne i32 %488, 0
  %490 = icmp eq i32 %1, 1080048912
  %491 = and i1 %490, %489
  br i1 %491, label %514, label %493

492:                                              ; preds = %470
  switch i32 %1, label %496 [
    i32 1080048912, label %514
    i32 1080048903, label %495
  ]

493:                                              ; preds = %486
  %494 = icmp eq i32 %1, 1080048903
  br i1 %494, label %495, label %496

495:                                              ; preds = %493, %492
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %471, i8 0, i64 20, i1 false)
  br label %496

496:                                              ; preds = %495, %493, %492
  %497 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 1
  %498 = load i32, ptr %497, align 4
  %499 = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 6
  %500 = load i32, ptr %499, align 4
  %501 = icmp ult i32 %498, %500
  br i1 %501, label %502, label %514

502:                                              ; preds = %496
  %503 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %498, i32 %500) #10, !srcloc !15
  %504 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 9
  %505 = call i32 @mutex_lock_interruptible(ptr noundef %504) #10
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %518

507:                                              ; preds = %502
  %508 = and i32 %503, %498
  %509 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 2
  %510 = load i32, ptr %509, align 4
  %511 = getelementptr inbounds %struct.ptp_pin_desc, ptr %9, i32 0, i32 3
  %512 = load i32, ptr %511, align 4
  %513 = call i32 @ptp_set_pinfunc(ptr noundef %0, i32 noundef %508, i32 noundef %510, i32 noundef %512)
  call void @mutex_unlock(ptr noundef %504) #10
  br label %514

514:                                              ; preds = %507, %496, %492, %486, %466, %442, %431, %427, %421, %401, %379, %370, %359, %335, %333, %320, %316, %293, %282, %278, %274, %271, %269, %261, %252, %229, %226, %222, %216, %202, %188, %180, %173, %164, %157, %142, %134, %129, %110, %99, %77, %72, %49, %16, %3
  %515 = phi i32 [ %513, %507 ], [ %334, %333 ], [ %270, %269 ], [ %227, %226 ], [ %221, %216 ], [ %209, %202 ], [ %114, %110 ], [ -22, %77 ], [ -22, %99 ], [ -22, %188 ], [ -95, %222 ], [ -95, %261 ], [ -22, %282 ], [ -22, %278 ], [ -22, %274 ], [ -22, %271 ], [ -22, %335 ], [ -22, %421 ], [ -22, %427 ], [ -22, %431 ], [ -22, %486 ], [ -22, %492 ], [ -22, %496 ], [ -25, %3 ], [ -14, %16 ], [ -14, %72 ], [ -14, %129 ], [ -34, %173 ], [ -34, %180 ], [ -34, %157 ], [ -34, %164 ], [ -22, %142 ], [ -22, %134 ], [ -14, %229 ], [ -14, %316 ], [ -14, %370 ], [ -14, %401 ], [ -14, %466 ], [ %57, %49 ], [ %260, %252 ], [ %328, %320 ], [ %387, %379 ], [ %452, %442 ], [ %298, %293 ], [ %360, %359 ]
  %516 = phi ptr [ null, %507 ], [ null, %333 ], [ null, %269 ], [ null, %226 ], [ null, %216 ], [ null, %202 ], [ null, %110 ], [ null, %77 ], [ null, %99 ], [ null, %188 ], [ null, %222 ], [ null, %261 ], [ null, %282 ], [ null, %278 ], [ null, %274 ], [ null, %271 ], [ %331, %335 ], [ null, %421 ], [ null, %427 ], [ null, %431 ], [ null, %486 ], [ null, %492 ], [ null, %496 ], [ null, %3 ], [ null, %16 ], [ null, %72 ], [ null, %129 ], [ null, %173 ], [ null, %180 ], [ null, %157 ], [ null, %164 ], [ null, %142 ], [ null, %134 ], [ null, %229 ], [ null, %316 ], [ %331, %370 ], [ null, %401 ], [ null, %466 ], [ null, %49 ], [ null, %252 ], [ null, %320 ], [ %331, %379 ], [ null, %442 ], [ null, %293 ], [ %331, %359 ]
  %517 = phi ptr [ null, %507 ], [ null, %333 ], [ null, %269 ], [ null, %226 ], [ null, %216 ], [ null, %202 ], [ null, %110 ], [ null, %77 ], [ null, %99 ], [ null, %188 ], [ null, %222 ], [ null, %261 ], [ %267, %282 ], [ %267, %278 ], [ %267, %274 ], [ %267, %271 ], [ null, %335 ], [ null, %421 ], [ null, %427 ], [ null, %431 ], [ null, %486 ], [ null, %492 ], [ null, %496 ], [ null, %3 ], [ null, %16 ], [ null, %72 ], [ null, %129 ], [ null, %173 ], [ null, %180 ], [ null, %157 ], [ null, %164 ], [ null, %142 ], [ null, %134 ], [ null, %229 ], [ %267, %316 ], [ null, %370 ], [ null, %401 ], [ null, %466 ], [ null, %49 ], [ null, %252 ], [ %267, %320 ], [ null, %379 ], [ null, %442 ], [ %267, %293 ], [ null, %359 ]
  call void @kfree(ptr noundef %517) #10
  call void @kfree(ptr noundef %516) #10
  br label %518

518:                                              ; preds = %514, %502, %437, %212, %210, %194, %104
  %519 = phi i32 [ %515, %514 ], [ -512, %104 ], [ -512, %194 ], [ -1, %210 ], [ -512, %212 ], [ -512, %437 ], [ -512, %502 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret i32 %519
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 10
  %5 = icmp eq ptr %2, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 4
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %4, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void %7(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %2) #10
  br label %12

12:                                               ; preds = %11, %6, %3
  %13 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = sub i32 %14, %16
  %18 = icmp slt i32 %17, 0
  %19 = add i32 %17, 128
  %20 = select i1 %18, i32 %19, i32 %17
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7
  %7 = and i32 %3, 31
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %95

9:                                                ; preds = %4
  %10 = tail call i32 @llvm.umin.i32(i32 %3, i32 960)
  %11 = lshr i32 %10, 5
  %12 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 8
  %13 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %95

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = sub i32 %21, %23
  %25 = icmp slt i32 %24, 0
  %26 = add i32 %24, 128
  %27 = select i1 %25, i32 %26, i32 %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #10
  %30 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 10
  %31 = call i32 @prepare_to_wait_event(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 1) #10
  %32 = load i32, ptr %16, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %45, %29
  %35 = phi i32 [ %46, %45 ], [ %31, %29 ]
  %36 = load i32, ptr %20, align 4
  %37 = load i32, ptr %22, align 8
  %38 = sub i32 %36, %37
  %39 = icmp slt i32 %38, 0
  %40 = add i32 %38, 128
  %41 = select i1 %39, i32 %40, i32 %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = icmp eq i32 %35, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  call void @schedule() #10
  %46 = call i32 @prepare_to_wait_event(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 1) #10
  %47 = load i32, ptr %16, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %34, label %50

49:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  call void @mutex_unlock(ptr noundef %12) #10
  br label %95

50:                                               ; preds = %45, %34, %29
  call void @finish_wait(ptr noundef %30, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  %51 = load i32, ptr %16, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %15
  call void @mutex_unlock(ptr noundef %12) #10
  br label %95

54:                                               ; preds = %50, %19
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %56 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 960) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  call void @mutex_unlock(ptr noundef %12) #10
  br label %95

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7, i32 3
  %61 = call i32 @_raw_spin_lock_irqsave(ptr noundef %60) #10
  %62 = load i32, ptr %20, align 4
  %63 = load i32, ptr %22, align 8
  %64 = sub i32 %62, %63
  %65 = icmp slt i32 %64, 0
  %66 = add i32 %64, 128
  %67 = select i1 %65, i32 %66, i32 %64
  %68 = call i32 @llvm.umin.i32(i32 %11, i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %70, %59
  %71 = phi i32 [ %76, %70 ], [ %63, %59 ]
  %72 = phi i32 [ %77, %70 ], [ 0, %59 ]
  %73 = getelementptr %struct.ptp_extts_event, ptr %56, i32 %72
  %74 = getelementptr [128 x %struct.ptp_extts_event], ptr %6, i32 0, i32 %71
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %73, ptr noundef align 8 dereferenceable(32) %74, i32 32, i1 false)
  %75 = add i32 %71, 1
  %76 = srem i32 %75, 128
  store i32 %76, ptr %22, align 8
  %77 = add nuw nsw i32 %72, 1
  %78 = icmp eq i32 %77, %68
  br i1 %78, label %79, label %70

79:                                               ; preds = %70, %59
  call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %61) #10
  %80 = shl nuw nsw i32 %68, 5
  call void @mutex_unlock(ptr noundef %12) #10
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %80, i32 -1090519040) #12, !srcloc !9
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = tail call ptr @llvm.thread.pointer() #10
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %86) #13, !srcloc !10
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %90 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %56, i32 noundef %80) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  br label %91

91:                                               ; preds = %84, %79
  %92 = phi i32 [ %90, %84 ], [ %80, %79 ]
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 %80, i32 -14
  call void @kfree(ptr noundef nonnull %56) #10
  br label %95

95:                                               ; preds = %91, %58, %53, %49, %9, %4
  %96 = phi i32 [ -512, %49 ], [ -19, %53 ], [ %94, %91 ], [ -12, %58 ], [ -22, %4 ], [ -512, %9 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{i64 2151481146, i64 2151481171}
!10 = !{i64 3976680}
!11 = !{i64 3976877}
!12 = !{i64 2151462156}
!13 = !{i64 2151480568, i64 2151480593}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 314005, i64 314022, i64 2147798092}
