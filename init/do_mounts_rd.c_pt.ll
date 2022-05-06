; ModuleID = '/llk/IR/init/do_mounts_rd.c_pt.bc'
source_filename = "../init/do_mounts_rd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.romfs_super_block = type { i32, i32, i32, i32, [0 x i8] }
%struct.cramfs_super = type { i32, i32, i32, i32, [16 x i8], %struct.cramfs_info, [16 x i8], %struct.cramfs_inode }
%struct.cramfs_info = type { i32, i32, i32, i32 }
%struct.cramfs_inode = type { [12 x i8] }
%struct.squashfs_super_block = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.minix_super_block = type { i16, i16, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.87, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.88, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.89, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.87 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.88 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.89 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.92 = type { ptr }

@__setup_str_prompt_ramdisk = internal constant [16 x i8] c"prompt_ramdisk=\00", section ".init.rodata", align 1
@__setup_prompt_ramdisk = internal global %struct.obs_kernel_param { ptr @__setup_str_prompt_ramdisk, ptr @prompt_ramdisk, i32 0 }, section ".init.setup", align 4
@__setup_str_ramdisk_start_setup = internal constant [15 x i8] c"ramdisk_start=\00", section ".init.rodata", align 1
@__setup_ramdisk_start_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ramdisk_start_setup, ptr @ramdisk_start_setup, i32 0 }, section ".init.setup", align 4
@__const.rd_load_image.rotator = private unnamed_addr constant [4 x i8] c"|/-\\", align 1
@.str = private unnamed_addr constant [9 x i8] c"/dev/ram\00", align 1
@out_file = internal unnamed_addr global ptr null, align 4
@in_file = internal unnamed_addr global ptr null, align 4
@rd_image_start = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@in_pos = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"RAMDISK: image too big! (%dKiB/%ldKiB)\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/initrd.image\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\013RAMDISK: could not determine device size\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\013RAMDISK: could not allocate buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\015RAMDISK: Loading %dKiB [%ld disk%s] into ram disk... \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\01cdone disk #1.\0A\00", align 1
@out_pos = internal global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"\01c%c\08\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\01cdone.\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"/dev/root\00", align 1
@ROOT_DEV = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"\014ignoring the deprecated prompt_ramdisk= option\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"\015RAMDISK: %s image found at block %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"\010RAMDISK: %s decompressor not configured!\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\015RAMDISK: romfs filesystem found at block %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"\015RAMDISK: cramfs filesystem found at block %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\015RAMDISK: squashfs filesystem found at block %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"\015RAMDISK: Minix filesystem found at block %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\015RAMDISK: ext2 filesystem found at block %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"\015RAMDISK: Couldn't find valid RAM disk image starting at %d.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.21 = private unnamed_addr constant [77 x i8] c"\010Invalid ramdisk decompression routine.  Select appropriate config option.\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"Could not decompress initial ramdisk image.\00", align 1
@decompress_error = internal unnamed_addr global i1 false, align 4
@.str.23 = private unnamed_addr constant [47 x i8] c"\013RAMDISK: error while reading compressed data\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"\013RAMDISK: EOF while reading compressed data\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"\013RAMDISK: incomplete write (%ld != %ld)\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"\013%s\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__setup_prompt_ramdisk, ptr @__setup_ramdisk_start_setup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @prompt_ramdisk(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ramdisk_start_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @simple_strtol(ptr noundef %0, ptr noundef null, i32 noundef 0) #12
  store i32 %2, ptr @rd_image_start, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rd_load_image(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4
  %3 = tail call ptr @filp_open(ptr noundef nonnull @.str, i32 noundef 2, i16 noundef zeroext 0) #12
  store ptr %3, ptr @out_file, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %90, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @filp_open(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 0) #12
  store ptr %6, ptr @in_file, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %86, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr @rd_image_start, align 4
  %10 = shl i32 %9, 10
  %11 = sext i32 %10 to i64
  store i64 %11, ptr @in_pos, align 8
  %12 = call fastcc i32 @identify_ramdisk_image(ptr noundef %6, i64 noundef %11, ptr noundef nonnull %2) #13
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %8
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = load ptr, ptr %2, align 4
  %18 = tail call fastcc i32 @crd_load(ptr noundef %17) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %80, label %82

20:                                               ; preds = %14
  %21 = load ptr, ptr @out_file, align 4
  %22 = tail call fastcc i32 @nr_blocks(ptr noundef %21)
  %23 = icmp ugt i32 %12, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %12, i32 noundef %22) #11
  br label %82

26:                                               ; preds = %20
  %27 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(14) @.str.2)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @in_file, align 4
  %31 = tail call fastcc i32 @nr_blocks(ptr noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %82

35:                                               ; preds = %29, %26
  %36 = phi i32 [ %31, %29 ], [ %12, %26 ]
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 1024) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %82

42:                                               ; preds = %35
  %43 = add nsw i32 %12, -1
  %44 = udiv i32 %43, %36
  %45 = add nuw nsw i32 %44, 1
  %46 = icmp ugt i32 %12, %36
  %47 = select i1 %46, ptr @.str.6, ptr @.str.7
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %45, ptr noundef nonnull %47) #11
  br label %49

49:                                               ; preds = %74, %42
  %50 = phi i32 [ %76, %74 ], [ 0, %42 ]
  %51 = phi i16 [ %75, %74 ], [ 0, %42 ]
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = urem i32 %50, %36
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  %58 = load ptr, ptr @in_file, align 4
  tail call void @fput(ptr noundef %58) #12
  br label %78

59:                                               ; preds = %53, %49
  %60 = load ptr, ptr @in_file, align 4
  %61 = tail call i32 @kernel_read(ptr noundef %60, ptr noundef nonnull %38, i32 noundef 1024, ptr noundef nonnull @in_pos) #12
  %62 = load ptr, ptr @out_file, align 4
  %63 = tail call i32 @kernel_write(ptr noundef %62, ptr noundef nonnull %38, i32 noundef 1024, ptr noundef nonnull @out_pos) #12
  %64 = and i32 %50, 15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = and i16 %51, 3
  %68 = zext i16 %67 to i32
  %69 = getelementptr [4 x i8], ptr @__const.rd_load_image.rotator, i32 0, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %71) #11
  %73 = add i16 %51, 1
  br label %74

74:                                               ; preds = %66, %59
  %75 = phi i16 [ %51, %59 ], [ %73, %66 ]
  %76 = add nuw nsw i32 %50, 1
  %77 = icmp eq i32 %76, %12
  br i1 %77, label %78, label %49

78:                                               ; preds = %74, %56
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %80

80:                                               ; preds = %78, %16
  %81 = phi ptr [ null, %16 ], [ %38, %78 ]
  br label %82

82:                                               ; preds = %80, %40, %33, %24, %16, %8
  %83 = phi ptr [ null, %8 ], [ %81, %80 ], [ null, %16 ], [ null, %24 ], [ null, %33 ], [ null, %40 ]
  %84 = phi i32 [ 0, %8 ], [ 1, %80 ], [ 0, %16 ], [ 0, %24 ], [ 0, %33 ], [ 0, %40 ]
  %85 = load ptr, ptr @in_file, align 4
  tail call void @fput(ptr noundef %85) #12
  br label %86

86:                                               ; preds = %82, %5
  %87 = phi ptr [ null, %5 ], [ %83, %82 ]
  %88 = phi i32 [ 0, %5 ], [ %84, %82 ]
  %89 = load ptr, ptr @out_file, align 4
  tail call void @fput(ptr noundef %89) #12
  br label %90

90:                                               ; preds = %86, %1
  %91 = phi ptr [ null, %1 ], [ %87, %86 ]
  %92 = phi i32 [ 0, %1 ], [ %88, %86 ]
  tail call void @kfree(ptr noundef %91) #12
  %93 = tail call i32 @init_unlink(ptr noundef nonnull @.str) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %92
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @identify_ramdisk_image(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = load i32, ptr @rd_image_start, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 512) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %97, label %10

10:                                               ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(512) %8, i8 -27, i32 512, i1 false)
  %11 = shl i32 %6, 10
  %12 = sext i32 %11 to i64
  store i64 %12, ptr %4, align 8
  %13 = call i32 @kernel_read(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %4) #12
  %14 = call ptr @decompress_method(ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %5) #12
  store ptr %14, ptr %2, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %15, i32 noundef %6) #11
  %19 = load ptr, ptr %2, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %95

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 4
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %22) #11
  br label %95

24:                                               ; preds = %10
  %25 = load i32, ptr %8, align 8
  switch i32 %25, label %50 [
    i32 1836020269, label %26
    i32 684539205, label %37
    i32 1936814952, label %43
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.romfs_super_block, ptr %8, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 762537521
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %6) #11
  %32 = getelementptr inbounds %struct.romfs_super_block, ptr %8, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %35 = add i32 %34, 1023
  %36 = lshr i32 %35, 10
  br label %95

37:                                               ; preds = %24
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %6) #11
  %39 = getelementptr inbounds %struct.cramfs_super, ptr %8, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1023
  %42 = lshr i32 %41, 10
  br label %95

43:                                               ; preds = %24
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %6) #11
  %45 = getelementptr inbounds %struct.squashfs_super_block, ptr %8, i32 0, i32 12
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 1023
  %48 = lshr i64 %47, 10
  %49 = trunc i64 %48 to i32
  br label %95

50:                                               ; preds = %26, %24
  %51 = or i32 %11, 512
  %52 = sext i32 %51 to i64
  store i64 %52, ptr %4, align 8
  %53 = call i32 @kernel_read(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %4) #12
  %54 = load i32, ptr %8, align 8
  %55 = icmp eq i32 %54, 684539205
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %6) #11
  %58 = getelementptr inbounds %struct.cramfs_super, ptr %8, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1023
  %61 = lshr i32 %60, 10
  br label %95

62:                                               ; preds = %50
  %63 = add i32 %11, 1024
  %64 = sext i32 %63 to i64
  store i64 %64, ptr %4, align 8
  %65 = call i32 @kernel_read(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %4) #12
  %66 = getelementptr inbounds %struct.minix_super_block, ptr %8, i32 0, i32 7
  %67 = load i16, ptr %66, align 8
  switch i16 %67, label %77 [
    i16 4991, label %68
    i16 5007, label %68
  ]

68:                                               ; preds = %62, %62
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %6) #11
  %70 = getelementptr inbounds %struct.minix_super_block, ptr %8, i32 0, i32 1
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds %struct.minix_super_block, ptr %8, i32 0, i32 5
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = shl i32 %72, %75
  br label %95

77:                                               ; preds = %62
  %78 = getelementptr i8, ptr %8, i32 56
  %79 = load i16, ptr %78, align 8
  %80 = icmp eq i16 %79, -4269
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %8, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr i8, ptr %8, i32 24
  %86 = load i32, ptr %85, align 8
  %87 = zext i32 %86 to i64
  %88 = shl i64 %84, %87
  %89 = trunc i64 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %81
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %6) #11
  br label %95

93:                                               ; preds = %81, %77
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %6) #11
  br label %95

95:                                               ; preds = %93, %91, %68, %56, %43, %37, %30, %21, %17
  %96 = phi i32 [ %36, %30 ], [ %42, %37 ], [ %49, %43 ], [ %61, %56 ], [ %76, %68 ], [ %89, %91 ], [ -1, %93 ], [ 0, %21 ], [ 0, %17 ]
  call void @kfree(ptr noundef nonnull %8) #12
  br label %97

97:                                               ; preds = %95, %3
  %98 = phi i32 [ %96, %95 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %98
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @crd_load(ptr noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.22) #15
  unreachable

5:                                                ; preds = %1
  %6 = tail call i32 %0(ptr noundef null, i32 noundef 0, ptr noundef nonnull @compr_fill, ptr noundef nonnull @compr_flush, ptr noundef null, ptr noundef null, ptr noundef nonnull @error) #12
  %7 = load i1, ptr @decompress_error, align 4
  %8 = select i1 %7, i32 1, i32 %6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nr_blocks(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -4096
  %7 = icmp eq i16 %6, 24576
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 22
  %10 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  br label %11

11:                                               ; preds = %19, %8
  %12 = load volatile i32, ptr %9, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !10
  %16 = load volatile i32, ptr %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %12, %11 ], [ %16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %21 = load i64, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %22 = load volatile i32, ptr %9, align 4
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %24, label %11

24:                                               ; preds = %19
  %25 = lshr i64 %21, 10
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i32 [ %26, %24 ], [ 0, %1 ]
  ret i32 %28
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_unlink(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rd_load_disk(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load i32, ptr @ROOT_DEV, align 4
  tail call fastcc void @create_dev(ptr noundef nonnull @.str.11, i32 noundef %2) #13
  %3 = or i32 %0, 1048576
  tail call fastcc void @create_dev(ptr noundef nonnull @.str, i32 noundef %3) #13
  %4 = tail call i32 @rd_load_image(ptr noundef nonnull @.str.11) #13
  ret i32 %4
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_dev(ptr noundef %0, i32 noundef %1) unnamed_addr #6 section ".init.text" {
  %3 = tail call i32 @init_unlink(ptr noundef %0) #11
  %4 = and i32 %1, 255
  %5 = lshr i32 %1, 12
  %6 = and i32 %5, 1048320
  %7 = or i32 %6, %4
  %8 = shl i32 %1, 12
  %9 = and i32 %8, -1048576
  %10 = or i32 %7, %9
  %11 = tail call i32 @init_mknod(ptr noundef %0, i16 noundef zeroext 24960, i32 noundef %10) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @decompress_method(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @compr_fill(ptr noundef %0, i32 noundef %1) #0 section ".init.text" {
  %3 = load ptr, ptr @in_file, align 4
  %4 = tail call i32 @kernel_read(ptr noundef %3, ptr noundef %0, i32 noundef %1, ptr noundef nonnull @in_pos) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %6, %2
  %9 = phi ptr [ @.str.23, %2 ], [ @.str.24, %6 ]
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %6
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @compr_flush(ptr noundef %0, i32 noundef %1) #0 section ".init.text" {
  %3 = load ptr, ptr @out_file, align 4
  %4 = tail call i32 @kernel_write(ptr noundef %3, ptr noundef %0, i32 noundef %1, ptr noundef nonnull @out_pos) #12
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load i1, ptr @decompress_error, align 4
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %4, i32 noundef %1) #11
  br label %10

10:                                               ; preds = %8, %6
  store i1 true, ptr @decompress_error, align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i32 [ -1, %10 ], [ %1, %2 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @error(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %0) #11
  store i1 true, ptr @decompress_error, align 4
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold noreturn nounwind }

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
!9 = !{i64 2151285992}
!10 = !{i64 2151285834}
!11 = !{i64 2151286136}
!12 = !{i64 2149480379}
