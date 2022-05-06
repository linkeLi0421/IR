; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/notify.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/notify.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.scmi_notify_ops = type { ptr, ptr, ptr, ptr }
%struct.scmi_event_header = type { i64, i32, i8, [0 x i8] }
%struct.scmi_notify_instance = type { ptr, ptr, %struct.work_struct, ptr, %struct.mutex, ptr, [16 x %struct.hlist_head] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.scmi_registered_events_desc = type { i8, ptr, %struct.events_queue, ptr, ptr, i32, ptr, i32, ptr, %struct.mutex, ptr, [64 x %struct.hlist_head] }
%struct.events_queue = type { i32, %struct.kfifo, %struct.work_struct, ptr }
%struct.kfifo = type { %union.anon.65, [0 x i8] }
%union.anon.65 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.scmi_registered_event = type { ptr, ptr, ptr, i32, ptr, %struct.mutex }
%struct.scmi_event = type { i8, i32, i32 }
%struct.scmi_protocol_events = type { i32, ptr, ptr, i32, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.scmi_event_handler = type { i32, %struct.refcount_struct, ptr, %struct.blocking_notifier_head, %struct.hlist_node, i8 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%struct.scmi_event_ops = type { ptr, ptr, ptr }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
%struct.scmi_notifier_devres = type { ptr, i8, i8, i32, ptr, ptr }

@.str = private unnamed_addr constant [50 x i8] c"SCMI Notifications - discard badly sized message\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"SCMI Notifications - queue full, dropping proto_id:%d  evt_id:%d  ts:%lld\0A\00", align 1
@scmi_register_protocol_events.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"&r_evt->sources_mtx\00", align 1
@scmi_notification_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"&ni->pending_mtx\00", align 1
@notify_ops = internal constant %struct.scmi_notify_ops { ptr @scmi_devm_notifier_register, ptr @scmi_devm_notifier_unregister, ptr @scmi_notifier_register, ptr @scmi_notifier_unregister }, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"SCMI Notifications - Core Enabled.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"SCMI Notifications - Initialization Failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"drivers/firmware/arm_scmi/notify.c\00", align 1
@scmi_allocate_registered_events_desc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"&pd->registered_mtx\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"SCMI Notifications - corrupted EVT header. Flush.\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"SCMI Notifications - corrupted EVT Payload. Flush.\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"SCMI Notifications - SKIP UNKNOWN EVT - proto:%X  evt:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"SCMI Notifications - report not available - proto:%X  evt:%d\0A\00", align 1
@scmi_lookup_and_call_event_chain.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [61 x i8] c"\013SCMI Notifications - Failed to ENABLE events for key:%X !\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"scmi_devm_release_notifier\00", align 1
@scmi_allocate_event_handler.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"&(&hndl->chain)->rwsem\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scmi_notify(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.scmi_event_header, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %8 = getelementptr inbounds i8, ptr %7, i32 8
  store i64 0, ptr %8, align 8, !annotation !8
  %9 = tail call ptr @scmi_notification_instance_data_get(ptr noundef %0) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.scmi_notify_instance, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %1 to i32
  %15 = getelementptr ptr, ptr %13, i32 %14
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %66, label %18

18:                                               ; preds = %11
  %19 = zext i8 %2 to i32
  %20 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %16, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, %19
  br i1 %22, label %23, label %66

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %16, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr ptr, ptr %25, i32 %19
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.scmi_registered_event, ptr %27, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.scmi_event, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %33, %4
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str) #9
  br label %66

37:                                               ; preds = %29
  %38 = load ptr, ptr %27, align 4
  %39 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %38, i32 0, i32 2, i32 1
  %40 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %38, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %39, align 4
  %43 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %38, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %41, 1
  %46 = sub i32 %45, %42
  %47 = add i32 %46, %44
  %48 = add i32 %4, 16
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.1, i32 noundef %14, i32 noundef %19, i64 noundef %5) #9
  br label %66

52:                                               ; preds = %37
  store i64 %5, ptr %7, align 8
  %53 = getelementptr inbounds %struct.scmi_event_header, ptr %7, i32 0, i32 2
  store i8 %2, ptr %53, align 4
  %54 = getelementptr inbounds %struct.scmi_event_header, ptr %7, i32 0, i32 1
  store i32 %4, ptr %54, align 8
  %55 = load ptr, ptr %27, align 4
  %56 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %55, i32 0, i32 2, i32 1
  %57 = call i32 @__kfifo_in(ptr noundef %56, ptr noundef nonnull %7, i32 noundef 16) #8
  %58 = load ptr, ptr %27, align 4
  %59 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %58, i32 0, i32 2, i32 1
  %60 = call i32 @__kfifo_in(ptr noundef %59, ptr noundef %3, i32 noundef %4) #8
  %61 = load ptr, ptr %27, align 4
  %62 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %61, i32 0, i32 2, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %61, i32 0, i32 2, i32 2
  %65 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %63, ptr noundef %64) #8
  br label %66

66:                                               ; preds = %52, %50, %35, %23, %18, %11, %6
  %67 = phi i32 [ -22, %35 ], [ -12, %50 ], [ 0, %52 ], [ 0, %6 ], [ -22, %23 ], [ -22, %18 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_notification_instance_data_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scmi_register_protocol_events(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %169, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.scmi_protocol_events, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %169, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.scmi_protocol_events, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %2, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %169

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.scmi_protocol_events, ptr %3, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %8, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %169, label %23

23:                                               ; preds = %20, %16
  %24 = tail call ptr @scmi_notification_instance_data_get(ptr noundef %0) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %169, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %17, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load ptr, ptr %7, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef nonnull %2) #8
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %169, label %34

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %32, %29 ], [ %27, %26 ]
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr inbounds %struct.scmi_protocol_events, ptr %3, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %40, %34
  %41 = phi i32 [ %46, %40 ], [ 0, %34 ]
  %42 = phi i32 [ %45, %40 ], [ 0, %34 ]
  %43 = getelementptr %struct.scmi_event, ptr %36, i32 %41, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @llvm.umax.i32(i32 %42, i32 %44)
  %46 = add nuw i32 %41, 1
  %47 = icmp eq i32 %46, %38
  br i1 %47, label %48, label %40

48:                                               ; preds = %40
  %49 = add i32 %45, 16
  br label %50

50:                                               ; preds = %48, %34
  %51 = phi i32 [ 16, %34 ], [ %49, %48 ]
  %52 = load i32, ptr %3, align 4
  %53 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %54 = getelementptr inbounds %struct.scmi_notify_instance, ptr %24, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = zext i8 %1 to i32
  %57 = getelementptr ptr, ptr %55, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !10

60:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 701, i32 noundef 9, ptr noundef null) #8
  br label %117

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.scmi_notify_instance, ptr %24, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = tail call noalias ptr @devm_kmalloc(ptr noundef %64, i32 noundef 356, i32 noundef 3520) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %117, label %67

67:                                               ; preds = %61
  store i8 %1, ptr %65, align 4
  %68 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 1
  store ptr %53, ptr %68, align 4
  %69 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 3
  store ptr %24, ptr %69, align 4
  %70 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 2, i32 1
  %71 = tail call i32 @__kfifo_alloc(ptr noundef %70, i32 noundef %52, i32 noundef 1, i32 noundef 3264) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %117

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 2
  %75 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %74, align 4
  %78 = load ptr, ptr %62, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @devm_add_action(ptr noundef %79, ptr noundef nonnull @scmi_kfifo_free, ptr noundef %70) #8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  tail call void @__kfifo_free(ptr noundef %70) #8
  %83 = inttoptr i32 %80 to ptr
  br label %114

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 2, i32 2
  store i32 -32, ptr %85, align 4
  %86 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 2, i32 2, i32 1
  store volatile ptr %86, ptr %86, align 4
  %87 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 2, i32 2, i32 1, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 2, i32 2, i32 2
  store ptr @scmi_events_dispatcher, ptr %88, align 4
  %89 = getelementptr inbounds %struct.scmi_notify_instance, ptr %24, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 2, i32 3
  store ptr %90, ptr %91, align 4
  %92 = load ptr, ptr %62, align 4
  %93 = load ptr, ptr %92, align 4
  %94 = tail call noalias ptr @devm_kmalloc(ptr noundef %93, i32 noundef %51, i32 noundef 3520) #8
  %95 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 4
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %117, label %97

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 5
  store i32 %51, ptr %98, align 4
  %99 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 4) #8
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %101, label %103, !prof !11

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 8
  store ptr null, ptr %102, align 4
  br label %117

103:                                              ; preds = %97
  %104 = load ptr, ptr %62, align 4
  %105 = load ptr, ptr %104, align 4
  %106 = extractvalue { i32, i1 } %99, 0
  %107 = tail call noalias ptr @devm_kmalloc(ptr noundef %105, i32 noundef %106, i32 noundef 3520) #8
  %108 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 8
  store ptr %107, ptr %108, align 4
  %109 = icmp eq ptr %107, null
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 7
  store i32 %38, ptr %111, align 4
  %112 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %112, ptr noundef nonnull @.str.7, ptr noundef nonnull @scmi_allocate_registered_events_desc.__key) #8
  %113 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %113, i8 0, i32 256, i1 false) #8
  br label %114

114:                                              ; preds = %110, %82
  %115 = phi ptr [ %65, %110 ], [ %83, %82 ]
  %116 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %117, label %120

117:                                              ; preds = %114, %103, %101, %84, %67, %61, %60
  %118 = phi ptr [ %115, %114 ], [ inttoptr (i32 -12 to ptr), %67 ], [ inttoptr (i32 -12 to ptr), %103 ], [ inttoptr (i32 -12 to ptr), %101 ], [ inttoptr (i32 -12 to ptr), %84 ], [ inttoptr (i32 -12 to ptr), %61 ], [ inttoptr (i32 -22 to ptr), %60 ]
  %119 = ptrtoint ptr %118 to i32
  br label %169

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %115, i32 0, i32 10
  store ptr %2, ptr %121, align 4
  %122 = load i32, ptr %37, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %163, label %124

124:                                              ; preds = %120
  %125 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 4) #8
  %126 = extractvalue { i32, i1 } %125, 1
  %127 = extractvalue { i32, i1 } %125, 0
  %128 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %115, i32 0, i32 8
  br label %129

129:                                              ; preds = %156, %124
  %130 = phi i32 [ 0, %124 ], [ %159, %156 ]
  %131 = phi ptr [ %36, %124 ], [ %160, %156 ]
  %132 = load ptr, ptr %62, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = tail call noalias ptr @devm_kmalloc(ptr noundef %133, i32 noundef 40, i32 noundef 3520) #8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %169, label %136

136:                                              ; preds = %129
  store ptr %115, ptr %134, align 4
  %137 = getelementptr inbounds %struct.scmi_registered_event, ptr %134, i32 0, i32 1
  store ptr %131, ptr %137, align 4
  br i1 %126, label %138, label %140, !prof !11

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.scmi_registered_event, ptr %134, i32 0, i32 4
  store ptr null, ptr %139, align 4
  br label %169

140:                                              ; preds = %136
  %141 = load ptr, ptr %62, align 4
  %142 = load ptr, ptr %141, align 4
  %143 = tail call noalias ptr @devm_kmalloc(ptr noundef %142, i32 noundef %127, i32 noundef 3520) #8
  %144 = getelementptr inbounds %struct.scmi_registered_event, ptr %134, i32 0, i32 4
  store ptr %143, ptr %144, align 4
  %145 = icmp eq ptr %143, null
  br i1 %145, label %169, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.scmi_registered_event, ptr %134, i32 0, i32 3
  store i32 %35, ptr %147, align 4
  %148 = getelementptr inbounds %struct.scmi_registered_event, ptr %134, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %148, ptr noundef nonnull @.str.2, ptr noundef nonnull @scmi_register_protocol_events.__key) #8
  %149 = load ptr, ptr %62, align 4
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.scmi_event, ptr %131, i32 0, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = tail call noalias ptr @devm_kmalloc(ptr noundef %150, i32 noundef %152, i32 noundef 3520) #8
  %154 = getelementptr inbounds %struct.scmi_registered_event, ptr %134, i32 0, i32 2
  store ptr %153, ptr %154, align 4
  %155 = icmp eq ptr %153, null
  br i1 %155, label %169, label %156

156:                                              ; preds = %146
  %157 = load ptr, ptr %128, align 4
  %158 = getelementptr ptr, ptr %157, i32 %130
  store ptr %134, ptr %158, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !12
  %159 = add nuw i32 %130, 1
  %160 = getelementptr %struct.scmi_event, ptr %131, i32 1
  %161 = load i32, ptr %37, align 4
  %162 = icmp ult i32 %159, %161
  br i1 %162, label %129, label %163

163:                                              ; preds = %156, %120
  %164 = load ptr, ptr %54, align 4
  %165 = getelementptr ptr, ptr %164, i32 %56
  store ptr %115, ptr %165, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !13
  %166 = getelementptr inbounds %struct.scmi_notify_instance, ptr %24, i32 0, i32 2
  %167 = load ptr, ptr @system_wq, align 4
  %168 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %167, ptr noundef %166) #8
  br label %169

169:                                              ; preds = %163, %146, %140, %138, %129, %117, %29, %23, %20, %10, %6, %4
  %170 = phi i32 [ %119, %117 ], [ 0, %163 ], [ -22, %29 ], [ -22, %20 ], [ -22, %10 ], [ -22, %6 ], [ -22, %4 ], [ -12, %23 ], [ -12, %138 ], [ -12, %129 ], [ -12, %140 ], [ -12, %146 ]
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_deregister_protocol_events(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @scmi_notification_instance_data_get(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.scmi_notify_instance, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %1 to i32
  %9 = getelementptr ptr, ptr %7, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  store ptr null, ptr %9, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %13 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %10, i32 0, i32 2, i32 2
  %14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %13) #8
  br label %15

15:                                               ; preds = %12, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scmi_notification_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @devres_open_group(ptr noundef %2, ptr noundef null, i32 noundef 3264) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 116, i32 noundef 3520) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  store ptr %3, ptr %7, align 4
  %10 = getelementptr inbounds %struct.scmi_notify_instance, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 1024, i32 noundef 3520) #8
  %13 = getelementptr inbounds %struct.scmi_notify_instance, ptr %7, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %18, %15 ]
  %24 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef %23, i32 noundef 70, i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.scmi_notify_instance, ptr %7, i32 0, i32 3
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.scmi_notify_instance, ptr %7, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef nonnull @scmi_notification_init.__key) #8
  %29 = getelementptr inbounds %struct.scmi_notify_instance, ptr %7, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %29, i8 0, i32 64, i1 false) #8
  %30 = getelementptr inbounds %struct.scmi_notify_instance, ptr %7, i32 0, i32 2
  store i32 -32, ptr %30, align 4
  %31 = getelementptr inbounds %struct.scmi_notify_instance, ptr %7, i32 0, i32 2, i32 1
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.scmi_notify_instance, ptr %7, i32 0, i32 2, i32 1, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.scmi_notify_instance, ptr %7, i32 0, i32 2, i32 2
  store ptr @scmi_protocols_late_init, ptr %33, align 4
  tail call void @scmi_notification_instance_data_set(ptr noundef %0, ptr noundef nonnull %7) #8
  %34 = getelementptr inbounds %struct.scmi_handle, ptr %0, i32 0, i32 4
  store ptr @notify_ops, ptr %34, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %35 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.4) #9
  %36 = load ptr, ptr %0, align 4
  %37 = load ptr, ptr %7, align 4
  tail call void @devres_close_group(ptr noundef %36, ptr noundef %37) #8
  br label %42

38:                                               ; preds = %22, %9, %5
  %39 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.5) #9
  %40 = load ptr, ptr %0, align 4
  %41 = tail call i32 @devres_release_group(ptr noundef %40, ptr noundef nonnull %3) #8
  br label %42

42:                                               ; preds = %38, %27, %1
  %43 = phi i32 [ 0, %27 ], [ -12, %38 ], [ -12, %1 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_protocols_late_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %3 = getelementptr i8, ptr %0, i32 20
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr i8, ptr %0, i32 44
  %5 = icmp eq ptr %2, null
  %6 = getelementptr i8, ptr %0, i32 40
  %7 = getelementptr i8, ptr %0, i32 -4
  br label %8

8:                                                ; preds = %100, %1
  %9 = phi i32 [ 0, %1 ], [ %101, %100 ]
  %10 = getelementptr [16 x %struct.hlist_head], ptr %4, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -40
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %100, label %16

16:                                               ; preds = %95, %8
  %17 = phi ptr [ %97, %95 ], [ %13, %8 ]
  %18 = getelementptr inbounds %struct.scmi_event_handler, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  br i1 %5, label %86, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %6, align 4
  %22 = load i32, ptr %17, align 4
  %23 = lshr i32 %22, 24
  %24 = getelementptr ptr, ptr %21, i32 %23
  %25 = load volatile ptr, ptr %24, align 4
  %26 = lshr i32 %22, 16
  %27 = and i32 %26, 255
  %28 = icmp eq ptr %25, null
  br i1 %28, label %82, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %25, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %25, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr ptr, ptr %35, i32 %27
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %82, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.scmi_event_handler, ptr %17, i32 0, i32 4, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  store volatile ptr %19, ptr %41, align 4
  %44 = icmp eq ptr %19, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  store volatile ptr %41, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %43
  store ptr null, ptr %18, align 4
  store ptr null, ptr %40, align 4
  %48 = load i32, ptr %17, align 4
  %49 = lshr i32 %48, 24
  br label %50

50:                                               ; preds = %47, %39
  %51 = phi i32 [ %23, %39 ], [ %49, %47 ]
  %52 = load ptr, ptr %7, align 4
  %53 = trunc i32 %51 to i8
  %54 = tail call i32 @scmi_protocol_acquire(ptr noundef %52, i8 noundef zeroext %53) #8
  %55 = getelementptr inbounds %struct.scmi_event_handler, ptr %17, i32 0, i32 2
  store ptr %37, ptr %55, align 4
  %56 = load ptr, ptr %37, align 4
  %57 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %56, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %57) #8
  %58 = load ptr, ptr %37, align 4
  %59 = load i32, ptr %17, align 4
  %60 = mul i32 %59, 1640531527
  %61 = lshr i32 %60, 26
  %62 = getelementptr %struct.scmi_registered_events_desc, ptr %58, i32 0, i32 11, i32 %61
  %63 = load ptr, ptr %62, align 4
  store volatile ptr %63, ptr %18, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.hlist_node, ptr %63, i32 0, i32 1
  store volatile ptr %18, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %50
  store volatile ptr %18, ptr %62, align 4
  store volatile ptr %62, ptr %40, align 4
  %68 = load ptr, ptr %37, align 4
  %69 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %68, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %69) #8
  %70 = tail call fastcc i32 @scmi_event_handler_enable_events(ptr noundef nonnull %17)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %55, align 4
  %74 = load ptr, ptr %73, align 4
  %75 = load i8, ptr %74, align 4
  %76 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %74, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %76) #8
  %77 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef nonnull %17) #8
  %78 = load ptr, ptr %73, align 4
  %79 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %78, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %79) #8
  br i1 %77, label %80, label %95

80:                                               ; preds = %72
  %81 = load ptr, ptr %7, align 4
  tail call void @scmi_protocol_release(ptr noundef %81, i8 noundef zeroext %75) #8
  br label %95

82:                                               ; preds = %33, %29, %20
  %83 = getelementptr inbounds %struct.scmi_event_handler, ptr %17, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %93

86:                                               ; preds = %16
  %87 = getelementptr inbounds %struct.scmi_event_handler, ptr %17, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %93

90:                                               ; preds = %82
  %91 = load volatile ptr, ptr %24, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90, %86, %82
  %94 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef nonnull %17)
  br label %95

95:                                               ; preds = %93, %90, %86, %80, %72, %67
  %96 = icmp eq ptr %19, null
  %97 = getelementptr i8, ptr %19, i32 -40
  %98 = icmp eq ptr %97, null
  %99 = or i1 %96, %98
  br i1 %99, label %100, label %16

100:                                              ; preds = %95, %8
  %101 = add nuw nsw i32 %9, 1
  %102 = icmp eq i32 %101, 16
  br i1 %102, label %103, label %8

103:                                              ; preds = %100
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_notification_instance_data_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_notification_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @scmi_notification_instance_data_get(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  tail call void @scmi_notification_instance_data_set(ptr noundef %0, ptr noundef null) #8
  %5 = getelementptr inbounds %struct.scmi_notify_instance, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @destroy_workqueue(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.scmi_notify_instance, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 @devres_release_group(ptr noundef %9, ptr noundef %10) #8
  br label %12

12:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_kfifo_free(ptr noundef %0) #0 {
  tail call void @__kfifo_free(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_events_dispatcher(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = getelementptr i8, ptr %0, i32 32
  %5 = getelementptr i8, ptr %0, i32 -20
  %6 = getelementptr i8, ptr %0, i32 24
  %7 = icmp eq ptr %3, null
  %8 = getelementptr i8, ptr %0, i32 36
  %9 = getelementptr i8, ptr %0, i32 40
  %10 = getelementptr i8, ptr %0, i32 20
  br label %11

11:                                               ; preds = %125, %1
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 4
  %16 = call i32 @__kfifo_out(ptr noundef %5, ptr noundef %15, i32 noundef 16) #8
  switch i32 %16, label %17 [
    i32 0, label %126
    i32 16, label %24
  ]

17:                                               ; preds = %14
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.scmi_notify_instance, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8) #9
  %22 = load i32, ptr %5, align 4
  %23 = getelementptr i8, ptr %0, i32 -16
  store i32 %22, ptr %23, align 4
  br label %126

24:                                               ; preds = %14
  br i1 %7, label %37, label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.scmi_event_header, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = load i32, ptr %8, align 4
  %31 = icmp sgt i32 %30, %29
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr ptr, ptr %33, i32 %29
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %25, %24
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi ptr [ %35, %32 ], [ inttoptr (i32 -22 to ptr), %37 ]
  store ptr %39, ptr %4, align 4
  br label %40

40:                                               ; preds = %38, %11
  %41 = phi ptr [ %39, %38 ], [ %12, %11 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.scmi_event_header, ptr %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.scmi_event_header, ptr %42, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = call i32 @__kfifo_out(ptr noundef %5, ptr noundef %43, i32 noundef %45) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %124, label %48

48:                                               ; preds = %40
  store ptr null, ptr %4, align 4
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds %struct.scmi_event_header, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %10, align 4
  %55 = getelementptr inbounds %struct.scmi_notify_instance, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.9) #9
  %58 = load i32, ptr %5, align 4
  %59 = getelementptr i8, ptr %0, i32 -16
  store i32 %58, ptr %59, align 4
  br label %124

60:                                               ; preds = %48
  %61 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %72

62:                                               ; preds = %60
  %63 = load ptr, ptr %10, align 4
  %64 = getelementptr inbounds %struct.scmi_notify_instance, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = load i8, ptr %3, align 4
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.scmi_event_header, ptr %49, i32 0, i32 2
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.10, i32 noundef %68, i32 noundef %71) #9
  br label %125

72:                                               ; preds = %60
  %73 = load ptr, ptr %41, align 4
  %74 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.scmi_event_ops, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %73, i32 0, i32 10
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.scmi_event_header, ptr %49, i32 0, i32 2
  %81 = load i8, ptr %80, align 4
  %82 = load i64, ptr %49, align 8
  %83 = getelementptr inbounds %struct.scmi_event_header, ptr %49, i32 0, i32 3
  %84 = getelementptr inbounds %struct.scmi_registered_event, ptr %41, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = call ptr %77(ptr noundef %79, i8 noundef zeroext %81, i64 noundef %82, ptr noundef %83, i32 noundef %46, ptr noundef %85, ptr noundef nonnull %2) #8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %72
  %89 = load ptr, ptr %10, align 4
  %90 = getelementptr inbounds %struct.scmi_notify_instance, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = load i8, ptr %3, align 4
  %94 = zext i8 %93 to i32
  %95 = load ptr, ptr %6, align 4
  %96 = getelementptr inbounds %struct.scmi_event_header, ptr %95, i32 0, i32 2
  %97 = load i8, ptr %96, align 4
  %98 = zext i8 %97 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.11, i32 noundef %94, i32 noundef %98) #9
  br label %125

99:                                               ; preds = %72
  %100 = load i8, ptr %3, align 4
  %101 = zext i8 %100 to i32
  %102 = shl nuw i32 %101, 24
  %103 = load ptr, ptr %6, align 4
  %104 = getelementptr inbounds %struct.scmi_event_header, ptr %103, i32 0, i32 2
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 16
  %108 = or i32 %102, %107
  %109 = or i32 %108, 65535
  %110 = load ptr, ptr %10, align 4
  call fastcc void @scmi_lookup_and_call_event_chain(ptr noundef %110, i32 noundef %109, ptr noundef nonnull %86) #8
  %111 = load i32, ptr %2, align 4
  %112 = load i8, ptr %3, align 4
  %113 = zext i8 %112 to i32
  %114 = shl nuw i32 %113, 24
  %115 = load ptr, ptr %6, align 4
  %116 = getelementptr inbounds %struct.scmi_event_header, ptr %115, i32 0, i32 2
  %117 = load i8, ptr %116, align 4
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 16
  %120 = and i32 %111, 65535
  %121 = or i32 %114, %120
  %122 = or i32 %119, %121
  %123 = load ptr, ptr %10, align 4
  call fastcc void @scmi_lookup_and_call_event_chain(ptr noundef %123, i32 noundef %122, ptr noundef nonnull %86) #8
  br label %125

124:                                              ; preds = %53, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %126

125:                                              ; preds = %99, %88, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %11

126:                                              ; preds = %124, %17, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scmi_lookup_and_call_event_chain(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %84, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.scmi_notify_instance, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %1, 24
  %9 = getelementptr ptr, ptr %7, i32 %8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = lshr i32 %1, 16
  %12 = and i32 %11, 255
  %13 = icmp eq ptr %10, null
  br i1 %13, label %84, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %10, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %10, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr ptr, ptr %20, i32 %12
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %84, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %25, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %26) #8
  %27 = load ptr, ptr %22, align 4
  %28 = mul i32 %1, 1640531527
  %29 = lshr i32 %28, 26
  %30 = getelementptr %struct.scmi_registered_events_desc, ptr %27, i32 0, i32 11, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = getelementptr i8, ptr %31, i32 -40
  %34 = icmp eq ptr %33, null
  %35 = or i1 %32, %34
  br i1 %35, label %58, label %36

36:                                               ; preds = %40, %24
  %37 = phi ptr [ %44, %40 ], [ %33, %24 ]
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.scmi_event_handler, ptr %37, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = getelementptr i8, ptr %42, i32 -40
  %45 = icmp eq ptr %44, null
  %46 = or i1 %43, %45
  br i1 %46, label %58, label %36

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.scmi_event_handler, ptr %37, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #8, !srcloc !17
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #8, !srcloc !18
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !11

52:                                               ; preds = %47
  %53 = add i32 %50, 1
  %54 = or i32 %53, %50
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %58, label %56, !prof !10

56:                                               ; preds = %52, %47
  %57 = phi i32 [ 2, %47 ], [ 1, %52 ]
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef %57) #8
  br label %58

58:                                               ; preds = %56, %52, %40, %24
  %59 = phi ptr [ %37, %56 ], [ %37, %52 ], [ null, %24 ], [ null, %40 ]
  %60 = load ptr, ptr %22, align 4
  %61 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %60, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %61) #8
  %62 = icmp eq ptr %59, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.scmi_event_handler, ptr %59, i32 0, i32 3
  %65 = tail call i32 @blocking_notifier_call_chain(ptr noundef %64, i32 noundef %12, ptr noundef %2) #8
  %66 = and i32 %65, 32768
  %67 = icmp ne i32 %66, 0
  %68 = load i1, ptr @scmi_lookup_and_call_event_chain.__already_done, align 1
  %69 = xor i1 %68, true
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %72, !prof !11

71:                                               ; preds = %63
  store i1 true, ptr @scmi_lookup_and_call_event_chain.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 405, i32 noundef 9, ptr noundef null) #8
  br label %72

72:                                               ; preds = %71, %63
  %73 = getelementptr inbounds %struct.scmi_event_handler, ptr %59, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = load i8, ptr %75, align 4
  %77 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %75, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %77) #8
  %78 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef nonnull %59) #8
  %79 = load ptr, ptr %74, align 4
  %80 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %79, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %80) #8
  br i1 %78, label %81, label %84

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.scmi_notify_instance, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  tail call void @scmi_protocol_release(ptr noundef %83, i8 noundef zeroext %76) #8
  br label %84

84:                                               ; preds = %81, %72, %58, %18, %14, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scmi_event_handler, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !17
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !20
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %76, label %8, !prof !10

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #8
  br label %76

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %10 = getelementptr inbounds %struct.scmi_event_handler, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %64, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.scmi_event_handler, ptr %0, i32 0, i32 5
  %15 = load i8, ptr %14, align 4, !range !22
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %0, align 4
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 65535
  %21 = getelementptr inbounds %struct.scmi_registered_event, ptr %11, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  br i1 %20, label %25, label %23

23:                                               ; preds = %17
  %24 = icmp ugt i32 %22, %19
  br i1 %24, label %28, label %64

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.scmi_registered_event, ptr %11, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %26) #8
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %62, label %30

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.scmi_registered_event, ptr %11, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %29) #8
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %22, %25 ], [ 1, %28 ]
  %32 = phi i32 [ 0, %25 ], [ %19, %28 ]
  %33 = phi ptr [ %26, %25 ], [ %29, %28 ]
  %34 = getelementptr inbounds %struct.scmi_registered_event, ptr %11, i32 0, i32 4
  %35 = getelementptr inbounds %struct.scmi_registered_event, ptr %11, i32 0, i32 1
  br label %36

36:                                               ; preds = %58, %30
  %37 = phi i32 [ %32, %30 ], [ %59, %58 ]
  %38 = phi i32 [ %31, %30 ], [ %60, %58 ]
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr %struct.refcount_struct, ptr %39, i32 %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #8, !srcloc !17
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #8, !srcloc !20
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %58, label %46, !prof !10

46:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 3) #8
  br label %58

47:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.scmi_event_ops, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %48, i32 0, i32 10
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %35, align 4
  %56 = load i8, ptr %55, align 4
  %57 = tail call i32 %52(ptr noundef %54, i8 noundef zeroext %56, i32 noundef %37, i1 noundef zeroext false) #8
  br label %58

58:                                               ; preds = %47, %46, %44
  %59 = add i32 %37, 1
  %60 = add i32 %38, -1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %36

62:                                               ; preds = %58, %25
  %63 = phi ptr [ %26, %25 ], [ %33, %58 ]
  tail call void @mutex_unlock(ptr noundef %63) #8
  store i8 0, ptr %14, align 4
  br label %64

64:                                               ; preds = %62, %23, %13, %9
  %65 = getelementptr inbounds %struct.scmi_event_handler, ptr %0, i32 0, i32 4
  %66 = getelementptr inbounds %struct.scmi_event_handler, ptr %0, i32 0, i32 4, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %65, align 4
  store volatile ptr %70, ptr %67, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.hlist_node, ptr %70, i32 0, i32 1
  store volatile ptr %67, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %69
  store ptr null, ptr %65, align 4
  store ptr null, ptr %66, align 4
  br label %75

75:                                               ; preds = %74, %64
  tail call void @kfree(ptr noundef %0) #8
  br label %76

76:                                               ; preds = %75, %8, %6
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_release(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scmi_event_handler_enable_events(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scmi_event_handler, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4, !range !22
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %74

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scmi_event_handler, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 65535
  %11 = getelementptr inbounds %struct.scmi_registered_event, ptr %7, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  br i1 %10, label %15, label %13

13:                                               ; preds = %5
  %14 = icmp ugt i32 %12, %9
  br i1 %14, label %18, label %71

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.scmi_registered_event, ptr %7, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %16) #8
  %17 = icmp eq i32 %12, 0
  br i1 %17, label %67, label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.scmi_registered_event, ptr %7, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %19) #8
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %12, %15 ], [ 1, %18 ]
  %22 = phi i32 [ 0, %15 ], [ %9, %18 ]
  %23 = phi ptr [ %16, %15 ], [ %19, %18 ]
  %24 = getelementptr inbounds %struct.scmi_registered_event, ptr %7, i32 0, i32 4
  %25 = getelementptr inbounds %struct.scmi_registered_event, ptr %7, i32 0, i32 1
  br label %26

26:                                               ; preds = %57, %20
  %27 = phi i32 [ %22, %20 ], [ %62, %57 ]
  %28 = phi i32 [ 0, %20 ], [ %61, %57 ]
  %29 = phi i32 [ %21, %20 ], [ %63, %57 ]
  %30 = load ptr, ptr %24, align 4
  %31 = getelementptr %struct.refcount_struct, ptr %30, i32 %27
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.scmi_event_ops, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %35, i32 0, i32 10
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %25, align 4
  %43 = load i8, ptr %42, align 4
  %44 = tail call i32 %39(ptr noundef %41, i8 noundef zeroext %43, i32 noundef %27, i1 noundef zeroext true) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %34
  store volatile i32 1, ptr %31, align 4
  br label %57

47:                                               ; preds = %26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #8, !srcloc !17
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #8, !srcloc !18
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !11

51:                                               ; preds = %47
  %52 = add i32 %49, 1
  %53 = or i32 %52, %49
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55, !prof !10

55:                                               ; preds = %51, %47
  %56 = phi i32 [ 2, %47 ], [ 1, %51 ]
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef %56) #8
  br label %57

57:                                               ; preds = %55, %51, %46, %34
  %58 = phi i32 [ %44, %34 ], [ 0, %46 ], [ 0, %51 ], [ 0, %55 ]
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = add i32 %28, %60
  %62 = add i32 %27, 1
  %63 = add i32 %29, -1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %26

65:                                               ; preds = %57
  %66 = icmp eq i32 %61, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %65, %15
  %68 = phi ptr [ %16, %15 ], [ %23, %65 ]
  tail call void @mutex_unlock(ptr noundef %68) #8
  %69 = load i32, ptr %0, align 4
  br label %71

70:                                               ; preds = %65
  tail call void @mutex_unlock(ptr noundef %23) #8
  store i8 1, ptr %2, align 4
  br label %74

71:                                               ; preds = %67, %13
  %72 = phi i32 [ %69, %67 ], [ %8, %13 ]
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %72) #9
  br label %74

74:                                               ; preds = %71, %70, %1
  %75 = phi i32 [ -22, %71 ], [ 0, %1 ], [ 0, %70 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_acquire(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_devm_notifier_register(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @scmi_devm_release_notifier, i32 noundef 20, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.13) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @scmi_notifier_register(ptr noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @devres_free(ptr noundef nonnull %6) #8
  br label %27

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8
  store ptr %15, ptr %6, align 4
  %16 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %6, i32 0, i32 1
  store i8 %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %6, i32 0, i32 2
  store i8 %2, ptr %17, align 1
  %18 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %6, i32 0, i32 5
  store ptr %4, ptr %18, align 4
  %19 = icmp eq ptr %3, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %3, align 4
  %22 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %6, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi ptr [ %22, %20 ], [ null, %14 ]
  %25 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %6, i32 0, i32 4
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  tail call void @devres_add(ptr noundef %26, ptr noundef nonnull %6) #8
  br label %27

27:                                               ; preds = %23, %13, %5
  %28 = phi i32 [ %11, %13 ], [ 0, %23 ], [ -12, %5 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_devm_notifier_unregister(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef readonly %3, ptr nocapture noundef readnone %4) #0 {
  %6 = alloca %struct.scmi_notifier_devres, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %6, i32 0, i32 1
  store i8 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %6, i32 0, i32 2
  store i8 %2, ptr %11, align 1
  %12 = icmp eq ptr %3, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %3, align 4
  %15 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %6, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi ptr [ %15, %13 ], [ null, %5 ]
  %18 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %6, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  %20 = call i32 @devres_release(ptr noundef %19, ptr noundef nonnull @scmi_devm_release_notifier, ptr noundef nonnull @scmi_devm_notifier_match, ptr noundef nonnull %6) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !10

22:                                               ; preds = %16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1552, i32 noundef 9, ptr noundef null) #8
  br label %23

23:                                               ; preds = %22, %16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_notifier_register(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef readonly %3, ptr noundef %4) #0 {
  %6 = tail call ptr @scmi_notification_instance_data_get(ptr noundef %0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %5
  %9 = zext i8 %1 to i32
  %10 = shl nuw i32 %9, 24
  %11 = zext i8 %2 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %10
  %14 = icmp eq ptr %3, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 65535
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i32 [ %17, %15 ], [ 65535, %8 ]
  %20 = or i32 %19, %13
  %21 = tail call fastcc ptr @__scmi_event_handler_get_ops(ptr noundef nonnull %6, i32 noundef %20, i1 noundef zeroext true) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.scmi_event_handler, ptr %21, i32 0, i32 3
  %25 = tail call i32 @blocking_notifier_chain_register(ptr noundef %24, ptr noundef %4) #8
  %26 = getelementptr inbounds %struct.scmi_event_handler, ptr %21, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @scmi_event_handler_enable_events(ptr noundef nonnull %21)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call fastcc void @scmi_put_handler(ptr noundef nonnull %6, ptr noundef nonnull %21)
  br label %33

33:                                               ; preds = %32, %29, %23, %18, %5
  %34 = phi i32 [ -19, %5 ], [ -22, %18 ], [ %30, %32 ], [ 0, %29 ], [ 0, %23 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_notifier_unregister(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef readonly %3, ptr noundef %4) #0 {
  %6 = tail call ptr @scmi_notification_instance_data_get(ptr noundef %0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = zext i8 %1 to i32
  %10 = shl nuw i32 %9, 24
  %11 = zext i8 %2 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %10
  %14 = icmp eq ptr %3, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 65535
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i32 [ %17, %15 ], [ 65535, %8 ]
  %20 = or i32 %19, %13
  %21 = tail call fastcc ptr @__scmi_event_handler_get_ops(ptr noundef nonnull %6, i32 noundef %20, i1 noundef zeroext false) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.scmi_event_handler, ptr %21, i32 0, i32 3
  %25 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %24, ptr noundef %4) #8
  tail call fastcc void @scmi_put_handler(ptr noundef nonnull %6, ptr noundef nonnull %21)
  tail call fastcc void @scmi_put_handler(ptr noundef nonnull %6, ptr noundef nonnull %21)
  br label %26

26:                                               ; preds = %23, %18, %5
  %27 = phi i32 [ 0, %23 ], [ -19, %5 ], [ -22, %18 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_devm_release_notifier(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %1, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @scmi_notifier_unregister(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef %9, ptr noundef %11)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_devm_notifier_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1503, i32 noundef 9, ptr noundef null) #8
  br label %41

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %1, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %2, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %10, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %1, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %2, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %16, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %1, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %2, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %2, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = select i1 %29, i1 true, i1 %32
  %34 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %41, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %1, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %2, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br label %41

41:                                               ; preds = %35, %26, %20, %14, %8, %7
  %42 = phi i1 [ false, %7 ], [ false, %20 ], [ false, %14 ], [ false, %8 ], [ %40, %35 ], [ %34, %26 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scmi_put_handler(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scmi_event_handler, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scmi_notify_instance, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef %1)
  br label %19

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 4
  %11 = load i8, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %10, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %12) #8
  %13 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef %1)
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %14, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %15) #8
  br i1 %13, label %16, label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.scmi_notify_instance, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @scmi_protocol_release(ptr noundef %18, i8 noundef zeroext %11) #8
  br label %19

19:                                               ; preds = %16, %9, %7
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__scmi_event_handler_get_ops(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.scmi_notify_instance, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %1, 24
  %9 = getelementptr ptr, ptr %7, i32 %8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = lshr i32 %1, 16
  %12 = and i32 %11, 255
  %13 = icmp eq ptr %10, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %10, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %5, %3
  %19 = getelementptr inbounds %struct.scmi_notify_instance, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %19) #8
  br label %66

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %10, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr ptr, ptr %22, i32 %12
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.scmi_notify_instance, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %25) #8
  %26 = icmp eq ptr %24, null
  br i1 %26, label %66, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %28, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %29) #8
  %30 = load ptr, ptr %24, align 4
  %31 = mul i32 %1, 1640531527
  %32 = lshr i32 %31, 26
  %33 = getelementptr %struct.scmi_registered_events_desc, ptr %30, i32 0, i32 11, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = getelementptr i8, ptr %34, i32 -40
  %37 = icmp eq ptr %36, null
  %38 = or i1 %35, %37
  br i1 %38, label %61, label %39

39:                                               ; preds = %43, %27
  %40 = phi ptr [ %47, %43 ], [ %36, %27 ]
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.scmi_event_handler, ptr %40, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  %47 = getelementptr i8, ptr %45, i32 -40
  %48 = icmp eq ptr %47, null
  %49 = or i1 %46, %48
  br i1 %49, label %61, label %39

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.scmi_event_handler, ptr %40, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #8, !srcloc !17
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #8, !srcloc !18
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !11

55:                                               ; preds = %50
  %56 = add i32 %53, 1
  %57 = or i32 %56, %53
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %61, label %59, !prof !10

59:                                               ; preds = %55, %50
  %60 = phi i32 [ 2, %50 ], [ 1, %55 ]
  tail call void @refcount_warn_saturate(ptr noundef %51, i32 noundef %60) #8
  br label %61

61:                                               ; preds = %59, %55, %43, %27
  %62 = phi ptr [ %40, %55 ], [ %40, %59 ], [ null, %27 ], [ null, %43 ]
  %63 = load ptr, ptr %24, align 4
  %64 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %63, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %64) #8
  %65 = icmp eq ptr %62, null
  br i1 %65, label %66, label %183

66:                                               ; preds = %61, %20, %18
  %67 = phi ptr [ %25, %61 ], [ %19, %18 ], [ %25, %20 ]
  %68 = mul i32 %1, 1640531527
  %69 = lshr i32 %68, 28
  %70 = getelementptr %struct.scmi_notify_instance, ptr %0, i32 0, i32 6, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = getelementptr i8, ptr %71, i32 -40
  %74 = icmp eq ptr %73, null
  %75 = or i1 %72, %74
  br i1 %75, label %98, label %76

76:                                               ; preds = %80, %66
  %77 = phi ptr [ %84, %80 ], [ %73, %66 ]
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, %1
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.scmi_event_handler, ptr %77, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  %84 = getelementptr i8, ptr %82, i32 -40
  %85 = icmp eq ptr %84, null
  %86 = or i1 %83, %85
  br i1 %86, label %98, label %76

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.scmi_event_handler, ptr %77, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #8, !srcloc !17
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 1, ptr elementtype(i32) %88) #8, !srcloc !18
  %90 = extractvalue { i32, i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92, !prof !11

92:                                               ; preds = %87
  %93 = add i32 %90, 1
  %94 = or i32 %93, %90
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %183, label %96, !prof !10

96:                                               ; preds = %92, %87
  %97 = phi i32 [ 2, %87 ], [ 1, %92 ]
  tail call void @refcount_warn_saturate(ptr noundef %88, i32 noundef %97) #8
  br label %183

98:                                               ; preds = %80, %66
  br i1 %2, label %99, label %183

99:                                               ; preds = %98
  %100 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %101 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 52) #10
  %102 = icmp eq ptr %101, null
  br i1 %102, label %183, label %103

103:                                              ; preds = %99
  store i32 %1, ptr %101, align 8
  %104 = getelementptr inbounds %struct.scmi_event_handler, ptr %101, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %104, ptr noundef nonnull @.str.14, ptr noundef nonnull @scmi_allocate_event_handler.__key) #8
  %105 = getelementptr inbounds %struct.scmi_event_handler, ptr %101, i32 0, i32 3, i32 1
  store ptr null, ptr %105, align 4
  %106 = getelementptr inbounds %struct.scmi_event_handler, ptr %101, i32 0, i32 1
  store volatile i32 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.scmi_event_handler, ptr %101, i32 0, i32 4
  %108 = load i32, ptr %101, align 8
  %109 = mul i32 %108, 1640531527
  %110 = lshr i32 %109, 28
  %111 = getelementptr %struct.scmi_notify_instance, ptr %0, i32 0, i32 6, i32 %110
  %112 = load ptr, ptr %111, align 4
  store volatile ptr %112, ptr %107, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.hlist_node, ptr %112, i32 0, i32 1
  store volatile ptr %107, ptr %115, align 4
  br label %116

116:                                              ; preds = %114, %103
  store volatile ptr %107, ptr %111, align 4
  %117 = getelementptr inbounds %struct.scmi_event_handler, ptr %101, i32 0, i32 4, i32 1
  store volatile ptr %111, ptr %117, align 4
  br i1 %4, label %174, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.scmi_notify_instance, ptr %0, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = load i32, ptr %101, align 8
  %122 = lshr i32 %121, 24
  %123 = getelementptr ptr, ptr %120, i32 %122
  %124 = load volatile ptr, ptr %123, align 4
  %125 = lshr i32 %121, 16
  %126 = and i32 %125, 255
  %127 = icmp eq ptr %124, null
  br i1 %127, label %170, label %128

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %124, i32 0, i32 7
  %130 = load i32, ptr %129, align 4
  %131 = icmp ult i32 %126, %130
  br i1 %131, label %132, label %170

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %124, i32 0, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr ptr, ptr %134, i32 %126
  %136 = load volatile ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %170, label %138

138:                                              ; preds = %132
  %139 = icmp eq ptr %111, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %138
  %141 = load ptr, ptr %107, align 8
  store volatile ptr %141, ptr %111, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.hlist_node, ptr %141, i32 0, i32 1
  store volatile ptr %111, ptr %144, align 4
  %145 = load i32, ptr %101, align 8
  %146 = lshr i32 %145, 24
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i32 [ %146, %143 ], [ %122, %140 ]
  store ptr null, ptr %107, align 8
  store ptr null, ptr %117, align 4
  br label %149

149:                                              ; preds = %147, %138
  %150 = phi i32 [ %122, %138 ], [ %148, %147 ]
  %151 = getelementptr inbounds %struct.scmi_notify_instance, ptr %0, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = trunc i32 %150 to i8
  %154 = tail call i32 @scmi_protocol_acquire(ptr noundef %152, i8 noundef zeroext %153) #8
  %155 = getelementptr inbounds %struct.scmi_event_handler, ptr %101, i32 0, i32 2
  store ptr %136, ptr %155, align 8
  %156 = load ptr, ptr %136, align 4
  %157 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %156, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %157) #8
  %158 = load ptr, ptr %136, align 4
  %159 = load i32, ptr %101, align 8
  %160 = mul i32 %159, 1640531527
  %161 = lshr i32 %160, 26
  %162 = getelementptr %struct.scmi_registered_events_desc, ptr %158, i32 0, i32 11, i32 %161
  %163 = load ptr, ptr %162, align 4
  store volatile ptr %163, ptr %107, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %149
  %166 = getelementptr inbounds %struct.hlist_node, ptr %163, i32 0, i32 1
  store volatile ptr %107, ptr %166, align 4
  br label %167

167:                                              ; preds = %165, %149
  store volatile ptr %107, ptr %162, align 4
  store volatile ptr %162, ptr %117, align 4
  %168 = load ptr, ptr %136, align 4
  %169 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %168, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %169) #8
  br label %183

170:                                              ; preds = %132, %128, %118
  %171 = getelementptr inbounds %struct.scmi_event_handler, ptr %101, i32 0, i32 2
  %172 = load ptr, ptr %171, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %181

174:                                              ; preds = %116
  %175 = getelementptr inbounds %struct.scmi_event_handler, ptr %101, i32 0, i32 2
  %176 = load ptr, ptr %175, align 8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %183, label %181

178:                                              ; preds = %170
  %179 = load volatile ptr, ptr %123, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %178, %174, %170
  %182 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef nonnull %101)
  br label %183

183:                                              ; preds = %181, %178, %174, %167, %99, %98, %96, %92, %61
  %184 = phi ptr [ %67, %98 ], [ %67, %181 ], [ %67, %167 ], [ %67, %99 ], [ %67, %178 ], [ %67, %174 ], [ %67, %96 ], [ %67, %92 ], [ %25, %61 ]
  %185 = phi ptr [ null, %98 ], [ null, %181 ], [ %101, %167 ], [ null, %99 ], [ %101, %178 ], [ %101, %174 ], [ %77, %96 ], [ %77, %92 ], [ %62, %61 ]
  tail call void @mutex_unlock(ptr noundef %184) #8
  ret ptr %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i64 2153322329}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153327043}
!13 = !{i64 2153457349}
!14 = !{i64 2153457493}
!15 = !{i64 2155207319}
!16 = !{i64 2155198979}
!17 = !{i64 769117, i64 2148270683, i64 2148270709, i64 2148270756, i64 2148270778, i64 2148270806, i64 2148270826}
!18 = !{i64 2148334606, i64 2148334638, i64 2148334667, i64 2148334701, i64 2148334732, i64 2148334755}
!19 = !{i64 2148438889}
!20 = !{i64 2148336963, i64 2148336995, i64 2148337024, i64 2148337058, i64 2148337089, i64 2148337112}
!21 = !{i64 2149363224}
!22 = !{i8 0, i8 2}
