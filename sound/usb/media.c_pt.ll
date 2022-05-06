; ModuleID = '/llk/IR/sound/usb/media.c_pt.bc'
source_filename = "../sound/usb/media.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.72, i8, i8, ptr }
%struct.anon.72 = type { i32, i32, i32 }
%struct.media_ctl = type { ptr, %struct.media_entity, ptr, ptr, %struct.media_pad, %struct.media_pipeline }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.70 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.67], %struct.media_entity_enum, i32 }
%struct.anon.67 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.media_mixer_ctl = type { ptr, %struct.media_entity, ptr, ptr, [3 x %struct.media_pad], %struct.media_pipeline }

@.str = private unnamed_addr constant [14 x i8] c"snd_usb_audio\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [49 x i8] c"Couldn't create media mixer entities. Error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Couldn't register media device. Error: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_media_stream_init(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %73

13:                                               ; preds = %9
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 268) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %73, label %17

17:                                               ; preds = %13
  store ptr %7, ptr %15, align 8
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ 12289, %19 ], [ 12290, %17 ]
  %22 = phi i32 [ 1, %19 ], [ 2, %17 ]
  %23 = phi i32 [ 768, %19 ], [ 769, %17 ]
  %24 = phi i16 [ 2, %19 ], [ 1, %17 ]
  %25 = getelementptr inbounds %struct.media_ctl, ptr %15, i32 0, i32 1, i32 3
  store i32 %21, ptr %25, align 4
  %26 = getelementptr inbounds %struct.media_ctl, ptr %15, i32 0, i32 4, i32 4
  store i32 %22, ptr %26, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 7
  %28 = getelementptr inbounds %struct.media_ctl, ptr %15, i32 0, i32 1
  %29 = getelementptr inbounds %struct.media_ctl, ptr %15, i32 0, i32 1, i32 1
  store ptr %27, ptr %29, align 4
  %30 = getelementptr inbounds %struct.media_ctl, ptr %15, i32 0, i32 4
  %31 = tail call i32 @media_entity_pads_init(ptr noundef %28, i16 noundef zeroext 1, ptr noundef %30) #5
  %32 = load ptr, ptr %15, align 8
  %33 = tail call i32 @media_device_register_entity(ptr noundef %32, ptr noundef %28) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %20
  %36 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 %2, i32 7, i32 27
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 20
  %39 = and i32 %37, 1048575
  %40 = tail call ptr @media_devnode_create(ptr noundef nonnull %7, i32 noundef %23, i32 noundef 0, i32 noundef %38, i32 noundef %39) #5
  %41 = getelementptr inbounds %struct.media_ctl, ptr %15, i32 0, i32 2
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, null
  br i1 %42, label %69, label %43

43:                                               ; preds = %35
  %44 = tail call ptr @media_create_intf_link(ptr noundef %28, ptr noundef nonnull %40, i32 noundef 1) #5
  %45 = getelementptr inbounds %struct.media_ctl, ptr %15, i32 0, i32 3
  store ptr %44, ptr %45, align 8
  %46 = icmp eq ptr %44, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.media_device, ptr %7, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %63, label %51

51:                                               ; preds = %60, %47
  %52 = phi ptr [ %61, %60 ], [ %49, %47 ]
  %53 = getelementptr i8, ptr %52, i32 16
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 12291
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %52, i32 -8
  %58 = tail call i32 @media_create_pad_link(ptr noundef %57, i16 noundef zeroext %24, ptr noundef %28, i16 noundef zeroext 0, i32 noundef 1) #5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %51
  %61 = load ptr, ptr %52, align 4
  %62 = icmp eq ptr %61, %48
  br i1 %62, label %63, label %51

63:                                               ; preds = %60, %47
  store ptr %15, ptr %10, align 4
  br label %73

64:                                               ; preds = %56
  %65 = load ptr, ptr %45, align 8
  tail call void @media_remove_intf_link(ptr noundef %65) #5
  br label %66

66:                                               ; preds = %64, %43
  %67 = phi i32 [ %58, %64 ], [ -12, %43 ]
  %68 = load ptr, ptr %41, align 4
  tail call void @media_devnode_remove(ptr noundef %68) #5
  br label %69

69:                                               ; preds = %66, %35
  %70 = phi i32 [ %67, %66 ], [ -12, %35 ]
  tail call void @media_device_unregister_entity(ptr noundef %28) #5
  br label %71

71:                                               ; preds = %69, %20
  %72 = phi i32 [ %33, %20 ], [ %70, %69 ]
  tail call void @kfree(ptr noundef nonnull %15) #5
  br label %73

73:                                               ; preds = %71, %63, %13, %9, %3
  %74 = phi i32 [ %72, %71 ], [ 0, %63 ], [ 0, %3 ], [ 0, %9 ], [ -12, %13 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_devnode_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_create_intf_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_remove_intf_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_devnode_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister_entity(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_media_stream_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.media_device, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.media_devnode, ptr %10, i32 0, i32 6
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.media_ctl, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void @media_devnode_remove(ptr noundef %19) #5
  %20 = getelementptr inbounds %struct.media_ctl, ptr %3, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %17, %12, %8, %5
  tail call void @kfree(ptr noundef nonnull %3) #5
  store ptr null, ptr %2, align 4
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_media_start_pipeline(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.media_device, ptr %6, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.media_device, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.media_ctl, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.media_ctl, ptr %3, i32 0, i32 5
  %15 = tail call i32 %10(ptr noundef %13, ptr noundef %14) #5
  %16 = load ptr, ptr %3, align 4
  br label %17

17:                                               ; preds = %12, %5
  %18 = phi ptr [ %16, %12 ], [ %8, %5 ]
  %19 = phi i32 [ %15, %12 ], [ 0, %5 ]
  %20 = getelementptr inbounds %struct.media_device, ptr %18, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi i32 [ %19, %17 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_media_stop_pipeline(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.media_device, ptr %6, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.media_device, ptr %8, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.media_ctl, ptr %3, i32 0, i32 1
  tail call void %10(ptr noundef %13) #5
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi ptr [ %14, %12 ], [ %8, %5 ]
  %17 = getelementptr inbounds %struct.media_device, ptr %16, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %17) #5
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_media_device_create(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %4, i32 -128
  %10 = tail call ptr @media_device_usb_allocate(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @__this_module) #5
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %133, label %12

12:                                               ; preds = %8
  store ptr %10, ptr %5, align 4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %69, label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %10, %12 ], [ %6, %2 ]
  %16 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 30
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 12, i32 27
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 20
  %25 = and i32 %23, 1048575
  %26 = tail call ptr @media_devnode_create(ptr noundef nonnull %15, i32 noundef 770, i32 noundef 0, i32 noundef %24, i32 noundef %25) #5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %69, label %28

28:                                               ; preds = %20
  store ptr %26, ptr %17, align 4
  br label %29

29:                                               ; preds = %28, %14
  %30 = phi ptr [ %18, %14 ], [ %26, %28 ]
  %31 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 23
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %72, label %34

34:                                               ; preds = %64, %29
  %35 = phi ptr [ %65, %64 ], [ %32, %29 ]
  %36 = getelementptr i8, ptr %35, i32 64
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 332) #4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %69, label %43

43:                                               ; preds = %39
  store ptr %15, ptr %41, align 8
  %44 = getelementptr inbounds %struct.media_mixer_ctl, ptr %41, i32 0, i32 1
  %45 = getelementptr inbounds %struct.media_mixer_ctl, ptr %41, i32 0, i32 1, i32 3
  store i32 12291, ptr %45, align 4
  %46 = load ptr, ptr %16, align 4
  %47 = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.media_mixer_ctl, ptr %41, i32 0, i32 1, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.media_mixer_ctl, ptr %41, i32 0, i32 4
  %50 = getelementptr inbounds %struct.media_mixer_ctl, ptr %41, i32 0, i32 4, i32 0, i32 4
  store i32 1, ptr %50, align 8
  %51 = getelementptr %struct.media_mixer_ctl, ptr %41, i32 0, i32 4, i32 1, i32 4
  store i32 2, ptr %51, align 8
  %52 = getelementptr %struct.media_mixer_ctl, ptr %41, i32 0, i32 4, i32 2, i32 4
  store i32 2, ptr %52, align 8
  %53 = tail call i32 @media_entity_pads_init(ptr noundef %44, i16 noundef zeroext 3, ptr noundef %49) #5
  %54 = load ptr, ptr %41, align 8
  %55 = tail call i32 @media_device_register_entity(ptr noundef %54, ptr noundef %44) #5
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %43
  %58 = tail call ptr @media_create_intf_link(ptr noundef %44, ptr noundef %30, i32 noundef 1) #5
  %59 = getelementptr inbounds %struct.media_mixer_ctl, ptr %41, i32 0, i32 3
  store ptr %58, ptr %59, align 8
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @media_device_unregister_entity(ptr noundef %44) #5
  br label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.media_mixer_ctl, ptr %41, i32 0, i32 2
  store ptr %30, ptr %63, align 4
  store ptr %41, ptr %36, align 4
  br label %64

64:                                               ; preds = %62, %34
  %65 = load ptr, ptr %35, align 4
  %66 = icmp eq ptr %65, %31
  br i1 %66, label %72, label %34

67:                                               ; preds = %61, %43
  %68 = phi i32 [ -12, %61 ], [ %55, %43 ]
  tail call void @kfree(ptr noundef nonnull %41) #5
  br label %69

69:                                               ; preds = %67, %39, %20, %12
  %70 = phi ptr [ %15, %67 ], [ %15, %20 ], [ null, %12 ], [ %15, %39 ]
  %71 = phi i32 [ %68, %67 ], [ -12, %20 ], [ -19, %12 ], [ -12, %39 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %71) #6
  br label %72

72:                                               ; preds = %69, %64, %29
  %73 = phi i1 [ false, %69 ], [ true, %29 ], [ true, %64 ]
  %74 = phi i32 [ %71, %69 ], [ 0, %29 ], [ 0, %64 ]
  %75 = phi ptr [ %70, %69 ], [ %15, %29 ], [ %15, %64 ]
  %76 = getelementptr inbounds %struct.media_device, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.media_devnode, ptr %77, i32 0, i32 6
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %133

84:                                               ; preds = %79, %72
  br i1 %73, label %85, label %87

85:                                               ; preds = %84
  %86 = tail call i32 @__media_device_register(ptr noundef %75, ptr noundef nonnull @__this_module) #5
  br label %87

87:                                               ; preds = %85, %84
  %88 = phi i32 [ %74, %84 ], [ %86, %85 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %133, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %5, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %132, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 23
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %94
  br i1 %96, label %118, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.media_device, ptr %91, i32 0, i32 1
  br label %99

99:                                               ; preds = %115, %97
  %100 = phi ptr [ %95, %97 ], [ %116, %115 ]
  %101 = getelementptr i8, ptr %100, i32 64
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %115, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %98, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.media_devnode, ptr %105, i32 0, i32 6
  %109 = load volatile i32, ptr %108, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.media_mixer_ctl, ptr %102, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %113) #5
  br label %114

114:                                              ; preds = %112, %107, %104
  tail call void @kfree(ptr noundef nonnull %102) #5
  store ptr null, ptr %101, align 4
  br label %115

115:                                              ; preds = %114, %99
  %116 = load ptr, ptr %100, align 4
  %117 = icmp eq ptr %116, %94
  br i1 %117, label %118, label %99

118:                                              ; preds = %115, %93
  %119 = getelementptr inbounds %struct.media_device, ptr %91, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.media_devnode, ptr %120, i32 0, i32 6
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 30
  %129 = load ptr, ptr %128, align 4
  tail call void @media_devnode_remove(ptr noundef %129) #5
  br label %130

130:                                              ; preds = %127, %122, %118
  %131 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 30
  store ptr null, ptr %131, align 4
  br label %132

132:                                              ; preds = %130, %90
  tail call void @media_device_delete(ptr noundef %75, ptr noundef nonnull @.str, ptr noundef nonnull @__this_module) #5
  store ptr null, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %88) #6
  br label %133

133:                                              ; preds = %132, %87, %79, %8
  %134 = phi i32 [ %88, %132 ], [ -12, %8 ], [ %74, %79 ], [ 0, %87 ]
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_device_usb_allocate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_media_device_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %55, label %7

7:                                                ; preds = %50, %1
  %8 = phi ptr [ %51, %50 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -148
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.media_device, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.media_devnode, ptr %17, i32 0, i32 6
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.media_ctl, ptr %10, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void @media_devnode_remove(ptr noundef %26) #5
  %27 = getelementptr inbounds %struct.media_ctl, ptr %10, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %27) #5
  br label %28

28:                                               ; preds = %24, %19, %15, %12
  tail call void @kfree(ptr noundef nonnull %10) #5
  store ptr null, ptr %9, align 4
  br label %29

29:                                               ; preds = %28, %7
  %30 = getelementptr i8, ptr %8, i32 -4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.media_device, ptr %34, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.media_devnode, ptr %38, i32 0, i32 6
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.media_ctl, ptr %31, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  tail call void @media_devnode_remove(ptr noundef %47) #5
  %48 = getelementptr inbounds %struct.media_ctl, ptr %31, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %48) #5
  br label %49

49:                                               ; preds = %45, %40, %36, %33
  tail call void @kfree(ptr noundef nonnull %31) #5
  store ptr null, ptr %30, align 4
  br label %50

50:                                               ; preds = %49, %29
  %51 = load ptr, ptr %8, align 4
  %52 = icmp eq ptr %51, %4
  br i1 %52, label %53, label %7

53:                                               ; preds = %50
  %54 = load ptr, ptr %2, align 4
  br label %55

55:                                               ; preds = %53, %1
  %56 = phi ptr [ %54, %53 ], [ %3, %1 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %97, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 23
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %83, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.media_device, ptr %56, i32 0, i32 1
  br label %64

64:                                               ; preds = %80, %62
  %65 = phi ptr [ %60, %62 ], [ %81, %80 ]
  %66 = getelementptr i8, ptr %65, i32 64
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %63, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.media_devnode, ptr %70, i32 0, i32 6
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.media_mixer_ctl, ptr %67, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %78) #5
  br label %79

79:                                               ; preds = %77, %72, %69
  tail call void @kfree(ptr noundef nonnull %67) #5
  store ptr null, ptr %66, align 4
  br label %80

80:                                               ; preds = %79, %64
  %81 = load ptr, ptr %65, align 4
  %82 = icmp eq ptr %81, %59
  br i1 %82, label %83, label %64

83:                                               ; preds = %80, %58
  %84 = getelementptr inbounds %struct.media_device, ptr %56, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.media_devnode, ptr %85, i32 0, i32 6
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 30
  %94 = load ptr, ptr %93, align 4
  tail call void @media_devnode_remove(ptr noundef %94) #5
  br label %95

95:                                               ; preds = %92, %87, %83
  %96 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 30
  store ptr null, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %55
  %98 = icmp eq ptr %3, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  tail call void @media_device_delete(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @__this_module) #5
  store ptr null, ptr %2, align 4
  br label %100

100:                                              ; preds = %99, %97
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
