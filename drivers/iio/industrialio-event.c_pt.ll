; ModuleID = '/llk/IR/drivers/iio/industrialio-event.c_pt.bc'
source_filename = "../drivers/iio/industrialio-event.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_push_event:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_push_event\22\09\09\09\09\09"
module asm "__kstrtabns_iio_push_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_interface = type { %struct.wait_queue_head, %struct.anon, %struct.list_head, i32, %struct.attribute_group, %struct.mutex, %struct.iio_ioctl_handler }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon = type { %union.anon.1, [16 x %struct.iio_event_data] }
%union.anon.1 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.iio_event_data = type { i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iio_ioctl_handler = type { %struct.list_head, ptr }
%struct.iio_dev_opaque = type { %struct.iio_dev, i32, ptr, %struct.mutex, i8, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, %struct.attribute_group, %struct.list_head, ptr, i32, %struct.attribute_group, %struct.attribute_group, ptr, i32, i32, i32, %struct.cdev, i32, ptr, i32, [20 x i8], i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.67, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.67 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.3, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__kstrtab_iio_push_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_push_event = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_push_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_push_event to i32), ptr @__kstrtab_iio_push_event, ptr @__kstrtabns_iio_push_event }, section "___ksymtab+iio_push_event", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@iio_setup_ev_int.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&ev_int->wait\00", align 1
@iio_setup_ev_int.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&ev_int->read_lock\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s_%s_%s\00", align 1
@iio_ev_type_text = internal unnamed_addr constant [6 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@iio_ev_dir_text = internal unnamed_addr constant [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13], align 4
@iio_ev_info_text = internal unnamed_addr constant [7 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mag\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"roc\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"thresh_adaptive\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"mag_adaptive\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"rising\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"falling\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"hysteresis\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"high_pass_filter_3db\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"low_pass_filter_3db\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"iio:event\00", align 1
@iio_event_chrdev_fileops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @iio_event_chrdev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iio_event_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @iio_event_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_iio_push_event], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iio_event_enabled(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iio_event_interface, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_push_event(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.iio_event_interface, ptr %5, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.iio_event_interface, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.iio_event_interface, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = getelementptr inbounds %struct.iio_event_interface, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.iio_event_interface, ptr %5, i32 0, i32 1, i32 1
  %23 = and i32 %19, %14
  %24 = getelementptr %struct.iio_event_data, ptr %22, i32 %23
  store i64 %1, ptr %24, align 8
  %25 = getelementptr inbounds i8, ptr %24, i32 8
  store i64 %2, ptr %25, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !8
  %26 = load i32, ptr %13, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %13, align 4
  tail call void @__wake_up(ptr noundef nonnull %5, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #10
  br label %28

28:                                               ; preds = %21, %12, %7, %3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_device_register_eventset(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %172

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.iio_chan_spec, ptr %12, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %20, %10
  %17 = phi i32 [ %18, %20 ], [ 0, %10 ]
  %18 = add nuw nsw i32 %17, 1
  %19 = icmp eq i32 %18, %8
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.iio_chan_spec, ptr %12, i32 %18, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %24

24:                                               ; preds = %20, %16
  %25 = icmp slt i32 %18, %8
  br i1 %25, label %26, label %172

26:                                               ; preds = %24, %10, %1
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 360) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %172, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  store ptr %28, ptr %31, align 8
  %32 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 2
  store volatile ptr %32, ptr %32, align 8
  %33 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 2, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 1
  store i32 0, ptr %34, align 8
  %35 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 1, i32 0, i32 0, i32 2
  store i32 15, ptr %36, align 8
  %37 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 1, i32 0, i32 0, i32 3
  store i32 16, ptr %37, align 4
  %38 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 1, i32 1
  %39 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 1, i32 0, i32 0, i32 4
  store ptr %38, ptr %39, align 8
  tail call void @__init_waitqueue_head(ptr noundef nonnull %28, ptr noundef nonnull @.str, ptr noundef nonnull @iio_setup_ev_int.__key) #10
  %40 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %40, ptr noundef nonnull @.str.2, ptr noundef nonnull @iio_setup_ev_int.__key.1) #10
  %41 = load ptr, ptr %2, align 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.attribute_group, ptr %42, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %49, %44
  %50 = phi ptr [ %52, %49 ], [ %46, %44 ]
  %51 = phi i32 [ %53, %49 ], [ 0, %44 ]
  %52 = getelementptr ptr, ptr %50, i32 1
  %53 = add i32 %51, 1
  %54 = load ptr, ptr %52, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %49

56:                                               ; preds = %49, %44, %30
  %57 = phi i32 [ 0, %30 ], [ 0, %44 ], [ %53, %49 ]
  %58 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %126, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %123

65:                                               ; preds = %119, %61
  %66 = phi ptr [ %120, %119 ], [ %59, %61 ]
  %67 = phi i32 [ %114, %119 ], [ %63, %61 ]
  %68 = phi i32 [ %116, %119 ], [ 0, %61 ]
  %69 = phi i32 [ %117, %119 ], [ 0, %61 ]
  %70 = getelementptr %struct.iio_chan_spec, ptr %66, i32 %69
  %71 = getelementptr %struct.iio_chan_spec, ptr %66, i32 %69, i32 14
  %72 = getelementptr %struct.iio_chan_spec, ptr %66, i32 %69, i32 15
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %113, label %75

75:                                               ; preds = %101, %65
  %76 = phi i32 [ %105, %101 ], [ 0, %65 ]
  %77 = phi i32 [ %106, %101 ], [ 0, %65 ]
  %78 = load ptr, ptr %71, align 4
  %79 = getelementptr %struct.iio_event_spec, ptr %78, i32 %77
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr %struct.iio_event_spec, ptr %78, i32 %77, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr %struct.iio_event_spec, ptr %78, i32 %77, i32 2
  %84 = tail call fastcc i32 @iio_device_add_event(ptr noundef %0, ptr noundef %70, i32 noundef %77, i32 noundef %80, i32 noundef %82, i32 noundef 0, ptr noundef %83) #10
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %170, label %86

86:                                               ; preds = %75
  %87 = load ptr, ptr %71, align 4
  %88 = getelementptr %struct.iio_event_spec, ptr %87, i32 %77, i32 3
  %89 = tail call fastcc i32 @iio_device_add_event(ptr noundef %0, ptr noundef %70, i32 noundef %77, i32 noundef %80, i32 noundef %82, i32 noundef 1, ptr noundef %88) #10
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %170, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %71, align 4
  %93 = getelementptr %struct.iio_event_spec, ptr %92, i32 %77, i32 4
  %94 = tail call fastcc i32 @iio_device_add_event(ptr noundef %0, ptr noundef %70, i32 noundef %77, i32 noundef %80, i32 noundef %82, i32 noundef 2, ptr noundef %93) #10
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %170, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %71, align 4
  %98 = getelementptr %struct.iio_event_spec, ptr %97, i32 %77, i32 5
  %99 = tail call fastcc i32 @iio_device_add_event(ptr noundef %0, ptr noundef %70, i32 noundef %77, i32 noundef %80, i32 noundef %82, i32 noundef 3, ptr noundef %98) #10
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %170, label %101

101:                                              ; preds = %96
  %102 = add i32 %84, %76
  %103 = add i32 %102, %89
  %104 = add i32 %103, %94
  %105 = add i32 %104, %99
  %106 = add nuw i32 %77, 1
  %107 = load i32, ptr %72, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %75, label %109

109:                                              ; preds = %101
  %110 = icmp slt i32 %105, 0
  br i1 %110, label %170, label %111

111:                                              ; preds = %109
  %112 = load i32, ptr %62, align 4
  br label %113

113:                                              ; preds = %111, %65
  %114 = phi i32 [ %112, %111 ], [ %67, %65 ]
  %115 = phi i32 [ %105, %111 ], [ 0, %65 ]
  %116 = add i32 %115, %68
  %117 = add nuw nsw i32 %69, 1
  %118 = icmp slt i32 %117, %114
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load ptr, ptr %58, align 8
  br label %65

121:                                              ; preds = %113
  %122 = icmp slt i32 %116, 0
  br i1 %122, label %170, label %123

123:                                              ; preds = %121, %61
  %124 = phi i32 [ %116, %121 ], [ 0, %61 ]
  %125 = add i32 %124, %57
  br label %126

126:                                              ; preds = %123, %56
  %127 = phi i32 [ %125, %123 ], [ %57, %56 ]
  %128 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 4
  store ptr @.str.22, ptr %128, align 4
  %129 = add i32 %127, 1
  %130 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %129, i32 4) #10
  %131 = extractvalue { i32, i1 } %130, 1
  br i1 %131, label %132, label %134, !prof !9

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 4, i32 3
  store ptr null, ptr %133, align 8
  br label %170

134:                                              ; preds = %126
  %135 = extractvalue { i32, i1 } %130, 0
  %136 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %135, i32 noundef 3520) #12
  %137 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 4, i32 3
  store ptr %136, ptr %137, align 8
  %138 = icmp eq ptr %136, null
  br i1 %138, label %170, label %139

139:                                              ; preds = %134
  %140 = load ptr, ptr %2, align 8
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.attribute_group, ptr %141, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = shl i32 %57, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %136, ptr align 4 %145, i32 %146, i1 false)
  br label %147

147:                                              ; preds = %143, %139
  %148 = load ptr, ptr %32, align 8
  %149 = icmp eq ptr %148, %32
  br i1 %149, label %164, label %150

150:                                              ; preds = %147
  %151 = getelementptr i8, ptr %148, i32 -24
  %152 = getelementptr ptr, ptr %136, i32 %57
  store ptr %151, ptr %152, align 4
  %153 = load ptr, ptr %148, align 8
  %154 = icmp eq ptr %153, %32
  br i1 %154, label %164, label %155

155:                                              ; preds = %155, %150
  %156 = phi ptr [ %162, %155 ], [ %153, %150 ]
  %157 = phi i32 [ %158, %155 ], [ %57, %150 ]
  %158 = add i32 %157, 1
  %159 = load ptr, ptr %137, align 8
  %160 = getelementptr i8, ptr %156, i32 -24
  %161 = getelementptr ptr, ptr %159, i32 %158
  store ptr %160, ptr %161, align 4
  %162 = load ptr, ptr %156, align 8
  %163 = icmp eq ptr %162, %32
  br i1 %163, label %164, label %155

164:                                              ; preds = %155, %150, %147
  %165 = tail call i32 @iio_device_register_sysfs_group(ptr noundef %0, ptr noundef %128) #10
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 6
  %169 = getelementptr inbounds %struct.iio_event_interface, ptr %28, i32 0, i32 6, i32 1
  store ptr @iio_event_ioctl, ptr %169, align 4
  tail call void @iio_device_ioctl_handler_register(ptr noundef %0, ptr noundef %168) #10
  br label %172

170:                                              ; preds = %164, %134, %132, %121, %109, %96, %91, %86, %75
  %171 = phi i32 [ %116, %121 ], [ %165, %164 ], [ -12, %134 ], [ -12, %132 ], [ %99, %96 ], [ %94, %91 ], [ %89, %86 ], [ %84, %75 ], [ %105, %109 ]
  tail call void @iio_free_chan_devattr_list(ptr noundef %32) #10
  tail call void @kfree(ptr noundef nonnull %28) #10
  store ptr null, ptr %31, align 8
  br label %172

172:                                              ; preds = %170, %167, %26, %24, %6
  %173 = phi i32 [ %171, %170 ], [ 0, %167 ], [ 0, %24 ], [ -12, %26 ], [ 0, %6 ]
  ret i32 %173
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_register_sysfs_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_event_ioctl(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %7 = icmp eq i32 %2, -2147194480
  br i1 %7, label %8, label %53

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.iio_event_interface, ptr %10, i32 0, i32 3
  %18 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = icmp eq ptr %0, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %24 = tail call ptr @get_device(ptr noundef %23) #10
  br label %25

25:                                               ; preds = %22, %20
  %26 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.23, ptr noundef nonnull @iio_event_chrdev_fileops, ptr noundef %0, i32 noundef 524288) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %17) #10
  br i1 %21, label %35, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void @put_device(ptr noundef %30) #10
  br label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.iio_event_interface, ptr %10, i32 0, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.iio_event_interface, ptr %10, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %31, %29, %28, %16
  %36 = phi i32 [ %26, %31 ], [ -16, %16 ], [ %26, %28 ], [ %26, %29 ]
  tail call void @mutex_unlock(ptr noundef %13) #10
  br label %37

37:                                               ; preds = %35, %12
  %38 = phi i32 [ %36, %35 ], [ %14, %12 ]
  store i32 %38, ptr %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1090519040) #13, !srcloc !10
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = tail call ptr @llvm.thread.pointer() #10
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #14, !srcloc !11
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %50 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 0, i32 -14
  br label %53

53:                                               ; preds = %44, %40, %37, %8, %4
  %54 = phi i32 [ %38, %37 ], [ 1, %4 ], [ -14, %40 ], [ %52, %44 ], [ -19, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_ioctl_handler_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_free_chan_devattr_list(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_device_wakeup_eventset(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @__wake_up(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_device_unregister_eventset(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iio_event_interface, ptr %3, i32 0, i32 6
  tail call void @iio_device_ioctl_handler_unregister(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.iio_event_interface, ptr %3, i32 0, i32 2
  tail call void @iio_free_chan_devattr_list(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.iio_event_interface, ptr %3, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #10
  tail call void @kfree(ptr noundef nonnull %3) #10
  store ptr null, ptr %2, align 8
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_ioctl_handler_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iio_device_add_event(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #1 {
  %8 = tail call i32 @_find_next_bit_le(ptr noundef %6, i32 noundef 32, i32 noundef 0) #10
  %9 = icmp ult i32 %8, 32
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  %11 = icmp eq i32 %4, 3
  %12 = getelementptr [6 x ptr], ptr @iio_ev_type_text, i32 0, i32 %3
  %13 = getelementptr [3 x ptr], ptr @iio_ev_dir_text, i32 0, i32 %4
  %14 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  %16 = icmp ne i32 %5, 0
  br label %17

17:                                               ; preds = %51, %10
  %18 = phi i32 [ %8, %10 ], [ %54, %51 ]
  %19 = phi i32 [ 0, %10 ], [ %52, %51 ]
  %20 = icmp ugt i32 %18, 6
  br i1 %20, label %56, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %12, align 4
  br i1 %11, label %28, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr [7 x ptr], ptr @iio_ev_info_text, i32 0, i32 %18
  %26 = load ptr, ptr %25, align 4
  %27 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %22, ptr noundef %24, ptr noundef %26) #10
  br label %32

28:                                               ; preds = %21
  %29 = getelementptr [7 x ptr], ptr @iio_ev_info_text, i32 0, i32 %18
  %30 = load ptr, ptr %29, align 4
  %31 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %22, ptr noundef %30) #10
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi ptr [ %27, %23 ], [ %31, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %32
  %36 = icmp eq i32 %18, 0
  %37 = select i1 %36, ptr @iio_ev_state_show, ptr @iio_ev_value_show
  %38 = select i1 %36, ptr @iio_ev_state_store, ptr @iio_ev_value_store
  %39 = shl nuw nsw i32 %18, 16
  %40 = or i32 %39, %2
  %41 = zext i32 %40 to i64
  %42 = load ptr, ptr %15, align 8
  %43 = getelementptr inbounds %struct.iio_event_interface, ptr %42, i32 0, i32 2
  %44 = tail call i32 @__iio_add_chan_devattr(ptr noundef nonnull %33, ptr noundef %1, ptr noundef nonnull %37, ptr noundef nonnull %38, i64 noundef %41, i32 noundef %5, ptr noundef %14, ptr noundef null, ptr noundef %43) #10
  tail call void @kfree(ptr noundef nonnull %33) #10
  %45 = icmp eq i32 %44, -16
  %46 = and i1 %16, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %35
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  %50 = add i32 %19, 1
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi i32 [ %19, %35 ], [ %50, %49 ]
  %53 = add nuw nsw i32 %18, 1
  %54 = tail call i32 @_find_next_bit_le(ptr noundef %6, i32 noundef 32, i32 noundef %53) #10
  %55 = icmp ult i32 %54, 32
  br i1 %55, label %17, label %56

56:                                               ; preds = %51, %47, %32, %17, %7
  %57 = phi i32 [ 0, %7 ], [ %52, %51 ], [ %44, %47 ], [ -12, %32 ], [ -22, %17 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_ev_state_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr i8, ptr %0, i32 544
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iio_info, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = getelementptr %struct.iio_event_spec, ptr %12, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.iio_event_spec, ptr %12, i32 %16, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 %8(ptr noundef %4, ptr noundef %10, i32 noundef %18, i32 noundef %20) #10
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %21) #10
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %24, %23 ], [ %21, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_ev_state_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !14
  %6 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = getelementptr i8, ptr %0, i32 544
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.iio_info, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, ptr %15, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65535
  %22 = getelementptr %struct.iio_event_spec, ptr %17, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.iio_event_spec, ptr %17, i32 %21, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i8, ptr %5, align 1, !range !15
  %27 = zext i8 %26 to i32
  %28 = call i32 %13(ptr noundef %9, ptr noundef %15, i32 noundef %23, i32 noundef %25, i32 noundef %27) #10
  %29 = icmp slt i32 %28, 0
  %30 = select i1 %29, i32 %28, i32 %3
  br label %31

31:                                               ; preds = %8, %4
  %32 = phi i32 [ %30, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_ev_value_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 8
  %7 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %8 = getelementptr i8, ptr %0, i32 544
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iio_info, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = getelementptr %struct.iio_event_spec, ptr %15, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.iio_event_spec, ptr %15, i32 %19, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %18, 16
  %25 = call i32 %11(ptr noundef %7, ptr noundef %13, i32 noundef %21, i32 noundef %23, i32 noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load i32, ptr %4, align 4
  store i32 %28, ptr %6, align 8
  %29 = load i32, ptr %5, align 4
  %30 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = call i32 @iio_format_value(ptr noundef %2, i32 noundef %25, i32 noundef 2, ptr noundef nonnull %6) #10
  br label %32

32:                                               ; preds = %27, %3
  %33 = phi i32 [ %31, %27 ], [ %25, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_ev_value_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !14
  %8 = getelementptr i8, ptr %0, i32 544
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iio_info, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %4
  %14 = call i32 @iio_str_to_fixpoint(ptr noundef %2, i32 noundef 100000, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds %struct.iio_info, ptr %17, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, ptr %21, i32 0, i32 14
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = getelementptr %struct.iio_event_spec, ptr %23, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.iio_event_spec, ptr %23, i32 %27, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %26, 16
  %33 = load i32, ptr %5, align 4
  %34 = load i32, ptr %6, align 4
  %35 = call i32 %19(ptr noundef %7, ptr noundef %21, i32 noundef %29, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34) #10
  %36 = icmp slt i32 %35, 0
  %37 = select i1 %36, i32 %35, i32 %3
  br label %38

38:                                               ; preds = %16, %13, %4
  %39 = phi i32 [ -22, %4 ], [ %14, %13 ], [ %37, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_add_chan_devattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_format_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_str_to_fixpoint(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_event_chrdev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.iio_dev_opaque, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !14
  %11 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 17
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %4
  %15 = icmp ult i32 %2, 16
  br i1 %15, label %65, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.iio_event_interface, ptr %10, i32 0, i32 1
  %18 = getelementptr inbounds %struct.iio_event_interface, ptr %10, i32 0, i32 1, i32 0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %20 = getelementptr inbounds %struct.iio_event_interface, ptr %10, i32 0, i32 5
  br label %21

21:                                               ; preds = %61, %16
  %22 = load i32, ptr %17, align 8
  %23 = load i32, ptr %18, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i32, ptr %19, align 4
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load ptr, ptr %11, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %65, label %32

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !14
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #10
  %33 = call i32 @prepare_to_wait_event(ptr noundef %10, ptr noundef nonnull %6, i32 noundef 1) #10
  %34 = load i32, ptr %17, align 8
  %35 = load i32, ptr %18, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %43, %32
  %38 = phi i32 [ %44, %43 ], [ %33, %32 ]
  %39 = load ptr, ptr %11, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  call void @schedule() #10
  %44 = call i32 @prepare_to_wait_event(ptr noundef %10, ptr noundef nonnull %6, i32 noundef 1) #10
  %45 = load i32, ptr %17, align 8
  %46 = load i32, ptr %18, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %37, label %49

48:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  br label %65

49:                                               ; preds = %43, %37, %32
  call void @finish_wait(ptr noundef %10, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  %50 = load ptr, ptr %11, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %49, %21
  %53 = call i32 @mutex_lock_interruptible(ptr noundef %20) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = call i32 @__kfifo_to_user(ptr noundef %17, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #10
  call void @mutex_unlock(ptr noundef %20) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, ptr %5, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, ptr %19, align 4
  %63 = and i32 %62, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %21, label %65

65:                                               ; preds = %61, %58, %55, %52, %49, %48, %29, %25, %14, %4
  %66 = phi i32 [ -19, %4 ], [ -22, %14 ], [ %38, %48 ], [ %59, %58 ], [ -19, %29 ], [ -11, %61 ], [ %56, %55 ], [ -512, %52 ], [ -19, %49 ], [ -11, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_event_poll(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.iio_dev_opaque, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 4
  %14 = icmp ne ptr %13, null
  %15 = icmp ne ptr %10, null
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void %13(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %1) #10
  br label %18

18:                                               ; preds = %17, %12, %8
  %19 = getelementptr inbounds %struct.iio_event_interface, ptr %10, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.iio_event_interface, ptr %10, i32 0, i32 1, i32 0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  %24 = select i1 %23, i32 0, i32 65
  br label %25

25:                                               ; preds = %18, %2
  %26 = phi i32 [ %24, %18 ], [ 0, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_event_chrdev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev_opaque, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iio_event_interface, ptr %6, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %7) #10
  %8 = icmp eq ptr %4, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 2
  tail call void @put_device(ptr noundef %10) #10
  br label %11

11:                                               ; preds = %9, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }

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
!8 = !{i64 2152754656}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151480412, i64 2151480437}
!11 = !{i64 3975946}
!12 = !{i64 3976143}
!13 = !{i64 2151461422}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
