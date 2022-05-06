; ModuleID = '/llk/IR/drivers/scsi/sr_vendor.c_pt.bc'
source_filename = "../drivers/scsi/sr_vendor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.ccs_modesel_head = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [4 x i8] c"NEC\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"CD-ROM DRIVE:25\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CD-ROM DRIVE:36\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CD-ROM DRIVE:83\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CD-ROM DRIVE:84 \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"TOSHIBA\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Beurer\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Gluco Memory\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Hmm, seems the drive doesn't support multisession CD's\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Hmm, seems the cdrom doesn't support multisession CD's\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"No finished session\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"unknown vendor code (%i), not initialized ?\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @sr_vendor_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 31
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 22
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 4, ptr %8, align 4
  br label %51

18:                                               ; preds = %13
  %19 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(4) @.str, i32 noundef 3)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  store i32 2, ptr %8, align 4
  %22 = tail call i32 @strncmp(ptr noundef %7, ptr noundef nonnull dereferenceable(16) @.str.1, i32 noundef 15)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strncmp(ptr noundef %7, ptr noundef nonnull dereferenceable(16) @.str.2, i32 noundef 15)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @strncmp(ptr noundef %7, ptr noundef nonnull dereferenceable(16) @.str.3, i32 noundef 15)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @strncmp(ptr noundef %7, ptr noundef nonnull dereferenceable(17) @.str.4, i32 noundef 16)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30, %27, %24, %21
  %34 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 8, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 32
  store i32 %36, ptr %34, align 4
  br label %51

37:                                               ; preds = %18
  %38 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(8) @.str.5, i32 noundef 7)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 3, ptr %8, align 4
  br label %51

41:                                               ; preds = %37
  %42 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(7) @.str.6, i32 noundef 6)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = tail call i32 @strncmp(ptr noundef %7, ptr noundef nonnull dereferenceable(13) @.str.7, i32 noundef 12)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  store i32 5, ptr %8, align 4
  %48 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 8, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 4391
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %44, %41, %40, %33, %30, %17, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_set_blocklength(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.packet_command, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 512) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %5, 3
  %11 = icmp sgt i32 %1, 2048
  %12 = select i1 %11, i8 -127, i8 -125
  %13 = select i1 %10, i8 %12, i8 0
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false)
  store i8 21, ptr %3, align 4
  %14 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 1
  store i8 16, ptr %14, align 1
  %15 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  store i8 12, ptr %15, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i32 12, i1 false)
  %16 = getelementptr inbounds %struct.ccs_modesel_head, ptr %7, i32 0, i32 3
  store i8 8, ptr %16, align 1
  %17 = getelementptr inbounds %struct.ccs_modesel_head, ptr %7, i32 0, i32 4
  store i8 %13, ptr %17, align 4
  %18 = lshr i32 %1, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.ccs_modesel_head, ptr %7, i32 0, i32 10
  store i8 %19, ptr %20, align 2
  %21 = trunc i32 %1 to i8
  %22 = getelementptr inbounds %struct.ccs_modesel_head, ptr %7, i32 0, i32 11
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 12, ptr %24, align 4
  %25 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 3000, ptr %26, align 4
  %27 = call i32 @sr_do_ioctl(ptr noundef %0, ptr noundef nonnull %3) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 20
  store i32 %1, ptr %32, align 4
  br label %33

33:                                               ; preds = %29, %9
  call void @kfree(ptr noundef nonnull %7) #8
  br label %34

34:                                               ; preds = %33, %2
  %35 = phi i32 [ %27, %33 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #8
  ret i32 %35
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_do_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sr_cd_check(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.packet_command, align 4
  %3 = alloca %struct.packet_command, align 4
  %4 = alloca %struct.packet_command, align 4
  %5 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #8
  %7 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 8, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %246

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 512) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %246, label %15

15:                                               ; preds = %11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false)
  %16 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %190 [
    i32 1, label %18
    i32 2, label %64
    i32 3, label %95
    i32 4, label %148
  ]

18:                                               ; preds = %15
  store i8 67, ptr %4, align 4
  %19 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 8
  store i8 12, ptr %19, align 4
  %20 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 64, ptr %20, align 1
  %21 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %13, ptr %21, align 4
  %22 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  store i32 12, ptr %22, align 4
  %23 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  store i8 2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 3000, ptr %25, align 4
  %26 = call i32 @sr_do_ioctl(ptr noundef %6, ptr noundef nonnull %4) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %194

28:                                               ; preds = %18
  %29 = load i8, ptr %13, align 8
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = getelementptr i8, ptr %13, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %31, %34
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %39, ptr noundef %40, ptr noundef nonnull @.str.9) #8
  br label %194

41:                                               ; preds = %28
  %42 = getelementptr i8, ptr %13, i32 11
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr i8, ptr %13, i32 10
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %48, %44
  %50 = getelementptr i8, ptr %13, i32 9
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %49, %53
  %55 = getelementptr i8, ptr %13, i32 8
  %56 = load i8, ptr %55, align 8
  %57 = zext i8 %56 to i32
  %58 = shl nuw i32 %57, 24
  %59 = or i32 %54, %58
  %60 = getelementptr i8, ptr %13, i32 6
  %61 = load i8, ptr %60, align 2
  %62 = icmp ult i8 %61, 2
  %63 = select i1 %62, i32 0, i32 %59
  br label %194

64:                                               ; preds = %15
  store i8 -34, ptr %4, align 4
  %65 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 1
  store i8 3, ptr %65, align 1
  %66 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 2
  store i8 -80, ptr %66, align 2
  %67 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %13, ptr %67, align 4
  %68 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  store i32 22, ptr %68, align 4
  %69 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %69, align 4
  %70 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  store i8 2, ptr %70, align 4
  %71 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 3000, ptr %71, align 4
  %72 = call i32 @sr_do_ioctl(ptr noundef %6, ptr noundef nonnull %4) #8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %194

74:                                               ; preds = %64
  %75 = getelementptr i8, ptr %13, i32 14
  %76 = load i8, ptr %75, align 2
  switch i8 %76, label %77 [
    i8 0, label %81
    i8 -80, label %81
  ]

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %79, ptr noundef %80, ptr noundef nonnull @.str.10) #8
  br label %194

81:                                               ; preds = %74, %74
  %82 = getelementptr i8, ptr %13, i32 15
  %83 = load i8, ptr %82, align 1
  %84 = call i32 @_bcd2bin(i8 noundef zeroext %83) #10
  %85 = getelementptr i8, ptr %13, i32 16
  %86 = load i8, ptr %85, align 8
  %87 = call i32 @_bcd2bin(i8 noundef zeroext %86) #10
  %88 = getelementptr i8, ptr %13, i32 17
  %89 = load i8, ptr %88, align 1
  %90 = call i32 @_bcd2bin(i8 noundef zeroext %89) #10
  %91 = mul i32 %84, 4500
  %92 = mul i32 %87, 75
  %93 = add i32 %92, %91
  %94 = add i32 %93, %90
  br label %194

95:                                               ; preds = %15
  store i8 -57, ptr %4, align 4
  %96 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 1
  store i8 3, ptr %96, align 1
  %97 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %13, ptr %97, align 4
  %98 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  store i32 4, ptr %98, align 4
  %99 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  store i8 2, ptr %100, align 4
  %101 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 3000, ptr %101, align 4
  %102 = call i32 @sr_do_ioctl(ptr noundef %6, ptr noundef nonnull %4) #8
  switch i32 %102, label %194 [
    i32 -22, label %103
    i32 0, label %107
  ]

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %105, ptr noundef %106, ptr noundef nonnull @.str.9) #8
  br label %194

107:                                              ; preds = %95
  %108 = getelementptr i8, ptr %13, i32 1
  %109 = load i8, ptr %108, align 1
  %110 = call i32 @_bcd2bin(i8 noundef zeroext %109) #10
  %111 = getelementptr i8, ptr %13, i32 2
  %112 = load i8, ptr %111, align 2
  %113 = call i32 @_bcd2bin(i8 noundef zeroext %112) #10
  %114 = getelementptr i8, ptr %13, i32 3
  %115 = load i8, ptr %114, align 1
  %116 = call i32 @_bcd2bin(i8 noundef zeroext %115) #10
  %117 = mul i32 %110, 4500
  %118 = mul i32 %113, 75
  %119 = add i32 %118, %117
  %120 = add i32 %119, %116
  %121 = icmp eq i32 %120, 0
  %122 = add i32 %120, -150
  %123 = select i1 %121, i32 0, i32 %122
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #8
  %124 = load i32, ptr %16, align 4
  %125 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %126 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %125, i32 noundef 3264, i32 noundef 512) #9
  %127 = icmp eq ptr %126, null
  br i1 %127, label %147, label %128

128:                                              ; preds = %107
  %129 = icmp eq i32 %124, 3
  %130 = select i1 %129, i8 -125, i8 0
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false) #8
  store i8 21, ptr %3, align 4
  %131 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 1
  store i8 16, ptr %131, align 1
  %132 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  store i8 12, ptr %132, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %126, i8 0, i32 12, i1 false) #8
  %133 = getelementptr inbounds %struct.ccs_modesel_head, ptr %126, i32 0, i32 3
  store i8 8, ptr %133, align 1
  %134 = getelementptr inbounds %struct.ccs_modesel_head, ptr %126, i32 0, i32 4
  store i8 %130, ptr %134, align 4
  %135 = getelementptr inbounds %struct.ccs_modesel_head, ptr %126, i32 0, i32 10
  store i8 8, ptr %135, align 2
  %136 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %126, ptr %136, align 4
  %137 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 12, ptr %137, align 4
  %138 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 1, ptr %138, align 4
  %139 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 3000, ptr %139, align 4
  %140 = call i32 @sr_do_ioctl(ptr noundef %6, ptr noundef nonnull %3) #8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %128
  %143 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.scsi_device, ptr %144, i32 0, i32 20
  store i32 2048, ptr %145, align 4
  br label %146

146:                                              ; preds = %142, %128
  call void @kfree(ptr noundef nonnull %126) #8
  br label %147

147:                                              ; preds = %146, %107
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #8
  br label %194

148:                                              ; preds = %15
  store i8 67, ptr %4, align 4
  %149 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 8
  store i8 4, ptr %149, align 4
  %150 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 64, ptr %150, align 1
  %151 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %13, ptr %151, align 4
  %152 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  store i32 4, ptr %152, align 4
  %153 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %153, align 4
  %154 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  store i8 2, ptr %154, align 4
  %155 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 3000, ptr %155, align 4
  %156 = call i32 @sr_do_ioctl(ptr noundef %6, ptr noundef nonnull %4) #8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %194

158:                                              ; preds = %148
  %159 = getelementptr i8, ptr %13, i32 2
  %160 = load i8, ptr %159, align 2
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 2
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %164, ptr noundef %165, ptr noundef nonnull @.str.12) #8
  br label %194

166:                                              ; preds = %158
  store i8 67, ptr %4, align 4
  %167 = and i8 %160, 127
  %168 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 6
  store i8 %167, ptr %168, align 2
  store i8 12, ptr %149, align 4
  store i8 64, ptr %150, align 1
  store ptr %13, ptr %151, align 4
  store i32 12, ptr %152, align 4
  store i32 1, ptr %153, align 4
  store i8 2, ptr %154, align 4
  store i32 3000, ptr %155, align 4
  %169 = call i32 @sr_do_ioctl(ptr noundef %6, ptr noundef nonnull %4) #8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %166
  %172 = getelementptr i8, ptr %13, i32 11
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = getelementptr i8, ptr %13, i32 10
  %176 = load i8, ptr %175, align 2
  %177 = zext i8 %176 to i32
  %178 = shl nuw nsw i32 %177, 8
  %179 = or i32 %178, %174
  %180 = getelementptr i8, ptr %13, i32 9
  %181 = load i8, ptr %180, align 1
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 16
  %184 = or i32 %179, %183
  %185 = getelementptr i8, ptr %13, i32 8
  %186 = load i8, ptr %185, align 8
  %187 = zext i8 %186 to i32
  %188 = shl nuw i32 %187, 24
  %189 = or i32 %184, %188
  br label %194

190:                                              ; preds = %15
  %191 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 2
  %192 = load ptr, ptr %191, align 8
  %193 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 8, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %192, ptr noundef %193, ptr noundef nonnull @.str.13, i32 noundef %17) #8
  br label %194

194:                                              ; preds = %190, %171, %166, %162, %148, %147, %103, %95, %81, %77, %64, %41, %37, %18
  %195 = phi i32 [ 0, %190 ], [ 0, %148 ], [ 0, %162 ], [ 0, %166 ], [ %189, %171 ], [ 0, %18 ], [ 0, %37 ], [ %63, %41 ], [ 0, %77 ], [ %94, %81 ], [ 0, %64 ], [ 0, %103 ], [ %123, %147 ], [ 0, %95 ]
  %196 = phi i32 [ 0, %190 ], [ %156, %148 ], [ 0, %162 ], [ %169, %166 ], [ 0, %171 ], [ %26, %18 ], [ 0, %37 ], [ 0, %41 ], [ 0, %77 ], [ 0, %81 ], [ %72, %64 ], [ -22, %103 ], [ 0, %147 ], [ %102, %95 ]
  %197 = phi i1 [ false, %190 ], [ true, %148 ], [ true, %162 ], [ true, %166 ], [ true, %171 ], [ true, %18 ], [ false, %37 ], [ true, %41 ], [ false, %77 ], [ true, %81 ], [ true, %64 ], [ false, %103 ], [ true, %147 ], [ true, %95 ]
  %198 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 4
  store i32 %195, ptr %198, align 8
  %199 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 5
  %200 = load i8, ptr %199, align 4
  %201 = and i8 %200, -5
  store i8 %201, ptr %199, align 4
  %202 = call i32 @sr_disk_status(ptr noundef %0) #8
  %203 = icmp eq i32 %202, 100
  br i1 %203, label %210, label %204

204:                                              ; preds = %194
  %205 = call i32 @sr_is_xa(ptr noundef %6) #8
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i8, ptr %199, align 4
  %209 = or i8 %208, 4
  store i8 %209, ptr %199, align 4
  br label %210

210:                                              ; preds = %207, %204, %194
  %211 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 2
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.scsi_device, ptr %212, i32 0, i32 20
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 2048
  br i1 %215, label %240, label %216

216:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #8
  %217 = load i32, ptr %16, align 4
  %218 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %219 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %218, i32 noundef 3264, i32 noundef 512) #9
  %220 = icmp eq ptr %219, null
  br i1 %220, label %239, label %221

221:                                              ; preds = %216
  %222 = icmp eq i32 %217, 3
  %223 = select i1 %222, i8 -125, i8 0
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #8
  store i8 21, ptr %2, align 4
  %224 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 1
  store i8 16, ptr %224, align 1
  %225 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 4
  store i8 12, ptr %225, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %219, i8 0, i32 12, i1 false) #8
  %226 = getelementptr inbounds %struct.ccs_modesel_head, ptr %219, i32 0, i32 3
  store i8 8, ptr %226, align 1
  %227 = getelementptr inbounds %struct.ccs_modesel_head, ptr %219, i32 0, i32 4
  store i8 %223, ptr %227, align 4
  %228 = getelementptr inbounds %struct.ccs_modesel_head, ptr %219, i32 0, i32 10
  store i8 8, ptr %228, align 2
  %229 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %219, ptr %229, align 4
  %230 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 12, ptr %230, align 4
  %231 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 1, ptr %231, align 4
  %232 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i32 3000, ptr %232, align 4
  %233 = call i32 @sr_do_ioctl(ptr noundef %6, ptr noundef nonnull %2) #8
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %221
  %236 = load ptr, ptr %211, align 8
  %237 = getelementptr inbounds %struct.scsi_device, ptr %236, i32 0, i32 20
  store i32 2048, ptr %237, align 4
  br label %238

238:                                              ; preds = %235, %221
  call void @kfree(ptr noundef nonnull %219) #8
  br label %239

239:                                              ; preds = %238, %216
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #8
  br label %240

240:                                              ; preds = %239, %210
  br i1 %197, label %245, label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %243 = load i32, ptr %242, align 4
  %244 = or i32 %243, 32
  store i32 %244, ptr %242, align 4
  br label %245

245:                                              ; preds = %241, %240
  call void @kfree(ptr noundef nonnull %13) #8
  br label %246

246:                                              ; preds = %245, %11, %1
  %247 = phi i32 [ %196, %245 ], [ 0, %1 ], [ -12, %11 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #8
  ret i32 %247
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_disk_status(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_is_xa(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone willreturn }

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
