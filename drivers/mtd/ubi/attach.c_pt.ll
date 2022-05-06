; ModuleID = '/llk/IR/drivers/mtd/ubi/attach.c_pt.bc'
source_filename = "../drivers/mtd/ubi/attach.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubi_attach_info = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, ptr, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.ubi_ainf_peb = type { i32, i32, i32, i32, i8, i64, %union.anon }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rb_node, %struct.rb_root }
%struct.ubi_ec_hdr = type { i32, i8, [3 x i8], i64, i32, i32, i32, [32 x i8], i32 }

@.str = private unnamed_addr constant [32 x i8] c"unsupported on-flash UBI format\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"VID of PEB %d header is bad, but it was OK earlier, err %d\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"two LEBs with same sequence number %llu\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"no free eraseblocks\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"inconsistent vol_id\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"inconsistent vol_type\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"inconsistent used_ebs\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"inconsistent data_pad\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"inconsistent VID header at PEB %d\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"erase counter overflow at PEB %d, EC %d\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"ubi_aeb_slab_cache\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"scanning is finished\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"'ubi_io_read_ec_hdr()' returned unknown code %d\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"this UBI version is %d, image version is %d\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"erase counter overflow, max is %d\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"bad image sequence number %d in PEB %d, expected %d\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"'ubi_io_read_vid_hdr()' returned unknown code %d\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"\22delete\22 compatible internal volume %d:%d found, will remove it\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"read-only compatible internal volume %d:%d found, switch to read-only mode\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"\22preserve\22 compatible internal volume %d:%d found\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"incompatible internal volume %d:%d found\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"valid VID header but corrupted EC header at PEB %d\00", align 1
@.str.24 = private unnamed_addr constant [77 x i8] c"PEB %d contains corrupted VID header, and the data does not contain all 0xFF\00", align 1
@.str.25 = private unnamed_addr constant [93 x i8] c"this may be a non-UBI PEB or a severe VID header corruption which requires manual inspection\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"\013hexdump of PEB %d offset %d, length %d\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"%d PEBs are corrupted and preserved\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"\013Corrupted PEBs are:\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"\01c %d\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"too many corrupted PEBs, refusing\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"empty MTD device detected\00", align 1
@.str.35 = private unnamed_addr constant [81 x i8] c"MTD device is not UBI-formatted and possibly contains non-UBI data - refusing it\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"bad is_empty flag\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"negative values\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"bad vol_id\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"highest_vol_id is %d, but vol_id %d is there\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"bad vol_type\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"bad data_pad\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"bad ai->min_ec (%d), %d found\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"bad ai->max_ec (%d), %d found\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"too high PEB number %d, total PEBs %d\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"bad lnum or used_ebs\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"non-zero used_ebs\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"incorrect highest_lnum or lnum\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"bad leb_count, %d objects in the tree\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"bad highest_lnum\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"bad ai->vols_found %d, should be %d\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"VID header is not OK (%d)\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"bad sqnum %llu\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"bad vol_id %d\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"bad compat %d\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"bad lnum %d\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"bad used_ebs %d\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"bad data_pad %d\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"bad highest_lnum %d\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"bad last_data_size %d\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"PEB %d is not referred\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"bad attaching information about LEB %d\00", align 1
@.str.62 = private unnamed_addr constant [42 x i8] c"bad attaching information about volume %d\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @ubi_alloc_aeb(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %6, i32 0, i32 1
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %6, align 8
  %10 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %6, i32 0, i32 2
  store i32 -1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %6, i32 0, i32 3
  store i32 -1, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %3
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_free_aeb(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_compare_lebs(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %3, i32 0, i32 13
  %6 = load i64, ptr %5, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %8 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %1, i32 0, i32 5
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str) #9
  br label %91

12:                                               ; preds = %4
  %13 = icmp ugt i64 %7, %9
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %3, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %91, label %49

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %1, i32 0, i32 4
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %91, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 8) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %91, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %29 = load i32, ptr %28, align 4
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %25) #9
  br label %91

33:                                               ; preds = %27
  %34 = load i32, ptr %28, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %30, i8 0, i32 %34, i1 false) #9
  %35 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %25, i32 0, i32 1
  store ptr %30, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr i8, ptr %30, i32 %37
  store ptr %38, ptr %25, align 8
  %39 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %25, i32 noundef 0) #9
  switch i32 %41, label %43 [
    i32 0, label %46
    i32 5, label %42
  ]

42:                                               ; preds = %33
  br label %46

43:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %40, i32 noundef %41) #9
  %44 = icmp sgt i32 %41, 0
  %45 = select i1 %44, i32 -5, i32 %41
  br label %86

46:                                               ; preds = %42, %33
  %47 = phi i32 [ 1, %42 ], [ %41, %33 ]
  %48 = load ptr, ptr %25, align 8
  br label %49

49:                                               ; preds = %46, %14
  %50 = phi i32 [ 0, %14 ], [ %47, %46 ]
  %51 = phi ptr [ null, %14 ], [ %25, %46 ]
  %52 = phi ptr [ %3, %14 ], [ %48, %46 ]
  %53 = phi i32 [ %2, %14 ], [ %40, %46 ]
  %54 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %52, i32 0, i32 8
  %55 = load i32, ptr %54, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 81
  tail call void @mutex_lock(ptr noundef %57) #9
  %58 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 80
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef %59, i32 noundef %53, i32 noundef %61, i32 noundef %56) #9
  switch i32 %62, label %84 [
    i32 5, label %63
    i32 0, label %63
    i32 -74, label %63
  ]

63:                                               ; preds = %49, %49, %49
  %64 = icmp ne i32 %62, 0
  %65 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %52, i32 0, i32 11
  %66 = load i32, ptr %65, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = load ptr, ptr %58, align 8
  %69 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %68, i32 noundef %56) #12
  %70 = icmp eq i32 %69, %67
  %71 = zext i1 %64 to i32
  %72 = or i32 %50, %71
  %73 = shl nsw i32 %72, 1
  %74 = xor i1 %13, %70
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  tail call void @mutex_unlock(ptr noundef %57) #9
  %77 = icmp eq ptr %51, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %51, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  tail call void @kfree(ptr noundef %80) #9
  tail call void @kfree(ptr noundef nonnull %51) #9
  br label %81

81:                                               ; preds = %78, %63
  %82 = select i1 %70, i32 %73, i32 4
  %83 = or i32 %82, %76
  br label %91

84:                                               ; preds = %49
  tail call void @mutex_unlock(ptr noundef %57) #9
  %85 = icmp eq ptr %51, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %84, %43
  %87 = phi i32 [ %45, %43 ], [ %62, %84 ]
  %88 = phi ptr [ %25, %43 ], [ %51, %84 ]
  %89 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void @kfree(ptr noundef %90) #9
  tail call void @kfree(ptr noundef nonnull %88) #9
  br label %91

91:                                               ; preds = %86, %84, %81, %32, %23, %18, %14, %11
  %92 = phi i32 [ -22, %11 ], [ %83, %81 ], [ 1, %14 ], [ 0, %18 ], [ %62, %84 ], [ %87, %86 ], [ -12, %32 ], [ -12, %23 ]
  ret i32 %92
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_vid_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_add_to_av(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 5
  %8 = load i32, ptr %7, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 6
  %11 = load i32, ptr %10, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 13
  %14 = load i64, ptr %13, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %16 = load ptr, ptr %1, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %23, %6
  %19 = phi ptr [ %28, %23 ], [ %16, %6 ]
  %20 = getelementptr i8, ptr %19, i32 -32
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %69, label %23

23:                                               ; preds = %18
  %24 = icmp slt i32 %21, %9
  %25 = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  %26 = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  %27 = select i1 %24, ptr %25, ptr %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18

30:                                               ; preds = %23
  %31 = ptrtoint ptr %19 to i32
  br label %32

32:                                               ; preds = %30, %6
  %33 = phi i32 [ %31, %30 ], [ 0, %6 ]
  %34 = phi ptr [ %27, %30 ], [ %1, %6 ]
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 48) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %74, label %38

38:                                               ; preds = %32
  store i32 %9, ptr %36, align 8
  %39 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, %9
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 %9, ptr %39, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %36, i32 0, i32 8
  store i32 %33, ptr %44, align 8
  %45 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %36, i32 0, i32 8, i32 1
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %36, i32 0, i32 8, i32 2
  store ptr null, ptr %46, align 8
  store ptr %44, ptr %34, align 4
  tail call void @rb_insert_color(ptr noundef %44, ptr noundef %1) #9
  %47 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 11
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8
  %50 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %71, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 9
  %53 = load i32, ptr %52, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %55 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %36, i32 0, i32 4
  store i32 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 10
  %57 = load i32, ptr %56, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  %59 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %36, i32 0, i32 6
  store i32 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 4
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %36, i32 0, i32 7
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 1
  %67 = select i1 %66, i32 3, i32 4
  %68 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %36, i32 0, i32 3
  store i32 %67, ptr %68, align 4
  br label %71

69:                                               ; preds = %18
  %70 = getelementptr i8, ptr %19, i32 -32
  br label %71

71:                                               ; preds = %69, %51, %43
  %72 = phi ptr [ %36, %43 ], [ %36, %51 ], [ %70, %69 ]
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %32
  %75 = phi ptr [ %72, %71 ], [ inttoptr (i32 -12 to ptr), %32 ]
  %76 = ptrtoint ptr %75 to i32
  br label %235

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 17
  %79 = load i64, ptr %78, align 8
  %80 = icmp ult i64 %79, %15
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i64 %15, ptr %78, align 8
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %72, i32 0, i32 9
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %194, label %86

86:                                               ; preds = %185, %82
  %87 = phi ptr [ %190, %185 ], [ %84, %82 ]
  %88 = getelementptr i8, ptr %87, i32 -20
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %12, %89
  br i1 %90, label %91, label %185

91:                                               ; preds = %86
  %92 = getelementptr i8, ptr %87, i32 -20
  %93 = getelementptr i8, ptr %87, i32 -32
  %94 = getelementptr i8, ptr %87, i32 -8
  %95 = load i64, ptr %94, align 8
  %96 = icmp eq i64 %95, %15
  %97 = icmp ne i64 %14, 0
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %15) #9
  tail call void @ubi_dump_aeb(ptr noundef %93, i32 noundef 0) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %4) #9
  br label %235

100:                                              ; preds = %91
  %101 = tail call i32 @ubi_compare_lebs(ptr noundef %0, ptr noundef %93, i32 noundef %2, ptr noundef %4)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %235, label %103

103:                                              ; preds = %100
  %104 = and i32 %101, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %161, label %106

106:                                              ; preds = %103
  %107 = tail call fastcc i32 @validate_vid_hdr(ptr noundef %0, ptr noundef %4, ptr noundef %72, i32 noundef %2)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %235

109:                                              ; preds = %106
  %110 = getelementptr i8, ptr %87, i32 -28
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr i8, ptr %87, i32 -24
  %113 = load i32, ptr %112, align 8
  %114 = load i32, ptr %92, align 4
  %115 = load i32, ptr %93, align 8
  %116 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 3
  %117 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 21
  %118 = load ptr, ptr %117, align 4
  %119 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %118, i32 noundef 3520) #9
  %120 = icmp eq ptr %119, null
  br i1 %120, label %235, label %121

121:                                              ; preds = %109
  %122 = and i32 %101, 4
  %123 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %119, i32 0, i32 1
  store i32 %111, ptr %123, align 4
  store i32 %115, ptr %119, align 8
  %124 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %119, i32 0, i32 2
  %125 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %119, i32 0, i32 3
  store i32 %113, ptr %124, align 8
  store i32 %114, ptr %125, align 4
  %126 = icmp eq i32 %122, 0
  %127 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %119, i32 0, i32 6
  br i1 %126, label %131, label %128

128:                                              ; preds = %121
  %129 = load ptr, ptr %116, align 4
  %130 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  br label %134

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 3, i32 1
  %133 = load ptr, ptr %132, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = phi ptr [ %130, %128 ], [ %132, %131 ]
  %136 = phi ptr [ %129, %128 ], [ %116, %131 ]
  %137 = phi ptr [ %116, %128 ], [ %133, %131 ]
  store ptr %127, ptr %135, align 4
  store ptr %136, ptr %127, align 8
  %138 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %119, i32 0, i32 6, i32 0, i32 1
  store ptr %137, ptr %138, align 4
  store volatile ptr %127, ptr %137, align 4
  store i32 %3, ptr %93, align 8
  store i32 %2, ptr %110, align 4
  store i32 %9, ptr %112, align 8
  store i32 %12, ptr %92, align 4
  %139 = and i32 %101, 2
  %140 = or i32 %139, %5
  %141 = icmp ne i32 %140, 0
  %142 = getelementptr i8, ptr %87, i32 -16
  %143 = zext i1 %141 to i8
  %144 = load i8, ptr %142, align 8
  %145 = and i8 %144, -2
  %146 = or i8 %145, %143
  store i8 %146, ptr %142, align 8
  %147 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 3
  %148 = load i8, ptr %147, align 1
  %149 = shl i8 %148, 1
  %150 = and i8 %149, 2
  %151 = and i8 %146, -3
  %152 = or i8 %150, %151
  store i8 %152, ptr %142, align 8
  store i64 %15, ptr %94, align 8
  %153 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %72, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, %12
  br i1 %155, label %156, label %235

156:                                              ; preds = %134
  %157 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 8
  %158 = load i32, ptr %157, align 1
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  %160 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %72, i32 0, i32 5
  store i32 %159, ptr %160, align 4
  br label %235

161:                                              ; preds = %103
  %162 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 3
  %163 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 21
  %164 = load ptr, ptr %163, align 4
  %165 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %164, i32 noundef 3520) #9
  %166 = icmp eq ptr %165, null
  br i1 %166, label %235, label %167

167:                                              ; preds = %161
  %168 = and i32 %101, 4
  %169 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %165, i32 0, i32 1
  store i32 %2, ptr %169, align 4
  store i32 %3, ptr %165, align 8
  %170 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %165, i32 0, i32 2
  %171 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %165, i32 0, i32 3
  store i32 %9, ptr %170, align 8
  store i32 %12, ptr %171, align 4
  %172 = icmp eq i32 %168, 0
  %173 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %165, i32 0, i32 6
  br i1 %172, label %177, label %174

174:                                              ; preds = %167
  %175 = load ptr, ptr %162, align 4
  %176 = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  br label %180

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 3, i32 1
  %179 = load ptr, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %174
  %181 = phi ptr [ %176, %174 ], [ %178, %177 ]
  %182 = phi ptr [ %175, %174 ], [ %162, %177 ]
  %183 = phi ptr [ %162, %174 ], [ %179, %177 ]
  store ptr %173, ptr %181, align 4
  store ptr %182, ptr %173, align 8
  %184 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %165, i32 0, i32 6, i32 0, i32 1
  store ptr %183, ptr %184, align 4
  store volatile ptr %173, ptr %183, align 4
  br label %235

185:                                              ; preds = %86
  %186 = icmp slt i32 %12, %89
  %187 = getelementptr inbounds %struct.rb_node, ptr %87, i32 0, i32 2
  %188 = getelementptr inbounds %struct.rb_node, ptr %87, i32 0, i32 1
  %189 = select i1 %186, ptr %187, ptr %188
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %86

192:                                              ; preds = %185
  %193 = ptrtoint ptr %87 to i32
  br label %194

194:                                              ; preds = %192, %82
  %195 = phi ptr [ %189, %192 ], [ %83, %82 ]
  %196 = phi i32 [ %193, %192 ], [ 0, %82 ]
  %197 = tail call fastcc i32 @validate_vid_hdr(ptr noundef %0, ptr noundef %4, ptr noundef %72, i32 noundef %2)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %235

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 21
  %201 = load ptr, ptr %200, align 4
  %202 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %201, i32 noundef 3520) #9
  %203 = icmp eq ptr %202, null
  br i1 %203, label %235, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %202, i32 0, i32 1
  store i32 %2, ptr %205, align 4
  store i32 %3, ptr %202, align 8
  %206 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %202, i32 0, i32 2
  %207 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %202, i32 0, i32 3
  store i32 %9, ptr %206, align 8
  store i32 %12, ptr %207, align 4
  %208 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %202, i32 0, i32 4
  %209 = trunc i32 %5 to i8
  %210 = load i8, ptr %208, align 8
  %211 = and i8 %209, 1
  %212 = and i8 %210, -4
  %213 = or i8 %212, %211
  %214 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 3
  %215 = load i8, ptr %214, align 1
  %216 = shl i8 %215, 1
  %217 = and i8 %216, 2
  %218 = or i8 %217, %213
  store i8 %218, ptr %208, align 8
  %219 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %202, i32 0, i32 5
  store i64 %15, ptr %219, align 8
  %220 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %72, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = icmp sgt i32 %221, %12
  br i1 %222, label %228, label %223

223:                                              ; preds = %204
  store i32 %12, ptr %220, align 4
  %224 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 8
  %225 = load i32, ptr %224, align 1
  %226 = tail call i32 @llvm.bswap.i32(i32 %225)
  %227 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %72, i32 0, i32 5
  store i32 %226, ptr %227, align 4
  br label %228

228:                                              ; preds = %223, %204
  %229 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %72, i32 0, i32 2
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, 1
  store i32 %231, ptr %229, align 4
  %232 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %202, i32 0, i32 6
  store i32 %196, ptr %232, align 8
  %233 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %202, i32 0, i32 6, i32 0, i32 1
  store ptr null, ptr %233, align 4
  %234 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %202, i32 0, i32 6, i32 0, i32 2
  store ptr null, ptr %234, align 8
  store ptr %232, ptr %195, align 4
  tail call void @rb_insert_color(ptr noundef %232, ptr noundef %83) #9
  br label %235

235:                                              ; preds = %228, %199, %194, %180, %161, %156, %134, %109, %106, %100, %99, %74
  %236 = phi i32 [ %76, %74 ], [ 0, %228 ], [ %197, %194 ], [ 0, %180 ], [ -12, %161 ], [ -12, %109 ], [ 0, %134 ], [ 0, %156 ], [ %107, %106 ], [ %101, %100 ], [ -22, %99 ], [ -12, %199 ]
  ret i32 %236
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_aeb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vid_hdr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @validate_vid_hdr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 9
  %9 = load i32, ptr %8, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 10
  %12 = load i32, ptr %11, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %2, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 4
  %27 = select i1 %26, i32 2, i32 1
  %28 = icmp eq i32 %27, %7
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %2, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %10, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %2, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %13, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %33, %29, %23, %17
  %38 = phi ptr [ @.str.5, %17 ], [ @.str.6, %23 ], [ @.str.7, %29 ], [ @.str.8, %33 ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull %38) #9
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %3) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %1) #9
  tail call void @ubi_dump_av(ptr noundef %2) #9
  br label %39

39:                                               ; preds = %37, %33, %4
  %40 = phi i32 [ -22, %37 ], [ 0, %4 ], [ 0, %33 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_to_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 2
  %9 = icmp eq ptr %8, %6
  %10 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 3
  %11 = icmp eq ptr %10, %6
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 4
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  br label %21

20:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/ubi/attach.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 242, 0\0A.popsection", ""() #9, !srcloc !8
  unreachable

21:                                               ; preds = %16, %7
  %22 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  %23 = load ptr, ptr %22, align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %23, i32 noundef 3520) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %24, i32 0, i32 1
  store i32 %1, ptr %27, align 4
  store i32 %4, ptr %24, align 8
  %28 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %24, i32 0, i32 2
  %29 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %24, i32 0, i32 3
  store i32 %2, ptr %28, align 8
  store i32 %3, ptr %29, align 4
  %30 = icmp eq i32 %5, 0
  %31 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %24, i32 0, i32 6
  br i1 %30, label %35, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  br label %38

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi ptr [ %34, %32 ], [ %36, %35 ]
  %40 = phi ptr [ %33, %32 ], [ %6, %35 ]
  %41 = phi ptr [ %6, %32 ], [ %37, %35 ]
  store ptr %31, ptr %39, align 4
  store ptr %40, ptr %31, align 8
  %42 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %24, i32 0, i32 6, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %31, ptr %41, align 4
  br label %43

43:                                               ; preds = %38, %21
  %44 = phi i32 [ -12, %21 ], [ 0, %38 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubi_add_av(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %15, %10 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -32
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %37, label %10

10:                                               ; preds = %5
  %11 = icmp slt i32 %8, %1
  %12 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5

17:                                               ; preds = %10
  %18 = ptrtoint ptr %6 to i32
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %21 = phi ptr [ %14, %17 ], [ %0, %2 ]
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 48) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  store i32 %1, ptr %23, align 8
  %26 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = icmp slt i32 %27, %1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 %1, ptr %26, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %23, i32 0, i32 8
  store i32 %20, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %23, i32 0, i32 8, i32 1
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %23, i32 0, i32 8, i32 2
  store ptr null, ptr %33, align 8
  store ptr %31, ptr %21, align 4
  tail call void @rb_insert_color(ptr noundef %31, ptr noundef %0) #9
  %34 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 11
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %30, %19, %5
  %38 = phi ptr [ %23, %30 ], [ inttoptr (i32 -12 to ptr), %19 ], [ inttoptr (i32 -17 to ptr), %5 ]
  ret ptr %38
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @ubi_find_av(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %15, %10 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -32
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = icmp slt i32 %8, %1
  %12 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %5

17:                                               ; preds = %5
  %18 = getelementptr i8, ptr %6, i32 -32
  br label %19

19:                                               ; preds = %17, %10, %2
  %20 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %10 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_remove_av(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %1, i32 0, i32 8
  tail call void @rb_erase(ptr noundef %3, ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %1, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  %10 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 3, i32 1
  %11 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  br label %12

12:                                               ; preds = %38, %8
  %13 = phi ptr [ %6, %8 ], [ %39, %38 ]
  %14 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %13, i32 -32
  %23 = load i32, ptr %13, align 4
  %24 = and i32 %23, -4
  %25 = inttoptr i32 %24 to ptr
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %13
  %31 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  %32 = select i1 %30, ptr %28, ptr %31
  store ptr null, ptr %32, align 4
  br label %33

33:                                               ; preds = %27, %21
  br i1 %9, label %36, label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %10, align 4
  store ptr %13, ptr %10, align 4
  store ptr %4, ptr %13, align 4
  store ptr %35, ptr %18, align 4
  store volatile ptr %13, ptr %35, align 4
  br label %38

36:                                               ; preds = %33
  %37 = load ptr, ptr %11, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef %22) #9
  br label %38

38:                                               ; preds = %36, %34, %17, %12
  %39 = phi ptr [ %25, %34 ], [ %25, %36 ], [ %15, %12 ], [ %19, %17 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %12

41:                                               ; preds = %38, %2
  tail call void @kfree(ptr noundef %1) #9
  %42 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 11
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubi_early_get_peb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -32
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  br label %59

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 18
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 72
  br label %17

17:                                               ; preds = %48, %12
  %18 = phi ptr [ %14, %12 ], [ %20, %48 ]
  %19 = getelementptr i8, ptr %18, i32 -32
  %20 = load ptr, ptr %18, align 8
  %21 = icmp eq ptr %18, %13
  br i1 %21, label %58, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %19, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, ptr %15, align 8
  store i32 %26, ptr %19, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %26, %25 ], [ %23, %22 ]
  %29 = getelementptr i8, ptr %18, i32 -28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %28, 1
  %32 = sext i32 %31 to i64
  %33 = icmp eq i32 %31, 2147483647
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %30, i32 noundef 2147483647) #9
  br label %48

35:                                               ; preds = %27
  %36 = load i32, ptr %16, align 8
  %37 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = tail call i64 @llvm.bswap.i64(i64 %32) #9
  %41 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %37, i32 0, i32 3
  store i64 %40, ptr %41, align 8
  %42 = tail call i32 @ubi_io_sync_erase(ptr noundef %0, i32 noundef %30, i32 noundef 0) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @ubi_io_write_ec_hdr(ptr noundef %0, i32 noundef %30, ptr noundef nonnull %37) #9
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi i32 [ %42, %39 ], [ %45, %44 ]
  tail call void @kfree(ptr noundef nonnull %37) #9
  br label %48

48:                                               ; preds = %46, %35, %34
  %49 = phi i32 [ -22, %34 ], [ %47, %46 ], [ -22, %35 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %17

51:                                               ; preds = %48
  %52 = load i32, ptr %19, align 8
  %53 = add i32 %52, 1
  store i32 %53, ptr %19, align 8
  %54 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %18, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  br label %59

58:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  br label %59

59:                                               ; preds = %58, %51, %6
  %60 = phi ptr [ %19, %51 ], [ inttoptr (i32 -28 to ptr), %58 ], [ %7, %6 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_attach(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 128) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %838, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 2
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 2, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 3
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 4
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 4, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 5
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 5, i32 1
  store ptr %15, ptr %16, align 8
  store ptr null, ptr %4, align 8
  %17 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.11, i32 noundef 48, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %18 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 21
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %838

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 72
  %23 = load i32, ptr %22, align 8
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #11
  %25 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 22
  store ptr %24, ptr %25, align 8
  %26 = icmp eq ptr %24, null
  br i1 %26, label %836, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 8) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %33 = load i32, ptr %32, align 4
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  tail call void @kfree(ptr noundef nonnull %29) #9
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 23
  store ptr null, ptr %38, align 4
  br label %804

39:                                               ; preds = %31
  %40 = load i32, ptr %32, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %34, i8 0, i32 %40, i1 false) #9
  %41 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %29, i32 0, i32 1
  store ptr %34, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr i8, ptr %34, i32 %43
  store ptr %44, ptr %29, align 8
  %45 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 23
  store ptr %29, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %47 = load i32, ptr %46, align 8
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %306

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 9
  %51 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 7
  %52 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 8
  %53 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 10
  %54 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 81
  %55 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 80
  %56 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %57 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  %58 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %59 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 19
  %60 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 20
  %61 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 16
  %62 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 15
  br label %63

63:                                               ; preds = %302, %49
  %64 = phi i32 [ 0, %49 ], [ %303, %302 ]
  %65 = tail call i32 @__cond_resched() #9
  %66 = load ptr, ptr %25, align 8
  %67 = load ptr, ptr %45, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @ubi_io_is_bad(ptr noundef %0, i32 noundef %64) #9
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %797, label %71

71:                                               ; preds = %63
  %72 = icmp eq i32 %69, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %50, align 8
  %75 = add i32 %74, 1
  store i32 %75, ptr %50, align 8
  br label %302

76:                                               ; preds = %71
  %77 = tail call i32 @ubi_io_read_ec_hdr(ptr noundef %0, i32 noundef %64, ptr noundef %66, i32 noundef 0) #9
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %797, label %79

79:                                               ; preds = %76
  switch i32 %77, label %108 [
    i32 0, label %109
    i32 5, label %80
    i32 1, label %81
    i32 2, label %94
    i32 4, label %135
    i32 3, label %135
  ]

80:                                               ; preds = %79
  br label %109

81:                                               ; preds = %79
  %82 = load i32, ptr %51, align 8
  %83 = add i32 %82, 1
  store i32 %83, ptr %51, align 8
  %84 = load ptr, ptr %18, align 4
  %85 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %84, i32 noundef 3520) #9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %797, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %85, i32 0, i32 1
  store i32 %64, ptr %88, align 4
  store i32 -1, ptr %85, align 8
  %89 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %85, i32 0, i32 2
  %90 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %85, i32 0, i32 3
  store i32 -1, ptr %89, align 8
  store i32 -1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %85, i32 0, i32 6
  %92 = load ptr, ptr %12, align 8
  store ptr %91, ptr %12, align 8
  store ptr %11, ptr %91, align 8
  %93 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %85, i32 0, i32 6, i32 0, i32 1
  store ptr %92, ptr %93, align 4
  store volatile ptr %91, ptr %92, align 4
  br label %302

94:                                               ; preds = %79
  %95 = load i32, ptr %51, align 8
  %96 = add i32 %95, 1
  store i32 %96, ptr %51, align 8
  %97 = load ptr, ptr %18, align 4
  %98 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %97, i32 noundef 3520) #9
  %99 = icmp eq ptr %98, null
  br i1 %99, label %797, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %98, i32 0, i32 1
  store i32 %64, ptr %101, align 4
  store i32 -1, ptr %98, align 8
  %102 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %98, i32 0, i32 2
  %103 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %98, i32 0, i32 3
  store i32 -1, ptr %102, align 8
  store i32 -1, ptr %103, align 4
  %104 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %98, i32 0, i32 6
  %105 = load ptr, ptr %11, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %104, ptr %106, align 4
  store ptr %105, ptr %104, align 8
  %107 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %98, i32 0, i32 6, i32 0, i32 1
  store ptr %11, ptr %107, align 4
  store volatile ptr %104, ptr %11, align 4
  br label %302

108:                                              ; preds = %79
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %77) #9
  br label %797

109:                                              ; preds = %80, %79
  %110 = phi i1 [ false, %79 ], [ true, %80 ]
  %111 = phi i32 [ %77, %79 ], [ 1, %80 ]
  %112 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %66, i32 0, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 1
  br i1 %114, label %117, label %115

115:                                              ; preds = %109
  %116 = zext i8 %113 to i32
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef %116) #9
  br label %797

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %66, i32 0, i32 3
  %119 = load i64, ptr %118, align 1
  %120 = tail call i64 @llvm.bswap.i64(i64 %119) #9
  %121 = icmp sgt i64 %120, 2147483647
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef 2147483647) #9
  tail call void @ubi_dump_ec_hdr(ptr noundef %66) #9
  br label %797

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %66, i32 0, i32 6
  %125 = load i32, ptr %124, align 1
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #9
  %127 = load i32, ptr %52, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 %126, ptr %52, align 8
  br label %135

130:                                              ; preds = %123
  %131 = icmp eq i32 %125, 0
  %132 = icmp eq i32 %127, %126
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %126, i32 noundef %64, i32 noundef %127) #9
  tail call void @ubi_dump_ec_hdr(ptr noundef %66) #9
  br label %797

135:                                              ; preds = %130, %129, %79, %79
  %136 = phi i1 [ true, %79 ], [ true, %79 ], [ false, %130 ], [ false, %129 ]
  %137 = phi i32 [ %77, %79 ], [ %77, %79 ], [ 0, %130 ], [ 0, %129 ]
  %138 = phi i32 [ 1, %79 ], [ 1, %79 ], [ %111, %130 ], [ %111, %129 ]
  %139 = phi i1 [ true, %79 ], [ true, %79 ], [ %110, %130 ], [ %110, %129 ]
  %140 = phi i64 [ -1, %79 ], [ -1, %79 ], [ %120, %130 ], [ %120, %129 ]
  %141 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %0, i32 noundef %64, ptr noundef %67, i32 noundef 0) #9
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %797, label %143

143:                                              ; preds = %135
  switch i32 %141, label %230 [
    i32 0, label %231
    i32 5, label %144
    i32 4, label %145
    i32 3, label %150
    i32 2, label %192
    i32 1, label %205
  ]

144:                                              ; preds = %143
  br label %231

145:                                              ; preds = %143
  %146 = icmp eq i32 %137, 4
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = load i32, ptr %53, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %53, align 4
  br label %150

150:                                              ; preds = %147, %145, %143
  br i1 %136, label %172, label %151

151:                                              ; preds = %150
  tail call void @mutex_lock(ptr noundef %54) #9
  %152 = load ptr, ptr %55, align 8
  %153 = load i32, ptr %56, align 8
  tail call void @llvm.memset.p0.i32(ptr align 1 %152, i8 0, i32 %153, i1 false) #9
  %154 = load ptr, ptr %55, align 8
  %155 = load i32, ptr %57, align 4
  %156 = load i32, ptr %56, align 8
  %157 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef %154, i32 noundef %64, i32 noundef %155, i32 noundef %156) #9
  switch i32 %157, label %163 [
    i32 5, label %165
    i32 -74, label %165
    i32 0, label %158
  ]

158:                                              ; preds = %151
  %159 = load ptr, ptr %55, align 8
  %160 = load i32, ptr %56, align 8
  %161 = tail call i32 @ubi_check_pattern(ptr noundef %159, i8 noundef zeroext -1, i32 noundef %160) #9
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %165

163:                                              ; preds = %151
  tail call void @mutex_unlock(ptr noundef %54) #9
  %164 = icmp slt i32 %157, 0
  br i1 %164, label %797, label %185

165:                                              ; preds = %158, %151, %151
  tail call void @mutex_unlock(ptr noundef %54) #9
  br label %172

166:                                              ; preds = %158
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %64) #9
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.25) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %68) #9
  %167 = load i32, ptr %57, align 4
  %168 = load i32, ptr %56, align 8
  %169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %64, i32 noundef %167, i32 noundef %168) #13
  %170 = load ptr, ptr %55, align 8
  %171 = load i32, ptr %56, align 8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %170, i32 noundef %171, i1 noundef zeroext true) #9
  tail call void @mutex_unlock(ptr noundef %54) #9
  br label %185

172:                                              ; preds = %165, %150
  %173 = load ptr, ptr %18, align 4
  %174 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %173, i32 noundef 3520) #9
  %175 = icmp eq ptr %174, null
  br i1 %175, label %797, label %176

176:                                              ; preds = %172
  %177 = trunc i64 %140 to i32
  %178 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %174, i32 0, i32 1
  store i32 %64, ptr %178, align 4
  store i32 %177, ptr %174, align 8
  %179 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %174, i32 0, i32 2
  %180 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %174, i32 0, i32 3
  store i32 -1, ptr %179, align 8
  store i32 -1, ptr %180, align 4
  %181 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %174, i32 0, i32 6
  %182 = load ptr, ptr %11, align 4
  %183 = getelementptr inbounds %struct.list_head, ptr %182, i32 0, i32 1
  store ptr %181, ptr %183, align 4
  store ptr %182, ptr %181, align 8
  %184 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %174, i32 0, i32 6, i32 0, i32 1
  store ptr %11, ptr %184, align 4
  store volatile ptr %181, ptr %11, align 4
  br label %188

185:                                              ; preds = %166, %163
  %186 = trunc i64 %140 to i32
  %187 = tail call fastcc i32 @add_corrupted(ptr noundef %4, i32 noundef %64, i32 noundef %186) #9
  br label %188

188:                                              ; preds = %185, %176
  %189 = phi i32 [ %187, %185 ], [ 0, %176 ]
  %190 = icmp ne i32 %189, 0
  %191 = or i1 %136, %190
  br i1 %191, label %299, label %283

192:                                              ; preds = %143
  %193 = load ptr, ptr %18, align 4
  %194 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %193, i32 noundef 3520) #9
  %195 = icmp eq ptr %194, null
  br i1 %195, label %797, label %196

196:                                              ; preds = %192
  %197 = trunc i64 %140 to i32
  %198 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %194, i32 0, i32 1
  store i32 %64, ptr %198, align 4
  store i32 %197, ptr %194, align 8
  %199 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %194, i32 0, i32 2
  %200 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %194, i32 0, i32 3
  store i32 -1, ptr %199, align 8
  store i32 -1, ptr %200, align 4
  %201 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %194, i32 0, i32 6
  %202 = load ptr, ptr %11, align 4
  %203 = getelementptr inbounds %struct.list_head, ptr %202, i32 0, i32 1
  store ptr %201, ptr %203, align 4
  store ptr %202, ptr %201, align 8
  %204 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %194, i32 0, i32 6, i32 0, i32 1
  store ptr %11, ptr %204, align 4
  store volatile ptr %201, ptr %11, align 4
  br i1 %136, label %302, label %283

205:                                              ; preds = %143
  %206 = or i1 %136, %139
  %207 = load ptr, ptr %18, align 4
  %208 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %207, i32 noundef 3520) #9
  %209 = icmp eq ptr %208, null
  br i1 %206, label %210, label %220

210:                                              ; preds = %205
  br i1 %209, label %797, label %211

211:                                              ; preds = %210
  %212 = trunc i64 %140 to i32
  %213 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 1
  store i32 %64, ptr %213, align 4
  store i32 %212, ptr %208, align 8
  %214 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 2
  %215 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 3
  store i32 -1, ptr %214, align 8
  store i32 -1, ptr %215, align 4
  %216 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 6
  %217 = load ptr, ptr %11, align 4
  %218 = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  store ptr %216, ptr %218, align 4
  store ptr %217, ptr %216, align 8
  %219 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 6, i32 0, i32 1
  store ptr %11, ptr %219, align 4
  store volatile ptr %216, ptr %11, align 4
  br label %229

220:                                              ; preds = %205
  br i1 %209, label %797, label %221

221:                                              ; preds = %220
  %222 = trunc i64 %140 to i32
  %223 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 1
  store i32 %64, ptr %223, align 4
  store i32 %222, ptr %208, align 8
  %224 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 2
  %225 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 3
  store i32 -1, ptr %224, align 8
  store i32 -1, ptr %225, align 4
  %226 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 6
  %227 = load ptr, ptr %10, align 8
  store ptr %226, ptr %10, align 8
  store ptr %9, ptr %226, align 8
  %228 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %208, i32 0, i32 6, i32 0, i32 1
  store ptr %227, ptr %228, align 4
  store volatile ptr %226, ptr %227, align 4
  br label %229

229:                                              ; preds = %221, %211
  br i1 %136, label %302, label %283

230:                                              ; preds = %143
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %141) #9
  br label %797

231:                                              ; preds = %144, %143
  %232 = phi i32 [ 1, %144 ], [ %138, %143 ]
  %233 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %68, i32 0, i32 5
  %234 = load i32, ptr %233, align 1
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #9
  %236 = icmp slt i32 %235, 129
  %237 = icmp eq i32 %234, -1048705
  %238 = or i1 %237, %236
  br i1 %238, label %253, label %239

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %68, i32 0, i32 6
  %241 = load i32, ptr %240, align 1
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #9
  %243 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %68, i32 0, i32 4
  %244 = load i8, ptr %243, align 1
  switch i8 %244, label %253 [
    i8 1, label %245
    i8 2, label %248
    i8 4, label %249
    i8 5, label %252
  ]

245:                                              ; preds = %239
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %235, i32 noundef %242) #9
  %246 = trunc i64 %140 to i32
  %247 = tail call fastcc i32 @add_to_list(ptr noundef %4, i32 noundef %64, i32 noundef %235, i32 noundef %242, i32 noundef %246, i32 noundef 1, ptr noundef %11) #9
  br label %299

248:                                              ; preds = %239
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %235, i32 noundef %242) #9
  store i32 1, ptr %58, align 4
  br label %253

249:                                              ; preds = %239
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %235, i32 noundef %242) #9
  %250 = trunc i64 %140 to i32
  %251 = tail call fastcc i32 @add_to_list(ptr noundef %4, i32 noundef %64, i32 noundef %235, i32 noundef %242, i32 noundef %250, i32 noundef 0, ptr noundef %13) #9
  br label %299

252:                                              ; preds = %239
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %235, i32 noundef %242) #9
  br label %797

253:                                              ; preds = %248, %239, %231
  br i1 %136, label %254, label %255

254:                                              ; preds = %253
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %64) #9
  br label %255

255:                                              ; preds = %254, %253
  %256 = and i32 %235, -2
  %257 = icmp eq i32 %256, 2147479552
  %258 = trunc i64 %140 to i32
  br i1 %257, label %259, label %277

259:                                              ; preds = %255
  %260 = load ptr, ptr %18, align 4
  %261 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %260, i32 noundef 3520) #9
  %262 = icmp eq ptr %261, null
  br i1 %262, label %797, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %261, i32 0, i32 1
  store i32 %64, ptr %264, align 4
  store i32 %258, ptr %261, align 8
  %265 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %261, i32 0, i32 2
  %266 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %261, i32 0, i32 3
  store i32 -1, ptr %266, align 4
  %267 = load i32, ptr %233, align 1
  %268 = tail call i32 @llvm.bswap.i32(i32 %267) #9
  store i32 %268, ptr %265, align 8
  %269 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %68, i32 0, i32 13
  %270 = load i64, ptr %269, align 1
  %271 = tail call i64 @llvm.bswap.i64(i64 %270) #9
  %272 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %261, i32 0, i32 5
  store i64 %271, ptr %272, align 8
  %273 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %261, i32 0, i32 6
  %274 = load ptr, ptr %15, align 4
  %275 = getelementptr inbounds %struct.list_head, ptr %274, i32 0, i32 1
  store ptr %273, ptr %275, align 4
  store ptr %274, ptr %273, align 8
  %276 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %261, i32 0, i32 6, i32 0, i32 1
  store ptr %15, ptr %276, align 4
  store volatile ptr %273, ptr %15, align 4
  br label %279

277:                                              ; preds = %255
  %278 = tail call i32 @ubi_add_to_av(ptr noundef %0, ptr noundef %4, i32 noundef %64, i32 noundef %258, ptr noundef %68, i32 noundef %232) #9
  br label %279

279:                                              ; preds = %277, %263
  %280 = phi i32 [ %278, %277 ], [ 0, %263 ]
  %281 = icmp ne i32 %280, 0
  %282 = or i1 %136, %281
  br i1 %282, label %299, label %283

283:                                              ; preds = %279, %229, %196, %188
  %284 = load i64, ptr %59, align 8
  %285 = add i64 %284, %140
  store i64 %285, ptr %59, align 8
  %286 = load i32, ptr %60, align 8
  %287 = add i32 %286, 1
  store i32 %287, ptr %60, align 8
  %288 = load i32, ptr %61, align 4
  %289 = sext i32 %288 to i64
  %290 = icmp sgt i64 %140, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %283
  %292 = trunc i64 %140 to i32
  store i32 %292, ptr %61, align 4
  br label %293

293:                                              ; preds = %291, %283
  %294 = load i32, ptr %62, align 8
  %295 = sext i32 %294 to i64
  %296 = icmp slt i64 %140, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = trunc i64 %140 to i32
  store i32 %298, ptr %62, align 8
  br label %302

299:                                              ; preds = %279, %249, %245, %188
  %300 = phi i32 [ %189, %188 ], [ %280, %279 ], [ %251, %249 ], [ %247, %245 ]
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %797, label %302

302:                                              ; preds = %299, %297, %293, %229, %196, %100, %87, %73
  %303 = add nuw nsw i32 %64, 1
  %304 = load i32, ptr %46, align 8
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %63, label %306

306:                                              ; preds = %302, %39
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  %307 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 20
  %308 = load i32, ptr %307, align 8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %324, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 19
  %312 = load i64, ptr %311, align 8
  %313 = icmp ult i64 %312, 4294967296
  br i1 %313, label %314, label %317, !prof !9

314:                                              ; preds = %310
  %315 = trunc i64 %312 to i32
  %316 = udiv i32 %315, %308
  br label %321

317:                                              ; preds = %310
  %318 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %308, i64 %312) #14, !srcloc !10
  %319 = extractvalue { i64, i64 } %318, 1
  %320 = trunc i64 %319 to i32
  br label %321

321:                                              ; preds = %317, %314
  %322 = phi i32 [ %316, %314 ], [ %320, %317 ]
  %323 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 18
  store i32 %322, ptr %323, align 8
  br label %324

324:                                              ; preds = %321, %306
  %325 = load i32, ptr %46, align 8
  %326 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 9
  %327 = load i32, ptr %326, align 8
  %328 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 8
  %329 = load i32, ptr %328, align 4
  %330 = add i32 %327, %329
  %331 = sub i32 %325, %330
  %332 = sdiv i32 %331, 20
  %333 = add i32 %331, 19
  %334 = icmp ult i32 %333, 39
  %335 = select i1 %334, i32 8, i32 %332
  %336 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 6
  %337 = load i32, ptr %336, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %355, label %339

339:                                              ; preds = %324
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %337) #9
  %340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #13
  %341 = load ptr, ptr %7, align 4
  %342 = icmp eq ptr %341, %7
  br i1 %342, label %350, label %343

343:                                              ; preds = %343, %339
  %344 = phi ptr [ %348, %343 ], [ %341, %339 ]
  %345 = getelementptr i8, ptr %344, i32 -28
  %346 = load i32, ptr %345, align 4
  %347 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %346) #13
  %348 = load ptr, ptr %344, align 4
  %349 = icmp eq ptr %348, %7
  br i1 %349, label %350, label %343

350:                                              ; preds = %343, %339
  %351 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #13
  %352 = load i32, ptr %336, align 4
  %353 = icmp slt i32 %352, %335
  br i1 %353, label %355, label %354

354:                                              ; preds = %350
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.33) #9
  br label %797

355:                                              ; preds = %350, %324
  %356 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 7
  %357 = load i32, ptr %356, align 8
  %358 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 10
  %359 = load i32, ptr %358, align 4
  %360 = add i32 %359, %357
  %361 = icmp eq i32 %360, %331
  br i1 %361, label %362, label %368

362:                                              ; preds = %355
  %363 = icmp slt i32 %359, 3
  br i1 %363, label %364, label %367

364:                                              ; preds = %362
  %365 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 13
  store i32 1, ptr %365, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.34) #9
  %366 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 8
  tail call void @get_random_bytes(ptr noundef %366, i32 noundef 4) #9
  br label %368

367:                                              ; preds = %362
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.35) #9
  br label %797

368:                                              ; preds = %364, %355
  %369 = tail call ptr @rb_first(ptr noundef %4) #9
  %370 = icmp eq ptr %369, null
  br i1 %370, label %391, label %371

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 18
  br label %373

373:                                              ; preds = %388, %371
  %374 = phi ptr [ %369, %371 ], [ %389, %388 ]
  %375 = getelementptr i8, ptr %374, i32 12
  %376 = tail call ptr @rb_first(ptr noundef %375) #9
  %377 = icmp eq ptr %376, null
  br i1 %377, label %388, label %378

378:                                              ; preds = %385, %373
  %379 = phi ptr [ %386, %385 ], [ %376, %373 ]
  %380 = getelementptr i8, ptr %379, i32 -32
  %381 = load i32, ptr %380, align 8
  %382 = icmp eq i32 %381, -1
  br i1 %382, label %383, label %385

383:                                              ; preds = %378
  %384 = load i32, ptr %372, align 8
  store i32 %384, ptr %380, align 8
  br label %385

385:                                              ; preds = %383, %378
  %386 = tail call ptr @rb_next(ptr noundef nonnull %379) #9
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %378

388:                                              ; preds = %385, %373
  %389 = tail call ptr @rb_next(ptr noundef nonnull %374) #9
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %373

391:                                              ; preds = %388, %368
  %392 = load ptr, ptr %9, align 4
  %393 = icmp eq ptr %392, %9
  br i1 %393, label %406, label %394

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 18
  br label %396

396:                                              ; preds = %403, %394
  %397 = phi ptr [ %392, %394 ], [ %404, %403 ]
  %398 = getelementptr i8, ptr %397, i32 -32
  %399 = load i32, ptr %398, align 8
  %400 = icmp eq i32 %399, -1
  br i1 %400, label %401, label %403

401:                                              ; preds = %396
  %402 = load i32, ptr %395, align 8
  store i32 %402, ptr %398, align 8
  br label %403

403:                                              ; preds = %401, %396
  %404 = load ptr, ptr %397, align 4
  %405 = icmp eq ptr %404, %9
  br i1 %405, label %406, label %396

406:                                              ; preds = %403, %391
  %407 = load ptr, ptr %7, align 4
  %408 = icmp eq ptr %407, %7
  br i1 %408, label %421, label %409

409:                                              ; preds = %406
  %410 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 18
  br label %411

411:                                              ; preds = %418, %409
  %412 = phi ptr [ %407, %409 ], [ %419, %418 ]
  %413 = getelementptr i8, ptr %412, i32 -32
  %414 = load i32, ptr %413, align 8
  %415 = icmp eq i32 %414, -1
  br i1 %415, label %416, label %418

416:                                              ; preds = %411
  %417 = load i32, ptr %410, align 8
  store i32 %417, ptr %413, align 8
  br label %418

418:                                              ; preds = %416, %411
  %419 = load ptr, ptr %412, align 4
  %420 = icmp eq ptr %419, %7
  br i1 %420, label %421, label %411

421:                                              ; preds = %418, %406
  %422 = load ptr, ptr %11, align 4
  %423 = icmp eq ptr %422, %11
  br i1 %423, label %436, label %424

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 18
  br label %426

426:                                              ; preds = %433, %424
  %427 = phi ptr [ %422, %424 ], [ %434, %433 ]
  %428 = getelementptr i8, ptr %427, i32 -32
  %429 = load i32, ptr %428, align 8
  %430 = icmp eq i32 %429, -1
  br i1 %430, label %431, label %433

431:                                              ; preds = %426
  %432 = load i32, ptr %425, align 8
  store i32 %432, ptr %428, align 8
  br label %433

433:                                              ; preds = %431, %426
  %434 = load ptr, ptr %427, align 4
  %435 = icmp eq ptr %434, %11
  br i1 %435, label %436, label %426

436:                                              ; preds = %433, %421
  %437 = load ptr, ptr %45, align 4
  %438 = load ptr, ptr %437, align 4
  %439 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %440 = load i8, ptr %439, align 4
  %441 = and i8 %440, 1
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %791, label %443

443:                                              ; preds = %436
  %444 = tail call ptr @rb_first(ptr noundef %4) #9
  %445 = icmp eq ptr %444, null
  br i1 %445, label %578, label %446

446:                                              ; preds = %443
  %447 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 13
  %448 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 12
  %449 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %450 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 15
  %451 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 16
  br label %452

452:                                              ; preds = %575, %446
  %453 = phi i32 [ 0, %446 ], [ %457, %575 ]
  %454 = phi ptr [ %444, %446 ], [ %576, %575 ]
  %455 = getelementptr i8, ptr %454, i32 -32
  %456 = tail call i32 @__cond_resched() #9
  %457 = add i32 %453, 1
  %458 = load i32, ptr %447, align 8
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %461, label %460

460:                                              ; preds = %452
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.36) #9
  br label %786

461:                                              ; preds = %452
  %462 = load i32, ptr %455, align 4
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %488, label %464

464:                                              ; preds = %461
  %465 = getelementptr i8, ptr %454, i32 -28
  %466 = load i32, ptr %465, align 4
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %488, label %468

468:                                              ; preds = %464
  %469 = getelementptr i8, ptr %454, i32 -24
  %470 = load i32, ptr %469, align 4
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %488, label %472

472:                                              ; preds = %468
  %473 = getelementptr i8, ptr %454, i32 -20
  %474 = load i32, ptr %473, align 4
  %475 = icmp slt i32 %474, 0
  br i1 %475, label %488, label %476

476:                                              ; preds = %472
  %477 = getelementptr i8, ptr %454, i32 -16
  %478 = load i32, ptr %477, align 4
  %479 = icmp slt i32 %478, 0
  br i1 %479, label %488, label %480

480:                                              ; preds = %476
  %481 = getelementptr i8, ptr %454, i32 -8
  %482 = load i32, ptr %481, align 4
  %483 = icmp slt i32 %482, 0
  br i1 %483, label %488, label %484

484:                                              ; preds = %480
  %485 = getelementptr i8, ptr %454, i32 -12
  %486 = load i32, ptr %485, align 4
  %487 = icmp slt i32 %486, 0
  br i1 %487, label %488, label %489

488:                                              ; preds = %484, %480, %476, %472, %468, %464, %461
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.37) #9
  br label %786

489:                                              ; preds = %484
  %490 = add nsw i32 %462, -128
  %491 = icmp ult i32 %490, 2147479423
  br i1 %491, label %492, label %493

492:                                              ; preds = %489
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.38) #9
  br label %786

493:                                              ; preds = %489
  %494 = load i32, ptr %448, align 4
  %495 = icmp sgt i32 %462, %494
  br i1 %495, label %574, label %496

496:                                              ; preds = %493
  %497 = add nsw i32 %474, -3
  %498 = icmp ult i32 %497, 2
  br i1 %498, label %500, label %499

499:                                              ; preds = %496
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.40) #9
  br label %786

500:                                              ; preds = %496
  %501 = load i32, ptr %449, align 8
  %502 = sdiv i32 %501, 2
  %503 = icmp sgt i32 %482, %502
  br i1 %503, label %504, label %505

504:                                              ; preds = %500
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.41) #9
  br label %786

505:                                              ; preds = %500
  %506 = getelementptr i8, ptr %454, i32 12
  %507 = tail call ptr @rb_first(ptr noundef %506) #9
  %508 = icmp eq ptr %507, null
  br i1 %508, label %561, label %509

509:                                              ; preds = %555, %505
  %510 = phi ptr [ %556, %555 ], [ %507, %505 ]
  %511 = phi i32 [ %514, %555 ], [ 0, %505 ]
  %512 = getelementptr i8, ptr %510, i32 -32
  %513 = tail call i32 @__cond_resched() #9
  %514 = add i32 %511, 1
  %515 = getelementptr i8, ptr %510, i32 -28
  %516 = load i32, ptr %515, align 4
  %517 = icmp slt i32 %516, 0
  br i1 %517, label %521, label %518

518:                                              ; preds = %509
  %519 = load i32, ptr %512, align 8
  %520 = icmp slt i32 %519, 0
  br i1 %520, label %521, label %522

521:                                              ; preds = %518, %509
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.37) #9
  br label %783

522:                                              ; preds = %518
  %523 = load i32, ptr %450, align 8
  %524 = icmp slt i32 %519, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %522
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %523, i32 noundef %519) #9
  br label %783

526:                                              ; preds = %522
  %527 = load i32, ptr %451, align 4
  %528 = icmp sgt i32 %519, %527
  br i1 %528, label %529, label %530

529:                                              ; preds = %526
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %527, i32 noundef %519) #9
  br label %783

530:                                              ; preds = %526
  %531 = load i32, ptr %46, align 8
  %532 = icmp slt i32 %516, %531
  br i1 %532, label %534, label %533

533:                                              ; preds = %530
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %516, i32 noundef %531) #9
  br label %783

534:                                              ; preds = %530
  %535 = load i32, ptr %473, align 4
  %536 = icmp eq i32 %535, 4
  br i1 %536, label %537, label %543

537:                                              ; preds = %534
  %538 = getelementptr i8, ptr %510, i32 -20
  %539 = load i32, ptr %538, align 4
  %540 = load i32, ptr %477, align 4
  %541 = icmp slt i32 %539, %540
  br i1 %541, label %550, label %542

542:                                              ; preds = %537
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.45) #9
  br label %783

543:                                              ; preds = %534
  %544 = load i32, ptr %477, align 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %549

546:                                              ; preds = %543
  %547 = getelementptr i8, ptr %510, i32 -20
  %548 = load i32, ptr %547, align 4
  br label %550

549:                                              ; preds = %543
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.46) #9
  br label %783

550:                                              ; preds = %546, %537
  %551 = phi i32 [ %548, %546 ], [ %539, %537 ]
  %552 = load i32, ptr %465, align 4
  %553 = icmp sgt i32 %551, %552
  br i1 %553, label %554, label %555

554:                                              ; preds = %550
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.47) #9
  br label %783

555:                                              ; preds = %550
  %556 = tail call ptr @rb_next(ptr noundef nonnull %510) #9
  %557 = icmp eq ptr %556, null
  br i1 %557, label %558, label %509

558:                                              ; preds = %555
  %559 = load i32, ptr %469, align 4
  %560 = icmp eq i32 %559, %514
  br i1 %560, label %566, label %564

561:                                              ; preds = %505
  %562 = load i32, ptr %469, align 4
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %575, label %564

564:                                              ; preds = %561, %558
  %565 = phi i32 [ 0, %561 ], [ %514, %558 ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %565) #9
  br label %786

566:                                              ; preds = %558
  %567 = icmp eq ptr %512, null
  br i1 %567, label %575, label %568

568:                                              ; preds = %566
  %569 = getelementptr i8, ptr %510, i32 -20
  %570 = load i32, ptr %569, align 4
  %571 = load i32, ptr %465, align 4
  %572 = icmp eq i32 %570, %571
  br i1 %572, label %575, label %573

573:                                              ; preds = %568
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.49) #9
  br label %783

574:                                              ; preds = %493
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %494, i32 noundef %462) #9
  br label %790

575:                                              ; preds = %568, %566, %561
  %576 = tail call ptr @rb_next(ptr noundef nonnull %454) #9
  %577 = icmp eq ptr %576, null
  br i1 %577, label %578, label %452

578:                                              ; preds = %575, %443
  %579 = phi i32 [ 0, %443 ], [ %457, %575 ]
  %580 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 11
  %581 = load i32, ptr %580, align 8
  %582 = icmp eq i32 %579, %581
  br i1 %582, label %584, label %583

583:                                              ; preds = %578
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %581, i32 noundef %579) #9
  br label %790

584:                                              ; preds = %578
  %585 = tail call ptr @rb_first(ptr noundef %4) #9
  %586 = icmp eq ptr %585, null
  br i1 %586, label %685, label %587

587:                                              ; preds = %584
  %588 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %438, i32 0, i32 2
  %589 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %438, i32 0, i32 13
  %590 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %438, i32 0, i32 5
  %591 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %438, i32 0, i32 4
  %592 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %438, i32 0, i32 6
  %593 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %438, i32 0, i32 9
  %594 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %438, i32 0, i32 10
  %595 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %438, i32 0, i32 8
  br label %596

596:                                              ; preds = %682, %587
  %597 = phi ptr [ %585, %587 ], [ %683, %682 ]
  %598 = getelementptr i8, ptr %597, i32 -32
  %599 = getelementptr i8, ptr %597, i32 12
  %600 = tail call ptr @rb_first(ptr noundef %599) #9
  %601 = icmp eq ptr %600, null
  br i1 %601, label %682, label %602

602:                                              ; preds = %596
  %603 = getelementptr i8, ptr %597, i32 -20
  %604 = getelementptr i8, ptr %597, i32 -4
  %605 = getelementptr i8, ptr %597, i32 -16
  %606 = getelementptr i8, ptr %597, i32 -8
  br label %607

607:                                              ; preds = %662, %602
  %608 = phi ptr [ %600, %602 ], [ %663, %662 ]
  %609 = tail call i32 @__cond_resched() #9
  %610 = getelementptr i8, ptr %608, i32 -28
  %611 = load i32, ptr %610, align 4
  %612 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %0, i32 noundef %611, ptr noundef %437, i32 noundef 1) #9
  switch i32 %612, label %613 [
    i32 5, label %616
    i32 0, label %616
  ]

613:                                              ; preds = %607
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %612) #9
  %614 = icmp sgt i32 %612, 0
  %615 = select i1 %614, i32 -5, i32 %612
  br label %797

616:                                              ; preds = %607, %607
  %617 = load i8, ptr %588, align 1
  %618 = icmp eq i8 %617, 1
  %619 = select i1 %618, i32 3, i32 4
  %620 = load i32, ptr %603, align 4
  %621 = icmp eq i32 %620, %619
  br i1 %621, label %623, label %622

622:                                              ; preds = %616
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.40) #9
  br label %788

623:                                              ; preds = %616
  %624 = getelementptr i8, ptr %608, i32 -8
  %625 = load i64, ptr %624, align 8
  %626 = load i64, ptr %589, align 1
  %627 = tail call i64 @llvm.bswap.i64(i64 %626) #9
  %628 = icmp eq i64 %625, %627
  br i1 %628, label %630, label %629

629:                                              ; preds = %623
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.52, i64 noundef %625) #9
  br label %788

630:                                              ; preds = %623
  %631 = load i32, ptr %598, align 4
  %632 = load i32, ptr %590, align 1
  %633 = tail call i32 @llvm.bswap.i32(i32 %632) #9
  %634 = icmp eq i32 %631, %633
  br i1 %634, label %636, label %635

635:                                              ; preds = %630
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %631) #9
  br label %788

636:                                              ; preds = %630
  %637 = load i32, ptr %604, align 4
  %638 = load i8, ptr %591, align 1
  %639 = zext i8 %638 to i32
  %640 = icmp eq i32 %637, %639
  br i1 %640, label %643, label %641

641:                                              ; preds = %636
  %642 = zext i8 %638 to i32
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %642) #9
  br label %788

643:                                              ; preds = %636
  %644 = getelementptr i8, ptr %608, i32 -20
  %645 = load i32, ptr %644, align 4
  %646 = load i32, ptr %592, align 1
  %647 = tail call i32 @llvm.bswap.i32(i32 %646) #9
  %648 = icmp eq i32 %645, %647
  br i1 %648, label %650, label %649

649:                                              ; preds = %643
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %645) #9
  br label %788

650:                                              ; preds = %643
  %651 = load i32, ptr %605, align 4
  %652 = load i32, ptr %593, align 1
  %653 = tail call i32 @llvm.bswap.i32(i32 %652) #9
  %654 = icmp eq i32 %651, %653
  br i1 %654, label %656, label %655

655:                                              ; preds = %650
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %651) #9
  br label %788

656:                                              ; preds = %650
  %657 = load i32, ptr %606, align 4
  %658 = load i32, ptr %594, align 1
  %659 = tail call i32 @llvm.bswap.i32(i32 %658) #9
  %660 = icmp eq i32 %657, %659
  br i1 %660, label %662, label %661

661:                                              ; preds = %656
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %657) #9
  br label %788

662:                                              ; preds = %656
  %663 = tail call ptr @rb_next(ptr noundef nonnull %608) #9
  %664 = icmp eq ptr %663, null
  br i1 %664, label %665, label %607

665:                                              ; preds = %662
  %666 = getelementptr i8, ptr %608, i32 -32
  %667 = icmp eq ptr %666, null
  br i1 %667, label %682, label %668

668:                                              ; preds = %665
  %669 = getelementptr i8, ptr %597, i32 -28
  %670 = load i32, ptr %669, align 4
  %671 = load i32, ptr %592, align 1
  %672 = tail call i32 @llvm.bswap.i32(i32 %671) #9
  %673 = icmp eq i32 %670, %672
  br i1 %673, label %675, label %674

674:                                              ; preds = %668
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %670) #9
  br label %788

675:                                              ; preds = %668
  %676 = getelementptr i8, ptr %597, i32 -12
  %677 = load i32, ptr %676, align 4
  %678 = load i32, ptr %595, align 1
  %679 = tail call i32 @llvm.bswap.i32(i32 %678) #9
  %680 = icmp eq i32 %677, %679
  br i1 %680, label %682, label %681

681:                                              ; preds = %675
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %677) #9
  br label %788

682:                                              ; preds = %675, %665, %596
  %683 = tail call ptr @rb_next(ptr noundef nonnull %597) #9
  %684 = icmp eq ptr %683, null
  br i1 %684, label %685, label %596

685:                                              ; preds = %682, %584
  %686 = load i32, ptr %46, align 8
  %687 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %686, i32 noundef 3520) #11
  %688 = icmp eq ptr %687, null
  br i1 %688, label %797, label %689

689:                                              ; preds = %685
  %690 = load i32, ptr %46, align 8
  %691 = icmp sgt i32 %690, 0
  br i1 %691, label %692, label %705

692:                                              ; preds = %701, %689
  %693 = phi i32 [ %702, %701 ], [ 0, %689 ]
  %694 = tail call i32 @ubi_io_is_bad(ptr noundef %0, i32 noundef %693) #9
  %695 = icmp slt i32 %694, 0
  br i1 %695, label %696, label %697

696:                                              ; preds = %692
  tail call void @kfree(ptr noundef nonnull %687) #9
  br label %797

697:                                              ; preds = %692
  %698 = icmp eq i32 %694, 0
  br i1 %698, label %701, label %699

699:                                              ; preds = %697
  %700 = getelementptr i8, ptr %687, i32 %693
  store i8 1, ptr %700, align 1
  br label %701

701:                                              ; preds = %699, %697
  %702 = add nuw nsw i32 %693, 1
  %703 = load i32, ptr %46, align 8
  %704 = icmp slt i32 %702, %703
  br i1 %704, label %692, label %705

705:                                              ; preds = %701, %689
  %706 = tail call ptr @rb_first(ptr noundef %4) #9
  %707 = icmp eq ptr %706, null
  br i1 %707, label %723, label %708

708:                                              ; preds = %720, %705
  %709 = phi ptr [ %721, %720 ], [ %706, %705 ]
  %710 = getelementptr i8, ptr %709, i32 12
  %711 = tail call ptr @rb_first(ptr noundef %710) #9
  %712 = icmp eq ptr %711, null
  br i1 %712, label %720, label %713

713:                                              ; preds = %713, %708
  %714 = phi ptr [ %718, %713 ], [ %711, %708 ]
  %715 = getelementptr i8, ptr %714, i32 -28
  %716 = load i32, ptr %715, align 4
  %717 = getelementptr i8, ptr %687, i32 %716
  store i8 1, ptr %717, align 1
  %718 = tail call ptr @rb_next(ptr noundef nonnull %714) #9
  %719 = icmp eq ptr %718, null
  br i1 %719, label %720, label %713

720:                                              ; preds = %713, %708
  %721 = tail call ptr @rb_next(ptr noundef nonnull %709) #9
  %722 = icmp eq ptr %721, null
  br i1 %722, label %723, label %708

723:                                              ; preds = %720, %705
  %724 = load ptr, ptr %9, align 4
  %725 = icmp eq ptr %724, %9
  br i1 %725, label %733, label %726

726:                                              ; preds = %726, %723
  %727 = phi ptr [ %731, %726 ], [ %724, %723 ]
  %728 = getelementptr i8, ptr %727, i32 -28
  %729 = load i32, ptr %728, align 4
  %730 = getelementptr i8, ptr %687, i32 %729
  store i8 1, ptr %730, align 1
  %731 = load ptr, ptr %727, align 4
  %732 = icmp eq ptr %731, %9
  br i1 %732, label %733, label %726

733:                                              ; preds = %726, %723
  %734 = load ptr, ptr %7, align 4
  %735 = icmp eq ptr %734, %7
  br i1 %735, label %743, label %736

736:                                              ; preds = %736, %733
  %737 = phi ptr [ %741, %736 ], [ %734, %733 ]
  %738 = getelementptr i8, ptr %737, i32 -28
  %739 = load i32, ptr %738, align 4
  %740 = getelementptr i8, ptr %687, i32 %739
  store i8 1, ptr %740, align 1
  %741 = load ptr, ptr %737, align 4
  %742 = icmp eq ptr %741, %7
  br i1 %742, label %743, label %736

743:                                              ; preds = %736, %733
  %744 = load ptr, ptr %11, align 4
  %745 = icmp eq ptr %744, %11
  br i1 %745, label %753, label %746

746:                                              ; preds = %746, %743
  %747 = phi ptr [ %751, %746 ], [ %744, %743 ]
  %748 = getelementptr i8, ptr %747, i32 -28
  %749 = load i32, ptr %748, align 4
  %750 = getelementptr i8, ptr %687, i32 %749
  store i8 1, ptr %750, align 1
  %751 = load ptr, ptr %747, align 4
  %752 = icmp eq ptr %751, %11
  br i1 %752, label %753, label %746

753:                                              ; preds = %746, %743
  %754 = load ptr, ptr %13, align 4
  %755 = icmp eq ptr %754, %13
  br i1 %755, label %756, label %760

756:                                              ; preds = %760, %753
  %757 = load i32, ptr %46, align 8
  %758 = icmp sgt i32 %757, 0
  br i1 %758, label %767, label %759

759:                                              ; preds = %756
  tail call void @kfree(ptr noundef nonnull %687) #9
  br label %791

760:                                              ; preds = %760, %753
  %761 = phi ptr [ %765, %760 ], [ %754, %753 ]
  %762 = getelementptr i8, ptr %761, i32 -28
  %763 = load i32, ptr %762, align 4
  %764 = getelementptr i8, ptr %687, i32 %763
  store i8 1, ptr %764, align 1
  %765 = load ptr, ptr %761, align 4
  %766 = icmp eq ptr %765, %13
  br i1 %766, label %756, label %760

767:                                              ; preds = %776, %756
  %768 = phi i32 [ %777, %776 ], [ %757, %756 ]
  %769 = phi i32 [ %779, %776 ], [ 0, %756 ]
  %770 = phi i32 [ %778, %776 ], [ 0, %756 ]
  %771 = getelementptr i8, ptr %687, i32 %769
  %772 = load i8, ptr %771, align 1
  %773 = icmp eq i8 %772, 0
  br i1 %773, label %774, label %776

774:                                              ; preds = %767
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %769) #9
  %775 = load i32, ptr %46, align 8
  br label %776

776:                                              ; preds = %774, %767
  %777 = phi i32 [ %768, %767 ], [ %775, %774 ]
  %778 = phi i32 [ %770, %767 ], [ 1, %774 ]
  %779 = add nuw nsw i32 %769, 1
  %780 = icmp slt i32 %779, %777
  br i1 %780, label %767, label %781

781:                                              ; preds = %776
  tail call void @kfree(ptr noundef nonnull %687) #9
  %782 = icmp eq i32 %778, 0
  br i1 %782, label %791, label %790

783:                                              ; preds = %573, %554, %549, %542, %533, %529, %525, %521
  %784 = getelementptr i8, ptr %510, i32 -20
  %785 = load i32, ptr %784, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %785) #9
  tail call void @ubi_dump_aeb(ptr noundef %512, i32 noundef 0) #9
  tail call void @ubi_dump_av(ptr noundef %455) #9
  br label %790

786:                                              ; preds = %564, %504, %499, %492, %488, %460
  %787 = load i32, ptr %455, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %787) #9
  tail call void @ubi_dump_av(ptr noundef %455) #9
  br label %790

788:                                              ; preds = %681, %674, %661, %655, %649, %641, %635, %629, %622
  %789 = load i32, ptr %598, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %789) #9
  tail call void @ubi_dump_av(ptr noundef %598) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %438) #9
  br label %790

790:                                              ; preds = %788, %786, %783, %781, %583, %574
  tail call void @dump_stack() #13
  br label %797

791:                                              ; preds = %781, %759, %436
  %792 = load ptr, ptr %45, align 4
  %793 = icmp eq ptr %792, null
  br i1 %793, label %807, label %794

794:                                              ; preds = %791
  %795 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %792, i32 0, i32 1
  %796 = load ptr, ptr %795, align 4
  tail call void @kfree(ptr noundef %796) #9
  tail call void @kfree(ptr noundef nonnull %792) #9
  br label %807

797:                                              ; preds = %790, %696, %685, %613, %367, %354, %299, %259, %252, %230, %220, %210, %192, %172, %163, %135, %134, %122, %115, %108, %94, %81, %76, %63
  %798 = phi i32 [ -22, %354 ], [ -22, %367 ], [ -22, %252 ], [ -22, %134 ], [ -22, %122 ], [ -22, %115 ], [ -22, %230 ], [ -22, %108 ], [ %615, %613 ], [ -12, %685 ], [ %694, %696 ], [ -22, %790 ], [ -12, %210 ], [ %300, %299 ], [ -12, %220 ], [ -12, %94 ], [ -12, %81 ], [ %157, %163 ], [ %141, %135 ], [ %77, %76 ], [ %69, %63 ], [ -12, %172 ], [ -12, %192 ], [ -12, %259 ]
  %799 = load ptr, ptr %45, align 4
  %800 = icmp eq ptr %799, null
  br i1 %800, label %804, label %801

801:                                              ; preds = %797
  %802 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %799, i32 0, i32 1
  %803 = load ptr, ptr %802, align 4
  tail call void @kfree(ptr noundef %803) #9
  tail call void @kfree(ptr noundef nonnull %799) #9
  br label %804

804:                                              ; preds = %801, %797, %37
  %805 = phi i32 [ %798, %801 ], [ %798, %797 ], [ -12, %37 ]
  %806 = load ptr, ptr %25, align 8
  tail call void @kfree(ptr noundef %806) #9
  br label %836

807:                                              ; preds = %794, %791
  %808 = load ptr, ptr %25, align 8
  tail call void @kfree(ptr noundef %808) #9
  %809 = load i32, ptr %326, align 8
  %810 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 62
  store i32 %809, ptr %810, align 8
  %811 = load i32, ptr %46, align 8
  %812 = sub i32 %811, %809
  %813 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 63
  store i32 %812, ptr %813, align 4
  %814 = load i32, ptr %336, align 4
  %815 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 64
  store i32 %814, ptr %815, align 8
  %816 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 16
  %817 = load i32, ptr %816, align 4
  %818 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 19
  store i32 %817, ptr %818, align 4
  %819 = getelementptr inbounds %struct.ubi_attach_info, ptr %4, i32 0, i32 18
  %820 = load i32, ptr %819, align 8
  %821 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 20
  store i32 %820, ptr %821, align 8
  %822 = tail call i32 @ubi_read_volume_table(ptr noundef %0, ptr noundef nonnull %4) #9
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %836

824:                                              ; preds = %807
  %825 = tail call i32 @ubi_wl_init(ptr noundef %0, ptr noundef nonnull %4) #9
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %832

827:                                              ; preds = %824
  %828 = tail call i32 @ubi_eba_init(ptr noundef %0, ptr noundef nonnull %4) #9
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %831

830:                                              ; preds = %827
  tail call fastcc void @destroy_ai(ptr noundef nonnull %4)
  br label %838

831:                                              ; preds = %827
  tail call void @ubi_wl_close(ptr noundef %0) #9
  br label %832

832:                                              ; preds = %831, %824
  %833 = phi i32 [ %825, %824 ], [ %828, %831 ]
  tail call void @ubi_free_all_volumes(ptr noundef %0) #9
  %834 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  %835 = load ptr, ptr %834, align 4
  tail call void @vfree(ptr noundef %835) #9
  br label %836

836:                                              ; preds = %832, %807, %804, %21
  %837 = phi i32 [ %822, %807 ], [ %833, %832 ], [ %805, %804 ], [ -12, %21 ]
  tail call fastcc void @destroy_ai(ptr noundef nonnull %4)
  br label %838

838:                                              ; preds = %836, %830, %20, %2
  %839 = phi i32 [ %837, %836 ], [ 0, %830 ], [ -12, %2 ], [ -12, %20 ]
  ret i32 %839
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_read_volume_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @destroy_ai(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %3, %5 ], [ %10, %7 ]
  %9 = getelementptr i8, ptr %8, i32 -32
  %10 = load ptr, ptr %8, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %10, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %14 = load ptr, ptr %6, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %9) #9
  %15 = icmp eq ptr %10, %2
  br i1 %15, label %16, label %7

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %18, %20 ], [ %25, %22 ]
  %24 = getelementptr i8, ptr %23, i32 -32
  %25 = load ptr, ptr %23, align 8
  %26 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %25, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %29 = load ptr, ptr %21, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef %24) #9
  %30 = icmp eq ptr %25, %17
  br i1 %30, label %31, label %22

31:                                               ; preds = %22, %16
  %32 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi ptr [ %33, %35 ], [ %40, %37 ]
  %39 = getelementptr i8, ptr %38, i32 -32
  %40 = load ptr, ptr %38, align 8
  %41 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %40, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  %44 = load ptr, ptr %36, align 4
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef %39) #9
  %45 = icmp eq ptr %40, %32
  br i1 %45, label %46, label %37

46:                                               ; preds = %37, %31
  %47 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi ptr [ %48, %50 ], [ %55, %52 ]
  %54 = getelementptr i8, ptr %53, i32 -32
  %55 = load ptr, ptr %53, align 8
  %56 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %55, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %53, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  %59 = load ptr, ptr %51, align 4
  tail call void @kmem_cache_free(ptr noundef %59, ptr noundef %54) #9
  %60 = icmp eq ptr %55, %47
  br i1 %60, label %61, label %52

61:                                               ; preds = %52, %46
  %62 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi ptr [ %63, %65 ], [ %70, %67 ]
  %69 = getelementptr i8, ptr %68, i32 -32
  %70 = load ptr, ptr %68, align 8
  %71 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  store volatile ptr %70, ptr %72, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %68, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %71, align 4
  %74 = load ptr, ptr %66, align 4
  tail call void @kmem_cache_free(ptr noundef %74, ptr noundef %69) #9
  %75 = icmp eq ptr %70, %62
  br i1 %75, label %76, label %67

76:                                               ; preds = %67, %61
  %77 = load ptr, ptr %0, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %136, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  br label %81

81:                                               ; preds = %133, %79
  %82 = phi ptr [ %77, %79 ], [ %134, %133 ]
  %83 = getelementptr inbounds %struct.rb_node, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %133

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.rb_node, ptr %82, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %133

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %82, i32 -32
  %92 = load i32, ptr %82, align 4
  %93 = and i32 %92, -4
  %94 = inttoptr i32 %93 to ptr
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.rb_node, ptr %94, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %82
  %100 = getelementptr inbounds %struct.rb_node, ptr %94, i32 0, i32 1
  %101 = select i1 %99, ptr %97, ptr %100
  store ptr null, ptr %101, align 4
  br label %102

102:                                              ; preds = %96, %90
  %103 = getelementptr i8, ptr %82, i32 12
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %132, label %106

106:                                              ; preds = %129, %102
  %107 = phi ptr [ %130, %129 ], [ %104, %102 ]
  %108 = getelementptr inbounds %struct.rb_node, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.rb_node, ptr %107, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = getelementptr i8, ptr %107, i32 -32
  %117 = load i32, ptr %107, align 4
  %118 = and i32 %117, -4
  %119 = inttoptr i32 %118 to ptr
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.rb_node, ptr %119, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, %107
  %125 = getelementptr inbounds %struct.rb_node, ptr %119, i32 0, i32 1
  %126 = select i1 %124, ptr %122, ptr %125
  store ptr null, ptr %126, align 4
  br label %127

127:                                              ; preds = %121, %115
  %128 = load ptr, ptr %80, align 4
  tail call void @kmem_cache_free(ptr noundef %128, ptr noundef %116) #9
  br label %129

129:                                              ; preds = %127, %111, %106
  %130 = phi ptr [ %119, %127 ], [ %109, %106 ], [ %113, %111 ]
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %106

132:                                              ; preds = %129, %102
  tail call void @kfree(ptr noundef %91) #9
  br label %133

133:                                              ; preds = %132, %86, %81
  %134 = phi ptr [ %94, %132 ], [ %84, %81 ], [ %88, %86 ]
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %81

136:                                              ; preds = %133, %76
  %137 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  %138 = load ptr, ptr %137, align 4
  tail call void @kmem_cache_destroy(ptr noundef %138) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_wl_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_free_all_volumes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_av(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_sync_erase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_ec_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_is_bad(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_ec_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_ec_hdr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_corrupted(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %6, i32 0, i32 1
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %6, align 8
  %10 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %6, i32 0, i32 2
  store i32 -1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %6, i32 0, i32 3
  store i32 -1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %6, i32 0, i32 6
  %16 = getelementptr inbounds %struct.ubi_attach_info, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %15, ptr %18, align 4
  store ptr %17, ptr %15, align 8
  %19 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %6, i32 0, i32 6, i32 0, i32 1
  store ptr %16, ptr %19, align 4
  store volatile ptr %15, ptr %16, align 4
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ 0, %8 ], [ -12, %3 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_check_pattern(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

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
!8 = !{i64 2152942809, i64 2152943298, i64 2152942846, i64 2152942902, i64 2152942936, i64 2152942960, i64 2152943001, i64 2152943022, i64 2152943050, i64 2152943084}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148157099, i64 2148157379, i64 2148157713, i64 2148158047}
