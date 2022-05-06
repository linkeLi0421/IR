; ModuleID = '/llk/IR/init/initramfs.c_pt.bc'
source_filename = "../init/initramfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_initramfs:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_initramfs\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_initramfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.async_domain = type { %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dir_entry = type { %struct.list_head, ptr, i64 }
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
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.hash = type { i32, i32, i32, i16, ptr, [4098 x i8] }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kgid_t = type { i32 }

@__setup_str_retain_initrd_param = internal constant [14 x i8] c"retain_initrd\00", section ".init.rodata", align 1
@__setup_retain_initrd_param = internal global %struct.obs_kernel_param { ptr @__setup_str_retain_initrd_param, ptr @retain_initrd_param, i32 0 }, section ".init.setup", align 4
@__setup_str_keepinitrd_setup = internal constant [11 x i8] c"keepinitrd\00", section ".init.rodata", align 1
@__setup_keepinitrd_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_keepinitrd_setup, ptr @keepinitrd_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_initramfs_async_setup = internal constant [17 x i8] c"initramfs_async=\00", section ".init.rodata", align 1
@__setup_initramfs_async_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_initramfs_async_setup, ptr @initramfs_async_setup, i32 0 }, section ".init.setup", align 4
@initrd_end = external dso_local local_unnamed_addr global i32, align 4
@initrd_start = external dso_local local_unnamed_addr global i32, align 4
@phys_initrd_size = external dso_local local_unnamed_addr global i32, align 4
@phys_initrd_start = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [50 x i8] c"\013INITRD: 0x%08llx+0x%08lx is not a memory region\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\013INITRD: 0x%08llx+0x%08lx overlaps in-use memory region\0A\00", align 1
@initrd_below_start_ok = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"\01c - disabling initrd\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"initrd\00", align 1
@initramfs_cookie = internal unnamed_addr global i64 0, align 8
@wait_for_initramfs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\014wait_for_initramfs() called before rootfs_initcalls\0A\00", align 1
@initramfs_domain = internal global %struct.async_domain { %struct.list_head { ptr @initramfs_domain, ptr @initramfs_domain }, i8 0 }, align 4
@__kstrtab_wait_for_initramfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_initramfs = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_initramfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_initramfs to i32), ptr @__kstrtab_wait_for_initramfs, ptr @__kstrtabns_wait_for_initramfs }, section "___ksymtab_gpl+wait_for_initramfs", align 4
@__initcall__kmod_initramfs__243_736_populate_rootfsrootfs = internal global ptr @populate_rootfs, section ".initcallrootfs.init", align 4
@do_retain_initrd = internal unnamed_addr global i1 false, section ".init.data", align 4
@initramfs_async = internal global i8 1, section ".init.data", align 1
@__initramfs_start = external dso_local global [0 x i8], align 1
@__initramfs_size = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"\016Trying to unpack rootfs image as initramfs...\0A\00", align 1
@unpack_to_rootfs.msg_buf = internal global [64 x i8] zeroinitializer, section ".init.data", align 1
@header_buf = internal unnamed_addr global ptr null, section ".init.data", align 4
@symlink_buf = internal unnamed_addr global ptr null, section ".init.data", align 4
@name_buf = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"can't allocate buffers\00", align 1
@state = internal unnamed_addr global i32 0, section ".init.data", align 4
@this_header = internal unnamed_addr global i64 0, section ".init.data", align 8
@message = internal unnamed_addr global ptr null, section ".init.data", align 4
@my_inptr = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"decompressor failed\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"compression method %s not configured\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"invalid magic at start of compressed archive\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"junk at the end of compressed archive\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@byte_count = internal unnamed_addr global i32 0, section ".init.data", align 4
@victim = internal unnamed_addr global ptr null, section ".init.data", align 4
@actions = internal unnamed_addr constant [8 x ptr] [ptr @do_start, ptr @do_collect, ptr @do_header, ptr @do_skip, ptr @do_name, ptr @do_copy, ptr @do_symlink, ptr @do_reset], section ".init.data", align 4
@collected = internal unnamed_addr global ptr null, section ".init.data", align 4
@collect = internal unnamed_addr global ptr null, section ".init.data", align 4
@remains = internal unnamed_addr global i32 0, section ".init.data", align 4
@next_state = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"070707\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"incorrect cpio method used: use -H newc option\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"070701\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"no cpio magic\00", align 1
@name_len = internal unnamed_addr global i32 0, section ".init.data", align 4
@body_len = internal unnamed_addr global i32 0, section ".init.data", align 4
@next_header = internal unnamed_addr global i64 0, section ".init.data", align 8
@mode = internal unnamed_addr global i16 0, section ".init.data", align 2
@ino = internal unnamed_addr global i32 0, section ".init.data", align 4
@uid = internal unnamed_addr global i32 0, section ".init.data", align 4
@gid = internal unnamed_addr global i32 0, section ".init.data", align 4
@nlink = internal unnamed_addr global i32 0, section ".init.data", align 4
@mtime = internal unnamed_addr global i64 0, section ".init.data", align 8
@major = internal unnamed_addr global i32 0, section ".init.data", align 4
@minor = internal unnamed_addr global i32 0, section ".init.data", align 4
@rdev = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"TRAILER!!!\00", align 1
@wfile = internal unnamed_addr global ptr null, section ".init.data", align 4
@wfile_pos = internal global i64 0, section ".init.data", align 8
@head = internal global [32 x ptr] zeroinitializer, section ".init.data", align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"can't allocate link hash entry\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"can't allocate dir_entry buffer\00", align 1
@dir_list = internal global %struct.list_head { ptr @dir_list, ptr @dir_list }, section ".init.data", align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"broken padding\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"junk within compressed archive\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"\016rootfs image is not initramfs (%s); looks like an initrd\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"/initrd.image\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"\013/initrd.image: incomplete write (%zd != %ld)\0A\00", align 1
@crashk_res = external dso_local local_unnamed_addr global %struct.resource, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_initramfs__243_736_populate_rootfsrootfs, ptr @__ksymtab_wait_for_initramfs, ptr @__setup_initramfs_async_setup, ptr @__setup_keepinitrd_setup, ptr @__setup_retain_initrd_param], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @retain_initrd_param(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i1 true, ptr @do_retain_initrd, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @keepinitrd_setup(ptr nocapture noundef readnone %0) #1 section ".init.text" {
  store i1 true, ptr @do_retain_initrd, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @initramfs_async_setup(ptr noundef %0) #2 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @initramfs_async) #21
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @reserve_initrd_mem() local_unnamed_addr #2 section ".init.text" {
  store i32 0, ptr @initrd_end, align 4
  store i32 0, ptr @initrd_start, align 4
  %1 = load i32, ptr @phys_initrd_size, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %25, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @phys_initrd_start, align 4
  %5 = and i32 %4, -4096
  %6 = and i32 %4, 4095
  %7 = add i32 %1, -1
  %8 = add i32 %7, %6
  %9 = or i32 %8, 4095
  %10 = add i32 %9, 1
  %11 = tail call zeroext i1 @memblock_is_region_memory(i32 noundef %5, i32 noundef %10) #21
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %5, i32 noundef %10) #21
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = tail call i32 @memblock_reserve(i32 noundef %5, i32 noundef %10) #21
  %16 = load i32, ptr @phys_initrd_start, align 4
  %17 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %16, i32 -2130706432, i32 8454144) #22, !srcloc !8
  store i32 %17, ptr @initrd_start, align 4
  %18 = load i32, ptr @phys_initrd_size, align 4
  %19 = add i32 %18, %17
  store i32 %19, ptr @initrd_end, align 4
  store i32 1, ptr @initrd_below_start_ok, align 4
  br label %25

20:                                               ; preds = %12, %3
  %21 = phi ptr [ @.str, %3 ], [ @.str.1, %12 ]
  %22 = zext i32 %5 to i64
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %21, i64 noundef %22, i32 noundef %10) #23
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #23
  store i32 0, ptr @initrd_start, align 4
  store i32 0, ptr @initrd_end, align 4
  br label %25

25:                                               ; preds = %20, %14, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_memory(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @free_initrd_mem(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 section ".init.text" {
  %3 = and i32 %0, -4096
  %4 = add i32 %1, 4095
  %5 = and i32 %4, -4096
  %6 = inttoptr i32 %3 to ptr
  %7 = sub i32 %5, %3
  tail call void @memblock_free(ptr noundef %6, i32 noundef %7) #21
  %8 = inttoptr i32 %0 to ptr
  %9 = inttoptr i32 %1 to ptr
  %10 = tail call i32 @free_reserved_area(ptr noundef %8, ptr noundef %9, i32 noundef 204, ptr noundef nonnull @.str.3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_reserved_area(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wait_for_initramfs() #6 {
  %1 = load i64, ptr @initramfs_cookie, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i1, ptr @wait_for_initramfs.__already_done, align 1
  br i1 %4, label %9, label %5, !prof !9

5:                                                ; preds = %3
  store i1 true, ptr @wait_for_initramfs.__already_done, align 1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #23
  br label %9

7:                                                ; preds = %0
  %8 = add i64 %1, 1
  tail call void @async_synchronize_cookie_domain(i64 noundef %8, ptr noundef nonnull @initramfs_domain) #21
  br label %9

9:                                                ; preds = %7, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_cookie_domain(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @populate_rootfs() #2 section ".init.text" {
  %1 = tail call i64 @async_schedule_node_domain(ptr noundef nonnull @do_populate_rootfs, ptr noundef null, i32 noundef -1, ptr noundef nonnull @initramfs_domain) #21
  store i64 %1, ptr @initramfs_cookie, align 8
  tail call void @__usermodehelper_set_disable_depth(i32 noundef 0) #21
  %2 = load i8, ptr @initramfs_async, align 1, !range !10
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @wait_for_initramfs()
  br label %5

5:                                                ; preds = %4, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @do_populate_rootfs(ptr nocapture noundef readnone %0, i64 noundef %1) #2 section ".init.text" {
  %3 = load i32, ptr @__initramfs_size, align 4
  %4 = tail call fastcc ptr @unpack_to_rootfs(ptr noundef nonnull @__initramfs_start, i32 noundef %3) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (ptr, ...) @panic_show_mem(ptr noundef nonnull @.str.5, ptr noundef nonnull %4)
  unreachable

7:                                                ; preds = %2
  %8 = load i32, ptr @initrd_start, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #23
  %12 = load i32, ptr @initrd_start, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr @initrd_end, align 4
  %15 = sub i32 %14, %12
  %16 = tail call fastcc ptr @unpack_to_rootfs(ptr noundef %13, i32 noundef %15) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call fastcc void @populate_initrd_image(ptr noundef nonnull %16) #24
  br label %19

19:                                               ; preds = %18, %10, %7
  %20 = load i1, ptr @do_retain_initrd, align 4
  %21 = xor i1 %20, true
  %22 = load i32, ptr @initrd_start, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = tail call fastcc zeroext i1 @kexec_free_initrd() #24
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr @initrd_start, align 4
  %29 = load i32, ptr @initrd_end, align 4
  tail call void @free_initrd_mem(i32 noundef %28, i32 noundef %29) #24
  br label %30

30:                                               ; preds = %27, %25, %19
  store i32 0, ptr @initrd_start, align 4
  store i32 0, ptr @initrd_end, align 4
  tail call void @flush_delayed_fput() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node_domain(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @unpack_to_rootfs(ptr noundef %0, i32 noundef %1) unnamed_addr #2 section ".init.text" {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store ptr null, ptr %3, align 4, !annotation !11
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 110) #25
  store ptr %5, ptr @header_buf, align 4
  %6 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8195, i32 noundef 3264, i32 noundef 2) #26
  store ptr %6, ptr @symlink_buf, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4098) #25
  store ptr %8, ptr @name_buf, align 4
  %9 = load ptr, ptr @header_buf, align 4
  %10 = icmp ne ptr %9, null
  %11 = load ptr, ptr @symlink_buf, align 4
  %12 = icmp ne ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false
  %14 = icmp ne ptr %8, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  tail call void (ptr, ...) @panic_show_mem(ptr noundef nonnull @.str.7)
  unreachable

17:                                               ; preds = %2
  store i32 0, ptr @state, align 4
  store i64 0, ptr @this_header, align 8
  store ptr null, ptr @message, align 4
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %89, label %19

19:                                               ; preds = %87, %17
  %20 = phi i64 [ %88, %87 ], [ 0, %17 ]
  %21 = phi ptr [ %83, %87 ], [ %0, %17 ]
  %22 = phi i32 [ %82, %87 ], [ %1, %17 ]
  %23 = load i8, ptr %21, align 1
  %24 = icmp eq i8 %23, 48
  %25 = and i64 %20, 3
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %42

28:                                               ; preds = %19
  store i32 0, ptr @state, align 4
  store i32 %22, ptr @byte_count, align 4
  store ptr %21, ptr @victim, align 4
  %29 = call i32 @do_start() #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %31, %28
  %32 = load i32, ptr @state, align 4
  %33 = getelementptr [8 x ptr], ptr @actions, i32 0, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34() #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %31, label %37

37:                                               ; preds = %31, %28
  %38 = load i32, ptr @byte_count, align 4
  %39 = sub i32 %22, %38
  %40 = getelementptr i8, ptr %21, i32 %39
  %41 = load ptr, ptr @message, align 4
  br label %80

42:                                               ; preds = %19
  %43 = icmp eq i8 %23, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = getelementptr i8, ptr %21, i32 1
  %46 = add i32 %22, -1
  %47 = add i64 %20, 1
  store i64 %47, ptr @this_header, align 8
  br label %80

48:                                               ; preds = %42
  store i64 0, ptr @this_header, align 8
  %49 = call ptr @decompress_method(ptr noundef %21, i32 noundef %22, ptr noundef nonnull %3) #21
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = call i32 %49(ptr noundef %21, i32 noundef %22, ptr noundef null, ptr noundef nonnull @flush_buffer, ptr noundef null, ptr noundef nonnull @my_inptr, ptr noundef nonnull @error) #21
  %53 = icmp ne i32 %52, 0
  %54 = load ptr, ptr @message, align 4
  %55 = icmp eq ptr %54, null
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %71, label %66

57:                                               ; preds = %48
  %58 = load ptr, ptr %3, align 4
  %59 = icmp eq ptr %58, null
  %60 = load ptr, ptr @message, align 4
  %61 = icmp eq ptr %60, null
  br i1 %59, label %65, label %62

62:                                               ; preds = %57
  br i1 %61, label %63, label %73

63:                                               ; preds = %62
  %64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @unpack_to_rootfs.msg_buf, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef nonnull %58)
  br label %71

65:                                               ; preds = %57
  br i1 %61, label %71, label %73

66:                                               ; preds = %51
  %67 = load i32, ptr @state, align 4
  %68 = icmp ne i32 %67, 7
  %69 = icmp eq ptr %54, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %65, %63, %51
  %72 = phi ptr [ @unpack_to_rootfs.msg_buf, %63 ], [ @.str.8, %51 ], [ @.str.10, %65 ], [ @.str.11, %66 ]
  store ptr %72, ptr @message, align 4
  br label %73

73:                                               ; preds = %71, %66, %65, %62
  %74 = phi ptr [ %54, %66 ], [ %60, %62 ], [ %60, %65 ], [ %72, %71 ]
  %75 = load i32, ptr @my_inptr, align 4
  %76 = zext i32 %75 to i64
  %77 = add i64 %20, %76
  store i64 %77, ptr @this_header, align 8
  %78 = getelementptr i8, ptr %21, i32 %75
  %79 = sub i32 %22, %75
  br label %80

80:                                               ; preds = %73, %44, %37
  %81 = phi ptr [ %74, %73 ], [ null, %44 ], [ %41, %37 ]
  %82 = phi i32 [ %79, %73 ], [ %46, %44 ], [ %38, %37 ]
  %83 = phi ptr [ %78, %73 ], [ %45, %44 ], [ %40, %37 ]
  %84 = icmp eq ptr %81, null
  %85 = icmp ne i32 %82, 0
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, ptr @this_header, align 8
  br label %19

89:                                               ; preds = %80, %17
  call fastcc void @dir_utime() #24
  %90 = load ptr, ptr @name_buf, align 4
  call void @kfree(ptr noundef %90) #21
  %91 = load ptr, ptr @symlink_buf, align 4
  call void @kfree(ptr noundef %91) #21
  %92 = load ptr, ptr @header_buf, align 4
  call void @kfree(ptr noundef %92) #21
  %93 = load ptr, ptr @message, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret ptr %93
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panic_show_mem(ptr noundef %0, ...) unnamed_addr #7 {
  %2 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !11
  tail call void @show_mem(i32 noundef 0, ptr noundef null) #21
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i32, ptr %2, align 4
  %4 = insertvalue [1 x i32] poison, i32 %3, 0
  call void (ptr, ...) @panic(ptr noundef %0, [1 x i32] %4) #27
  unreachable
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @populate_initrd_image(ptr noundef %0) unnamed_addr #2 section ".init.text" {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store i64 0, ptr %2, align 8
  %3 = load i32, ptr @__initramfs_size, align 4
  %4 = tail call fastcc ptr @unpack_to_rootfs(ptr noundef nonnull @__initramfs_start, i32 noundef %3) #24
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %0) #23
  %6 = tail call ptr @filp_open(ptr noundef nonnull @.str.23, i32 noundef 65, i16 noundef zeroext 448) #21
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr @initrd_start, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = load i32, ptr @initrd_end, align 4
  %12 = sub i32 %11, %9
  %13 = call fastcc i32 @xwrite(ptr noundef %6, ptr noundef %10, i32 noundef %12, ptr noundef nonnull %2) #24
  %14 = load i32, ptr @initrd_end, align 4
  %15 = load i32, ptr @initrd_start, align 4
  %16 = sub i32 %14, %15
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %13, i32 noundef %16) #23
  br label %20

20:                                               ; preds = %18, %8
  call void @fput(ptr noundef %6) #21
  br label %21

21:                                               ; preds = %20, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @kexec_free_initrd() unnamed_addr #2 section ".init.text" {
  %1 = load i32, ptr @crashk_res, align 4
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %1, i32 -2130706432, i32 8454144) #22, !srcloc !8
  %3 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %3, i32 -2130706432, i32 8454144) #22, !srcloc !8
  %5 = load i32, ptr @initrd_start, align 4
  %6 = icmp ult i32 %5, %4
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i32, ptr @initrd_end, align 4
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = inttoptr i32 %5 to ptr
  %12 = sub i32 %8, %5
  tail call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 %12, i1 false)
  %13 = load i32, ptr @initrd_start, align 4
  %14 = icmp ult i32 %13, %2
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @free_initrd_mem(i32 noundef %13, i32 noundef %2) #24
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i32, ptr @initrd_end, align 4
  %18 = icmp ugt i32 %17, %4
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @free_initrd_mem(i32 noundef %4, i32 noundef %17) #24
  br label %20

20:                                               ; preds = %19, %16, %7, %0
  %21 = phi i1 [ false, %7 ], [ false, %0 ], [ true, %19 ], [ true, %16 ]
  ret i1 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_delayed_fput() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @decompress_method(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @flush_buffer(ptr noundef %0, i32 noundef %1) #2 section ".init.text" {
  %3 = load ptr, ptr @message, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %33

5:                                                ; preds = %27, %2
  %6 = phi i32 [ %16, %27 ], [ %1, %2 ]
  %7 = phi ptr [ %28, %27 ], [ %0, %2 ]
  br label %8

8:                                                ; preds = %32, %5
  store i32 %6, ptr @byte_count, align 4
  store ptr %7, ptr @victim, align 4
  br label %9

9:                                                ; preds = %9, %8
  %10 = load i32, ptr @state, align 4
  %11 = getelementptr [8 x ptr], ptr @actions, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12() #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %9, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr @byte_count, align 4
  %17 = sub i32 %6, %16
  %18 = icmp ugt i32 %6, %17
  %19 = load ptr, ptr @message, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %7, i32 %17
  %24 = load i8, ptr %23, align 1
  switch i8 %24, label %32 [
    i8 48, label %25
    i8 0, label %30
  ]

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %7, i32 %17
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi ptr [ %31, %30 ], [ %26, %25 ]
  %29 = phi i32 [ 7, %30 ], [ 0, %25 ]
  store i32 %29, ptr @state, align 4
  br label %5

30:                                               ; preds = %22
  %31 = getelementptr i8, ptr %7, i32 %17
  br label %27

32:                                               ; preds = %22
  store ptr @.str.21, ptr @message, align 4
  br label %8

33:                                               ; preds = %15, %2
  %34 = phi i32 [ -1, %2 ], [ %1, %15 ]
  ret i32 %34
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal void @error(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr @message, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr %0, ptr @message, align 4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @dir_utime() unnamed_addr #2 section ".init.text" {
  %1 = alloca [2 x %struct.timespec64], align 8
  %2 = load ptr, ptr @dir_list, align 4
  %3 = icmp eq ptr %2, @dir_list
  br i1 %3, label %20, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds i8, ptr %1, i32 8
  %6 = getelementptr inbounds [2 x %struct.timespec64], ptr %1, i32 0, i32 1
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %2, %4 ], [ %9, %7 ]
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %13 = getelementptr inbounds %struct.dir_entry, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dir_entry, ptr %8, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 24, i1 false) #21, !annotation !11
  store i64 %16, ptr %1, align 8
  store i64 %16, ptr %6, align 8
  %17 = call i32 @init_utimes(ptr noundef %14, ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #21
  %18 = load ptr, ptr %13, align 8
  call void @kfree(ptr noundef %18) #21
  call void @kfree(ptr noundef %8) #21
  %19 = icmp eq ptr %9, @dir_list
  br i1 %19, label %20, label %7

20:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @do_start() #0 section ".init.text" {
  %1 = load i32, ptr @byte_count, align 4
  %2 = icmp ult i32 %1, 110
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @victim, align 4
  store ptr %4, ptr @collected, align 4
  %5 = getelementptr i8, ptr %4, i32 110
  store ptr %5, ptr @victim, align 4
  %6 = load i64, ptr @this_header, align 8
  %7 = add i64 %6, 110
  store i64 %7, ptr @this_header, align 8
  %8 = add i32 %1, -110
  store i32 %8, ptr @byte_count, align 4
  br label %11

9:                                                ; preds = %0
  %10 = load ptr, ptr @header_buf, align 4
  store ptr %10, ptr @collected, align 4
  store ptr %10, ptr @collect, align 4
  store i32 110, ptr @remains, align 4
  store i32 2, ptr @next_state, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ 1, %9 ], [ 2, %3 ]
  store i32 %12, ptr @state, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @do_collect() #11 section ".init.text" {
  %1 = load i32, ptr @remains, align 4
  %2 = load i32, ptr @byte_count, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %1)
  %4 = load ptr, ptr @collect, align 4
  %5 = load ptr, ptr @victim, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr align 1 %5, i32 %3, i1 false)
  %6 = getelementptr i8, ptr %5, i32 %3
  store ptr %6, ptr @victim, align 4
  %7 = zext i32 %3 to i64
  %8 = load i64, ptr @this_header, align 8
  %9 = add i64 %8, %7
  store i64 %9, ptr @this_header, align 8
  %10 = sub i32 %2, %3
  store i32 %10, ptr @byte_count, align 4
  %11 = getelementptr i8, ptr %4, i32 %3
  store ptr %11, ptr @collect, align 4
  %12 = sub i32 %1, %3
  store i32 %12, ptr @remains, align 4
  %13 = icmp ugt i32 %1, %2
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = load i32, ptr @next_state, align 4
  store i32 %15, ptr @state, align 4
  br label %16

16:                                               ; preds = %14, %0
  %17 = phi i32 [ 0, %14 ], [ 1, %0 ]
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @do_header() #2 section ".init.text" {
  %1 = load ptr, ptr @collected, align 4
  %2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) @.str.12, i32 6)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load ptr, ptr @message, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %54

7:                                                ; preds = %4
  store ptr @.str.13, ptr @message, align 4
  br label %54

8:                                                ; preds = %0
  %9 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) @.str.14, i32 6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @message, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  store ptr @.str.15, ptr @message, align 4
  br label %54

15:                                               ; preds = %8
  tail call fastcc void @parse_header(ptr noundef %1) #24
  %16 = load i64, ptr @this_header, align 8
  %17 = load i32, ptr @name_len, align 4
  %18 = add i32 %17, 1
  %19 = and i32 %18, -4
  %20 = or i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = add i64 %16, %21
  %23 = load i32, ptr @body_len, align 4
  %24 = zext i32 %23 to i64
  %25 = add nuw nsw i64 %24, 3
  %26 = add i64 %25, %22
  %27 = and i64 %26, -4
  store i64 %27, ptr @next_header, align 8
  store i32 3, ptr @state, align 4
  %28 = add i32 %17, -4097
  %29 = icmp ult i32 %28, -4096
  br i1 %29, label %54, label %30

30:                                               ; preds = %15
  %31 = load i16, ptr @mode, align 2
  %32 = and i16 %31, -4096
  %33 = icmp eq i16 %32, -24576
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = icmp ugt i32 %23, 4096
  br i1 %35, label %54, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr @symlink_buf, align 4
  store ptr %37, ptr @collected, align 4
  store ptr %37, ptr @collect, align 4
  %38 = add i32 %20, %23
  store i32 %38, ptr @remains, align 4
  store i32 6, ptr @next_state, align 4
  store i32 1, ptr @state, align 4
  br label %54

39:                                               ; preds = %30
  %40 = icmp ne i16 %32, -32768
  %41 = icmp ne i32 %23, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr @byte_count, align 4
  %45 = icmp ult i32 %44, %20
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @victim, align 4
  store ptr %47, ptr @collected, align 4
  %48 = getelementptr i8, ptr %47, i32 %20
  store ptr %48, ptr @victim, align 4
  store i64 %22, ptr @this_header, align 8
  %49 = sub i32 %44, %20
  store i32 %49, ptr @byte_count, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load ptr, ptr @name_buf, align 4
  store ptr %51, ptr @collected, align 4
  store ptr %51, ptr @collect, align 4
  store i32 %20, ptr @remains, align 4
  store i32 4, ptr @next_state, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ 1, %50 ], [ 4, %46 ]
  store i32 %53, ptr @state, align 4
  br label %54

54:                                               ; preds = %52, %39, %36, %34, %15, %14, %11, %7, %4
  %55 = phi i32 [ 0, %36 ], [ 0, %15 ], [ 0, %34 ], [ 0, %39 ], [ 0, %52 ], [ 1, %4 ], [ 1, %7 ], [ 1, %11 ], [ 1, %14 ]
  ret i32 %55
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @do_skip() #0 section ".init.text" {
  %1 = load i64, ptr @this_header, align 8
  %2 = load i32, ptr @byte_count, align 4
  %3 = zext i32 %2 to i64
  %4 = add i64 %1, %3
  %5 = load i64, ptr @next_header, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @victim, align 4
  %9 = getelementptr i8, ptr %8, i32 %2
  store ptr %9, ptr @victim, align 4
  store i64 %4, ptr @this_header, align 8
  store i32 0, ptr @byte_count, align 4
  br label %19

10:                                               ; preds = %0
  %11 = sub i64 %5, %1
  %12 = trunc i64 %11 to i32
  %13 = load ptr, ptr @victim, align 4
  %14 = getelementptr i8, ptr %13, i32 %12
  store ptr %14, ptr @victim, align 4
  %15 = and i64 %11, 4294967295
  %16 = add i64 %15, %1
  store i64 %16, ptr @this_header, align 8
  %17 = sub i32 %2, %12
  store i32 %17, ptr @byte_count, align 4
  %18 = load i32, ptr @next_state, align 4
  store i32 %18, ptr @state, align 4
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i32 [ 1, %7 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @do_name() #2 section ".init.text" {
  %1 = alloca [2 x %struct.timespec64], align 8
  store i32 3, ptr @state, align 4
  store i32 7, ptr @next_state, align 4
  %2 = load ptr, ptr @collected, align 4
  %3 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(11) @.str.16)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call fastcc void @free_hash() #24
  br label %69

6:                                                ; preds = %0
  %7 = load i16, ptr @mode, align 2
  tail call fastcc void @clean_path(ptr noundef %2, i16 noundef zeroext %7) #24
  %8 = load i16, ptr @mode, align 2
  %9 = lshr i16 %8, 12
  %10 = trunc i16 %9 to i4
  %11 = xor i4 %10, -8
  switch i4 %11, label %69 [
    i4 0, label %12
    i4 -4, label %37
    i4 -2, label %49
    i4 -6, label %49
    i4 -7, label %49
    i4 4, label %49
  ]

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @maybe_link() #24
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %69

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 1
  %17 = select i1 %16, i32 65, i32 577
  %18 = load ptr, ptr @collected, align 4
  %19 = load i16, ptr @mode, align 2
  %20 = tail call ptr @filp_open(ptr noundef %18, i32 noundef %17, i16 noundef zeroext %19) #21
  store ptr %20, ptr @wfile, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %69, label %22

22:                                               ; preds = %15
  store i64 0, ptr @wfile_pos, align 8
  %23 = load i32, ptr @uid, align 4
  %24 = load i32, ptr @gid, align 4
  %25 = tail call i32 @vfs_fchown(ptr noundef %20, i32 noundef %23, i32 noundef %24) #21
  %26 = load ptr, ptr @wfile, align 4
  %27 = load i16, ptr @mode, align 2
  %28 = tail call i32 @vfs_fchmod(ptr noundef %26, i16 noundef zeroext %27) #21
  %29 = load i32, ptr @body_len, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr @wfile, align 4
  %33 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 1
  %34 = zext i32 %29 to i64
  %35 = tail call i32 @vfs_truncate(ptr noundef %33, i64 noundef %34) #21
  br label %36

36:                                               ; preds = %31, %22
  store i32 5, ptr @state, align 4
  br label %69

37:                                               ; preds = %6
  %38 = load ptr, ptr @collected, align 4
  %39 = tail call i32 @init_mkdir(ptr noundef %38, i16 noundef zeroext %8) #23
  %40 = load ptr, ptr @collected, align 4
  %41 = load i32, ptr @uid, align 4
  %42 = load i32, ptr @gid, align 4
  %43 = tail call i32 @init_chown(ptr noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef 0) #23
  %44 = load ptr, ptr @collected, align 4
  %45 = load i16, ptr @mode, align 2
  %46 = tail call i32 @init_chmod(ptr noundef %44, i16 noundef zeroext %45) #23
  %47 = load ptr, ptr @collected, align 4
  %48 = load i64, ptr @mtime, align 8
  tail call fastcc void @dir_add(ptr noundef %47, i64 noundef %48) #24
  br label %69

49:                                               ; preds = %6, %6, %6, %6
  %50 = tail call fastcc i32 @maybe_link() #24
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load ptr, ptr @collected, align 4
  %54 = load i16, ptr @mode, align 2
  %55 = load i32, ptr @rdev, align 4
  %56 = tail call i32 @init_mknod(ptr noundef %53, i16 noundef zeroext %54, i32 noundef %55) #23
  %57 = load ptr, ptr @collected, align 4
  %58 = load i32, ptr @uid, align 4
  %59 = load i32, ptr @gid, align 4
  %60 = tail call i32 @init_chown(ptr noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef 0) #23
  %61 = load ptr, ptr @collected, align 4
  %62 = load i16, ptr @mode, align 2
  %63 = tail call i32 @init_chmod(ptr noundef %61, i16 noundef zeroext %62) #23
  %64 = load ptr, ptr @collected, align 4
  %65 = load i64, ptr @mtime, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #21
  %66 = getelementptr inbounds i8, ptr %1, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %66, i8 0, i32 24, i1 false) #21, !annotation !11
  store i64 %65, ptr %1, align 8
  %67 = getelementptr inbounds [2 x %struct.timespec64], ptr %1, i32 0, i32 1
  store i64 %65, ptr %67, align 8
  %68 = call i32 @init_utimes(ptr noundef %64, ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #21
  br label %69

69:                                               ; preds = %52, %49, %37, %36, %15, %12, %6, %5
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @do_copy() #2 section ".init.text" {
  %1 = alloca [2 x %struct.timespec64], align 8
  %2 = load i32, ptr @byte_count, align 4
  %3 = load i32, ptr @body_len, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %31, label %5

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #21
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 24, i1 false)
  %7 = load ptr, ptr @wfile, align 4
  %8 = load ptr, ptr @victim, align 4
  %9 = tail call fastcc i32 @xwrite(ptr noundef %7, ptr noundef %8, i32 noundef %3, ptr noundef nonnull @wfile_pos) #24
  %10 = load i32, ptr @body_len, align 4
  %11 = icmp ne i32 %9, %10
  %12 = load ptr, ptr @message, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store ptr @.str.19, ptr @message, align 4
  br label %16

16:                                               ; preds = %15, %5
  %17 = load i64, ptr @mtime, align 8
  store i64 %17, ptr %1, align 8
  %18 = getelementptr inbounds [2 x %struct.timespec64], ptr %1, i32 0, i32 1
  store i64 %17, ptr %18, align 8
  %19 = load ptr, ptr @wfile, align 4
  %20 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 1
  %21 = call i32 @vfs_utimes(ptr noundef %20, ptr noundef nonnull %1) #21
  %22 = load ptr, ptr @wfile, align 4
  call void @fput(ptr noundef %22) #21
  %23 = load i32, ptr @body_len, align 4
  %24 = load ptr, ptr @victim, align 4
  %25 = getelementptr i8, ptr %24, i32 %23
  store ptr %25, ptr @victim, align 4
  %26 = zext i32 %23 to i64
  %27 = load i64, ptr @this_header, align 8
  %28 = add i64 %27, %26
  store i64 %28, ptr @this_header, align 8
  %29 = load i32, ptr @byte_count, align 4
  %30 = sub i32 %29, %23
  store i32 %30, ptr @byte_count, align 4
  store i32 3, ptr @state, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #21
  br label %49

31:                                               ; preds = %0
  %32 = load ptr, ptr @wfile, align 4
  %33 = load ptr, ptr @victim, align 4
  %34 = tail call fastcc i32 @xwrite(ptr noundef %32, ptr noundef %33, i32 noundef %2, ptr noundef nonnull @wfile_pos) #24
  %35 = load i32, ptr @byte_count, align 4
  %36 = icmp ne i32 %34, %35
  %37 = load ptr, ptr @message, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store ptr @.str.19, ptr @message, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, ptr @body_len, align 4
  %43 = sub i32 %42, %35
  store i32 %43, ptr @body_len, align 4
  %44 = load ptr, ptr @victim, align 4
  %45 = getelementptr i8, ptr %44, i32 %35
  store ptr %45, ptr @victim, align 4
  %46 = zext i32 %35 to i64
  %47 = load i64, ptr @this_header, align 8
  %48 = add i64 %47, %46
  store i64 %48, ptr @this_header, align 8
  store i32 0, ptr @byte_count, align 4
  br label %49

49:                                               ; preds = %41, %16
  %50 = phi i32 [ 0, %16 ], [ 1, %41 ]
  ret i32 %50
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @do_symlink() #2 section ".init.text" {
  %1 = alloca [2 x %struct.timespec64], align 8
  %2 = load ptr, ptr @collected, align 4
  %3 = load i32, ptr @name_len, align 4
  %4 = add i32 %3, 1
  %5 = and i32 %4, -4
  %6 = load i32, ptr @body_len, align 4
  %7 = add i32 %6, 2
  %8 = add i32 %7, %5
  %9 = getelementptr i8, ptr %2, i32 %8
  store i8 0, ptr %9, align 1
  tail call fastcc void @clean_path(ptr noundef %2, i16 noundef zeroext 0) #24
  %10 = load ptr, ptr @collected, align 4
  %11 = load i32, ptr @name_len, align 4
  %12 = add i32 %11, 1
  %13 = and i32 %12, -4
  %14 = or i32 %13, 2
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = tail call i32 @init_symlink(ptr noundef %15, ptr noundef %10) #23
  %17 = load ptr, ptr @collected, align 4
  %18 = load i32, ptr @uid, align 4
  %19 = load i32, ptr @gid, align 4
  %20 = tail call i32 @init_chown(ptr noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef 256) #23
  %21 = load ptr, ptr @collected, align 4
  %22 = load i64, ptr @mtime, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #21
  %23 = getelementptr inbounds i8, ptr %1, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i32 24, i1 false) #21, !annotation !11
  store i64 %22, ptr %1, align 8
  %24 = getelementptr inbounds [2 x %struct.timespec64], ptr %1, i32 0, i32 1
  store i64 %22, ptr %24, align 8
  %25 = call i32 @init_utimes(ptr noundef %21, ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #21
  store i32 3, ptr @state, align 4
  store i32 7, ptr @next_state, align 4
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @do_reset() #12 section ".init.text" {
  %1 = load i32, ptr @byte_count, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %24, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @this_header, align 8
  %5 = load ptr, ptr @victim, align 4
  br label %6

6:                                                ; preds = %12, %3
  %7 = phi i32 [ %15, %12 ], [ %1, %3 ]
  %8 = phi ptr [ %13, %12 ], [ %5, %3 ]
  %9 = phi i64 [ %14, %12 ], [ %4, %3 ]
  %10 = load i8, ptr %8, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %8, i32 1
  store ptr %13, ptr @victim, align 4
  %14 = add i64 %9, 1
  store i64 %14, ptr @this_header, align 8
  %15 = add i32 %7, -1
  store i32 %15, ptr @byte_count, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %6

17:                                               ; preds = %6
  %18 = and i64 %9, 3
  %19 = icmp ne i64 %18, 0
  %20 = load ptr, ptr @message, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store ptr @.str.20, ptr @message, align 4
  br label %24

24:                                               ; preds = %23, %17, %12, %0
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @parse_header(ptr nocapture noundef readonly %0) unnamed_addr #2 section ".init.text" {
  %2 = alloca [12 x i32], align 4
  %3 = alloca [9 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %2, i8 0, i32 48, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3) #21
  %4 = getelementptr i8, ptr %0, i32 6
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  store i8 0, ptr %5, align 8
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi i32 [ 0, %1 ], [ %12, %6 ]
  %8 = phi ptr [ %4, %1 ], [ %13, %6 ]
  %9 = load i64, ptr %8, align 1
  store i64 %9, ptr %3, align 8
  %10 = call i32 @simple_strtoul(ptr noundef nonnull %3, ptr noundef null, i32 noundef 16) #21
  %11 = getelementptr [12 x i32], ptr %2, i32 0, i32 %7
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i32 %7, 1
  %13 = getelementptr i8, ptr %8, i32 8
  %14 = icmp eq i32 %12, 12
  br i1 %14, label %15, label %6

15:                                               ; preds = %6
  %16 = load i32, ptr %2, align 4
  store i32 %16, ptr @ino, align 4
  %17 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr @mode, align 2
  %20 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr @uid, align 4
  %22 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr @gid, align 4
  %24 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr @nlink, align 4
  %26 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  store i64 %28, ptr @mtime, align 8
  %29 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr @body_len, align 4
  %31 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr @major, align 4
  %33 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr @minor, align 4
  %35 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 20
  %38 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %37, %39
  %41 = and i32 %39, 255
  %42 = lshr i32 %40, 12
  %43 = and i32 %42, 1048320
  %44 = shl i32 %39, 12
  %45 = and i32 %44, -1048576
  %46 = or i32 %45, %41
  %47 = or i32 %46, %43
  store i32 %47, ptr @rdev, align 4
  %48 = getelementptr inbounds [12 x i32], ptr %2, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr @name_len, align 4
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #21
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @free_hash() unnamed_addr #2 section ".init.text" {
  br label %1

1:                                                ; preds = %11, %0
  %2 = phi ptr [ @head, %0 ], [ %12, %11 ]
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.hash, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  tail call void @kfree(ptr noundef nonnull %6) #21
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5

11:                                               ; preds = %5, %1
  %12 = getelementptr ptr, ptr %2, i32 1
  %13 = icmp ult ptr %12, getelementptr inbounds ([32 x ptr], ptr @head, i32 1, i32 0)
  br i1 %13, label %1, label %14

14:                                               ; preds = %11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @clean_path(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #2 section ".init.text" {
  %3 = alloca %struct.kstat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i32 144, i1 false), !annotation !11
  %4 = call i32 @init_stat(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 256) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = xor i16 %8, %1
  %10 = icmp ult i16 %9, 4096
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = and i16 %8, -4096
  %13 = icmp eq i16 %12, 16384
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @init_rmdir(ptr noundef %0) #23
  br label %18

16:                                               ; preds = %11
  %17 = call i32 @init_unlink(ptr noundef %0) #23
  br label %18

18:                                               ; preds = %16, %14, %6, %2
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @maybe_link() unnamed_addr #2 section ".init.text" {
  %1 = load i32, ptr @nlink, align 4
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load i32, ptr @major, align 4
  %5 = load i32, ptr @minor, align 4
  %6 = load i32, ptr @ino, align 4
  %7 = load i16, ptr @mode, align 2
  %8 = load ptr, ptr @collected, align 4
  %9 = tail call fastcc ptr @find_link(i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef zeroext %7, ptr noundef %8) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @collected, align 4
  tail call fastcc void @clean_path(ptr noundef %12, i16 noundef zeroext 0) #24
  %13 = load ptr, ptr @collected, align 4
  %14 = tail call i32 @init_link(ptr noundef nonnull %9, ptr noundef %13) #23
  %15 = icmp sgt i32 %14, -1
  %16 = select i1 %15, i32 1, i32 -1
  br label %17

17:                                               ; preds = %11, %3, %0
  %18 = phi i32 [ %16, %11 ], [ 0, %0 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fchown(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fchmod(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_truncate(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mkdir(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chown(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chmod(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @dir_add(ptr noundef %0, i64 noundef %1) unnamed_addr #2 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 24) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void (ptr, ...) @panic_show_mem(ptr noundef nonnull @.str.18)
  unreachable

7:                                                ; preds = %2
  store volatile ptr %4, ptr %4, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %8, align 4
  %9 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #21
  %10 = getelementptr inbounds %struct.dir_entry, ptr %4, i32 0, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.dir_entry, ptr %4, i32 0, i32 2
  store i64 %1, ptr %11, align 8
  %12 = load ptr, ptr @dir_list, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %4, ptr %13, align 4
  store ptr %12, ptr %4, align 8
  store ptr @dir_list, ptr %8, align 4
  store volatile ptr %4, ptr @dir_list, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_stat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_rmdir(ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_unlink(ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @find_link(i32 noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr nocapture noundef readonly %4) unnamed_addr #2 section ".init.text" {
  %6 = shl i32 %0, 3
  %7 = add i32 %6, %1
  %8 = add i32 %7, %2
  %9 = lshr i32 %8, 5
  %10 = add i32 %9, %8
  %11 = and i32 %10, 31
  %12 = getelementptr ptr, ptr @head, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %34, %5
  %16 = phi ptr [ %36, %34 ], [ %13, %5 ]
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hash, ptr %16, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hash, ptr %16, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hash, ptr %16, i32 0, i32 3
  %29 = load i16, ptr %28, align 4
  %30 = xor i16 %29, %3
  %31 = icmp ult i16 %30, 4096
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.hash, ptr %16, i32 0, i32 5
  br label %53

34:                                               ; preds = %27, %23, %19, %15
  %35 = getelementptr inbounds %struct.hash, ptr %16, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %15

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.hash, ptr %16, i32 0, i32 4
  br label %40

40:                                               ; preds = %38, %5
  %41 = phi ptr [ %12, %5 ], [ %39, %38 ]
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 4120) #25
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void (ptr, ...) @panic_show_mem(ptr noundef nonnull @.str.17)
  unreachable

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.hash, ptr %43, i32 0, i32 2
  store i32 %0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.hash, ptr %43, i32 0, i32 1
  store i32 %1, ptr %48, align 4
  store i32 %2, ptr %43, align 8
  %49 = getelementptr inbounds %struct.hash, ptr %43, i32 0, i32 3
  store i16 %3, ptr %49, align 4
  %50 = getelementptr inbounds %struct.hash, ptr %43, i32 0, i32 5
  %51 = tail call ptr @strcpy(ptr noundef %50, ptr noundef %4)
  %52 = getelementptr inbounds %struct.hash, ptr %43, i32 0, i32 4
  store ptr null, ptr %52, align 8
  store ptr %43, ptr %41, align 4
  br label %53

53:                                               ; preds = %46, %32
  %54 = phi ptr [ %33, %32 ], [ null, %46 ]
  ret ptr %54
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_link(ptr noundef, ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_utimes(ptr noundef, ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @xwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 section ".init.text" {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %22, %4
  %7 = phi i32 [ %25, %22 ], [ 0, %4 ]
  %8 = phi i32 [ %24, %22 ], [ %2, %4 ]
  %9 = phi ptr [ %23, %22 ], [ %1, %4 ]
  %10 = tail call i32 @kernel_write(ptr noundef %0, ptr noundef %9, i32 noundef %8, ptr noundef %3) #21
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  switch i32 %10, label %13 [
    i32 -4, label %22
    i32 -11, label %22
  ]

13:                                               ; preds = %12
  %14 = icmp eq i32 %7, 0
  %15 = select i1 %14, i32 %10, i32 %7
  br label %27

16:                                               ; preds = %6
  %17 = icmp eq i32 %10, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %9, i32 %10
  %20 = add i32 %10, %7
  %21 = sub i32 %8, %10
  br label %22

22:                                               ; preds = %18, %12, %12
  %23 = phi ptr [ %19, %18 ], [ %9, %12 ], [ %9, %12 ]
  %24 = phi i32 [ %21, %18 ], [ %8, %12 ], [ %8, %12 ]
  %25 = phi i32 [ %20, %18 ], [ %7, %12 ], [ %7, %12 ]
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %27, label %6

27:                                               ; preds = %22, %16, %13, %4
  %28 = phi i32 [ %15, %13 ], [ 0, %4 ], [ %7, %16 ], [ %25, %22 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_utimes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_symlink(ptr noundef, ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @__usermodehelper_set_disable_depth(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #20

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { cold nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { cold noreturn nounwind }

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
!8 = !{i64 2148790122, i64 2148790145, i64 2148790177, i64 2148790209, i64 2148790247, i64 2148790277}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
