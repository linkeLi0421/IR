; ModuleID = '/llk/IR/fs/char_dev.c_pt.bc'
source_filename = "../fs/char_dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_chrdev_region:\09\09\09\09\09"
module asm "\09.asciz \09\22register_chrdev_region\22\09\09\09\09\09"
module asm "__kstrtabns_register_chrdev_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_chrdev_region:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_chrdev_region\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_chrdev_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_chrdev_region:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_chrdev_region\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_chrdev_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cdev_init\22\09\09\09\09\09"
module asm "__kstrtabns_cdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdev_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22cdev_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_cdev_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdev_del:\09\09\09\09\09"
module asm "\09.asciz \09\22cdev_del\22\09\09\09\09\09"
module asm "__kstrtabns_cdev_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdev_add:\09\09\09\09\09"
module asm "\09.asciz \09\22cdev_add\22\09\09\09\09\09"
module asm "__kstrtabns_cdev_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdev_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22cdev_set_parent\22\09\09\09\09\09"
module asm "__kstrtabns_cdev_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdev_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22cdev_device_add\22\09\09\09\09\09"
module asm "__kstrtabns_cdev_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdev_device_del:\09\09\09\09\09"
module asm "\09.asciz \09\22cdev_device_del\22\09\09\09\09\09"
module asm "__kstrtabns_cdev_device_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___register_chrdev:\09\09\09\09\09"
module asm "\09.asciz \09\22__register_chrdev\22\09\09\09\09\09"
module asm "__kstrtabns___register_chrdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___unregister_chrdev:\09\09\09\09\09"
module asm "\09.asciz \09\22__unregister_chrdev\22\09\09\09\09\09"
module asm "__kstrtabns___unregister_chrdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.char_device_struct = type { ptr, i32, i32, i32, [64 x i8], ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@chrdevs_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @chrdevs_lock, i64 12), ptr getelementptr (i8, ptr @chrdevs_lock, i64 12) } }, align 4
@chrdevs = internal unnamed_addr global [255 x ptr] zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%3d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cdev_lock = internal global %struct.spinlock zeroinitializer, align 4
@def_chr_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @chrdev_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"fs/char_dev.c\00", align 1
@cdev_map = internal unnamed_addr global ptr null, align 4
@ktype_cdev_dynamic = internal global %struct.kobj_type { ptr @cdev_dynamic_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ktype_cdev_default = internal global %struct.kobj_type { ptr @cdev_default_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_register_chrdev_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_chrdev_region = external dso_local constant [0 x i8], align 1
@__ksymtab_register_chrdev_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_chrdev_region to i32), ptr @__kstrtab_register_chrdev_region, ptr @__kstrtabns_register_chrdev_region }, section "___ksymtab+register_chrdev_region", align 4
@__kstrtab_unregister_chrdev_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_chrdev_region = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_chrdev_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_chrdev_region to i32), ptr @__kstrtab_unregister_chrdev_region, ptr @__kstrtabns_unregister_chrdev_region }, section "___ksymtab+unregister_chrdev_region", align 4
@__kstrtab_alloc_chrdev_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_chrdev_region = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_chrdev_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_chrdev_region to i32), ptr @__kstrtab_alloc_chrdev_region, ptr @__kstrtabns_alloc_chrdev_region }, section "___ksymtab+alloc_chrdev_region", align 4
@__kstrtab_cdev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cdev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdev_init to i32), ptr @__kstrtab_cdev_init, ptr @__kstrtabns_cdev_init }, section "___ksymtab+cdev_init", align 4
@__kstrtab_cdev_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdev_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_cdev_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdev_alloc to i32), ptr @__kstrtab_cdev_alloc, ptr @__kstrtabns_cdev_alloc }, section "___ksymtab+cdev_alloc", align 4
@__kstrtab_cdev_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdev_del = external dso_local constant [0 x i8], align 1
@__ksymtab_cdev_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdev_del to i32), ptr @__kstrtab_cdev_del, ptr @__kstrtabns_cdev_del }, section "___ksymtab+cdev_del", align 4
@__kstrtab_cdev_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdev_add = external dso_local constant [0 x i8], align 1
@__ksymtab_cdev_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdev_add to i32), ptr @__kstrtab_cdev_add, ptr @__kstrtabns_cdev_add }, section "___ksymtab+cdev_add", align 4
@__kstrtab_cdev_set_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdev_set_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_cdev_set_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdev_set_parent to i32), ptr @__kstrtab_cdev_set_parent, ptr @__kstrtabns_cdev_set_parent }, section "___ksymtab+cdev_set_parent", align 4
@__kstrtab_cdev_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdev_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab_cdev_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdev_device_add to i32), ptr @__kstrtab_cdev_device_add, ptr @__kstrtabns_cdev_device_add }, section "___ksymtab+cdev_device_add", align 4
@__kstrtab_cdev_device_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdev_device_del = external dso_local constant [0 x i8], align 1
@__ksymtab_cdev_device_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdev_device_del to i32), ptr @__kstrtab_cdev_device_del, ptr @__kstrtabns_cdev_device_del }, section "___ksymtab+cdev_device_del", align 4
@__kstrtab___register_chrdev = external dso_local constant [0 x i8], align 1
@__kstrtabns___register_chrdev = external dso_local constant [0 x i8], align 1
@__ksymtab___register_chrdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__register_chrdev to i32), ptr @__kstrtab___register_chrdev, ptr @__kstrtabns___register_chrdev }, section "___ksymtab+__register_chrdev", align 4
@__kstrtab___unregister_chrdev = external dso_local constant [0 x i8], align 1
@__kstrtabns___unregister_chrdev = external dso_local constant [0 x i8], align 1
@__ksymtab___unregister_chrdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__unregister_chrdev to i32), ptr @__kstrtab___unregister_chrdev, ptr @__kstrtabns___unregister_chrdev }, section "___ksymtab+__unregister_chrdev", align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"\013CHRDEV \22%s\22 major requested (%u) is greater than the maximum (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"\013CHRDEV \22%s\22 minor range requested (%u-%u) is out of range of maximum range (%u-%u) for a single major\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\013CHRDEV \22%s\22 dynamic allocation region is full\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"char-major-%d-%d\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"char-major-%d\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___register_chrdev, ptr @__ksymtab___unregister_chrdev, ptr @__ksymtab_alloc_chrdev_region, ptr @__ksymtab_cdev_add, ptr @__ksymtab_cdev_alloc, ptr @__ksymtab_cdev_del, ptr @__ksymtab_cdev_device_add, ptr @__ksymtab_cdev_device_del, ptr @__ksymtab_cdev_init, ptr @__ksymtab_cdev_set_parent, ptr @__ksymtab_register_chrdev_region, ptr @__ksymtab_unregister_chrdev_region], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @chrdev_show(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #10
  %3 = urem i32 %1, 255
  %4 = getelementptr [255 x ptr], ptr @chrdevs, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %14, %2
  %8 = phi ptr [ %15, %14 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.char_device_struct, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.char_device_struct, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1, ptr noundef %13) #10
  br label %14

14:                                               ; preds = %12, %7
  %15 = load ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7

17:                                               ; preds = %14, %2
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_chrdev_region(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = add i32 %1, %0
  br label %5

5:                                                ; preds = %8, %3
  %6 = phi i32 [ %0, %3 ], [ %12, %8 ]
  %7 = icmp ult i32 %6, %4
  br i1 %7, label %8, label %56

8:                                                ; preds = %5
  %9 = lshr i32 %6, 20
  %10 = add i32 %6, 1048576
  %11 = and i32 %10, -1048576
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %4)
  %13 = and i32 %6, 1048575
  %14 = sub i32 %12, %6
  %15 = tail call fastcc ptr @__register_chrdev_region(i32 noundef %9, i32 noundef %13, i32 noundef %14, ptr noundef %2)
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %5

17:                                               ; preds = %8
  %18 = icmp ugt i32 %6, %0
  br i1 %18, label %19, label %54

19:                                               ; preds = %51, %17
  %20 = phi i32 [ %23, %51 ], [ %0, %17 ]
  %21 = lshr i32 %20, 20
  %22 = add i32 %20, 1048576
  %23 = and i32 %22, -1048576
  %24 = and i32 %20, 1048575
  %25 = sub i32 %23, %20
  %26 = trunc i32 %21 to i16
  %27 = urem i16 %26, 255
  %28 = zext i16 %27 to i32
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #10
  %29 = getelementptr [255 x ptr], ptr @chrdevs, i32 0, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %46, %19
  %33 = phi ptr [ %47, %46 ], [ %30, %19 ]
  %34 = phi ptr [ %33, %46 ], [ %29, %19 ]
  %35 = getelementptr inbounds %struct.char_device_struct, ptr %33, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %21
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.char_device_struct, ptr %33, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %24
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.char_device_struct, ptr %33, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %25
  br i1 %45, label %49, label %46

46:                                               ; preds = %42, %38, %32
  %47 = load ptr, ptr %33, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %32

49:                                               ; preds = %42
  %50 = load ptr, ptr %33, align 4
  store ptr %50, ptr %34, align 4
  br label %51

51:                                               ; preds = %49, %46, %19
  %52 = phi ptr [ %33, %49 ], [ null, %19 ], [ null, %46 ]
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #10
  tail call void @kfree(ptr noundef %52) #10
  %53 = icmp ult i32 %23, %6
  br i1 %53, label %19, label %54

54:                                               ; preds = %51, %17
  %55 = ptrtoint ptr %15 to i32
  br label %56

56:                                               ; preds = %54, %5
  %57 = phi i32 [ %55, %54 ], [ 0, %5 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__register_chrdev_region(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp ugt i32 %0, 511
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %3, i32 noundef %0, i32 noundef 511) #11
  br label %148

8:                                                ; preds = %4
  %9 = sub i32 1048576, %1
  %10 = icmp ult i32 %9, %2
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = add i32 %2, %1
  %13 = add i32 %12, -1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %3, i32 noundef %1, i32 noundef %13, i32 noundef 0, i32 noundef 1048575) #11
  br label %148

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 84) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %148, label %19

19:                                               ; preds = %15
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #10
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %21, label %104

21:                                               ; preds = %19
  %22 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 254), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %104, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 253), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %104, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 252), align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %104, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 251), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 250), align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %104, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 249), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %104, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 248), align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %104, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 247), align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %104, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 246), align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %104, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 245), align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %104, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 244), align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %104, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 243), align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %104, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 242), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %104, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 241), align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %104, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 240), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %104, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 239), align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %104, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 238), align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %104, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 237), align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %104, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 236), align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %104, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 235), align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %104, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr getelementptr inbounds ([255 x ptr], ptr @chrdevs, i32 0, i32 234), align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %104, label %84

84:                                               ; preds = %96, %81
  %85 = phi i32 [ %97, %96 ], [ 511, %81 ]
  %86 = urem i32 %85, 255
  %87 = getelementptr [255 x ptr], ptr @chrdevs, i32 0, i32 %86
  br label %88

88:                                               ; preds = %92, %84
  %89 = phi ptr [ %87, %84 ], [ %90, %92 ]
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.char_device_struct, ptr %90, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, %85
  br i1 %95, label %96, label %88

96:                                               ; preds = %92
  %97 = add nsw i32 %85, -1
  %98 = icmp ugt i32 %97, 383
  br i1 %98, label %84, label %101

99:                                               ; preds = %88
  %100 = icmp slt i32 %85, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %99, %96
  %102 = phi i32 [ %85, %99 ], [ -16, %96 ]
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %3) #11
  br label %145

104:                                              ; preds = %99, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %19
  %105 = phi i32 [ %0, %19 ], [ %85, %99 ], [ 234, %81 ], [ 235, %78 ], [ 236, %75 ], [ 237, %72 ], [ 238, %69 ], [ 239, %66 ], [ 240, %63 ], [ 241, %60 ], [ 242, %57 ], [ 243, %54 ], [ 244, %51 ], [ 245, %48 ], [ 246, %45 ], [ 247, %42 ], [ 248, %39 ], [ 249, %36 ], [ 250, %33 ], [ 251, %30 ], [ 252, %27 ], [ 253, %24 ], [ 254, %21 ]
  %106 = urem i32 %105, 255
  %107 = getelementptr [255 x ptr], ptr @chrdevs, i32 0, i32 %106
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %131, label %110

110:                                              ; preds = %128, %104
  %111 = phi ptr [ %129, %128 ], [ %108, %104 ]
  %112 = phi ptr [ %111, %128 ], [ null, %104 ]
  %113 = getelementptr inbounds %struct.char_device_struct, ptr %111, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = icmp ult i32 %114, %105
  br i1 %115, label %128, label %116

116:                                              ; preds = %110
  %117 = icmp ugt i32 %114, %105
  br i1 %117, label %131, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.char_device_struct, ptr %111, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.char_device_struct, ptr %111, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, %120
  %124 = icmp ugt i32 %123, %1
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = add i32 %2, %1
  %127 = icmp ult i32 %120, %126
  br i1 %127, label %145, label %131

128:                                              ; preds = %118, %110
  %129 = load ptr, ptr %111, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %110

131:                                              ; preds = %128, %125, %116, %104
  %132 = phi ptr [ %112, %125 ], [ null, %104 ], [ %111, %128 ], [ %112, %116 ]
  %133 = phi ptr [ %111, %125 ], [ null, %104 ], [ null, %128 ], [ %111, %116 ]
  %134 = getelementptr inbounds %struct.char_device_struct, ptr %17, i32 0, i32 1
  store i32 %105, ptr %134, align 4
  %135 = getelementptr inbounds %struct.char_device_struct, ptr %17, i32 0, i32 2
  store i32 %1, ptr %135, align 8
  %136 = getelementptr inbounds %struct.char_device_struct, ptr %17, i32 0, i32 3
  store i32 %2, ptr %136, align 4
  %137 = getelementptr inbounds %struct.char_device_struct, ptr %17, i32 0, i32 4
  %138 = tail call i32 @strlcpy(ptr noundef %137, ptr noundef %3, i32 noundef 64) #10
  %139 = icmp eq ptr %132, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %131
  %141 = load ptr, ptr %132, align 4
  br label %142

142:                                              ; preds = %140, %131
  %143 = phi ptr [ %141, %140 ], [ %133, %131 ]
  %144 = phi ptr [ %132, %140 ], [ %107, %131 ]
  store ptr %143, ptr %17, align 8
  store ptr %17, ptr %144, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #10
  br label %148

145:                                              ; preds = %125, %101
  %146 = phi i32 [ %102, %101 ], [ -16, %125 ]
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #10
  tail call void @kfree(ptr noundef nonnull %17) #10
  %147 = inttoptr i32 %146 to ptr
  br label %148

148:                                              ; preds = %145, %142, %15, %11, %6
  %149 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %11 ], [ %147, %145 ], [ %17, %142 ], [ inttoptr (i32 -12 to ptr), %15 ]
  ret ptr %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @alloc_chrdev_region(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call fastcc ptr @__register_chrdev_region(i32 noundef 0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.char_device_struct, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 20
  %13 = getelementptr inbounds %struct.char_device_struct, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %12, %14
  store i32 %15, ptr %0, align 4
  br label %16

16:                                               ; preds = %9, %7
  %17 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__register_chrdev(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call fastcc ptr @__register_chrdev_region(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %72

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 60) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cdev, ptr %12, i32 0, i32 3
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cdev, ptr %12, i32 0, i32 3, i32 1
  store ptr %15, ptr %16, align 8
  tail call void @kobject_init(ptr noundef nonnull %12, ptr noundef nonnull @ktype_cdev_dynamic) #10
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.cdev, ptr %12, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.cdev, ptr %12, i32 0, i32 2
  store ptr %4, ptr %19, align 8
  %20 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef nonnull %12, ptr noundef nonnull @.str.1, ptr noundef %3) #10
  %21 = getelementptr inbounds %struct.char_device_struct, ptr %6, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 20
  %24 = or i32 %23, %1
  %25 = getelementptr inbounds %struct.cdev, ptr %12, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cdev, ptr %12, i32 0, i32 5
  store i32 %2, ptr %26, align 8
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 486, i32 noundef 9, ptr noundef null) #10
  br label %41

29:                                               ; preds = %14
  %30 = load ptr, ptr @cdev_map, align 4
  %31 = tail call i32 @kobj_map(ptr noundef %30, i32 noundef %24, i32 noundef %2, ptr noundef null, ptr noundef nonnull @exact_match, ptr noundef nonnull @exact_lock, ptr noundef nonnull %12) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.kobject, ptr %12, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call ptr @kobject_get(ptr noundef %35) #10
  %37 = getelementptr inbounds %struct.char_device_struct, ptr %6, i32 0, i32 5
  store ptr %12, ptr %37, align 4
  %38 = icmp eq i32 %0, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %33
  %40 = load i32, ptr %21, align 4
  br label %72

41:                                               ; preds = %29, %28
  %42 = phi i32 [ %31, %29 ], [ -16, %28 ]
  tail call void @kobject_put(ptr noundef nonnull %12) #10
  br label %43

43:                                               ; preds = %41, %10
  %44 = phi i32 [ %42, %41 ], [ -12, %10 ]
  %45 = getelementptr inbounds %struct.char_device_struct, ptr %6, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = urem i32 %46, 255
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #10
  %48 = getelementptr [255 x ptr], ptr @chrdevs, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %70, label %51

51:                                               ; preds = %65, %43
  %52 = phi ptr [ %66, %65 ], [ %49, %43 ]
  %53 = phi ptr [ %52, %65 ], [ %48, %43 ]
  %54 = getelementptr inbounds %struct.char_device_struct, ptr %52, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %46
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.char_device_struct, ptr %52, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %1
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.char_device_struct, ptr %52, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %2
  br i1 %64, label %68, label %65

65:                                               ; preds = %61, %57, %51
  %66 = load ptr, ptr %52, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %51

68:                                               ; preds = %61
  %69 = load ptr, ptr %52, align 4
  store ptr %69, ptr %53, align 4
  br label %70

70:                                               ; preds = %68, %65, %43
  %71 = phi ptr [ %52, %68 ], [ null, %43 ], [ null, %65 ]
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #10
  tail call void @kfree(ptr noundef %71) #10
  br label %72

72:                                               ; preds = %70, %39, %33, %8
  %73 = phi i32 [ %9, %8 ], [ %44, %70 ], [ %40, %39 ], [ 0, %33 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cdev_alloc() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 60) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.cdev, ptr %2, i32 0, i32 3
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cdev, ptr %2, i32 0, i32 3, i32 1
  store ptr %5, ptr %6, align 8
  tail call void @kobject_init(ptr noundef nonnull %2, ptr noundef nonnull @ktype_cdev_dynamic) #10
  br label %7

7:                                                ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdev_add(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 5
  store i32 %2, ptr %5, align 4
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 486, i32 noundef 9, ptr noundef null) #10
  br label %16

8:                                                ; preds = %3
  %9 = load ptr, ptr @cdev_map, align 4
  %10 = tail call i32 @kobj_map(ptr noundef %9, i32 noundef %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull @exact_match, ptr noundef nonnull @exact_lock, ptr noundef %0) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @kobject_get(ptr noundef %14) #10
  br label %16

16:                                               ; preds = %12, %8, %7
  %17 = phi i32 [ -16, %7 ], [ 0, %12 ], [ %10, %8 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_chrdev_region(i32 noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, %0
  %4 = icmp ugt i32 %3, %0
  br i1 %4, label %5, label %41

5:                                                ; preds = %38, %2
  %6 = phi i32 [ %10, %38 ], [ %0, %2 ]
  %7 = lshr i32 %6, 20
  %8 = add i32 %6, 1048576
  %9 = and i32 %8, -1048576
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %3)
  %11 = and i32 %6, 1048575
  %12 = sub i32 %10, %6
  %13 = trunc i32 %7 to i16
  %14 = urem i16 %13, 255
  %15 = zext i16 %14 to i32
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #10
  %16 = getelementptr [255 x ptr], ptr @chrdevs, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %33, %5
  %20 = phi ptr [ %34, %33 ], [ %17, %5 ]
  %21 = phi ptr [ %20, %33 ], [ %16, %5 ]
  %22 = getelementptr inbounds %struct.char_device_struct, ptr %20, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %7
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.char_device_struct, ptr %20, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %11
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.char_device_struct, ptr %20, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %12
  br i1 %32, label %36, label %33

33:                                               ; preds = %29, %25, %19
  %34 = load ptr, ptr %20, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %19

36:                                               ; preds = %29
  %37 = load ptr, ptr %20, align 4
  store ptr %37, ptr %21, align 4
  br label %38

38:                                               ; preds = %36, %33, %5
  %39 = phi ptr [ %20, %36 ], [ null, %5 ], [ null, %33 ]
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #10
  tail call void @kfree(ptr noundef %39) #10
  %40 = icmp ugt i32 %3, %9
  br i1 %40, label %5, label %41

41:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__unregister_chrdev(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  %5 = urem i32 %0, 255
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #10
  %6 = getelementptr [255 x ptr], ptr @chrdevs, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %23, %4
  %10 = phi ptr [ %24, %23 ], [ %7, %4 ]
  %11 = phi ptr [ %10, %23 ], [ %6, %4 ]
  %12 = getelementptr inbounds %struct.char_device_struct, ptr %10, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.char_device_struct, ptr %10, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.char_device_struct, ptr %10, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %15, %9
  %24 = load ptr, ptr %10, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9

26:                                               ; preds = %23, %4
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #10
  br label %38

27:                                               ; preds = %19
  %28 = load ptr, ptr %10, align 4
  store ptr %28, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #10
  %29 = getelementptr inbounds %struct.char_device_struct, ptr %10, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.cdev, ptr %30, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cdev, ptr %30, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr @cdev_map, align 4
  tail call void @kobj_unmap(ptr noundef %37, i32 noundef %34, i32 noundef %36) #10
  tail call void @kobject_put(ptr noundef nonnull %30) #10
  br label %38

38:                                               ; preds = %32, %27, %26
  %39 = phi ptr [ null, %26 ], [ %10, %32 ], [ %10, %27 ]
  tail call void @kfree(ptr noundef %39) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cdev_del(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr @cdev_map, align 4
  tail call void @kobj_unmap(ptr noundef %6, i32 noundef %3, i32 noundef %5) #10
  tail call void @kobject_put(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cdev_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @kobject_put(ptr noundef nonnull %0) #10
  tail call void @module_put(ptr noundef %5) #10
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cd_forget(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #10
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 42
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 42, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  store ptr %8, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %10 = load i16, ptr @cdev_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @cdev_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chrdev_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #10
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %43

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %8 = load i16, ptr @cdev_lock, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr @cdev_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %10 = load ptr, ptr @cdev_map, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = call ptr @kobj_lookup(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %3) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %7
  call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #10
  %16 = load ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  store ptr %13, ptr %4, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 42
  %20 = getelementptr inbounds %struct.cdev, ptr %13, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %19, ptr %22, align 4
  store ptr %21, ptr %19, align 4
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 42, i32 1
  store ptr %20, ptr %23, align 4
  store volatile ptr %19, ptr %20, align 4
  br label %38

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.cdev, ptr %16, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call zeroext i1 @try_module_get(ptr noundef nonnull %26) #10
  br i1 %29, label %30, label %34

30:                                               ; preds = %28, %24
  %31 = call ptr @kobject_get_unless_zero(ptr noundef nonnull %16) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @module_put(ptr noundef %26) #10
  br label %34

34:                                               ; preds = %33, %30, %28
  %35 = phi ptr [ null, %28 ], [ null, %33 ], [ %31, %30 ]
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, i32 -6, i32 0
  br label %38

38:                                               ; preds = %34, %18
  %39 = phi ptr [ %16, %34 ], [ %13, %18 ]
  %40 = phi ptr [ %13, %34 ], [ null, %18 ]
  %41 = phi i32 [ %37, %34 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %57

42:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %96

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.cdev, ptr %5, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %45) #10
  br i1 %48, label %49, label %53

49:                                               ; preds = %47, %43
  %50 = tail call ptr @kobject_get_unless_zero(ptr noundef nonnull %5) #10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @module_put(ptr noundef %45) #10
  br label %53

53:                                               ; preds = %52, %49, %47
  %54 = phi ptr [ null, %47 ], [ null, %52 ], [ %50, %49 ]
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, i32 -6, i32 0
  br label %57

57:                                               ; preds = %53, %38
  %58 = phi ptr [ %5, %53 ], [ %39, %38 ]
  %59 = phi ptr [ null, %53 ], [ %40, %38 ]
  %60 = phi i32 [ %56, %53 ], [ %41, %38 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %61 = load i16, ptr @cdev_lock, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr @cdev_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %63 = icmp eq ptr %59, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.cdev, ptr %59, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  call void @kobject_put(ptr noundef nonnull %59) #10
  call void @module_put(ptr noundef %66) #10
  br label %67

67:                                               ; preds = %64, %57
  %68 = icmp eq i32 %60, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.cdev, ptr %58, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 4
  %75 = call zeroext i1 @try_module_get(ptr noundef %74) #10
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load ptr, ptr %70, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %92, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %81, align 4
  call void @module_put(ptr noundef %84) #10
  br label %85

85:                                               ; preds = %83, %79
  store ptr %77, ptr %80, align 4
  %86 = getelementptr inbounds %struct.file_operations, ptr %77, i32 0, i32 14
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = call i32 %87(ptr noundef %0, ptr noundef %1) #10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89, %76, %73, %69
  %93 = phi i32 [ %90, %89 ], [ -6, %76 ], [ -6, %73 ], [ -6, %69 ]
  %94 = getelementptr inbounds %struct.cdev, ptr %58, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  call void @kobject_put(ptr noundef nonnull %58) #10
  call void @module_put(ptr noundef %95) #10
  br label %96

96:                                               ; preds = %92, %89, %85, %67, %42
  %97 = phi i32 [ %93, %92 ], [ -6, %42 ], [ %60, %67 ], [ 0, %89 ], [ 0, %85 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobj_map(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @exact_match(i32 noundef %0, ptr nocapture noundef readnone %1, ptr noundef readnone returned %2) #3 {
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exact_lock(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %4) #10
  br i1 %7, label %8, label %12

8:                                                ; preds = %6, %2
  %9 = tail call ptr @kobject_get_unless_zero(ptr noundef %1) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @module_put(ptr noundef %4) #10
  br label %12

12:                                               ; preds = %11, %8, %6
  %13 = phi ptr [ null, %6 ], [ null, %11 ], [ %9, %8 ]
  %14 = icmp eq ptr %13, null
  %15 = sext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cdev_set_parent(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 510, i32 noundef 9, ptr noundef null) #10
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  store ptr %1, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdev_device_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 510, i32 noundef 9, ptr noundef null) #10
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  store ptr %1, ptr %13, align 4
  %14 = load i32, ptr %3, align 8
  %15 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 5
  store i32 1, ptr %16, align 4
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 486, i32 noundef 9, ptr noundef null) #10
  br label %35

19:                                               ; preds = %12
  %20 = load ptr, ptr @cdev_map, align 4
  %21 = tail call i32 @kobj_map(ptr noundef %20, i32 noundef %14, i32 noundef 1, ptr noundef null, ptr noundef nonnull @exact_match, ptr noundef nonnull @exact_lock, ptr noundef %0) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 4
  %25 = tail call ptr @kobject_get(ptr noundef %24) #10
  br label %26

26:                                               ; preds = %23, %2
  %27 = tail call i32 @device_add(ptr noundef %1) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr @cdev_map, align 4
  tail call void @kobj_unmap(ptr noundef %34, i32 noundef %31, i32 noundef %33) #10
  tail call void @kobject_put(ptr noundef %0) #10
  br label %35

35:                                               ; preds = %29, %26, %19, %18
  %36 = phi i32 [ %27, %29 ], [ 0, %26 ], [ %21, %19 ], [ -16, %18 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cdev_device_del(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @device_del(ptr noundef %1) #10
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr @cdev_map, align 4
  tail call void @kobj_unmap(ptr noundef %11, i32 noundef %8, i32 noundef %10) #10
  tail call void @kobject_put(ptr noundef %0) #10
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cdev_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %0, i8 0, i32 60, i1 false)
  %3 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 3
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 3, i32 1
  store ptr %3, ptr %4, align 4
  tail call void @kobject_init(ptr noundef %0, ptr noundef nonnull @ktype_cdev_default) #10
  %5 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 2
  store ptr %1, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @chrdev_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @kobj_map_init(ptr noundef nonnull @base_probe, ptr noundef nonnull @chrdevs_lock) #10
  store ptr %1, ptr @cdev_map, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobj_map_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @base_probe(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = lshr i32 %0, 20
  %5 = and i32 %0, 1048575
  %6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %5) #10
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7, i32 noundef %4) #10
  br label %10

10:                                               ; preds = %8, %3
  ret ptr null
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobj_lookup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get_unless_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobj_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdev_dynamic_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #10
  %4 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %16, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %14, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %9, align 4
  %13 = getelementptr i8, ptr %8, i32 8
  store ptr null, ptr %13, align 4
  %14 = load volatile ptr, ptr %4, align 4
  %15 = icmp eq ptr %14, %4
  br i1 %15, label %16, label %7

16:                                               ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %17 = load i16, ptr @cdev_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @cdev_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  tail call void @kfree(ptr noundef %0) #10
  tail call void @kobject_put(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdev_default_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #10
  %4 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %16, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %14, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %9, align 4
  %13 = getelementptr i8, ptr %8, i32 8
  store ptr null, ptr %13, align 4
  %14 = load volatile ptr, ptr %4, align 4
  %15 = icmp eq ptr %14, %4
  br i1 %15, label %16, label %7

16:                                               ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %17 = load i16, ptr @cdev_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @cdev_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  tail call void @kobject_put(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2149011011}
!10 = !{i64 2149006835}
!11 = !{i64 2149006910, i64 2149006937, i64 2149006984, i64 2149007006, i64 2149007034, i64 2149007054}
!12 = !{i64 2149034014}
!13 = !{!"auto-init"}
