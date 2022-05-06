; ModuleID = '/llk/IR/drivers/gpu/host1x/debug.c_pt.bc'
source_filename = "../drivers/gpu/host1x/debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.output = type { ptr, ptr, [256 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_debug_ops = type { ptr, ptr, ptr, ptr }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.70 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__const.host1x_debug_dump_syncpts.o = private unnamed_addr constant %struct.output { ptr @write_to_printk, ptr null, [256 x i8] zeroinitializer }, align 4
@host1x_debug_trace_cmdbuf = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tegra-host1x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@host1x_debug_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @host1x_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"status_all\00", align 1
@host1x_debug_all_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @host1x_debug_open_all, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"trace_cmdbuf\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"force_timeout_pid\00", align 1
@host1x_debug_force_timeout_pid = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"force_timeout_val\00", align 1
@host1x_debug_force_timeout_val = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"force_timeout_channel\00", align 1
@host1x_debug_force_timeout_channel = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"\01c%s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\016%s\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"---- channels ----\0A\00", align 1
@debug_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @debug_lock, i64 12), ptr getelementptr (i8, ptr @debug_lock, i64 12) } }, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"---- syncpts ----\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"id %u (%s) min %d max %d (%d waiters)\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"waitbase id %u val %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_debug_output(ptr noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = getelementptr inbounds %struct.output, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %3, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vsnprintf(ptr noundef %4, i32 noundef 256, ptr noundef %1, [1 x i32] %6)
  call void @llvm.va_end(ptr nonnull %3)
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.output, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void %8(ptr noundef %10, ptr noundef %4, i32 noundef %7, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_debug_cont(ptr noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = getelementptr inbounds %struct.output, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %3, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vsnprintf(ptr noundef %4, i32 noundef 256, ptr noundef %1, [1 x i32] %6)
  call void @llvm.va_end(ptr nonnull %3)
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.output, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void %8(ptr noundef %10, ptr noundef %4, i32 noundef %7, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_debug_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #9
  %3 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 24
  store ptr %2, ptr %3, align 4
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %2, ptr noundef %0, ptr noundef nonnull @host1x_debug_fops) #9
  %5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %2, ptr noundef %0, ptr noundef nonnull @host1x_debug_all_fops) #9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %2, ptr noundef nonnull @host1x_debug_trace_cmdbuf) #9
  %6 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void %10(ptr noundef %2) #9
  br label %13

13:                                               ; preds = %12, %9, %1
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %2, ptr noundef nonnull @host1x_debug_force_timeout_pid) #9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %2, ptr noundef nonnull @host1x_debug_force_timeout_val) #9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %2, ptr noundef nonnull @host1x_debug_force_timeout_channel) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_debug_deinit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_debug_dump(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.output, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(264) %2, ptr noundef nonnull align 4 dereferenceable(264) @__const.host1x_debug_dump_syncpts.o, i32 264, i1 false)
  call fastcc void @show_all(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %2) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @write_to_printk(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #4 {
  %5 = select i1 %3, ptr @.str.7, ptr @.str.8
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %5, ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @show_all(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_debug_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, ptr noundef %1) #9
  tail call fastcc void @show_syncpts(ptr noundef %0, ptr noundef %1)
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.9)
  %8 = load ptr, ptr %0, align 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %47, %3
  %12 = phi i32 [ %48, %47 ], [ 0, %3 ]
  %13 = tail call ptr @host1x_channel_get_index(ptr noundef %0, i32 noundef %12) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.host1x_channel, ptr %13, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.host1x, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #9, !srcloc !10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 0, i32 -1, ptr elementtype(i32) %27) #9, !srcloc !11
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  br label %46

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.host1x_channel, ptr %13, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %33) #9
  tail call void @mutex_lock(ptr noundef nonnull @debug_lock) #9
  br i1 %2, label %34, label %39

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.host1x, ptr %21, i32 0, i32 20
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.host1x_debug_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %21, ptr noundef nonnull %13, ptr noundef %1) #9
  br label %39

39:                                               ; preds = %34, %32
  %40 = getelementptr inbounds %struct.host1x, ptr %21, i32 0, i32 20
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.host1x_debug_ops, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %21, ptr noundef nonnull %13, ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef nonnull @debug_lock) #9
  tail call void @mutex_unlock(ptr noundef %33) #9
  %44 = load ptr, ptr %22, align 4
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %44, i32 noundef 5) #9
  br label %46

46:                                               ; preds = %39, %31, %26
  tail call void @host1x_channel_put(ptr noundef nonnull %13) #9
  br label %47

47:                                               ; preds = %46, %11
  %48 = add nuw i32 %12, 1
  %49 = load ptr, ptr %0, align 4
  %50 = load i32, ptr %49, align 8
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %11, label %52

52:                                               ; preds = %47, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_debug_dump_syncpts(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.output, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(264) %2, ptr noundef nonnull align 4 dereferenceable(264) @__const.host1x_debug_dump_syncpts.o, i32 264, i1 false)
  call fastcc void @show_syncpts(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @show_syncpts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.10)
  %3 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @host1x_syncpt_nb_pts(ptr noundef %0) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  br label %23

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #9, !srcloc !11
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %72, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  br label %72

18:                                               ; preds = %54, %7
  %19 = tail call i32 @host1x_syncpt_nb_bases(ptr noundef %0) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %69, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  br label %58

23:                                               ; preds = %54, %10
  %24 = phi i32 [ 0, %10 ], [ %55, %54 ]
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr %struct.host1x_syncpt, ptr %25, i32 %24
  %27 = tail call i32 @host1x_syncpt_read_max(ptr noundef %26) #9
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr %struct.host1x_syncpt, ptr %28, i32 %24
  %30 = tail call i32 @host1x_syncpt_load(ptr noundef %29) #9
  %31 = load ptr, ptr %11, align 4
  %32 = getelementptr %struct.host1x_syncpt, ptr %31, i32 %24, i32 9
  tail call void @_raw_spin_lock(ptr noundef %32) #9
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr %struct.host1x_syncpt, ptr %33, i32 %24, i32 9, i32 1
  br label %35

35:                                               ; preds = %35, %23
  %36 = phi ptr [ %34, %23 ], [ %38, %35 ]
  %37 = phi i32 [ 0, %23 ], [ %40, %35 ]
  %38 = load ptr, ptr %36, align 4
  %39 = icmp eq ptr %38, %34
  %40 = add i32 %37, 1
  br i1 %39, label %41, label %35

41:                                               ; preds = %35
  %42 = getelementptr %struct.host1x_syncpt, ptr %33, i32 %24, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %43 = load i16, ptr %42, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %45 = icmp ne i32 %30, 0
  %46 = icmp ne i32 %27, 0
  %47 = select i1 %45, i1 true, i1 %46
  %48 = icmp ne i32 %37, 0
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load ptr, ptr %11, align 4
  %52 = getelementptr %struct.host1x_syncpt, ptr %51, i32 %24, i32 5
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %24, ptr noundef %53, i32 noundef %30, i32 noundef %27, i32 noundef %37)
  br label %54

54:                                               ; preds = %50, %41
  %55 = add nuw i32 %24, 1
  %56 = tail call i32 @host1x_syncpt_nb_pts(ptr noundef %0) #9
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %23, label %18

58:                                               ; preds = %65, %21
  %59 = phi i32 [ 0, %21 ], [ %66, %65 ]
  %60 = load ptr, ptr %22, align 4
  %61 = getelementptr %struct.host1x_syncpt, ptr %60, i32 %59
  %62 = tail call i32 @host1x_syncpt_load_wait_base(ptr noundef %61) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %59, i32 noundef %62)
  br label %65

65:                                               ; preds = %64, %58
  %66 = add nuw i32 %59, 1
  %67 = tail call i32 @host1x_syncpt_nb_bases(ptr noundef %0) #9
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %58, label %69

69:                                               ; preds = %65, %18
  %70 = load ptr, ptr %3, align 4
  %71 = tail call i32 @__pm_runtime_idle(ptr noundef %70, i32 noundef 5) #9
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.13)
  br label %72

72:                                               ; preds = %69, %17, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_debug_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @host1x_debug_show, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_debug_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.output, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  store ptr @write_to_seqfile, ptr %3, align 4
  %5 = getelementptr inbounds %struct.output, ptr %3, i32 0, i32 1
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  call fastcc void @show_all(ptr noundef %7, ptr noundef nonnull %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @write_to_seqfile(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #4 {
  %5 = tail call i32 @seq_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_debug_open_all(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @host1x_debug_show_all, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_debug_show_all(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.output, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  store ptr @write_to_seqfile, ptr %3, align 4
  %5 = getelementptr inbounds %struct.output, ptr %3, i32 0, i32 1
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  call fastcc void @show_all(ptr noundef %7, ptr noundef nonnull %3, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_get_index(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_nb_pts(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_read_max(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_nb_bases(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load_wait_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i64 2148343127}
!10 = !{i64 842234, i64 2148332205, i64 2148332231, i64 2148332278, i64 2148332300, i64 2148332328, i64 2148332348}
!11 = !{i64 828803, i64 828828, i64 828850, i64 828866, i64 828878, i64 828898, i64 828922, i64 828938, i64 828950}
!12 = !{i64 2148343253}
!13 = !{i64 2149010838}
!14 = !{i64 2149006662}
!15 = !{i64 2149006737, i64 2149006764, i64 2149006811, i64 2149006833, i64 2149006861, i64 2149006881}
!16 = !{i64 2149033841}
