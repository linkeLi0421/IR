; ModuleID = '/llk/IR/drivers/usb/core/file.c_pt.bc'
source_filename = "../drivers/usb/core/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_register_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_deregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_deregister_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_deregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_class = type { %struct.kref, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.59 = type { ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@usb_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @usb_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\013Unable to get major %d for usb devices\0A\00", align 1
@init_usb_class_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_usb_class_mutex, i64 12), ptr getelementptr (i8, ptr @init_usb_class_mutex, i64 12) } }, align 4
@minor_rwsem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @minor_rwsem, i64 16), ptr getelementptr (i8, ptr @minor_rwsem, i64 16) } }, align 4
@usb_minors = internal unnamed_addr global [256 x ptr] zeroinitializer, align 4
@usb_class = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_usb_register_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_register_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_register_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_register_dev to i32), ptr @__kstrtab_usb_register_dev, ptr @__kstrtabns_usb_register_dev }, section "___ksymtab_gpl+usb_register_dev", align 4
@__kstrtab_usb_deregister_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_deregister_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_deregister_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_deregister_dev to i32), ptr @__kstrtab_usb_deregister_dev, ptr @__kstrtabns_usb_deregister_dev }, section "___ksymtab_gpl+usb_deregister_dev", align 4
@init_usb_class.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"usbmisc\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\013class_create failed for usb devices\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_usb_deregister_dev, ptr @__ksymtab_usb_register_dev], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_major_init() local_unnamed_addr #0 {
  %1 = tail call i32 @__register_chrdev(i32 noundef 180, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @usb_fops) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 180) #9
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_major_cleanup() local_unnamed_addr #0 {
  tail call void @__unregister_chrdev(i32 noundef 180, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_register_dev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [20 x i8], align 1
  %4 = getelementptr inbounds %struct.usb_class_driver, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.usb_class_driver, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %83, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %83, label %13

13:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @init_usb_class_mutex) #8
  %14 = load ptr, ptr @usb_class, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %14) #8, !srcloc !9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #8, !srcloc !10
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !11

20:                                               ; preds = %16
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %38, label %24, !prof !12

24:                                               ; preds = %20, %16
  %25 = phi i32 [ 2, %16 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef %25) #8
  br label %38

26:                                               ; preds = %13
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 8) #10
  store ptr %28, ptr @usb_class, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @mutex_unlock(ptr noundef nonnull @init_usb_class_mutex) #8
  br label %83

31:                                               ; preds = %26
  store volatile i32 1, ptr %28, align 8
  %32 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_usb_class.__key) #8
  %33 = load ptr, ptr @usb_class, align 4
  %34 = getelementptr inbounds %struct.usb_class, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  %35 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.class, ptr %32, i32 0, i32 6
  store ptr @usb_devnode, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %24, %20
  tail call void @mutex_unlock(ptr noundef nonnull @init_usb_class_mutex) #8
  tail call void @down_write(ptr noundef nonnull @minor_rwsem) #8
  %39 = icmp slt i32 %5, 256
  br i1 %39, label %44, label %54

40:                                               ; preds = %31
  %41 = ptrtoint ptr %32 to i32
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  %43 = load ptr, ptr @usb_class, align 4
  tail call void @kfree(ptr noundef %43) #8
  store ptr null, ptr @usb_class, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @init_usb_class_mutex) #8
  br label %83

44:                                               ; preds = %51, %38
  %45 = phi i32 [ %52, %51 ], [ %5, %38 ]
  %46 = getelementptr [256 x ptr], ptr @usb_minors, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load ptr, ptr %6, align 4
  store ptr %50, ptr %46, align 4
  store i32 %45, ptr %10, align 8
  br label %57

51:                                               ; preds = %44
  %52 = add i32 %45, 1
  %53 = icmp eq i32 %52, 256
  br i1 %53, label %54, label %44

54:                                               ; preds = %51, %38
  %55 = phi i32 [ %5, %38 ], [ 256, %51 ]
  %56 = load i32, ptr %10, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = phi i32 [ %55, %54 ], [ %45, %49 ]
  %59 = phi i32 [ %56, %54 ], [ %45, %49 ]
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @up_write(ptr noundef nonnull @minor_rwsem) #8
  br label %83

62:                                               ; preds = %57
  %63 = load ptr, ptr %1, align 4
  %64 = sub i32 %58, %5
  %65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 20, ptr noundef %63, i32 noundef %64)
  %66 = load ptr, ptr @usb_class, align 4
  %67 = getelementptr inbounds %struct.usb_class, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %70 = or i32 %58, 188743680
  %71 = call ptr @strrchr(ptr noundef nonnull %3, i32 noundef 47) #8
  %72 = icmp eq ptr %71, null
  %73 = getelementptr i8, ptr %71, i32 1
  %74 = select i1 %72, ptr %3, ptr %73
  %75 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %68, ptr noundef %69, i32 noundef %70, ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %74) #8
  %76 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 8
  store ptr %75, ptr %76, align 8
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = getelementptr [256 x ptr], ptr @usb_minors, i32 0, i32 %58
  store ptr null, ptr %79, align 4
  store i32 -1, ptr %10, align 8
  %80 = ptrtoint ptr %75 to i32
  br label %81

81:                                               ; preds = %78, %62
  %82 = phi i32 [ %80, %78 ], [ 0, %62 ]
  call void @up_write(ptr noundef nonnull @minor_rwsem) #8
  br label %83

83:                                               ; preds = %81, %61, %40, %30, %9, %2
  %84 = phi i32 [ -54, %61 ], [ %82, %81 ], [ -22, %2 ], [ -98, %9 ], [ %41, %40 ], [ -12, %30 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  ret i32 %84
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_deregister_dev(ptr nocapture noundef %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @usb_class, align 4
  %8 = getelementptr inbounds %struct.usb_class, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = or i32 %4, 188743680
  tail call void @device_destroy(ptr noundef %9, i32 noundef %10) #8
  tail call void @down_write(ptr noundef nonnull @minor_rwsem) #8
  %11 = load i32, ptr %3, align 8
  %12 = getelementptr [256 x ptr], ptr @usb_minors, i32 0, i32 %11
  store ptr null, ptr %12, align 4
  tail call void @up_write(ptr noundef nonnull @minor_rwsem) #8
  %13 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 8
  store ptr null, ptr %13, align 8
  store i32 -1, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @init_usb_class_mutex) #8
  %14 = load ptr, ptr @usb_class, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #8, !srcloc !14
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %26, label %20, !prof !12

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #8
  br label %26

21:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %22 = load ptr, ptr @usb_class, align 4
  %23 = getelementptr inbounds %struct.usb_class, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @class_destroy(ptr noundef %24) #8
  %25 = load ptr, ptr @usb_class, align 4
  tail call void @kfree(ptr noundef %25) #8
  store ptr null, ptr @usb_class, align 4
  br label %26

26:                                               ; preds = %21, %20, %18
  tail call void @mutex_unlock(ptr noundef nonnull @init_usb_class_mutex) #8
  br label %27

27:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_open(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @down_read(ptr noundef nonnull @minor_rwsem) #8
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048575
  %6 = getelementptr [256 x ptr], ptr @usb_minors, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 4
  %11 = tail call zeroext i1 @try_module_get(ptr noundef %10) #8
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4
  %14 = and i32 %13, 1048575
  %15 = getelementptr [256 x ptr], ptr @usb_minors, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 4
  tail call void @module_put(ptr noundef %23) #8
  br label %24

24:                                               ; preds = %22, %18
  store ptr %16, ptr %19, align 4
  %25 = getelementptr inbounds %struct.file_operations, ptr %16, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef %0, ptr noundef %1) #8
  br label %30

30:                                               ; preds = %28, %24, %12, %9, %2
  %31 = phi i32 [ %29, %28 ], [ -19, %24 ], [ -19, %12 ], [ -19, %9 ], [ -19, %2 ]
  tail call void @up_read(ptr noundef nonnull @minor_rwsem) #8
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @usb_devnode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_class_driver, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr %8(ptr noundef %0, ptr noundef %1) #8
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i64 546125, i64 2148036096, i64 2148036122, i64 2148036169, i64 2148036191, i64 2148036219, i64 2148036239}
!10 = !{i64 2148048969, i64 2148049001, i64 2148049030, i64 2148049064, i64 2148049095, i64 2148049118}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148149191}
!14 = !{i64 2148051326, i64 2148051358, i64 2148051387, i64 2148051421, i64 2148051452, i64 2148051475}
!15 = !{i64 2148998638}
