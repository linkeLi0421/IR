; ModuleID = '/llk/IR/drivers/scsi/sr_ioctl.c_pt.bc'
source_filename = "../drivers/scsi/sr_ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_cd = type { ptr, i32, ptr, i32, i32, i8, i32, i8, %struct.cdrom_device_info, %struct.mutex, %struct.kref, ptr }
%struct.cdrom_device_info = type { ptr, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [20 x i8], i8, i32, i8, i8, i16, i32, ptr, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.media_event_desc = type { i16, i8, i8 }
%struct.cdrom_tocentry = type { i8, i8, i8, %union.cdrom_addr, i8 }
%union.cdrom_addr = type { i32 }
%struct.cdrom_msf0 = type { i8, i8, i8 }
%struct.cdrom_multisession = type { %union.cdrom_addr, i8, i8 }
%struct.cdrom_tochdr = type { i8, i8 }
%struct.cdrom_ti = type { i8, i8, i8, i8 }

@__param_str_xa_test = internal constant [15 x i8] c"sr_mod.xa_test\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@xa_test = internal global i32 0, align 4
@__param_xa_test = internal constant %struct.kernel_param { ptr @__param_str_xa_test, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @xa_test } }, section "__param", align 4
@__UNIQUE_ID_xa_testtype273 = internal constant [28 x i8] c"sr_mod.parmtype=xa_test:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"disc change detected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"CDROM not ready yet.\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"CDROM not ready.  Make sure there is a disc in the drive.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"CDROM doesn't support READ CD (0xbe) command\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_xa_testtype273, ptr @__param_xa_test], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_do_ioctl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr %3, ptr %7
  %10 = call i32 @scsi_block_when_processing_errors(ptr noundef %5) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %82, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 5
  %14 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 7
  %17 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %7, i32 0, i32 1
  %19 = select i1 %8, ptr %17, ptr %18
  %20 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %7, i32 0, i32 2
  %22 = select i1 %8, ptr %20, ptr %21
  %23 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 3
  %24 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %7, i32 0, i32 3
  %25 = select i1 %8, ptr %23, ptr %24
  %26 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 6
  %27 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 8, i32 11
  %28 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 41
  br label %29

29:                                               ; preds = %66, %12
  %30 = phi i32 [ 0, %12 ], [ %67, %66 ]
  %31 = load i8, ptr %13, align 4
  %32 = zext i8 %31 to i32
  %33 = load ptr, ptr %14, align 4
  %34 = load i32, ptr %15, align 4
  %35 = load i32, ptr %16, align 4
  %36 = call i32 @__scsi_execute(ptr noundef %5, ptr noundef %1, i32 noundef %32, ptr noundef %33, i32 noundef %34, ptr noundef null, ptr noundef nonnull %9, i32 noundef %35, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %82, label %38

38:                                               ; preds = %29
  %39 = and i32 %36, 254
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %82

41:                                               ; preds = %38
  %42 = load i8, ptr %19, align 1
  switch i8 %42, label %82 [
    i8 6, label %43
    i8 2, label %52
    i8 5, label %75
  ]

43:                                               ; preds = %41
  %44 = load i64, ptr %28, align 4
  %45 = or i64 %44, 2
  store i64 %45, ptr %28, align 4
  %46 = load i32, ptr %26, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %49, ptr noundef %27, ptr noundef nonnull @.str.1) #9
  br label %50

50:                                               ; preds = %48, %43
  %51 = icmp ult i32 %30, 10
  br i1 %51, label %66, label %82

52:                                               ; preds = %41
  %53 = load i8, ptr %22, align 1
  %54 = icmp eq i8 %53, 4
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i8, ptr %25, align 1
  %57 = icmp eq i8 %56, 1
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32, ptr %26, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %62, ptr noundef %27, ptr noundef nonnull @.str.2) #9
  br label %63

63:                                               ; preds = %61, %58
  %64 = icmp ult i32 %30, 10
  br i1 %64, label %65, label %82

65:                                               ; preds = %63
  call void @msleep(i32 noundef 2000) #9
  br label %66

66:                                               ; preds = %65, %50
  %67 = add nuw nsw i32 %30, 1
  %68 = call i32 @scsi_block_when_processing_errors(ptr noundef %5) #9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %29

70:                                               ; preds = %55, %52
  %71 = load i32, ptr %26, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %74, ptr noundef %27, ptr noundef nonnull @.str.3) #9
  br label %82

75:                                               ; preds = %41
  %76 = load i8, ptr %22, align 1
  %77 = icmp eq i8 %76, 32
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i8, ptr %25, align 1
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 -95, i32 -5
  br label %82

82:                                               ; preds = %78, %75, %73, %70, %66, %63, %50, %41, %38, %29, %2
  %83 = phi i32 [ -5, %75 ], [ -123, %73 ], [ -123, %70 ], [ %81, %78 ], [ -19, %2 ], [ 0, %38 ], [ -19, %66 ], [ %36, %29 ], [ -123, %50 ], [ -123, %63 ], [ -5, %41 ]
  %84 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 3
  store i32 %83, ptr %84, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_tray_move(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.packet_command, align 4
  %4 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false)
  store i8 27, ptr %3, align 4
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i8 3, i8 2
  %8 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  store i8 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 3000, ptr %10, align 4
  %11 = call i32 @sr_do_ioctl(ptr noundef %5, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_lock_door(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_cd, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne i32 %1, 0
  %8 = zext i1 %7 to i8
  %9 = tail call i32 @scsi_set_medium_removal(ptr noundef %6, i8 noundef zeroext %8) #9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_set_medium_removal(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_drive_status(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.scsi_sense_hdr, align 8
  %4 = alloca %struct.media_event_desc, align 4
  %5 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = icmp eq i32 %1, 2147483647
  br i1 %7, label %8, label %59

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @scsi_test_unit_ready(ptr noundef %10, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %3) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %59, label %13

13:                                               ; preds = %8
  %14 = load i8, ptr %3, align 8
  %15 = and i8 %14, 112
  %16 = icmp eq i8 %15, 112
  %17 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 2
  %20 = select i1 %16, i1 %19, i1 false
  %21 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 2
  %22 = load i8, ptr %21, align 2
  %23 = icmp eq i8 %22, 4
  %24 = select i1 %20, i1 %23, i1 false
  %25 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 1
  %28 = select i1 %24, i1 %27, i1 false
  br i1 %28, label %59, label %29

29:                                               ; preds = %13
  %30 = call i32 @cdrom_get_media_event(ptr noundef %0, ptr noundef nonnull %4) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i16, ptr %4, align 4
  %34 = and i16 %33, 512
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = and i16 %33, 256
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %38, i32 1, i32 2
  br label %59

40:                                               ; preds = %29
  %41 = load i8, ptr %3, align 8
  %42 = and i8 %41, 112
  %43 = icmp eq i8 %42, 112
  %44 = load i8, ptr %17, align 1
  %45 = icmp eq i8 %44, 2
  %46 = select i1 %43, i1 %45, i1 false
  %47 = load i8, ptr %21, align 2
  %48 = icmp eq i8 %47, 4
  %49 = select i1 %46, i1 %48, i1 false
  %50 = load i8, ptr %25, align 1
  %51 = icmp eq i8 %50, 2
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %59, label %53

53:                                               ; preds = %40
  %54 = select i1 %45, i1 %48, i1 false
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  %56 = icmp eq i8 %47, 58
  %57 = select i1 %43, i1 %56, i1 false
  %58 = select i1 %57, i32 1, i32 2
  br label %59

59:                                               ; preds = %55, %53, %40, %36, %32, %13, %8, %2
  %60 = phi i32 [ -22, %2 ], [ 4, %8 ], [ 3, %13 ], [ 4, %32 ], [ %39, %36 ], [ 2, %40 ], [ 4, %53 ], [ %58, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_get_media_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_disk_status(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.packet_command, align 4
  %3 = alloca %struct.cdrom_tocentry, align 4
  %4 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #9
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 32) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #9
  br label %23

10:                                               ; preds = %1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #9
  %11 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i32 3000, ptr %11, align 4
  store i8 67, ptr %2, align 4
  %12 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 8
  store i8 12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 6
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %16, align 4
  %17 = call i32 @sr_do_ioctl(ptr noundef %5, ptr noundef nonnull %2) #9
  %18 = getelementptr i8, ptr %7, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = getelementptr i8, ptr %7, i32 3
  %21 = load i8, ptr %20, align 1
  call void @kfree(ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #9
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %10, %9
  %24 = phi i32 [ -12, %9 ], [ %17, %10 ]
  %25 = icmp eq i32 %24, -123
  %26 = zext i1 %25 to i32
  br label %52

27:                                               ; preds = %10
  %28 = icmp ugt i8 %19, %21
  br i1 %28, label %52, label %29

29:                                               ; preds = %27
  %30 = zext i8 %21 to i32
  %31 = zext i8 %19 to i32
  %32 = getelementptr inbounds %struct.cdrom_tocentry, ptr %3, i32 0, i32 2
  %33 = getelementptr inbounds %struct.cdrom_tocentry, ptr %3, i32 0, i32 1
  br label %37

34:                                               ; preds = %42
  %35 = add nuw nsw i32 %38, 1
  %36 = icmp eq i32 %38, %30
  br i1 %36, label %52, label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %31, %29 ], [ %35, %34 ]
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %3, align 4
  store i8 1, ptr %32, align 2
  %40 = call fastcc i32 @sr_read_tocentry(ptr noundef %0, ptr noundef nonnull %3)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i8, ptr %33, align 1
  %44 = and i8 %43, 64
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %34, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.scsi_cd, ptr %5, i32 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 101, i32 103
  br label %52

52:                                               ; preds = %46, %37, %34, %27, %23
  %53 = phi i32 [ %26, %23 ], [ %51, %46 ], [ 100, %27 ], [ 0, %37 ], [ 100, %34 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sr_read_tocentry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.packet_command, align 4
  %4 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 32) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false)
  %10 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 3000, ptr %10, align 4
  store i8 67, ptr %3, align 4
  %11 = getelementptr inbounds %struct.cdrom_tocentry, ptr %1, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 2
  %14 = select i1 %13, i8 2, i8 0
  %15 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = load i8, ptr %1, align 4
  %17 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 6
  store i8 %16, ptr %17, align 2
  %18 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i8 12, ptr %18, align 4
  %19 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %7, ptr %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 12, ptr %20, align 4
  %21 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 2, ptr %21, align 4
  %22 = call i32 @sr_do_ioctl(ptr noundef %5, ptr noundef nonnull %3)
  %23 = getelementptr i8, ptr %7, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.cdrom_tocentry, ptr %1, i32 0, i32 1
  %26 = call i8 @llvm.fshl.i8(i8 %24, i8 %24, i8 4)
  store i8 %26, ptr %25, align 1
  %27 = lshr i8 %24, 2
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.cdrom_tocentry, ptr %1, i32 0, i32 4
  store i8 %28, ptr %29, align 4
  %30 = load i8, ptr %11, align 2
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %42

32:                                               ; preds = %9
  %33 = getelementptr i8, ptr %7, i32 9
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.cdrom_tocentry, ptr %1, i32 0, i32 3
  store i8 %34, ptr %35, align 4
  %36 = getelementptr i8, ptr %7, i32 10
  %37 = load i8, ptr %36, align 2
  %38 = getelementptr inbounds %struct.cdrom_msf0, ptr %35, i32 0, i32 1
  store i8 %37, ptr %38, align 1
  %39 = getelementptr i8, ptr %7, i32 11
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds %struct.cdrom_msf0, ptr %35, i32 0, i32 2
  store i8 %40, ptr %41, align 2
  br label %62

42:                                               ; preds = %9
  %43 = getelementptr i8, ptr %7, i32 8
  %44 = load i8, ptr %43, align 8
  %45 = zext i8 %44 to i32
  %46 = getelementptr i8, ptr %7, i32 9
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %45, 16
  %50 = shl nuw nsw i32 %48, 8
  %51 = or i32 %50, %49
  %52 = getelementptr i8, ptr %7, i32 10
  %53 = load i8, ptr %52, align 2
  %54 = zext i8 %53 to i32
  %55 = or i32 %51, %54
  %56 = shl nuw i32 %55, 8
  %57 = getelementptr i8, ptr %7, i32 11
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %56, %59
  %61 = getelementptr inbounds %struct.cdrom_tocentry, ptr %1, i32 0, i32 3
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %42, %32
  call void @kfree(ptr noundef nonnull %7) #9
  br label %63

63:                                               ; preds = %62, %2
  %64 = phi i32 [ %22, %62 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  ret i32 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @sr_get_last_session(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_cd, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  store i32 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.scsi_cd, ptr %4, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 8
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ true, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.cdrom_multisession, ptr %1, i32 0, i32 1
  store i8 %16, ptr %17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_get_mcn(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.packet_command, align 4
  %4 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 32) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false)
  store i8 66, ptr %3, align 4
  %10 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 2
  store i8 64, ptr %10, align 2
  %11 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 3
  store i8 2, ptr %11, align 1
  %12 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i8 24, ptr %12, align 4
  %13 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 24, ptr %14, align 4
  %15 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 3000, ptr %16, align 4
  %17 = call i32 @sr_do_ioctl(ptr noundef %5, ptr noundef nonnull %3)
  %18 = getelementptr i8, ptr %7, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %1, ptr noundef align 1 dereferenceable(13) %18, i32 13, i1 false)
  %19 = getelementptr [14 x i8], ptr %1, i32 0, i32 13
  store i8 0, ptr %19, align 1
  call void @kfree(ptr noundef nonnull %7) #9
  br label %20

20:                                               ; preds = %9, %2
  %21 = phi i32 [ %17, %9 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  ret i32 %21
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sr_reset(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_select_speed(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.packet_command, align 4
  %4 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  %6 = icmp eq i32 %1, 0
  %7 = mul i32 %1, 177
  %8 = select i1 %6, i32 65535, i32 %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false)
  store i8 -69, ptr %3, align 4
  %9 = lshr i32 %8, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 2
  store i8 %10, ptr %11, align 2
  %12 = trunc i32 %8 to i8
  %13 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 3
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 3000, ptr %15, align 4
  %16 = call i32 @sr_do_ioctl(ptr noundef %5, ptr noundef nonnull %3)
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_audio_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.packet_command, align 4
  %5 = alloca %struct.cdrom_tocentry, align 4
  %6 = alloca %struct.cdrom_tocentry, align 4
  %7 = alloca %struct.packet_command, align 4
  %8 = alloca %struct.packet_command, align 4
  %9 = alloca %struct.packet_command, align 4
  switch i32 %1, label %121 [
    i32 21253, label %10
    i32 21254, label %31
    i32 21252, label %33
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %9) #9
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 32) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %9, i8 0, i32 44, i1 false) #9
  %17 = getelementptr inbounds %struct.packet_command, ptr %9, i32 0, i32 7
  store i32 3000, ptr %17, align 4
  store i8 67, ptr %9, align 4
  %18 = getelementptr inbounds [12 x i8], ptr %9, i32 0, i32 8
  store i8 12, ptr %18, align 4
  %19 = getelementptr inbounds %struct.packet_command, ptr %9, i32 0, i32 1
  store ptr %14, ptr %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, ptr %9, i32 0, i32 2
  store i32 12, ptr %20, align 4
  %21 = getelementptr inbounds %struct.packet_command, ptr %9, i32 0, i32 6
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.packet_command, ptr %9, i32 0, i32 5
  store i8 2, ptr %22, align 4
  %23 = call i32 @sr_do_ioctl(ptr noundef %12, ptr noundef nonnull %9) #9
  %24 = getelementptr i8, ptr %14, i32 2
  %25 = load i8, ptr %24, align 2
  store i8 %25, ptr %2, align 1
  %26 = getelementptr i8, ptr %14, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.cdrom_tochdr, ptr %2, i32 0, i32 1
  store i8 %27, ptr %28, align 1
  call void @kfree(ptr noundef nonnull %14) #9
  br label %29

29:                                               ; preds = %16, %10
  %30 = phi i32 [ %23, %16 ], [ -12, %10 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %9) #9
  br label %121

31:                                               ; preds = %3
  %32 = tail call fastcc i32 @sr_read_tocentry(ptr noundef %0, ptr noundef %2)
  br label %121

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #9
  %36 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %8, i8 0, i64 44, i1 false) #9
  store i32 3000, ptr %36, align 4
  store i8 72, ptr %8, align 4
  %37 = load i8, ptr %2, align 1
  %38 = getelementptr inbounds [12 x i8], ptr %8, i32 0, i32 4
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cdrom_ti, ptr %2, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds [12 x i8], ptr %8, i32 0, i32 5
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.cdrom_ti, ptr %2, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds [12 x i8], ptr %8, i32 0, i32 7
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.cdrom_ti, ptr %2, i32 0, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds [12 x i8], ptr %8, i32 0, i32 8
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 5
  store i8 3, ptr %48, align 4
  %49 = call i32 @sr_do_ioctl(ptr noundef %35, ptr noundef nonnull %8) #9
  %50 = icmp eq i32 %49, -95
  br i1 %50, label %51, label %119

51:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #9
  %52 = load ptr, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #9
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %54 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3264, i32 noundef 32) #10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #9
  br label %117

57:                                               ; preds = %51
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false) #9
  %58 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 3000, ptr %58, align 4
  store i8 67, ptr %4, align 4
  %59 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 8
  store i8 12, ptr %59, align 4
  %60 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %54, ptr %60, align 4
  %61 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  store i32 12, ptr %61, align 4
  %62 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  store i8 2, ptr %63, align 4
  %64 = call i32 @sr_do_ioctl(ptr noundef %52, ptr noundef nonnull %4) #9
  %65 = getelementptr i8, ptr %54, i32 2
  %66 = load i8, ptr %65, align 2
  %67 = getelementptr i8, ptr %54, i32 3
  %68 = load i8, ptr %67, align 1
  call void @kfree(ptr noundef nonnull %54) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #9
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %57
  %71 = zext i8 %68 to i32
  %72 = zext i8 %66 to i32
  %73 = sub nsw i32 1, %72
  %74 = add nsw i32 %73, %71
  %75 = load i8, ptr %42, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = icmp eq i8 %75, -86
  br i1 %79, label %84, label %80

80:                                               ; preds = %78
  %81 = add i8 %75, 1
  br label %82

82:                                               ; preds = %80, %70
  %83 = phi i8 [ %81, %80 ], [ -86, %70 ]
  store i8 %83, ptr %42, align 1
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i8 [ -86, %78 ], [ %83, %82 ]
  %86 = load i8, ptr %2, align 1
  store i8 %86, ptr %5, align 4
  %87 = getelementptr inbounds %struct.cdrom_tocentry, ptr %5, i32 0, i32 2
  store i8 2, ptr %87, align 2
  store i8 %85, ptr %6, align 4
  %88 = getelementptr inbounds %struct.cdrom_tocentry, ptr %6, i32 0, i32 2
  store i8 2, ptr %88, align 2
  %89 = call fastcc i32 @sr_read_tocentry(ptr noundef %0, ptr noundef nonnull %5) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %84
  %92 = call fastcc i32 @sr_read_tocentry(ptr noundef %0, ptr noundef nonnull %6) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i32 44, i1 false) #9
  store i8 71, ptr %7, align 4
  %95 = getelementptr inbounds %struct.cdrom_tocentry, ptr %5, i32 0, i32 3
  %96 = load i8, ptr %95, align 4
  %97 = getelementptr inbounds [12 x i8], ptr %7, i32 0, i32 3
  store i8 %96, ptr %97, align 1
  %98 = getelementptr inbounds %struct.cdrom_msf0, ptr %95, i32 0, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr inbounds [12 x i8], ptr %7, i32 0, i32 4
  store i8 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.cdrom_msf0, ptr %95, i32 0, i32 2
  %102 = load i8, ptr %101, align 2
  %103 = getelementptr inbounds [12 x i8], ptr %7, i32 0, i32 5
  store i8 %102, ptr %103, align 1
  %104 = getelementptr inbounds %struct.cdrom_tocentry, ptr %6, i32 0, i32 3
  %105 = load i8, ptr %104, align 4
  %106 = getelementptr inbounds [12 x i8], ptr %7, i32 0, i32 6
  store i8 %105, ptr %106, align 2
  %107 = getelementptr inbounds %struct.cdrom_msf0, ptr %104, i32 0, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = getelementptr inbounds [12 x i8], ptr %7, i32 0, i32 7
  store i8 %108, ptr %109, align 1
  %110 = getelementptr inbounds %struct.cdrom_msf0, ptr %104, i32 0, i32 2
  %111 = load i8, ptr %110, align 2
  %112 = getelementptr inbounds [12 x i8], ptr %7, i32 0, i32 8
  store i8 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.packet_command, ptr %7, i32 0, i32 5
  store i8 3, ptr %113, align 4
  %114 = getelementptr inbounds %struct.packet_command, ptr %7, i32 0, i32 7
  store i32 3000, ptr %114, align 4
  %115 = load ptr, ptr %34, align 8
  %116 = call i32 @sr_do_ioctl(ptr noundef %115, ptr noundef nonnull %7) #9
  br label %117

117:                                              ; preds = %94, %91, %84, %57, %56
  %118 = phi i32 [ %116, %94 ], [ %64, %57 ], [ %89, %84 ], [ %92, %91 ], [ -12, %56 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %119

119:                                              ; preds = %117, %33
  %120 = phi i32 [ %118, %117 ], [ %49, %33 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #9
  br label %121

121:                                              ; preds = %119, %31, %29, %3
  %122 = phi i32 [ %120, %119 ], [ %32, %31 ], [ %30, %29 ], [ -22, %3 ]
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_is_xa(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.packet_command, align 4
  %3 = alloca %struct.packet_command, align 4
  %4 = load i32, ptr @xa_test, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %85, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 2048) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %85, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  %14 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 5
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #9
  %19 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %19, i8 0, i64 40, i1 false) #9
  store i8 -66, ptr %2, align 4
  %20 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %20, align 1
  %21 = lshr i32 %13, 24
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 2
  store i8 %22, ptr %23, align 2
  %24 = lshr i32 %13, 16
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 3
  store i8 %25, ptr %26, align 1
  %27 = lshr i32 %13, 8
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %19, align 4
  %29 = trunc i32 %13 to i8
  %30 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 5
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 8
  store i8 1, ptr %31, align 4
  %32 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 9
  store i8 120, ptr %32, align 1
  %33 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %8, ptr %33, align 4
  %34 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 2340, ptr %34, align 4
  %35 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i32 3000, ptr %36, align 4
  %37 = call i32 @sr_do_ioctl(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #9
  %38 = icmp eq i32 %37, -95
  br i1 %38, label %39, label %75

39:                                               ; preds = %18
  %40 = load i8, ptr %14, align 4
  %41 = and i8 %40, -9
  store i8 %41, ptr %14, align 4
  %42 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %43, ptr noundef %44, ptr noundef nonnull @.str.4) #9
  br label %45

45:                                               ; preds = %39, %10
  %46 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 20
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 2340
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = call i32 @sr_set_blocklength(ptr noundef %0, i32 noundef 2340) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  br label %83

55:                                               ; preds = %51, %45
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false) #9
  store i8 40, ptr %3, align 4
  %56 = lshr i32 %13, 24
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 2
  store i8 %57, ptr %58, align 2
  %59 = lshr i32 %13, 16
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 3
  store i8 %60, ptr %61, align 1
  %62 = lshr i32 %13, 8
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  store i8 %63, ptr %64, align 4
  %65 = trunc i32 %13 to i8
  %66 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 5
  store i8 %65, ptr %66, align 1
  %67 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i8 1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %8, ptr %68, align 4
  %69 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 2340, ptr %69, align 4
  %70 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 2, ptr %70, align 4
  %71 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 3000, ptr %71, align 4
  %72 = call i32 @sr_do_ioctl(ptr noundef %0, ptr noundef nonnull %3) #9
  %73 = call i32 @sr_set_blocklength(ptr noundef %0, i32 noundef 2048) #9
  %74 = or i32 %73, %72
  br label %75

75:                                               ; preds = %55, %18
  %76 = phi i32 [ %74, %55 ], [ %37, %18 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = getelementptr i8, ptr %8, i32 3
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 2
  %82 = zext i1 %81 to i32
  br label %83

83:                                               ; preds = %78, %75, %54
  %84 = phi i32 [ %82, %78 ], [ -1, %75 ], [ -1, %54 ]
  call void @kfree(ptr noundef nonnull %8) #9
  br label %85

85:                                               ; preds = %83, %6, %1
  %86 = phi i32 [ %84, %83 ], [ 0, %1 ], [ -12, %6 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_set_blocklength(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
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
