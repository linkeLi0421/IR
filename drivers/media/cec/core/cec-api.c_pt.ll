; ModuleID = '/llk/IR/drivers/media/cec/core/cec-api.c_pt.bc'
source_filename = "../drivers/media/cec/core/cec-api.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cec_fh = type { %struct.list_head, %struct.list_head, ptr, i8, i8, %struct.wait_queue_head, %struct.mutex, [8 x %struct.list_head], [8 x i16], i32, [2 x %struct.cec_event_entry], %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cec_event_entry = type { %struct.list_head, %struct.cec_event }
%struct.cec_event = type { i64, i32, i32, %union.anon.67 }
%union.anon.67 = type { [16 x i32] }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.66 }
%union.anon.66 = type { [16 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_caps = type { [32 x i8], [32 x i8], i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cec_msg_entry = type { %struct.list_head, %struct.cec_msg }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.cec_event_state_change = type { i16, i16, i16 }

@cec_devnode_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cec_poll, ptr @cec_ioctl, ptr @cec_ioctl, ptr null, i32 0, ptr @cec_open, ptr null, ptr @cec_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@cec_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\016cec-%s: %s: invalid mode bits set\0A\00", align 1
@__func__.cec_s_mode = private unnamed_addr constant [11 x i8] c"cec_s_mode\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\016cec-%s: %s: unknown mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\016cec-%s: %s: MONITOR_ALL not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\016cec-%s: %s: MONITOR_PIN not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\016cec-%s: %s: cannot transmit\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\016cec-%s: %s: monitor modes require NO_INITIATOR\0A\00", align 1
@cec_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"&fh->lock\00", align 1
@cec_open.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"&fh->wait\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"drivers/media/cec/core/cec-api.c\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cec_poll(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cec_fh, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cec_fh, ptr %4, i32 0, i32 5
  %8 = icmp eq ptr %1, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %7, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void %10(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %1) #9
  br label %15

15:                                               ; preds = %14, %9, %2
  %16 = icmp eq ptr %6, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.cec_adapter, ptr %6, i32 0, i32 2, i32 4
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cec_adapter, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.cec_adapter, ptr %6, i32 0, i32 21
  %24 = load i8, ptr %23, align 2, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.cec_adapter, ptr %6, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = icmp ult i32 %28, 18
  %30 = select i1 %29, i32 260, i32 0
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ 0, %21 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.cec_fh, ptr %4, i32 0, i32 12
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  %36 = or i32 %32, 65
  %37 = select i1 %35, i32 %32, i32 %36
  %38 = getelementptr inbounds %struct.cec_fh, ptr %4, i32 0, i32 9
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  %41 = or i32 %37, 2
  %42 = select i1 %40, i32 %37, i32 %41
  tail call void @mutex_unlock(ptr noundef %22) #9
  br label %43

43:                                               ; preds = %31, %17, %15
  %44 = phi i32 [ %42, %31 ], [ 26, %17 ], [ 26, %15 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cec_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cec_event, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wait_queue_entry, align 4
  %8 = alloca %struct.wait_queue_entry, align 4
  %9 = alloca %struct.wait_queue_entry, align 4
  %10 = alloca %struct.cec_msg, align 8
  %11 = alloca %struct.cec_msg, align 8
  %12 = alloca %struct.cec_log_addrs, align 4
  %13 = alloca %struct.cec_log_addrs, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca %struct.cec_caps, align 4
  %17 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = inttoptr i32 %2 to ptr
  %26 = icmp eq ptr %20, null
  br i1 %26, label %822, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 2, i32 4
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %822, label %31

31:                                               ; preds = %27
  switch i32 %1, label %822 [
    i32 -1068736256, label %32
    i32 -2147327743, label %64
    i32 1073897730, label %82
    i32 -2141429501, label %162
    i32 -1067687676, label %184
    i32 -2143002358, label %254
    i32 -1070046971, label %276
    i32 -1070046970, label %338
    i32 -1068474105, label %451
    i32 -2147196664, label %617
    i32 1074028809, label %638
  ]

32:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %16) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %16, i8 0, i32 76, i1 false) #9
  %33 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 2, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @strscpy(ptr noundef nonnull %16, ptr noundef %37, i32 noundef 32) #9
  %39 = getelementptr inbounds %struct.cec_caps, ptr %16, i32 0, i32 1
  %40 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 1
  %41 = call i32 @strscpy(ptr noundef %39, ptr noundef %40, i32 noundef 32) #9
  %42 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 17
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.cec_caps, ptr %16, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 16
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.cec_caps, ptr %16, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.cec_caps, ptr %16, i32 0, i32 4
  store i32 332032, ptr %49, align 4
  %50 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 76, i32 -1090519040) #10, !srcloc !9
  %51 = extractvalue { i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %32
  %54 = tail call ptr @llvm.thread.pointer() #9
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %55) #11, !srcloc !10
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %59 = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull %16, i32 noundef 76) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 0, i32 -14
  br label %62

62:                                               ; preds = %53, %32
  %63 = phi i32 [ -14, %32 ], [ %61, %53 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %16) #9
  br label %822

64:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #9
  %65 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %65) #9
  %66 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 18
  %67 = load i16, ptr %66, align 2
  store i16 %67, ptr %15, align 2
  tail call void @mutex_unlock(ptr noundef %65) #9
  %68 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 2, i32 -1090519040) #10, !srcloc !9
  %69 = extractvalue { i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = tail call ptr @llvm.thread.pointer() #9
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %74 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %73) #11, !srcloc !10
  %75 = and i32 %74, -13
  %76 = or i32 %75, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %77 = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull %15, i32 noundef 2) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 0, i32 -14
  br label %80

80:                                               ; preds = %71, %64
  %81 = phi i32 [ -14, %64 ], [ %79, %71 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #9
  br label %822

82:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i16 0, ptr %14, align 2, !annotation !13
  %83 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 16
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %160, label %87

87:                                               ; preds = %82
  %88 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 2, i32 -1090519040) #10, !srcloc !14
  %89 = extractvalue { i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99, !prof !15

91:                                               ; preds = %87
  %92 = tail call ptr @llvm.thread.pointer() #9
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %94 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %93) #11, !srcloc !10
  %95 = and i32 %94, -13
  %96 = or i32 %95, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %97 = call i32 @arm_copy_from_user(ptr noundef nonnull %14, ptr noundef %25, i32 noundef 2) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99, !prof !15

99:                                               ; preds = %91, %87
  %100 = phi i32 [ %97, %91 ], [ 2, %87 ]
  %101 = sub i32 2, %100
  %102 = getelementptr i8, ptr %14, i32 %101
  call void @llvm.memset.p0.i32(ptr align 1 %102, i8 0, i32 %100, i1 false) #9
  br label %160

103:                                              ; preds = %91
  %104 = load i16, ptr %14, align 2
  %105 = zext i16 %104 to i32
  %106 = icmp eq i16 %104, -1
  br i1 %106, label %137, label %107

107:                                              ; preds = %103
  %108 = and i32 %105, 15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = and i32 %105, 240
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = and i32 %105, 3840
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = and i32 %105, 61440
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %137, label %119

119:                                              ; preds = %116, %113, %110, %107
  %120 = phi i1 [ false, %116 ], [ true, %113 ], [ true, %110 ], [ true, %107 ]
  %121 = phi i1 [ false, %116 ], [ false, %113 ], [ true, %110 ], [ true, %107 ]
  %122 = phi i32 [ 12, %116 ], [ 8, %113 ], [ 4, %110 ], [ 0, %107 ]
  br i1 %120, label %123, label %137

123:                                              ; preds = %119
  %124 = shl nuw nsw i32 240, %122
  %125 = and i32 %124, %105
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %160, label %127

127:                                              ; preds = %123
  br i1 %121, label %128, label %137

128:                                              ; preds = %127
  %129 = shl i32 3840, %122
  %130 = and i32 %129, %105
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %160, label %132

132:                                              ; preds = %128
  br i1 %109, label %137, label %133

133:                                              ; preds = %132
  %134 = shl i32 61440, %122
  %135 = and i32 %134, %105
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %160, label %137

137:                                              ; preds = %133, %132, %127, %119, %116, %103
  %138 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 3
  call void @mutex_lock(ptr noundef %138) #9
  %139 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 29
  %140 = load ptr, ptr %139, align 8
  %141 = icmp ne ptr %140, null
  %142 = icmp eq ptr %140, %18
  %143 = and i1 %142, %141
  %144 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 28
  %145 = load ptr, ptr %144, align 4
  %146 = icmp ne ptr %145, null
  %147 = icmp eq ptr %145, %18
  %148 = and i1 %146, %147
  %149 = select i1 %143, i1 true, i1 %148
  %150 = or i1 %141, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %137
  %152 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 3
  %153 = load i8, ptr %152, align 4
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %158, label %156

155:                                              ; preds = %137
  br i1 %149, label %156, label %158

156:                                              ; preds = %155, %151
  %157 = load i16, ptr %14, align 2
  call void @__cec_s_phys_addr(ptr noundef %20, i16 noundef zeroext %157, i1 noundef zeroext %24) #9
  br label %158

158:                                              ; preds = %156, %155, %151
  %159 = phi i32 [ 0, %156 ], [ -16, %155 ], [ -16, %151 ]
  call void @mutex_unlock(ptr noundef %138) #9
  br label %160

160:                                              ; preds = %158, %133, %128, %123, %99, %82
  %161 = phi i32 [ %159, %158 ], [ -25, %82 ], [ -14, %99 ], [ -22, %133 ], [ -22, %128 ], [ -22, %123 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  br label %822

162:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %13) #9
  %163 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %163) #9
  %164 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 31
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %13, ptr noundef align 8 dereferenceable(92) %164, i32 92, i1 false) #9
  %165 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 21
  %166 = load i8, ptr %165, align 2, !range !8
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i32 -1, ptr %13, align 4
  br label %169

169:                                              ; preds = %168, %162
  tail call void @mutex_unlock(ptr noundef %163) #9
  %170 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 92, i32 -1090519040) #10, !srcloc !9
  %171 = extractvalue { i32, i32 } %170, 0
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = tail call ptr @llvm.thread.pointer() #9
  %175 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 3
  %176 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %175) #11, !srcloc !10
  %177 = and i32 %176, -13
  %178 = or i32 %177, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %178) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %179 = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull %13, i32 noundef 92) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %176) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 0, i32 -14
  br label %182

182:                                              ; preds = %173, %169
  %183 = phi i32 [ -14, %169 ], [ %181, %173 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %13) #9
  br label %822

184:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %12) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %12, i8 0, i32 92, i1 false) #9, !annotation !13
  %185 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 16
  %186 = load i32, ptr %185, align 8
  %187 = and i32 %186, 2
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %252, label %189

189:                                              ; preds = %184
  %190 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 92, i32 -1090519040) #10
  %191 = extractvalue { i32, i32 } %190, 0
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %201, !prof !15

193:                                              ; preds = %189
  %194 = tail call ptr @llvm.thread.pointer() #9
  %195 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 3
  %196 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %195) #11, !srcloc !10
  %197 = and i32 %196, -13
  %198 = or i32 %197, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %198) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %199 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %25, i32 noundef 92) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %196) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201, !prof !15

201:                                              ; preds = %193, %189
  %202 = phi i32 [ %199, %193 ], [ 92, %189 ]
  %203 = sub i32 92, %202
  %204 = getelementptr i8, ptr %12, i32 %203
  call void @llvm.memset.p0.i32(ptr align 1 %204, i8 0, i32 %202, i1 false) #9
  br label %252

205:                                              ; preds = %193
  %206 = getelementptr inbounds %struct.cec_log_addrs, ptr %12, i32 0, i32 5
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 7
  store i32 %208, ptr %206, align 4
  %209 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 3
  call void @mutex_lock(ptr noundef %209) #9
  %210 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 20
  %211 = load i8, ptr %210, align 1, !range !8
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %242

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.cec_log_addrs, ptr %12, i32 0, i32 3
  %215 = load i8, ptr %214, align 1
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 21
  %219 = load i8, ptr %218, align 2, !range !8
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %242

221:                                              ; preds = %217, %213
  %222 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 29
  %223 = load ptr, ptr %222, align 8
  %224 = icmp ne ptr %223, null
  %225 = icmp eq ptr %223, %18
  %226 = and i1 %225, %224
  %227 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 28
  %228 = load ptr, ptr %227, align 4
  %229 = icmp ne ptr %228, null
  %230 = icmp eq ptr %228, %18
  %231 = and i1 %229, %230
  %232 = select i1 %226, i1 true, i1 %231
  %233 = or i1 %224, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %221
  %235 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 3
  %236 = load i8, ptr %235, align 4
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %242, label %239

238:                                              ; preds = %221
  br i1 %232, label %239, label %242

239:                                              ; preds = %238, %234
  %240 = call i32 @__cec_s_log_addrs(ptr noundef nonnull %20, ptr noundef nonnull %12, i1 noundef zeroext %24) #9
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %239, %238, %234, %217, %205
  %243 = phi i32 [ -16, %234 ], [ %240, %239 ], [ -16, %238 ], [ -16, %217 ], [ -16, %205 ]
  call void @mutex_unlock(ptr noundef %209) #9
  br label %252

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 31
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %12, ptr noundef align 8 dereferenceable(92) %245, i32 92, i1 false) #9
  call void @mutex_unlock(ptr noundef %209) #9
  %246 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %195) #11, !srcloc !10
  %247 = and i32 %246, -13
  %248 = or i32 %247, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %248) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %249 = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull %12, i32 noundef 92) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %246) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %250, i32 0, i32 -14
  br label %252

252:                                              ; preds = %244, %242, %201, %184
  %253 = phi i32 [ -25, %184 ], [ %243, %242 ], [ -14, %201 ], [ %251, %244 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %12) #9
  br label %822

254:                                              ; preds = %31
  %255 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 16
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %822, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %260) #9
  %261 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 68, i32 -1090519040) #10, !srcloc !9
  %262 = extractvalue { i32, i32 } %261, 0
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 32
  %266 = tail call ptr @llvm.thread.pointer() #9
  %267 = getelementptr inbounds %struct.thread_info, ptr %266, i32 0, i32 3
  %268 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %267) #11, !srcloc !10
  %269 = and i32 %268, -13
  %270 = or i32 %269, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %270) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %271 = tail call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef %265, i32 noundef 68) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %268) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %272 = icmp eq i32 %271, 0
  %273 = select i1 %272, i32 0, i32 -14
  br label %274

274:                                              ; preds = %264, %259
  %275 = phi i32 [ -14, %259 ], [ %273, %264 ]
  tail call void @mutex_unlock(ptr noundef %260) #9
  br label %822

276:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i32 56, i1 false) #9
  %277 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 16
  %278 = load i32, ptr %277, align 8
  %279 = and i32 %278, 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %336, label %281

281:                                              ; preds = %276
  %282 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 56, i32 -1090519040) #10
  %283 = extractvalue { i32, i32 } %282, 0
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %293, !prof !15

285:                                              ; preds = %281
  %286 = tail call ptr @llvm.thread.pointer() #9
  %287 = getelementptr inbounds %struct.thread_info, ptr %286, i32 0, i32 3
  %288 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %287) #11, !srcloc !10
  %289 = and i32 %288, -13
  %290 = or i32 %289, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %290) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %291 = call i32 @arm_copy_from_user(ptr noundef nonnull %11, ptr noundef %25, i32 noundef 56) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %288) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %297, label %293, !prof !15

293:                                              ; preds = %285, %281
  %294 = phi i32 [ %291, %285 ], [ 56, %281 ]
  %295 = sub i32 56, %294
  %296 = getelementptr i8, ptr %11, i32 %295
  call void @llvm.memset.p0.i32(ptr align 1 %296, i8 0, i32 %294, i1 false) #9
  br label %336

297:                                              ; preds = %285
  %298 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 3
  call void @mutex_lock(ptr noundef %298) #9
  %299 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 31, i32 3
  %300 = load i8, ptr %299, align 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %324, label %302

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 20
  %304 = load i8, ptr %303, align 1, !range !8
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %324

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 29
  %308 = load ptr, ptr %307, align 8
  %309 = icmp ne ptr %308, null
  %310 = icmp eq ptr %308, %18
  %311 = and i1 %310, %309
  %312 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 28
  %313 = load ptr, ptr %312, align 4
  %314 = icmp ne ptr %313, null
  %315 = icmp eq ptr %313, %18
  %316 = and i1 %314, %315
  %317 = select i1 %311, i1 true, i1 %316
  %318 = or i1 %309, %317
  br i1 %318, label %323, label %319

319:                                              ; preds = %306
  %320 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 3
  %321 = load i8, ptr %320, align 4
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %324, label %326

323:                                              ; preds = %306
  br i1 %317, label %326, label %324

324:                                              ; preds = %323, %319, %302, %297
  %325 = phi i32 [ -16, %319 ], [ -16, %323 ], [ -64, %302 ], [ -1, %297 ]
  call void @mutex_unlock(ptr noundef %298) #9
  br label %336

326:                                              ; preds = %323, %319
  %327 = call i32 @cec_transmit_msg_fh(ptr noundef nonnull %20, ptr noundef nonnull %11, ptr noundef %18, i1 noundef zeroext %24) #9
  call void @mutex_unlock(ptr noundef %298) #9
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %326
  %330 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %287) #11, !srcloc !10
  %331 = and i32 %330, -13
  %332 = or i32 %331, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %332) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %333 = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull %11, i32 noundef 56) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %330) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %334 = icmp eq i32 %333, 0
  %335 = select i1 %334, i32 0, i32 -14
  br label %336

336:                                              ; preds = %329, %326, %324, %293, %276
  %337 = phi i32 [ -25, %276 ], [ %327, %326 ], [ %325, %324 ], [ -14, %293 ], [ %335, %329 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #9
  br label %822

338:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i32 56, i1 false) #9
  %339 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 56, i32 -1090519040) #10
  %340 = extractvalue { i32, i32 } %339, 0
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %350, !prof !15

342:                                              ; preds = %338
  %343 = tail call ptr @llvm.thread.pointer() #9
  %344 = getelementptr inbounds %struct.thread_info, ptr %343, i32 0, i32 3
  %345 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %344) #11, !srcloc !10
  %346 = and i32 %345, -13
  %347 = or i32 %346, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %347) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %348 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %25, i32 noundef 56) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %345) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %354, label %350, !prof !15

350:                                              ; preds = %342, %338
  %351 = phi i32 [ %348, %342 ], [ 56, %338 ]
  %352 = sub i32 56, %351
  %353 = getelementptr i8, ptr %10, i32 %352
  call void @llvm.memset.p0.i32(ptr align 1 %353, i8 0, i32 %351, i1 false) #9
  br label %449

354:                                              ; preds = %342
  %355 = getelementptr inbounds %struct.cec_msg, ptr %10, i32 0, i32 3
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 6
  %358 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 12
  %359 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 5
  br label %360

360:                                              ; preds = %429, %354
  call void @mutex_lock(ptr noundef %357) #9
  %361 = load i32, ptr %358, align 8
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %432

363:                                              ; preds = %360
  call void @mutex_unlock(ptr noundef %357) #9
  br i1 %24, label %364, label %449

364:                                              ; preds = %363
  %365 = load i32, ptr %355, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %412, label %367

367:                                              ; preds = %364
  %368 = call i32 @__msecs_to_jiffies(i32 noundef %365) #9
  %369 = load i32, ptr %358, align 8
  %370 = icmp ne i32 %369, 0
  %371 = xor i1 %370, true
  %372 = icmp ne i32 %368, 0
  %373 = select i1 %371, i1 true, i1 %372
  %374 = select i1 %373, i32 %368, i32 1
  %375 = icmp eq i32 %374, 0
  %376 = select i1 %370, i1 true, i1 %375
  br i1 %376, label %408, label %377

377:                                              ; preds = %367
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false) #9, !annotation !13
  %378 = load i32, ptr %355, align 4
  %379 = call i32 @__msecs_to_jiffies(i32 noundef %378) #9
  call void @init_wait_entry(ptr noundef nonnull %8, i32 noundef 0) #9
  %380 = call i32 @prepare_to_wait_event(ptr noundef %359, ptr noundef nonnull %8, i32 noundef 1) #9
  %381 = load i32, ptr %358, align 8
  %382 = icmp ne i32 %381, 0
  %383 = xor i1 %382, true
  %384 = icmp ne i32 %379, 0
  %385 = select i1 %383, i1 true, i1 %384
  %386 = select i1 %385, i32 %379, i32 1
  %387 = icmp eq i32 %386, 0
  %388 = select i1 %382, i1 true, i1 %387
  br i1 %388, label %404, label %389

389:                                              ; preds = %393, %377
  %390 = phi i32 [ %401, %393 ], [ %386, %377 ]
  %391 = phi i32 [ %395, %393 ], [ %380, %377 ]
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %406

393:                                              ; preds = %389
  %394 = call i32 @schedule_timeout(i32 noundef %390) #9
  %395 = call i32 @prepare_to_wait_event(ptr noundef %359, ptr noundef nonnull %8, i32 noundef 1) #9
  %396 = load i32, ptr %358, align 8
  %397 = icmp ne i32 %396, 0
  %398 = xor i1 %397, true
  %399 = icmp ne i32 %394, 0
  %400 = select i1 %398, i1 true, i1 %399
  %401 = select i1 %400, i32 %394, i32 1
  %402 = icmp eq i32 %401, 0
  %403 = select i1 %397, i1 true, i1 %402
  br i1 %403, label %404, label %389

404:                                              ; preds = %393, %377
  %405 = phi i32 [ %386, %377 ], [ %401, %393 ]
  call void @finish_wait(ptr noundef %359, ptr noundef nonnull %8) #9
  br label %406

406:                                              ; preds = %404, %389
  %407 = phi i32 [ %405, %404 ], [ %391, %389 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #9
  br label %408

408:                                              ; preds = %406, %367
  %409 = phi i32 [ %374, %367 ], [ %407, %406 ]
  %410 = icmp eq i32 %409, 0
  %411 = call i32 @llvm.smin.i32(i32 %409, i32 0) #9
  br i1 %410, label %449, label %429

412:                                              ; preds = %364
  %413 = load i32, ptr %358, align 8
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %429

415:                                              ; preds = %412
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false) #9, !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %9, i32 noundef 0) #9
  %416 = call i32 @prepare_to_wait_event(ptr noundef %359, ptr noundef nonnull %9, i32 noundef 1) #9
  %417 = load i32, ptr %358, align 8
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %422, %415
  %420 = phi i32 [ %423, %422 ], [ %416, %415 ]
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %427

422:                                              ; preds = %419
  call void @schedule() #9
  %423 = call i32 @prepare_to_wait_event(ptr noundef %359, ptr noundef nonnull %9, i32 noundef 1) #9
  %424 = load i32, ptr %358, align 8
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %419, label %426

426:                                              ; preds = %422, %415
  call void @finish_wait(ptr noundef %359, ptr noundef nonnull %9) #9
  br label %427

427:                                              ; preds = %426, %419
  %428 = phi i32 [ 0, %426 ], [ %420, %419 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #9
  br label %429

429:                                              ; preds = %427, %412, %408
  %430 = phi i32 [ 0, %412 ], [ %428, %427 ], [ %411, %408 ]
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %360, label %449

432:                                              ; preds = %360
  %433 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 11
  %434 = load ptr, ptr %433, align 8
  %435 = getelementptr inbounds %struct.list_head, ptr %434, i32 0, i32 1
  %436 = load ptr, ptr %435, align 4
  %437 = load ptr, ptr %434, align 4
  %438 = getelementptr inbounds %struct.list_head, ptr %437, i32 0, i32 1
  store ptr %436, ptr %438, align 4
  store volatile ptr %437, ptr %436, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %434, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %435, align 4
  %439 = getelementptr inbounds %struct.cec_msg_entry, ptr %434, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef align 8 dereferenceable(56) %439, i32 56, i1 false) #9
  call void @kfree(ptr noundef %434) #9
  %440 = load i32, ptr %358, align 8
  %441 = add i32 %440, -1
  store i32 %441, ptr %358, align 8
  call void @mutex_unlock(ptr noundef %357) #9
  store i32 %356, ptr %355, align 4
  %442 = getelementptr inbounds %struct.cec_msg, ptr %10, i32 0, i32 5
  store i32 0, ptr %442, align 4
  %443 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %344) #11, !srcloc !10
  %444 = and i32 %443, -13
  %445 = or i32 %444, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %445) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %446 = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull %10, i32 noundef 56) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %443) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %447 = icmp eq i32 %446, 0
  %448 = select i1 %447, i32 0, i32 -14
  br label %449

449:                                              ; preds = %432, %429, %408, %363, %350
  %450 = phi i32 [ -14, %350 ], [ %448, %432 ], [ -11, %363 ], [ %430, %429 ], [ -110, %408 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #9
  br label %822

451:                                              ; preds = %31
  %452 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %452) #9
  %453 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 9
  %454 = load i32, ptr %453, align 8
  %455 = or i32 %454, %23
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %451
  %458 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 5
  br label %465

459:                                              ; preds = %481, %451
  %460 = getelementptr %struct.cec_fh, ptr %18, i32 0, i32 7, i32 0
  %461 = load volatile ptr, ptr %460, align 4
  %462 = icmp eq ptr %461, %460
  %463 = icmp eq ptr %461, null
  %464 = or i1 %462, %463
  br i1 %464, label %487, label %484

465:                                              ; preds = %481, %457
  call void @mutex_unlock(ptr noundef %452) #9
  %466 = load i32, ptr %453, align 8
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %481

468:                                              ; preds = %465
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #9, !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %7, i32 noundef 0) #9
  %469 = call i32 @prepare_to_wait_event(ptr noundef %458, ptr noundef nonnull %7, i32 noundef 1) #9
  %470 = load i32, ptr %453, align 8
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %479

472:                                              ; preds = %475, %468
  %473 = phi i32 [ %476, %475 ], [ %469, %468 ]
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %472
  call void @schedule() #9
  %476 = call i32 @prepare_to_wait_event(ptr noundef %458, ptr noundef nonnull %7, i32 noundef 1) #9
  %477 = load i32, ptr %453, align 8
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %472, label %479

479:                                              ; preds = %475, %468
  call void @finish_wait(ptr noundef %458, ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #9
  br label %481

480:                                              ; preds = %472
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #9
  br label %822

481:                                              ; preds = %479, %465
  call void @mutex_lock(ptr noundef %452) #9
  %482 = load i32, ptr %453, align 8
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %465, label %459

484:                                              ; preds = %459
  %485 = getelementptr inbounds %struct.cec_event_entry, ptr %461, i32 0, i32 1
  %486 = load i64, ptr %485, align 8
  br label %487

487:                                              ; preds = %484, %459
  %488 = phi i64 [ %486, %484 ], [ -1, %459 ]
  %489 = phi ptr [ %461, %484 ], [ null, %459 ]
  %490 = getelementptr %struct.cec_fh, ptr %18, i32 0, i32 7, i32 1
  %491 = load volatile ptr, ptr %490, align 4
  %492 = icmp eq ptr %491, %490
  %493 = icmp eq ptr %491, null
  %494 = or i1 %492, %493
  br i1 %494, label %500, label %495

495:                                              ; preds = %487
  %496 = getelementptr inbounds %struct.cec_event_entry, ptr %491, i32 0, i32 1
  %497 = load i64, ptr %496, align 8
  %498 = icmp ugt i64 %497, %488
  br i1 %498, label %500, label %499

499:                                              ; preds = %495
  br label %500

500:                                              ; preds = %499, %495, %487
  %501 = phi i32 [ 1, %499 ], [ 0, %495 ], [ 0, %487 ]
  %502 = phi i64 [ %497, %499 ], [ %488, %495 ], [ %488, %487 ]
  %503 = phi ptr [ %491, %499 ], [ %489, %495 ], [ %489, %487 ]
  %504 = getelementptr %struct.cec_fh, ptr %18, i32 0, i32 7, i32 2
  %505 = load volatile ptr, ptr %504, align 4
  %506 = icmp eq ptr %505, %504
  %507 = icmp eq ptr %505, null
  %508 = or i1 %506, %507
  br i1 %508, label %514, label %509

509:                                              ; preds = %500
  %510 = getelementptr inbounds %struct.cec_event_entry, ptr %505, i32 0, i32 1
  %511 = load i64, ptr %510, align 8
  %512 = icmp ugt i64 %511, %502
  br i1 %512, label %514, label %513

513:                                              ; preds = %509
  br label %514

514:                                              ; preds = %513, %509, %500
  %515 = phi i32 [ 2, %513 ], [ %501, %509 ], [ %501, %500 ]
  %516 = phi i64 [ %511, %513 ], [ %502, %509 ], [ %502, %500 ]
  %517 = phi ptr [ %505, %513 ], [ %503, %509 ], [ %503, %500 ]
  %518 = getelementptr %struct.cec_fh, ptr %18, i32 0, i32 7, i32 3
  %519 = load volatile ptr, ptr %518, align 4
  %520 = icmp eq ptr %519, %518
  %521 = icmp eq ptr %519, null
  %522 = or i1 %520, %521
  br i1 %522, label %528, label %523

523:                                              ; preds = %514
  %524 = getelementptr inbounds %struct.cec_event_entry, ptr %519, i32 0, i32 1
  %525 = load i64, ptr %524, align 8
  %526 = icmp ugt i64 %525, %516
  br i1 %526, label %528, label %527

527:                                              ; preds = %523
  br label %528

528:                                              ; preds = %527, %523, %514
  %529 = phi i32 [ 3, %527 ], [ %515, %523 ], [ %515, %514 ]
  %530 = phi i64 [ %525, %527 ], [ %516, %523 ], [ %516, %514 ]
  %531 = phi ptr [ %519, %527 ], [ %517, %523 ], [ %517, %514 ]
  %532 = getelementptr %struct.cec_fh, ptr %18, i32 0, i32 7, i32 4
  %533 = load volatile ptr, ptr %532, align 4
  %534 = icmp eq ptr %533, %532
  %535 = icmp eq ptr %533, null
  %536 = or i1 %534, %535
  br i1 %536, label %542, label %537

537:                                              ; preds = %528
  %538 = getelementptr inbounds %struct.cec_event_entry, ptr %533, i32 0, i32 1
  %539 = load i64, ptr %538, align 8
  %540 = icmp ugt i64 %539, %530
  br i1 %540, label %542, label %541

541:                                              ; preds = %537
  br label %542

542:                                              ; preds = %541, %537, %528
  %543 = phi i32 [ 4, %541 ], [ %529, %537 ], [ %529, %528 ]
  %544 = phi i64 [ %539, %541 ], [ %530, %537 ], [ %530, %528 ]
  %545 = phi ptr [ %533, %541 ], [ %531, %537 ], [ %531, %528 ]
  %546 = getelementptr %struct.cec_fh, ptr %18, i32 0, i32 7, i32 5
  %547 = load volatile ptr, ptr %546, align 4
  %548 = icmp eq ptr %547, %546
  %549 = icmp eq ptr %547, null
  %550 = or i1 %548, %549
  br i1 %550, label %556, label %551

551:                                              ; preds = %542
  %552 = getelementptr inbounds %struct.cec_event_entry, ptr %547, i32 0, i32 1
  %553 = load i64, ptr %552, align 8
  %554 = icmp ugt i64 %553, %544
  br i1 %554, label %556, label %555

555:                                              ; preds = %551
  br label %556

556:                                              ; preds = %555, %551, %542
  %557 = phi i32 [ 5, %555 ], [ %543, %551 ], [ %543, %542 ]
  %558 = phi i64 [ %553, %555 ], [ %544, %551 ], [ %544, %542 ]
  %559 = phi ptr [ %547, %555 ], [ %545, %551 ], [ %545, %542 ]
  %560 = getelementptr %struct.cec_fh, ptr %18, i32 0, i32 7, i32 6
  %561 = load volatile ptr, ptr %560, align 4
  %562 = icmp eq ptr %561, %560
  %563 = icmp eq ptr %561, null
  %564 = or i1 %562, %563
  br i1 %564, label %570, label %565

565:                                              ; preds = %556
  %566 = getelementptr inbounds %struct.cec_event_entry, ptr %561, i32 0, i32 1
  %567 = load i64, ptr %566, align 8
  %568 = icmp ugt i64 %567, %558
  br i1 %568, label %570, label %569

569:                                              ; preds = %565
  br label %570

570:                                              ; preds = %569, %565, %556
  %571 = phi i32 [ 6, %569 ], [ %557, %565 ], [ %557, %556 ]
  %572 = phi i64 [ %567, %569 ], [ %558, %565 ], [ %558, %556 ]
  %573 = phi ptr [ %561, %569 ], [ %559, %565 ], [ %559, %556 ]
  %574 = getelementptr %struct.cec_fh, ptr %18, i32 0, i32 7, i32 7
  %575 = load volatile ptr, ptr %574, align 4
  %576 = icmp eq ptr %575, %574
  %577 = icmp eq ptr %575, null
  %578 = or i1 %576, %577
  br i1 %578, label %583, label %579

579:                                              ; preds = %570
  %580 = getelementptr inbounds %struct.cec_event_entry, ptr %575, i32 0, i32 1
  %581 = load i64, ptr %580, align 8
  %582 = icmp ugt i64 %581, %572
  br i1 %582, label %583, label %585

583:                                              ; preds = %579, %570
  %584 = icmp eq ptr %573, null
  br i1 %584, label %615, label %585

585:                                              ; preds = %583, %579
  %586 = phi ptr [ %573, %583 ], [ %575, %579 ]
  %587 = phi i32 [ %571, %583 ], [ 7, %579 ]
  %588 = getelementptr inbounds %struct.list_head, ptr %586, i32 0, i32 1
  %589 = load ptr, ptr %588, align 4
  %590 = load ptr, ptr %586, align 4
  %591 = getelementptr inbounds %struct.list_head, ptr %590, i32 0, i32 1
  store ptr %589, ptr %591, align 4
  store volatile ptr %590, ptr %589, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %586, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %588, align 4
  %592 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 80, i32 -1090519040) #10, !srcloc !9
  %593 = extractvalue { i32, i32 } %592, 0
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %605

595:                                              ; preds = %585
  %596 = getelementptr inbounds %struct.cec_event_entry, ptr %586, i32 0, i32 1
  %597 = tail call ptr @llvm.thread.pointer() #9
  %598 = getelementptr inbounds %struct.thread_info, ptr %597, i32 0, i32 3
  %599 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %598) #11, !srcloc !10
  %600 = and i32 %599, -13
  %601 = or i32 %600, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %601) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %602 = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef %596, i32 noundef 80) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %599) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %603 = icmp eq i32 %602, 0
  %604 = select i1 %603, i32 0, i32 -14
  br label %605

605:                                              ; preds = %595, %585
  %606 = phi i32 [ -14, %585 ], [ %604, %595 ]
  %607 = icmp ugt i32 %587, 1
  br i1 %607, label %608, label %609

608:                                              ; preds = %605
  call void @kfree(ptr noundef nonnull %586) #9
  br label %609

609:                                              ; preds = %608, %605
  %610 = getelementptr %struct.cec_fh, ptr %18, i32 0, i32 8, i32 %587
  %611 = load i16, ptr %610, align 2
  %612 = add i16 %611, -1
  store i16 %612, ptr %610, align 2
  %613 = load i32, ptr %453, align 8
  %614 = add i32 %613, -1
  store i32 %614, ptr %453, align 8
  br label %615

615:                                              ; preds = %609, %583
  %616 = phi i32 [ %606, %609 ], [ -11, %583 ]
  call void @mutex_unlock(ptr noundef %452) #9
  br label %822

617:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %618 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 3
  %619 = load i8, ptr %618, align 4
  %620 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 4
  %621 = load i8, ptr %620, align 1
  %622 = or i8 %621, %619
  %623 = zext i8 %622 to i32
  store i32 %623, ptr %6, align 4
  %624 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 4, i32 -1090519040) #10, !srcloc !9
  %625 = extractvalue { i32, i32 } %624, 0
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %636

627:                                              ; preds = %617
  %628 = tail call ptr @llvm.thread.pointer() #9
  %629 = getelementptr inbounds %struct.thread_info, ptr %628, i32 0, i32 3
  %630 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %629) #11, !srcloc !10
  %631 = and i32 %630, -13
  %632 = or i32 %631, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %632) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %633 = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull %6, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %630) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %634 = icmp eq i32 %633, 0
  %635 = select i1 %634, i32 0, i32 -14
  br label %636

636:                                              ; preds = %627, %617
  %637 = phi i32 [ -14, %617 ], [ %635, %627 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %822

638:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !13
  %639 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 4, i32 -1090519040) #10, !srcloc !14
  %640 = extractvalue { i32, i32 } %639, 0
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %650, !prof !15

642:                                              ; preds = %638
  %643 = tail call ptr @llvm.thread.pointer() #9
  %644 = getelementptr inbounds %struct.thread_info, ptr %643, i32 0, i32 3
  %645 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %644) #11, !srcloc !10
  %646 = and i32 %645, -13
  %647 = or i32 %646, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %647) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %648 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %25, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %645) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %654, label %650, !prof !15

650:                                              ; preds = %642, %638
  %651 = phi i32 [ %648, %642 ], [ 4, %638 ]
  %652 = sub i32 4, %651
  %653 = getelementptr i8, ptr %4, i32 %652
  call void @llvm.memset.p0.i32(ptr align 1 %653, i8 0, i32 %651, i1 false) #9
  br label %820

654:                                              ; preds = %642
  %655 = load i32, ptr %4, align 4
  %656 = icmp ult i32 %655, 256
  br i1 %656, label %663, label %657

657:                                              ; preds = %654
  %658 = load i32, ptr @cec_debug, align 4
  %659 = icmp sgt i32 %658, 0
  br i1 %659, label %660, label %820

660:                                              ; preds = %657
  %661 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 1
  %662 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %661, ptr noundef nonnull @__func__.cec_s_mode) #12
  br label %820

663:                                              ; preds = %654
  %664 = trunc i32 %655 to i8
  %665 = and i8 %664, 15
  %666 = and i8 %664, -16
  %667 = icmp ugt i8 %665, 2
  %668 = and i32 %655, 240
  br i1 %667, label %669, label %675

669:                                              ; preds = %663
  %670 = load i32, ptr @cec_debug, align 4
  %671 = icmp sgt i32 %670, 0
  br i1 %671, label %672, label %820

672:                                              ; preds = %669
  %673 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 1
  %674 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %673, ptr noundef nonnull @__func__.cec_s_mode) #12
  br label %820

675:                                              ; preds = %663
  %676 = icmp ugt i8 %664, -17
  br i1 %676, label %677, label %688

677:                                              ; preds = %675
  %678 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 16
  %679 = load i32, ptr %678, align 8
  %680 = and i32 %679, 32
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %682, label %688

682:                                              ; preds = %677
  %683 = load i32, ptr @cec_debug, align 4
  %684 = icmp sgt i32 %683, 0
  br i1 %684, label %685, label %820

685:                                              ; preds = %682
  %686 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 1
  %687 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %686, ptr noundef nonnull @__func__.cec_s_mode) #12
  br label %820

688:                                              ; preds = %677, %675
  %689 = icmp eq i8 %666, -48
  br i1 %689, label %690, label %701

690:                                              ; preds = %688
  %691 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 16
  %692 = load i32, ptr %691, align 8
  %693 = and i32 %692, 128
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %701

695:                                              ; preds = %690
  %696 = load i32, ptr @cec_debug, align 4
  %697 = icmp sgt i32 %696, 0
  br i1 %697, label %698, label %820

698:                                              ; preds = %695
  %699 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 1
  %700 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %699, ptr noundef nonnull @__func__.cec_s_mode) #12
  br label %820

701:                                              ; preds = %690, %688
  %702 = icmp eq i8 %665, 0
  br i1 %702, label %712, label %703

703:                                              ; preds = %701
  %704 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 16
  %705 = load i32, ptr %704, align 8
  %706 = and i32 %705, 4
  %707 = icmp eq i32 %706, 0
  %708 = icmp ne i8 %666, 0
  %709 = select i1 %707, i1 %708, i1 false
  %710 = icmp ult i8 %666, 49
  %711 = select i1 %709, i1 %710, i1 false
  br i1 %711, label %718, label %724

712:                                              ; preds = %701
  %713 = icmp ne i32 %668, 0
  %714 = icmp ult i8 %666, 49
  %715 = select i1 %713, i1 %714, i1 false
  br i1 %715, label %718, label %716

716:                                              ; preds = %712
  %717 = icmp ugt i8 %666, -49
  br i1 %717, label %732, label %734

718:                                              ; preds = %712, %703
  %719 = load i32, ptr @cec_debug, align 4
  %720 = icmp sgt i32 %719, 0
  br i1 %720, label %721, label %820

721:                                              ; preds = %718
  %722 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 1
  %723 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %722, ptr noundef nonnull @__func__.cec_s_mode) #12
  br label %820

724:                                              ; preds = %703
  %725 = icmp ugt i8 %666, -49
  br i1 %725, label %726, label %734

726:                                              ; preds = %724
  %727 = load i32, ptr @cec_debug, align 4
  %728 = icmp sgt i32 %727, 0
  br i1 %728, label %729, label %820

729:                                              ; preds = %726
  %730 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 1
  %731 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %730, ptr noundef nonnull @__func__.cec_s_mode) #12
  br label %820

732:                                              ; preds = %716
  %733 = call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %733, label %734, label %820

734:                                              ; preds = %732, %724, %716
  %735 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 3
  call void @mutex_lock(ptr noundef %735) #9
  %736 = icmp eq i8 %666, 48
  switch i8 %666, label %744 [
    i8 48, label %737
    i8 32, label %737
  ]

737:                                              ; preds = %734, %734
  %738 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 28
  %739 = load ptr, ptr %738, align 4
  %740 = icmp eq ptr %739, null
  %741 = icmp eq ptr %739, %18
  %742 = or i1 %740, %741
  %743 = select i1 %742, i32 0, i32 -16
  br label %744

744:                                              ; preds = %737, %734
  %745 = phi i32 [ 0, %734 ], [ %743, %737 ]
  %746 = icmp eq i8 %665, 2
  br i1 %746, label %747, label %753

747:                                              ; preds = %744
  %748 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 29
  %749 = load ptr, ptr %748, align 8
  %750 = icmp eq ptr %749, null
  %751 = icmp eq ptr %749, %18
  %752 = or i1 %750, %751
  br i1 %752, label %753, label %774

753:                                              ; preds = %747, %744
  %754 = icmp eq i32 %745, 0
  br i1 %754, label %755, label %774

755:                                              ; preds = %753
  %756 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 4
  %757 = load i8, ptr %756, align 1
  %758 = icmp ne i8 %757, -16
  %759 = xor i1 %676, %758
  br i1 %759, label %765, label %760

760:                                              ; preds = %755
  br i1 %676, label %762, label %761

761:                                              ; preds = %760
  call void @cec_monitor_all_cnt_dec(ptr noundef nonnull %20) #9
  br label %765

762:                                              ; preds = %760
  %763 = call i32 @cec_monitor_all_cnt_inc(ptr noundef nonnull %20) #9
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %774

765:                                              ; preds = %762, %761, %755
  %766 = load i8, ptr %756, align 1
  %767 = icmp ne i8 %766, -48
  %768 = xor i1 %689, %767
  br i1 %768, label %778, label %769

769:                                              ; preds = %765
  br i1 %689, label %771, label %770

770:                                              ; preds = %769
  call void @cec_monitor_pin_cnt_dec(ptr noundef nonnull %20) #9
  br label %776

771:                                              ; preds = %769
  %772 = call i32 @cec_monitor_pin_cnt_inc(ptr noundef nonnull %20) #9
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %776, label %774

774:                                              ; preds = %771, %762, %753, %747
  %775 = phi i32 [ %772, %771 ], [ %763, %762 ], [ %745, %753 ], [ -16, %747 ]
  call void @mutex_unlock(ptr noundef %735) #9
  br label %820

776:                                              ; preds = %771, %770
  %777 = load i8, ptr %756, align 1
  br label %778

778:                                              ; preds = %776, %765
  %779 = phi i8 [ %777, %776 ], [ %766, %765 ]
  %780 = phi i1 [ %689, %776 ], [ false, %765 ]
  %781 = icmp eq i8 %779, 16
  br i1 %781, label %782, label %786

782:                                              ; preds = %778
  %783 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 27
  %784 = load i32, ptr %783, align 8
  %785 = add i32 %784, -1
  store i32 %785, ptr %783, align 8
  br label %786

786:                                              ; preds = %782, %778
  %787 = icmp eq i8 %666, 16
  br i1 %787, label %788, label %792

788:                                              ; preds = %786
  %789 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 27
  %790 = load i32, ptr %789, align 8
  %791 = add i32 %790, 1
  store i32 %791, ptr %789, align 8
  br label %792

792:                                              ; preds = %788, %786
  br i1 %780, label %793, label %800

793:                                              ; preds = %792
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i32 80, i1 false) #9
  %794 = getelementptr inbounds %struct.cec_event, ptr %5, i32 0, i32 2
  store i32 1, ptr %794, align 4
  %795 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 22
  %796 = load i8, ptr %795, align 1, !range !8
  %797 = icmp eq i8 %796, 0
  %798 = select i1 %797, i32 3, i32 4
  %799 = getelementptr inbounds %struct.cec_event, ptr %5, i32 0, i32 1
  store i32 %798, ptr %799, align 8
  call void @cec_queue_event_fh(ptr noundef %18, ptr noundef nonnull %5, i64 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #9
  br label %800

800:                                              ; preds = %793, %792
  switch i8 %666, label %805 [
    i8 48, label %801
    i8 32, label %801
  ]

801:                                              ; preds = %800, %800
  %802 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 30
  %803 = zext i1 %736 to i8
  store i8 %803, ptr %802, align 4
  %804 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 28
  store ptr %18, ptr %804, align 4
  br label %811

805:                                              ; preds = %800
  %806 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 28
  %807 = load ptr, ptr %806, align 4
  %808 = icmp eq ptr %807, %18
  br i1 %808, label %809, label %811

809:                                              ; preds = %805
  %810 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 30
  store i8 0, ptr %810, align 4
  store ptr null, ptr %806, align 4
  br label %811

811:                                              ; preds = %809, %805, %801
  %812 = getelementptr inbounds %struct.cec_adapter, ptr %20, i32 0, i32 29
  br i1 %746, label %816, label %813

813:                                              ; preds = %811
  %814 = load ptr, ptr %812, align 8
  %815 = icmp eq ptr %814, %18
  br i1 %815, label %816, label %818

816:                                              ; preds = %813, %811
  %817 = phi ptr [ %18, %811 ], [ null, %813 ]
  store ptr %817, ptr %812, align 8
  br label %818

818:                                              ; preds = %816, %813
  %819 = getelementptr inbounds %struct.cec_fh, ptr %18, i32 0, i32 3
  store i8 %665, ptr %819, align 4
  store i8 %666, ptr %756, align 1
  call void @mutex_unlock(ptr noundef %735) #9
  br label %820

820:                                              ; preds = %818, %774, %732, %729, %726, %721, %718, %698, %695, %685, %682, %672, %669, %660, %657, %650
  %821 = phi i32 [ %775, %774 ], [ 0, %818 ], [ -22, %660 ], [ -22, %657 ], [ -22, %672 ], [ -22, %669 ], [ -22, %685 ], [ -22, %682 ], [ -22, %698 ], [ -22, %695 ], [ -22, %721 ], [ -22, %718 ], [ -22, %729 ], [ -22, %726 ], [ -1, %732 ], [ -14, %650 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %822

822:                                              ; preds = %820, %636, %615, %480, %449, %336, %274, %254, %252, %182, %160, %80, %62, %31, %27, %3
  %823 = phi i32 [ %821, %820 ], [ %637, %636 ], [ %450, %449 ], [ %337, %336 ], [ %253, %252 ], [ %183, %182 ], [ %161, %160 ], [ %81, %80 ], [ %63, %62 ], [ -19, %27 ], [ -25, %31 ], [ %275, %274 ], [ -25, %254 ], [ %616, %615 ], [ %473, %480 ], [ -19, %3 ]
  ret i32 %823
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cec_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.cec_event, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -512
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 336) #13
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i32 80, i1 false)
  %9 = getelementptr inbounds %struct.cec_event, ptr %3, i32 0, i32 1
  store i32 1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.cec_event, ptr %3, i32 0, i32 2
  store i32 1, ptr %10, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %78, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %5, i32 -472
  %14 = getelementptr inbounds %struct.cec_fh, ptr %8, i32 0, i32 11
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.cec_fh, ptr %8, i32 0, i32 11, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cec_fh, ptr %8, i32 0, i32 1
  store volatile ptr %16, ptr %16, align 8
  %17 = getelementptr inbounds %struct.cec_fh, ptr %8, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 0
  store volatile ptr %18, ptr %18, align 8
  %19 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 1
  store volatile ptr %20, ptr %20, align 8
  %21 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 2
  store volatile ptr %22, ptr %22, align 8
  %23 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 2, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 3
  store volatile ptr %24, ptr %24, align 8
  %25 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 3, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 4
  store volatile ptr %26, ptr %26, align 8
  %27 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 4, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 5
  store volatile ptr %28, ptr %28, align 8
  %29 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 5, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 6
  store volatile ptr %30, ptr %30, align 8
  %31 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 6, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 7
  store volatile ptr %32, ptr %32, align 8
  %33 = getelementptr %struct.cec_fh, ptr %8, i32 0, i32 7, i32 7, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.cec_fh, ptr %8, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %34, ptr noundef nonnull @.str.8, ptr noundef nonnull @cec_open.__key) #9
  %35 = getelementptr inbounds %struct.cec_fh, ptr %8, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %35, ptr noundef nonnull @.str.10, ptr noundef nonnull @cec_open.__key.9) #9
  %36 = getelementptr inbounds %struct.cec_fh, ptr %8, i32 0, i32 3
  store i8 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cec_fh, ptr %8, i32 0, i32 2
  store ptr %6, ptr %37, align 8
  %38 = tail call i32 @cec_get_device(ptr noundef %13) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %8) #9
  br label %78

41:                                               ; preds = %12
  %42 = getelementptr i8, ptr %5, i32 64
  tail call void @mutex_lock(ptr noundef %42) #9
  %43 = getelementptr i8, ptr %5, i32 108
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %5, i32 224
  %48 = load i8, ptr %47, align 8, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %5, i32 222
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, -1
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %5, i32 208
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %6, i1 noundef zeroext true) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  tail call void @mutex_unlock(ptr noundef %42) #9
  tail call void @kfree(ptr noundef nonnull %8) #9
  br label %78

61:                                               ; preds = %54, %50, %46, %41
  %62 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %8, ptr %62, align 8
  %63 = getelementptr i8, ptr %5, i32 222
  %64 = load i16, ptr %63, align 2
  %65 = getelementptr inbounds %struct.cec_event, ptr %3, i32 0, i32 3
  store i16 %64, ptr %65, align 8
  %66 = getelementptr i8, ptr %5, i32 260
  %67 = load i16, ptr %66, align 4
  %68 = getelementptr inbounds %struct.cec_event_state_change, ptr %65, i32 0, i32 1
  store i16 %67, ptr %68, align 2
  %69 = getelementptr i8, ptr %5, i32 348
  %70 = load i32, ptr %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i16
  %73 = getelementptr inbounds %struct.cec_event, ptr %3, i32 0, i32 3, i32 0, i32 1
  store i16 %72, ptr %73, align 4
  call void @cec_queue_event_fh(ptr noundef nonnull %8, ptr noundef nonnull %3, i64 noundef 0) #9
  %74 = getelementptr i8, ptr %5, i32 88
  call void @mutex_lock(ptr noundef %74) #9
  %75 = load ptr, ptr %43, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %8, ptr %76, align 4
  store ptr %75, ptr %8, align 8
  %77 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %43, ptr %77, align 4
  store volatile ptr %8, ptr %43, align 4
  call void @mutex_unlock(ptr noundef %74) #9
  call void @mutex_unlock(ptr noundef %42) #9
  br label %78

78:                                               ; preds = %61, %60, %40, %2
  %79 = phi i32 [ %38, %40 ], [ 0, %61 ], [ %58, %60 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cec_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cec_fh, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.cec_adapter, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = getelementptr %struct.cec_adapter, ptr %6, i32 0, i32 29
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store ptr null, ptr %8, align 8
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr %struct.cec_adapter, ptr %6, i32 0, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %4
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store ptr null, ptr %13, align 4
  %17 = getelementptr %struct.cec_adapter, ptr %6, i32 0, i32 30
  store i8 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.cec_fh, ptr %4, i32 0, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 16
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr %struct.cec_adapter, ptr %6, i32 0, i32 27
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 8
  %26 = load i8, ptr %19, align 1
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i8 [ %26, %22 ], [ %20, %18 ]
  %29 = icmp eq i8 %28, -48
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  tail call void @cec_monitor_pin_cnt_dec(ptr noundef %6) #9
  %31 = load i8, ptr %19, align 1
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i8 [ %31, %30 ], [ %28, %27 ]
  %34 = icmp eq i8 %33, -16
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @cec_monitor_all_cnt_dec(ptr noundef %6) #9
  br label %36

36:                                               ; preds = %35, %32
  tail call void @mutex_unlock(ptr noundef %7) #9
  %37 = getelementptr inbounds %struct.cec_adapter, ptr %6, i32 0, i32 2, i32 3
  tail call void @mutex_lock(ptr noundef %37) #9
  %38 = getelementptr inbounds %struct.cec_adapter, ptr %6, i32 0, i32 2, i32 6
  tail call void @mutex_lock(ptr noundef %38) #9
  %39 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  tail call void @mutex_unlock(ptr noundef %38) #9
  %43 = icmp eq ptr %6, null
  br i1 %43, label %67, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.cec_adapter, ptr %6, i32 0, i32 2, i32 4
  %46 = load i8, ptr %45, align 4, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.cec_adapter, ptr %6, i32 0, i32 2, i32 7
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = getelementptr %struct.cec_adapter, ptr %6, i32 0, i32 19
  %54 = load i8, ptr %53, align 8, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = getelementptr %struct.cec_adapter, ptr %6, i32 0, i32 18
  %58 = load i16, ptr %57, align 2
  %59 = icmp eq i16 %58, -1
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = getelementptr %struct.cec_adapter, ptr %6, i32 0, i32 14
  %62 = load ptr, ptr %61, align 8
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef nonnull %6, i1 noundef zeroext false) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66, !prof !15

66:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 666, i32 noundef 9, ptr noundef null) #9
  br label %67

67:                                               ; preds = %66, %60, %56, %52, %48, %44, %36
  tail call void @mutex_unlock(ptr noundef %37) #9
  tail call void @mutex_lock(ptr noundef %7) #9
  %68 = getelementptr inbounds %struct.cec_fh, ptr %4, i32 0, i32 1
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %81, label %71

71:                                               ; preds = %71, %67
  %72 = phi ptr [ %79, %71 ], [ %69, %67 ]
  %73 = getelementptr i8, ptr %72, i32 137
  store i8 0, ptr %73, align 1
  %74 = getelementptr i8, ptr %72, i32 72
  store ptr null, ptr %74, align 8
  %75 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %72, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  store volatile ptr %77, ptr %76, align 4
  store volatile ptr %72, ptr %72, align 4
  store ptr %72, ptr %75, align 4
  %79 = load volatile ptr, ptr %68, align 4
  %80 = icmp eq ptr %79, %68
  br i1 %80, label %81, label %71

81:                                               ; preds = %71, %67
  tail call void @mutex_unlock(ptr noundef %7) #9
  %82 = getelementptr inbounds %struct.cec_fh, ptr %4, i32 0, i32 11
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %85, label %89

85:                                               ; preds = %89, %81
  %86 = getelementptr %struct.cec_fh, ptr %4, i32 0, i32 7, i32 2
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %105, label %97

89:                                               ; preds = %89, %81
  %90 = phi ptr [ %95, %89 ], [ %83, %81 ]
  %91 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %90, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %92, ptr %94, align 4
  store volatile ptr %93, ptr %92, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %90, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %91, align 4
  tail call void @kfree(ptr noundef %90) #9
  %95 = load volatile ptr, ptr %82, align 4
  %96 = icmp eq ptr %95, %82
  br i1 %96, label %85, label %89

97:                                               ; preds = %97, %85
  %98 = phi ptr [ %103, %97 ], [ %87, %85 ]
  %99 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %98, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  store ptr %100, ptr %102, align 4
  store volatile ptr %101, ptr %100, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %98, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %99, align 4
  tail call void @kfree(ptr noundef %98) #9
  %103 = load volatile ptr, ptr %86, align 4
  %104 = icmp eq ptr %103, %86
  br i1 %104, label %105, label %97

105:                                              ; preds = %97, %85
  %106 = getelementptr %struct.cec_fh, ptr %4, i32 0, i32 7, i32 3
  %107 = load volatile ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %117, label %109

109:                                              ; preds = %109, %105
  %110 = phi ptr [ %115, %109 ], [ %107, %105 ]
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %110, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %112, ptr %114, align 4
  store volatile ptr %113, ptr %112, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %110, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %111, align 4
  tail call void @kfree(ptr noundef %110) #9
  %115 = load volatile ptr, ptr %106, align 4
  %116 = icmp eq ptr %115, %106
  br i1 %116, label %117, label %109

117:                                              ; preds = %109, %105
  %118 = getelementptr %struct.cec_fh, ptr %4, i32 0, i32 7, i32 4
  %119 = load volatile ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %118
  br i1 %120, label %129, label %121

121:                                              ; preds = %121, %117
  %122 = phi ptr [ %127, %121 ], [ %119, %117 ]
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = load ptr, ptr %122, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %124, ptr %126, align 4
  store volatile ptr %125, ptr %124, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %122, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %123, align 4
  tail call void @kfree(ptr noundef %122) #9
  %127 = load volatile ptr, ptr %118, align 4
  %128 = icmp eq ptr %127, %118
  br i1 %128, label %129, label %121

129:                                              ; preds = %121, %117
  %130 = getelementptr %struct.cec_fh, ptr %4, i32 0, i32 7, i32 5
  %131 = load volatile ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, %130
  br i1 %132, label %141, label %133

133:                                              ; preds = %133, %129
  %134 = phi ptr [ %139, %133 ], [ %131, %129 ]
  %135 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %134, align 4
  %138 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  store ptr %136, ptr %138, align 4
  store volatile ptr %137, ptr %136, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %134, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %135, align 4
  tail call void @kfree(ptr noundef %134) #9
  %139 = load volatile ptr, ptr %130, align 4
  %140 = icmp eq ptr %139, %130
  br i1 %140, label %141, label %133

141:                                              ; preds = %133, %129
  %142 = getelementptr %struct.cec_fh, ptr %4, i32 0, i32 7, i32 6
  %143 = load volatile ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, %142
  br i1 %144, label %153, label %145

145:                                              ; preds = %145, %141
  %146 = phi ptr [ %151, %145 ], [ %143, %141 ]
  %147 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %146, align 4
  %150 = getelementptr inbounds %struct.list_head, ptr %149, i32 0, i32 1
  store ptr %148, ptr %150, align 4
  store volatile ptr %149, ptr %148, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %146, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %147, align 4
  tail call void @kfree(ptr noundef %146) #9
  %151 = load volatile ptr, ptr %142, align 4
  %152 = icmp eq ptr %151, %142
  br i1 %152, label %153, label %145

153:                                              ; preds = %145, %141
  %154 = getelementptr %struct.cec_fh, ptr %4, i32 0, i32 7, i32 7
  %155 = load volatile ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, %154
  br i1 %156, label %165, label %157

157:                                              ; preds = %157, %153
  %158 = phi ptr [ %163, %157 ], [ %155, %153 ]
  %159 = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = load ptr, ptr %158, align 4
  %162 = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  store ptr %160, ptr %162, align 4
  store volatile ptr %161, ptr %160, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %158, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %159, align 4
  tail call void @kfree(ptr noundef %158) #9
  %163 = load volatile ptr, ptr %154, align 4
  %164 = icmp eq ptr %163, %154
  br i1 %164, label %165, label %157

165:                                              ; preds = %157, %153
  %166 = getelementptr inbounds %struct.cec_adapter, ptr %6, i32 0, i32 2
  tail call void @kfree(ptr noundef %4) #9
  tail call void @cec_put_device(ptr noundef %166) #9
  store ptr null, ptr %3, align 8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cec_s_log_addrs(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_transmit_msg_fh(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_monitor_all_cnt_inc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_monitor_all_cnt_dec(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_monitor_pin_cnt_inc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_monitor_pin_cnt_dec(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_queue_event_fh(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_get_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!9 = !{i64 2151801636, i64 2151801661}
!10 = !{i64 4297170}
!11 = !{i64 4297367}
!12 = !{i64 2151782646}
!13 = !{!"auto-init"}
!14 = !{i64 2151801058, i64 2151801083}
!15 = !{!"branch_weights", i32 2000, i32 1}
