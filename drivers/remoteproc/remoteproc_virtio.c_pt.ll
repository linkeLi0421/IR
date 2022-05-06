; ModuleID = '/llk/IR/drivers/remoteproc/remoteproc_virtio.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_virtio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_vq_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_vq_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_vq_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rproc_vring = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.rproc_vdev = type { %struct.kref, %struct.rproc_subdev, %struct.device, i32, %struct.list_head, ptr, [2 x %struct.rproc_vring], i32, i32 }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rproc_mem_entry = type { ptr, i8, i32, i32, i32, ptr, [32 x i8], %struct.list_head, i32, i32, i32, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.fw_rsc_vdev = type { i32, i32, i32, i32, i32, i8, i8, [2 x i8], [0 x %struct.fw_rsc_vdev_vring] }
%struct.fw_rsc_vdev_vring = type { i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@__kstrtab_rproc_vq_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_vq_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_vq_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_vq_interrupt to i32), ptr @__kstrtab_rproc_vq_interrupt, ptr @__kstrtabns_rproc_vq_interrupt }, section "___ksymtab+rproc_vq_interrupt", align 4
@.str = private unnamed_addr constant [33 x i8] c".kick method not defined for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"vdev%dbuffer\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't associate reserved memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"vdev %d buffer already mapped\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to associate buffer\0A\00", align 1
@rproc_virtio_config_ops = internal constant %struct.virtio_config_ops { ptr null, ptr @rproc_virtio_get, ptr @rproc_virtio_set, ptr null, ptr @rproc_virtio_get_status, ptr @rproc_virtio_set_status, ptr @rproc_virtio_reset, ptr @rproc_virtio_find_vqs, ptr @rproc_virtio_del_vqs, ptr @rproc_virtio_get_features, ptr @rproc_virtio_finalize_features, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to register vdev: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"registered %s (type %d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"rproc_virtio_get: access out of bounds\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"rproc_virtio_set: access out of bounds\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"vdev%dvring%d\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"vring_new_virtqueue %s failed\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_rproc_vq_interrupt], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_vq_interrupt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 19
  %4 = tail call ptr @idr_find(ptr noundef %3, i32 noundef %1) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rproc_vring, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @vring_interrupt(i32 noundef 0, ptr noundef nonnull %8) #8
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vring_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_add_virtio_dev(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rproc_ops, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %13) #9
  br label %89

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr (ptr, ptr, ...) @rproc_find_carveout_by_name(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %16) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rproc_mem_entry, ptr %17, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 6, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %5, ptr noundef %27, i32 noundef %21) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #9
  br label %89

31:                                               ; preds = %19
  %32 = load ptr, ptr %17, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %35) #9
  %36 = load ptr, ptr %17, align 4
  %37 = tail call i32 @rproc_va_to_pa(ptr noundef %36) #8
  br label %41

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.rproc_mem_entry, ptr %17, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %37, %34 ], [ %40, %38 ]
  %43 = getelementptr inbounds %struct.rproc_mem_entry, ptr %17, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.rproc_mem_entry, ptr %17, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @dma_declare_coherent_memory(ptr noundef %5, i32 noundef %42, i32 noundef %44, i32 noundef %46) #8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #9
  br label %89

50:                                               ; preds = %14
  %51 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 6, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 25
  %54 = load ptr, ptr %53, align 8
  %55 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %5, ptr noundef %54, i32 noundef 0) #8
  br label %56

56:                                               ; preds = %50, %41, %23
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 528) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %89, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.virtio_device, ptr %58, i32 0, i32 7
  store i32 %1, ptr %61, align 8
  %62 = getelementptr inbounds %struct.virtio_device, ptr %58, i32 0, i32 8
  store ptr @rproc_virtio_config_ops, ptr %62, align 8
  %63 = getelementptr inbounds %struct.virtio_device, ptr %58, i32 0, i32 6
  %64 = getelementptr inbounds %struct.virtio_device, ptr %58, i32 0, i32 6, i32 1
  store ptr %5, ptr %64, align 4
  %65 = getelementptr inbounds %struct.virtio_device, ptr %58, i32 0, i32 6, i32 33
  store ptr @rproc_virtio_dev_release, ptr %65, align 4
  %66 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 6
  %67 = tail call ptr @get_device(ptr noundef %66) #8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !9
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71, !prof !10

71:                                               ; preds = %60
  %72 = add i32 %69, 1
  %73 = or i32 %72, %69
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %77, label %75, !prof !11

75:                                               ; preds = %71, %60
  %76 = phi i32 [ 2, %60 ], [ 1, %71 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %76) #8
  br label %77

77:                                               ; preds = %75, %71
  %78 = tail call i32 @register_virtio_device(ptr noundef nonnull %58) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void @put_device(ptr noundef %63) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %78) #9
  br label %89

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.virtio_device, ptr %58, i32 0, i32 6, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load ptr, ptr %63, align 8
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi ptr [ %86, %85 ], [ %83, %81 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef %88, i32 noundef %1) #9
  br label %89

89:                                               ; preds = %87, %80, %56, %49, %30, %11
  %90 = phi i32 [ -22, %11 ], [ %78, %80 ], [ 0, %87 ], [ -12, %56 ], [ %28, %30 ], [ %47, %49 ]
  ret i32 %90
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_find_carveout_by_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_va_to_pa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_declare_coherent_memory(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_virtio_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -32
  %6 = getelementptr i8, ptr %4, i32 484
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %2) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #8, !srcloc !13
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %15, label %13, !prof !11

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #8
  br label %15

14:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void @rproc_vdev_release(ptr noundef %5) #8
  br label %15

15:                                               ; preds = %14, %13, %11
  %16 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 6
  tail call void @put_device(ptr noundef %16) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_remove_virtio_dev(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @unregister_virtio_device(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_virtio_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 484
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rproc, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 544
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = add i32 %3, %1
  %15 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %13, i32 0, i32 4
  %16 = load i32, ptr %15, align 1
  %17 = icmp ugt i32 %14, %16
  %18 = icmp ult i32 %14, %3
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7) #9
  br label %29

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %13, i32 0, i32 8
  %24 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %13, i32 0, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %23, i32 0, i32 %26
  %28 = getelementptr i8, ptr %27, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %28, i32 %3, i1 false)
  br label %29

29:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_virtio_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 484
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rproc, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 544
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = add i32 %3, %1
  %15 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %13, i32 0, i32 4
  %16 = load i32, ptr %15, align 1
  %17 = icmp ugt i32 %14, %16
  %18 = icmp ult i32 %14, %3
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8) #9
  br label %29

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %13, i32 0, i32 8
  %24 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %13, i32 0, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %23, i32 0, i32 %26
  %28 = getelementptr i8, ptr %27, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %28, ptr align 1 %2, i32 %3, i1 false)
  br label %29

29:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i8 @rproc_virtio_get_status(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 484
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 544
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %10, i32 0, i32 5
  %12 = load i8, ptr %11, align 1
  ret i8 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rproc_virtio_set_status(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 484
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rproc, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %4, i32 544
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %11, i32 0, i32 5
  store i8 %1, ptr %12, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rproc_virtio_reset(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 484
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 544
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %10, i32 0, i32 5
  store i8 0, ptr %11, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_virtio_find_vqs(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef readnone %6) #0 {
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %97, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %5, null
  %11 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  br label %12

12:                                               ; preds = %93, %9
  %13 = phi i32 [ 0, %9 ], [ %94, %93 ]
  %14 = phi i32 [ 0, %9 ], [ %95, %93 ]
  %15 = getelementptr ptr, ptr %4, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = getelementptr ptr, ptr %2, i32 %14
  store ptr null, ptr %19, align 4
  br label %93

20:                                               ; preds = %12
  %21 = add i32 %13, 1
  %22 = getelementptr ptr, ptr %3, i32 %14
  %23 = load ptr, ptr %22, align 4
  br i1 %10, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %5, i32 %14
  %26 = load i8, ptr %25, align 1, !range !15
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %27, %24 ], [ 0, %20 ]
  %30 = icmp ne i32 %29, 0
  %31 = load ptr, ptr %11, align 4
  %32 = getelementptr i8, ptr %31, i32 -32
  %33 = getelementptr i8, ptr %31, i32 484
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ugt i32 %13, 1
  br i1 %35, label %63, label %36

36:                                               ; preds = %28
  %37 = getelementptr i8, ptr %31, i32 548
  %38 = load i32, ptr %37, align 4
  %39 = tail call ptr (ptr, ptr, ...) @rproc_find_carveout_by_name(ptr noundef %34, ptr noundef nonnull @.str.9, i32 noundef %38, i32 noundef %13) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %39, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = getelementptr %struct.rproc_vdev, ptr %32, i32 0, i32 6, i32 %13
  %46 = getelementptr %struct.rproc_vdev, ptr %32, i32 0, i32 6, i32 %13, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr %struct.rproc_vdev, ptr %32, i32 0, i32 6, i32 %13, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = mul i32 %47, 18
  %51 = add i32 %49, 5
  %52 = add i32 %51, %50
  %53 = sub i32 0, %49
  %54 = and i32 %52, %53
  %55 = shl i32 %47, 3
  %56 = or i32 %55, 6
  %57 = add i32 %56, %54
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %42, i8 0, i32 %57, i1 false) #8
  %58 = load i32, ptr %48, align 4
  %59 = tail call ptr @vring_new_virtqueue(i32 noundef %13, i32 noundef %47, i32 noundef %58, ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %30, ptr noundef nonnull %42, ptr noundef nonnull @rproc_virtio_notify, ptr noundef %23, ptr noundef nonnull %16) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %44
  %62 = getelementptr inbounds %struct.rproc, ptr %34, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.10, ptr noundef nonnull %16) #9
  tail call void @rproc_free_vring(ptr noundef %45) #8
  br label %63

63:                                               ; preds = %61, %41, %36, %28
  %64 = phi ptr [ inttoptr (i32 -12 to ptr), %61 ], [ inttoptr (i32 -22 to ptr), %28 ], [ inttoptr (i32 -12 to ptr), %41 ], [ inttoptr (i32 -12 to ptr), %36 ]
  %65 = getelementptr ptr, ptr %2, i32 %14
  store ptr %64, ptr %65, align 4
  br label %80

66:                                               ; preds = %44
  %67 = getelementptr %struct.rproc_vdev, ptr %32, i32 0, i32 6, i32 %13, i32 6
  store ptr %59, ptr %67, align 4
  %68 = getelementptr inbounds %struct.virtqueue, ptr %59, i32 0, i32 6
  store ptr %45, ptr %68, align 4
  %69 = getelementptr inbounds %struct.rproc, ptr %34, i32 0, i32 25
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %31, i32 544
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr i8, ptr %70, i32 %72
  %74 = getelementptr inbounds %struct.rproc_mem_entry, ptr %39, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %73, i32 0, i32 8
  %77 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %76, i32 0, i32 %13
  store i32 %75, ptr %77, align 1
  %78 = getelementptr ptr, ptr %2, i32 %14
  store ptr %59, ptr %78, align 4
  %79 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %93

80:                                               ; preds = %66, %63
  %81 = phi ptr [ %64, %63 ], [ %59, %66 ]
  %82 = ptrtoint ptr %81 to i32
  %83 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 10
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %97, label %86

86:                                               ; preds = %86, %80
  %87 = phi ptr [ %88, %86 ], [ %84, %80 ]
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.virtqueue, ptr %87, i32 0, i32 6
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.rproc_vring, ptr %90, i32 0, i32 6
  store ptr null, ptr %91, align 4
  tail call void @vring_del_virtqueue(ptr noundef %87) #8
  %92 = icmp eq ptr %88, %83
  br i1 %92, label %97, label %86

93:                                               ; preds = %66, %18
  %94 = phi i32 [ %21, %66 ], [ %13, %18 ]
  %95 = add nuw i32 %14, 1
  %96 = icmp eq i32 %95, %1
  br i1 %96, label %97, label %12

97:                                               ; preds = %93, %86, %80, %7
  %98 = phi i32 [ %82, %80 ], [ 0, %7 ], [ %82, %86 ], [ 0, %93 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_virtio_del_vqs(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.virtqueue, ptr %6, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rproc_vring, ptr %9, i32 0, i32 6
  store ptr null, ptr %10, align 4
  tail call void @vring_del_virtqueue(ptr noundef %6) #8
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @rproc_virtio_get_features(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 484
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 544
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 1
  %13 = zext i32 %12 to i64
  ret i64 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_virtio_finalize_features(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 484
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 544
  %9 = load i32, ptr %8, align 8
  tail call void @vring_transport_features(ptr noundef %0) #8
  %10 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, -17179869185
  store i64 %12, ptr %10, align 8
  %13 = icmp ult i64 %12, 4294967296
  br i1 %13, label %15, label %14, !prof !11

14:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/remoteproc/remoteproc_virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 252, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

15:                                               ; preds = %1
  %16 = trunc i64 %11 to i32
  %17 = getelementptr i8, ptr %7, i32 %9
  %18 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %17, i32 0, i32 3
  store i32 %16, ptr %18, align 1
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vring_new_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @rproc_virtio_notify(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rproc_vring, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rproc_vdev, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rproc_vring, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.rproc_ops, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %7, i32 noundef %9) #8
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free_vring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_del_virtqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_transport_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_vdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 633064, i64 2148134630, i64 2148134656, i64 2148134703, i64 2148134725, i64 2148134753, i64 2148134773}
!9 = !{i64 2148199350, i64 2148199382, i64 2148199411, i64 2148199445, i64 2148199476, i64 2148199499}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148299572}
!13 = !{i64 2148201707, i64 2148201739, i64 2148201768, i64 2148201802, i64 2148201833, i64 2148201856}
!14 = !{i64 2149326951}
!15 = !{i8 0, i8 2}
!16 = !{i64 2152833640, i64 2152834143, i64 2152833677, i64 2152833733, i64 2152833767, i64 2152833791, i64 2152833832, i64 2152833853, i64 2152833881, i64 2152833915}
