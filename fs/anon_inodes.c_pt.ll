; ModuleID = '/llk/IR/fs/anon_inodes.c_pt.bc'
source_filename = "../fs/anon_inodes.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anon_inode_getfile:\09\09\09\09\09"
module asm "\09.asciz \09\22anon_inode_getfile\22\09\09\09\09\09"
module asm "__kstrtabns_anon_inode_getfile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anon_inode_getfd:\09\09\09\09\09"
module asm "\09.asciz \09\22anon_inode_getfd\22\09\09\09\09\09"
module asm "__kstrtabns_anon_inode_getfd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anon_inode_getfd_secure:\09\09\09\09\09"
module asm "\09.asciz \09\22anon_inode_getfd_secure\22\09\09\09\09\09"
module asm "__kstrtabns_anon_inode_getfd_secure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.61 = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.62 }
%union.anon.62 = type { i64 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }

@__kstrtab_anon_inode_getfile = external dso_local constant [0 x i8], align 1
@__kstrtabns_anon_inode_getfile = external dso_local constant [0 x i8], align 1
@__ksymtab_anon_inode_getfile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anon_inode_getfile to i32), ptr @__kstrtab_anon_inode_getfile, ptr @__kstrtabns_anon_inode_getfile }, section "___ksymtab_gpl+anon_inode_getfile", align 4
@__kstrtab_anon_inode_getfd = external dso_local constant [0 x i8], align 1
@__kstrtabns_anon_inode_getfd = external dso_local constant [0 x i8], align 1
@__ksymtab_anon_inode_getfd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anon_inode_getfd to i32), ptr @__kstrtab_anon_inode_getfd, ptr @__kstrtabns_anon_inode_getfd }, section "___ksymtab_gpl+anon_inode_getfd", align 4
@__kstrtab_anon_inode_getfd_secure = external dso_local constant [0 x i8], align 1
@__kstrtabns_anon_inode_getfd_secure = external dso_local constant [0 x i8], align 1
@__ksymtab_anon_inode_getfd_secure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anon_inode_getfd_secure to i32), ptr @__kstrtab_anon_inode_getfd_secure, ptr @__kstrtabns_anon_inode_getfd_secure }, section "___ksymtab_gpl+anon_inode_getfd_secure", align 4
@__initcall__kmod_anon_inodes__220_270_anon_inode_init5 = internal global ptr @anon_inode_init, section ".initcall5.init", align 4
@anon_inode_inode = internal unnamed_addr global ptr null, align 4
@anon_inode_mnt = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@anon_inode_fs_type = internal global %struct.file_system_type { ptr @.str.2, i32 0, ptr @anon_inodefs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str = private unnamed_addr constant [45 x i8] c"anon_inode_init() kernel mount failed (%ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"anon_inode_init() inode allocation failed (%ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"anon_inodefs\00", align 1
@anon_inodefs_dentry_operations = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anon_inodefs_dname, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@.str.3 = private unnamed_addr constant [14 x i8] c"anon_inode:%s\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_anon_inodes__220_270_anon_inode_init5, ptr @__ksymtab_anon_inode_getfd, ptr @__ksymtab_anon_inode_getfd_secure, ptr @__ksymtab_anon_inode_getfile], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @anon_inode_getfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %5) #4
  br i1 %8, label %9, label %26

9:                                                ; preds = %7, %4
  %10 = load ptr, ptr @anon_inode_inode, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  tail call void @ihold(ptr noundef %10) #4
  %13 = load ptr, ptr @anon_inode_mnt, align 4
  %14 = and i32 %3, 2051
  %15 = tail call ptr @alloc_file_pseudo(ptr noundef %10, ptr noundef %13, ptr noundef %0, i32 noundef %14, ptr noundef %1) #4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 17
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 15
  store ptr %2, ptr %21, align 8
  br label %26

22:                                               ; preds = %12
  tail call void @iput(ptr noundef %10) #4
  br label %23

23:                                               ; preds = %22, %9
  %24 = phi ptr [ %15, %22 ], [ inttoptr (i32 -19 to ptr), %9 ]
  %25 = load ptr, ptr %1, align 4
  tail call void @module_put(ptr noundef %25) #4
  br label %26

26:                                               ; preds = %23, %17, %7
  %27 = phi ptr [ %24, %23 ], [ %15, %17 ], [ inttoptr (i32 -2 to ptr), %7 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__anon_inode_getfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %6) #4
  br i1 %9, label %10, label %40

10:                                               ; preds = %8, %5
  br i1 %4, label %11, label %21

11:                                               ; preds = %10
  %12 = load ptr, ptr @anon_inode_mnt, align 4
  %13 = getelementptr inbounds %struct.vfsmount, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @alloc_anon_inode(ptr noundef %14) #4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %37, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -513
  store i32 %20, ptr %18, align 4
  br label %25

21:                                               ; preds = %10
  %22 = load ptr, ptr @anon_inode_inode, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  tail call void @ihold(ptr noundef %22) #4
  br label %25

25:                                               ; preds = %24, %17
  %26 = phi ptr [ %15, %17 ], [ %22, %24 ]
  %27 = load ptr, ptr @anon_inode_mnt, align 4
  %28 = and i32 %3, 2051
  %29 = tail call ptr @alloc_file_pseudo(ptr noundef %26, ptr noundef %27, ptr noundef %0, i32 noundef %28, ptr noundef %1) #4
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 9
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 17
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 15
  store ptr %2, ptr %35, align 8
  br label %40

36:                                               ; preds = %25
  tail call void @iput(ptr noundef %26) #4
  br label %37

37:                                               ; preds = %36, %21, %11
  %38 = phi ptr [ %29, %36 ], [ %15, %11 ], [ inttoptr (i32 -19 to ptr), %21 ]
  %39 = load ptr, ptr %1, align 4
  tail call void @module_put(ptr noundef %39) #4
  br label %40

40:                                               ; preds = %37, %31, %8
  %41 = phi ptr [ %38, %37 ], [ %29, %31 ], [ inttoptr (i32 -2 to ptr), %8 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @anon_inode_getfile_secure(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @__anon_inode_getfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @anon_inode_getfd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @get_unused_fd_flags(i32 noundef %3) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %8) #4
  br i1 %11, label %12, label %32

12:                                               ; preds = %10, %7
  %13 = load ptr, ptr @anon_inode_inode, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  tail call void @ihold(ptr noundef %13) #4
  %16 = load ptr, ptr @anon_inode_mnt, align 4
  %17 = and i32 %3, 2051
  %18 = tail call ptr @alloc_file_pseudo(ptr noundef %13, ptr noundef %16, ptr noundef %0, i32 noundef %17, ptr noundef %1) #4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 17
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 15
  store ptr %2, ptr %24, align 8
  br label %29

25:                                               ; preds = %15
  tail call void @iput(ptr noundef %13) #4
  br label %26

26:                                               ; preds = %25, %12
  %27 = phi ptr [ %18, %25 ], [ inttoptr (i32 -19 to ptr), %12 ]
  %28 = load ptr, ptr %1, align 4
  tail call void @module_put(ptr noundef %28) #4
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %27, %26 ], [ %18, %20 ]
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %10
  %33 = phi ptr [ %30, %29 ], [ inttoptr (i32 -2 to ptr), %10 ]
  %34 = ptrtoint ptr %33 to i32
  tail call void @put_unused_fd(i32 noundef %5) #4
  br label %36

35:                                               ; preds = %29
  tail call void @fd_install(i32 noundef %5, ptr noundef %30) #4
  br label %36

36:                                               ; preds = %35, %32, %4
  %37 = phi i32 [ %34, %32 ], [ %5, %35 ], [ %5, %4 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @anon_inode_getfd_secure(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture readnone %4) #0 {
  %6 = tail call i32 @get_unused_fd_flags(i32 noundef %3) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @__anon_inode_getfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true) #4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  tail call void @put_unused_fd(i32 noundef %6) #4
  br label %14

13:                                               ; preds = %8
  tail call void @fd_install(i32 noundef %6, ptr noundef %9) #4
  br label %14

14:                                               ; preds = %13, %11, %5
  %15 = phi i32 [ %12, %11 ], [ %6, %13 ], [ %6, %5 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @anon_inode_init() #1 section ".init.text" {
  %1 = tail call ptr @kern_mount(ptr noundef nonnull @anon_inode_fs_type) #4
  store ptr %1, ptr @anon_inode_mnt, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, i32 noundef %4) #5
  unreachable

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @alloc_anon_inode(ptr noundef %7) #4
  store ptr %8, ptr @anon_inode_inode, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %8 to i32
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, i32 noundef %11) #5
  unreachable

12:                                               ; preds = %5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anon_inodefs_init_fs_context(ptr noundef %0) #0 {
  %2 = tail call ptr @init_pseudo(ptr noundef %0, i32 noundef 151263540) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pseudo_fs_context, ptr %2, i32 0, i32 2
  store ptr @anon_inodefs_dentry_operations, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @anon_inodefs_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr (ptr, ptr, i32, ptr, ...) @dynamic_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.3, ptr noundef %5) #4
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dynamic_dname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold noreturn nounwind }

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
