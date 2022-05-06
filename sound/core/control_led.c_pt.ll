; ModuleID = '/llk/IR/sound/core/control_led.c_pt.bc'
source_filename = "../sound/core/control_led.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_led = type { %struct.device, %struct.list_head, ptr, i32, i32, i32, [32 x ptr] }
%struct.snd_ctl_layer_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.5, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.5 = type { %struct.anon.8, [40 x i8] }
%struct.anon.8 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.9, [128 x i8] }
%union.anon.9 = type { %union.anon.11 }
%union.anon.11 = type { [64 x i64] }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_ctl_led_ctl = type { %struct.list_head, ptr, i32, ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.14, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.14 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_led_card = type { %struct.device, i32, ptr }

@__UNIQUE_ID_author172 = internal constant [40 x i8] c"author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [56 x i8] c"description=ALSA control interface to LED trigger code.\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@snd_ctl_led_dev = internal global %struct.device zeroinitializer, align 8
@sound_class = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [8 x i8] c"ctl-led\00", align 1
@snd_ctl_leds = internal global [2 x %struct.snd_ctl_led] [%struct.snd_ctl_led { %struct.device zeroinitializer, %struct.list_head zeroinitializer, ptr @.str.1, i32 0, i32 0, i32 0, [32 x ptr] zeroinitializer }, %struct.snd_ctl_led { %struct.device zeroinitializer, %struct.list_head zeroinitializer, ptr @.str.2, i32 1, i32 1, i32 0, [32 x ptr] zeroinitializer }], align 8
@snd_ctl_led_dev_attr_groups = internal global [2 x ptr] [ptr @snd_ctl_led_dev_attr_group, ptr null], align 4
@snd_ctl_led_lops = internal global %struct.snd_ctl_layer_ops { ptr null, ptr @.str.15, ptr @snd_ctl_led_register, ptr @snd_ctl_led_disconnect, ptr @snd_ctl_led_notify }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"speaker\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mic\00", align 1
@snd_ctl_led_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @snd_ctl_led_dev_attrs, ptr null }, align 4
@snd_ctl_led_dev_attrs = internal global [3 x ptr] [ptr @dev_attr_mode, ptr @dev_attr_brightness, ptr null], align 4
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420 }, ptr @mode_show, ptr @mode_store }, align 4
@dev_attr_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @brightness_show, ptr null }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"follow-mute\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"follow-route\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"route\00", align 1
@snd_ctl_led_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @snd_ctl_led_mutex, i64 12), ptr getelementptr (i8, ptr @snd_ctl_led_mutex, i64 12) } }, align 4
@snd_ctl_led_card_valid = internal unnamed_addr global [32 x i8] zeroinitializer, align 1
@snd_ctl_led_get.info = internal global %struct.snd_ctl_elem_info zeroinitializer, align 8
@snd_ctl_led_get.value = internal global %struct.snd_ctl_elem_value zeroinitializer, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"snd-ctl-led\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"card%d\00", align 1
@snd_ctl_led_card_attr_groups = internal global [2 x ptr] [ptr @snd_ctl_led_card_attr_group, ptr null], align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"led-%s\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"sound/core/control_led.c\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"can't create symlink to controlC%i device\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"can't create symlink to card%i\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"\013snd_ctl_led: unable to add card%d\00", align 1
@snd_ctl_led_card_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @snd_ctl_led_card_attrs, ptr null }, align 4
@snd_ctl_led_card_attrs = internal global [5 x ptr] [ptr @dev_attr_attach, ptr @dev_attr_detach, ptr @dev_attr_reset, ptr @dev_attr_list, ptr null], align 4
@dev_attr_attach = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 128 }, ptr null, ptr @attach_store }, align 4
@dev_attr_detach = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 128 }, ptr null, ptr @detach_store }, align 4
@dev_attr_reset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 128 }, ptr null, ptr @reset_store }, align 4
@dev_attr_list = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @list_show, ptr null }, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"numid=\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"iface=\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"device=\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"subdevice=\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"index=\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_license174], section "llvm.metadata"
@switch.table.mode_show = private unnamed_addr constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.6], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  tail call void @device_initialize(ptr noundef nonnull @snd_ctl_led_dev) #16
  %1 = load ptr, ptr @sound_class, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.device, ptr @snd_ctl_led_dev, i32 0, i32 31), align 4
  store ptr @snd_ctl_led_dev_release, ptr getelementptr inbounds (%struct.device, ptr @snd_ctl_led_dev, i32 0, i32 33), align 4
  %2 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull @snd_ctl_led_dev, ptr noundef nonnull @.str) #16
  %3 = tail call i32 @device_add(ptr noundef nonnull @snd_ctl_led_dev) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @put_device(ptr noundef nonnull @snd_ctl_led_dev) #16
  br label %25

6:                                                ; preds = %23, %0
  %7 = phi i1 [ false, %23 ], [ true, %0 ]
  %8 = phi i32 [ 1, %23 ], [ 0, %0 ]
  %9 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %8
  %10 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %8, i32 1
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %8, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  tail call void @device_initialize(ptr noundef %9) #16
  %12 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  store ptr @snd_ctl_led_dev, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 33
  store ptr @snd_ctl_led_release, ptr %13, align 4
  %14 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 32
  store ptr @snd_ctl_led_dev_attr_groups, ptr %14, align 8
  %15 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %8, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %9, ptr noundef %16) #16
  %18 = tail call i32 @device_add(ptr noundef %9) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  tail call void @put_device(ptr noundef %9) #16
  br i1 %7, label %22, label %21

21:                                               ; preds = %20
  tail call void @device_unregister(ptr noundef nonnull @snd_ctl_leds) #16
  br label %22

22:                                               ; preds = %21, %20
  tail call void @device_unregister(ptr noundef nonnull @snd_ctl_led_dev) #16
  br label %25

23:                                               ; preds = %6
  br i1 %7, label %6, label %24

24:                                               ; preds = %23
  tail call void @snd_ctl_register_layer(ptr noundef nonnull @snd_ctl_led_lops) #16
  br label %25

25:                                               ; preds = %24, %22, %5
  %26 = phi i32 [ -12, %5 ], [ -12, %22 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @snd_ctl_disconnect_layer(ptr noundef nonnull @snd_ctl_led_lops) #16
  br label %1

1:                                                ; preds = %11, %0
  %2 = phi i32 [ 0, %0 ], [ %12, %11 ]
  %3 = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %2
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @snd_card_ref(i32 noundef %2) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  tail call fastcc void @snd_ctl_led_sysfs_remove(ptr noundef nonnull %7)
  %10 = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 28
  tail call void @put_device(ptr noundef %10) #16
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = add nuw nsw i32 %2, 1
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %1

14:                                               ; preds = %11
  tail call void @device_unregister(ptr noundef nonnull @snd_ctl_leds) #16
  tail call void @device_unregister(ptr noundef getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1)) #16
  tail call void @device_unregister(ptr noundef nonnull @snd_ctl_led_dev) #16
  %15 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1), align 8
  %16 = icmp eq ptr %15, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1)
  br i1 %16, label %17, label %20

17:                                               ; preds = %20, %14
  %18 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1), align 8
  %19 = icmp eq ptr %18, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1)
  br i1 %19, label %36, label %28

20:                                               ; preds = %20, %14
  %21 = phi ptr [ %26, %20 ], [ %15, %14 ]
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef %21) #16
  %26 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1), align 8
  %27 = icmp eq ptr %26, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1)
  br i1 %27, label %17, label %20

28:                                               ; preds = %28, %17
  %29 = phi ptr [ %34, %28 ], [ %18, %17 ]
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  tail call void @kfree(ptr noundef %29) #16
  %34 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1), align 8
  %35 = icmp eq ptr %34, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1)
  br i1 %35, label %36, label %28

36:                                               ; preds = %28, %17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @snd_ctl_led_dev_release(ptr nocapture noundef %0) #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @snd_ctl_led_release(ptr nocapture noundef %0) #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_register_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.snd_ctl_led, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds [4 x ptr], ptr @switch.table.mode_show, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ null, %3 ], [ %9, %7 ]
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef returned %3) #5 {
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 15)
  %7 = sub nuw nsw i32 16, %6
  %8 = getelementptr i8, ptr %5, i32 %6
  call void @llvm.memset.p0.i32(ptr align 1 %8, i8 0, i32 %7, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %2, i32 %6, i1 false)
  %9 = getelementptr [16 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %9, align 1
  %10 = call ptr @strstr(ptr noundef nonnull %5, ptr noundef nonnull @.str.9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %4
  %13 = call ptr @strstr(ptr noundef nonnull %5, ptr noundef nonnull @.str.10)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %5, ptr noundef nonnull dereferenceable(3) @.str.7, i32 3)
  %17 = icmp eq i32 %16, 0
  %18 = load i8, ptr %5, align 1
  %19 = icmp eq i8 %18, 48
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %5, ptr noundef nonnull dereferenceable(2) @.str.6, i32 2)
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq i8 %18, 49
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %21, %15, %12, %4
  %27 = phi i32 [ 0, %4 ], [ 1, %12 ], [ 2, %15 ], [ 3, %21 ]
  call void @mutex_lock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %28 = getelementptr inbounds %struct.snd_ctl_led, ptr %0, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %29 = getelementptr inbounds %struct.snd_ctl_led, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 25
  %32 = add i32 %31, 33554432
  call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef %32, ptr noundef null, i32 noundef 0)
  br label %33

33:                                               ; preds = %26, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_ctl_led_set_state(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = lshr i32 %1, 25
  %6 = and i32 %5, 7
  %7 = add nsw i32 %6, -1
  %8 = icmp ugt i32 %7, 1
  %9 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %7
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %87, label %12

12:                                               ; preds = %4
  tail call void @mutex_lock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %13 = icmp ne ptr %0, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = load i32, ptr %0, align 8
  %16 = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  br label %87

20:                                               ; preds = %14, %12
  %21 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %7, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %45, label %24

24:                                               ; preds = %36, %20
  %25 = phi ptr [ %43, %36 ], [ %22, %20 ]
  %26 = phi i32 [ %42, %36 ], [ -1, %20 ]
  %27 = phi i1 [ %37, %36 ], [ false, %20 ]
  %28 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %25, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %25, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %3
  %35 = select i1 %34, i1 true, i1 %27
  br label %36

36:                                               ; preds = %31, %24
  %37 = phi i1 [ %27, %24 ], [ %35, %31 ]
  %38 = tail call fastcc i32 @snd_ctl_led_get(ptr noundef %25)
  %39 = tail call i32 @llvm.smax.i32(i32 %26, i32 0)
  %40 = or i32 %38, %39
  %41 = icmp slt i32 %38, 0
  %42 = select i1 %41, i32 %26, i32 %40
  %43 = load ptr, ptr %25, align 4
  %44 = icmp eq ptr %43, %21
  br i1 %44, label %45, label %24

45:                                               ; preds = %36, %20
  %46 = phi i1 [ false, %20 ], [ %37, %36 ]
  %47 = phi i32 [ -1, %20 ], [ %42, %36 ]
  %48 = xor i1 %46, true
  %49 = icmp ne ptr %2, null
  %50 = and i1 %49, %48
  %51 = and i1 %13, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 24) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %54, i32 0, i32 1
  store ptr %0, ptr %57, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %54, i32 0, i32 2
  store i32 %1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %54, i32 0, i32 3
  store ptr %2, ptr %59, align 8
  %60 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %54, i32 0, i32 4
  store i32 %3, ptr %60, align 4
  %61 = load ptr, ptr %21, align 8
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %54, ptr %62, align 4
  store ptr %61, ptr %54, align 8
  %63 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %21, ptr %63, align 4
  store volatile ptr %54, ptr %21, align 8
  %64 = tail call fastcc i32 @snd_ctl_led_get(ptr noundef nonnull %54)
  %65 = tail call i32 @llvm.smax.i32(i32 %47, i32 0)
  %66 = or i32 %64, %65
  %67 = icmp slt i32 %64, 0
  %68 = select i1 %67, i32 %47, i32 %66
  br label %69

69:                                               ; preds = %56, %52, %45
  %70 = phi i32 [ %68, %56 ], [ %47, %52 ], [ %47, %45 ]
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %71 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %7, i32 5
  %72 = load i32, ptr %71, align 4
  switch i32 %72, label %78 [
    i32 2, label %81
    i32 3, label %73
    i32 1, label %74
  ]

73:                                               ; preds = %69
  br label %81

74:                                               ; preds = %69
  %75 = xor i32 %70, -1
  %76 = lshr i32 %75, 31
  %77 = xor i32 %76, %70
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i32 [ %70, %69 ], [ %77, %74 ]
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %87

81:                                               ; preds = %78, %73, %69
  %82 = phi i32 [ %79, %78 ], [ 0, %73 ], [ 1, %69 ]
  %83 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %7, i32 4
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %82, 0
  %86 = zext i1 %85 to i32
  tail call void @ledtrig_audio_set(i32 noundef %84, i32 noundef %86) #16
  br label %87

87:                                               ; preds = %81, %78, %19, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_ctl_led_get(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(272) @snd_ctl_led_get.info, i8 0, i32 272, i1 false)
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) @snd_ctl_led_get.info, ptr noundef align 4 dereferenceable(64) %4, i32 64, i1 false)
  %5 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 0, i32 5), align 4
  %8 = add i32 %7, %6
  store i32 %8, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 0, i32 5), align 4
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr @snd_ctl_led_get.info, align 8
  %11 = add i32 %10, %9
  store i32 %11, ptr @snd_ctl_led_get.info, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %3, ptr noundef nonnull @snd_ctl_led_get.info) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %1
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(648) getelementptr inbounds (%struct.snd_ctl_elem_value, ptr @snd_ctl_led_get.value, i32 0, i32 1), i8 0, i32 648, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) @snd_ctl_led_get.value, ptr noundef nonnull align 8 dereferenceable(64) @snd_ctl_led_get.info, i32 64, i1 false)
  %17 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %3, ptr noundef nonnull @snd_ctl_led_get.value) #16
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 1), align 8
  %23 = add i32 %22, -1
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 3), align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 5), align 8
  br label %33

30:                                               ; preds = %33
  %31 = add nuw i32 %34, 1
  %32 = icmp eq i32 %31, %26
  br i1 %32, label %53, label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ 0, %28 ], [ %31, %30 ]
  %35 = getelementptr [128 x i32], ptr getelementptr inbounds (%struct.snd_ctl_elem_value, ptr @snd_ctl_led_get.value, i32 0, i32 2), i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %29
  br i1 %37, label %30, label %53

38:                                               ; preds = %21
  %39 = icmp eq i32 %22, 6
  br i1 %39, label %40, label %53

40:                                               ; preds = %38
  %41 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 3), align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 5), align 8
  br label %48

45:                                               ; preds = %48
  %46 = add nuw i32 %49, 1
  %47 = icmp eq i32 %46, %41
  br i1 %47, label %53, label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ 0, %43 ], [ %46, %45 ]
  %50 = getelementptr [64 x i64], ptr getelementptr inbounds (%struct.snd_ctl_elem_value, ptr @snd_ctl_led_get.value, i32 0, i32 2), i32 0, i32 %49
  %51 = load i64, ptr %50, align 8
  %52 = icmp eq i64 %51, %44
  br i1 %52, label %45, label %53

53:                                               ; preds = %48, %45, %40, %38, %33, %30, %25, %16, %1
  %54 = phi i32 [ -1, %1 ], [ -1, %16 ], [ 0, %38 ], [ 0, %25 ], [ 0, %40 ], [ 1, %33 ], [ 0, %30 ], [ 1, %48 ], [ 0, %45 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ledtrig_audio_set(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brightness_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.snd_ctl_led, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @ledtrig_audio_get(i32 noundef %5) #16
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ledtrig_audio_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_ctl_led_register(ptr noundef %0) #5 {
  %2 = alloca [32 x i8], align 1
  %3 = load i32, ptr %0, align 8
  %4 = icmp ugt i32 %3, 31
  br i1 %4, label %105, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %6 = load i32, ptr %0, align 8
  %7 = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %6
  store i8 1, ptr %7, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %8 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %32, label %14

11:                                               ; preds = %28, %14
  %12 = load ptr, ptr %15, align 4
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %32, label %14

14:                                               ; preds = %11, %5
  %15 = phi ptr [ %12, %11 ], [ %9, %5 ]
  %16 = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %19

19:                                               ; preds = %28, %14
  %20 = phi i32 [ %29, %28 ], [ %17, %14 ]
  %21 = phi i32 [ %30, %28 ], [ 0, %14 ]
  %22 = getelementptr %struct.snd_kcontrol, ptr %15, i32 0, i32 10, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 234881024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %0, i32 noundef %24, ptr noundef %15, i32 noundef %21) #16
  %27 = load i32, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %20, %19 ], [ %27, %26 ]
  %30 = add nuw i32 %21, 1
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %19, label %11

32:                                               ; preds = %11, %5
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef 33554432, ptr noundef null, i32 noundef 0) #16
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef 67108864, ptr noundef null, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #16, !annotation !9
  %33 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 12
  %34 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 480) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %0, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %36, i32 0, i32 1
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %36, i32 0, i32 2
  store ptr @snd_ctl_leds, ptr %41, align 4
  tail call void @device_initialize(ptr noundef nonnull %36) #16
  %42 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 33
  store ptr @snd_ctl_led_card_release, ptr %42, align 4
  %43 = load i32, ptr %0, align 8
  %44 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %36, ptr noundef nonnull @.str.16, i32 noundef %43) #16
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 1
  store ptr @snd_ctl_leds, ptr %47, align 4
  %48 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 32
  store ptr @snd_ctl_led_card_attr_groups, ptr %48, align 8
  %49 = tail call i32 @device_add(ptr noundef nonnull %36) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i32, ptr %0, align 8
  %53 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 6, i32 %52
  store ptr %36, ptr %53, align 4
  %54 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 2), align 8
  %55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef %54) #16
  %56 = call i32 @sysfs_create_link(ptr noundef %33, ptr noundef nonnull %36, ptr noundef nonnull %2) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !10

58:                                               ; preds = %51
  %59 = load i32, ptr %0, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 698, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %59) #16
  br label %60

60:                                               ; preds = %58, %51
  %61 = call i32 @sysfs_create_link(ptr noundef nonnull %36, ptr noundef %34, ptr noundef nonnull @.str.20) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63, !prof !10

63:                                               ; preds = %60
  %64 = load i32, ptr %0, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 700, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %64) #16
  br label %69

65:                                               ; preds = %46, %38
  tail call void @put_device(ptr noundef nonnull %36) #16
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i32, ptr %0, align 8
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %67) #18
  br label %69

69:                                               ; preds = %66, %63, %60
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %71 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 480) #17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %101, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %0, align 8
  %75 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %71, i32 0, i32 1
  store i32 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %71, i32 0, i32 2
  store ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1), ptr %76, align 4
  call void @device_initialize(ptr noundef nonnull %71) #16
  %77 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 33
  store ptr @snd_ctl_led_card_release, ptr %77, align 4
  %78 = load i32, ptr %0, align 8
  %79 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %71, ptr noundef nonnull @.str.16, i32 noundef %78) #16
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 1
  store ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1), ptr %82, align 4
  %83 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 32
  store ptr @snd_ctl_led_card_attr_groups, ptr %83, align 8
  %84 = call i32 @device_add(ptr noundef nonnull %71) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load i32, ptr %0, align 8
  %88 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 6, i32 %87
  store ptr %71, ptr %88, align 4
  %89 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 2), align 8
  %90 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef %89) #16
  %91 = call i32 @sysfs_create_link(ptr noundef %33, ptr noundef nonnull %71, ptr noundef nonnull %2) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93, !prof !10

93:                                               ; preds = %86
  %94 = load i32, ptr %0, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 698, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %94) #16
  br label %95

95:                                               ; preds = %93, %86
  %96 = call i32 @sysfs_create_link(ptr noundef nonnull %71, ptr noundef %34, ptr noundef nonnull @.str.20) #16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98, !prof !10

98:                                               ; preds = %95
  %99 = load i32, ptr %0, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 700, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %99) #16
  br label %104

100:                                              ; preds = %81, %73
  call void @put_device(ptr noundef nonnull %71) #16
  br label %101

101:                                              ; preds = %100, %69
  %102 = load i32, ptr %0, align 8
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %102) #18
  br label %104

104:                                              ; preds = %101, %98, %95
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  br label %105

105:                                              ; preds = %104, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_ctl_led_disconnect(ptr noundef %0) #5 {
  tail call fastcc void @snd_ctl_led_sysfs_remove(ptr noundef %0)
  tail call void @mutex_lock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %2
  store i8 0, ptr %3, align 1
  %4 = icmp eq ptr %0, null
  br label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1), %1 ], [ %15, %14 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1)
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  br i1 %4, label %16, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %16, label %14

14:                                               ; preds = %16, %10
  %15 = phi ptr [ %7, %10 ], [ getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1), %16 ]
  br label %5

16:                                               ; preds = %10, %9
  %17 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @kfree(ptr noundef %7) #16
  br label %14

21:                                               ; preds = %30, %5
  %22 = phi ptr [ %31, %30 ], [ getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1), %5 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1)
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  br i1 %4, label %32, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %23, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %32, label %30

30:                                               ; preds = %32, %26
  %31 = phi ptr [ %23, %26 ], [ getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1), %32 ]
  br label %21

32:                                               ; preds = %26, %25
  %33 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @kfree(ptr noundef %23) #16
  br label %30

37:                                               ; preds = %21
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef 33554432, ptr noundef null, i32 noundef 0) #16
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef 67108864, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_ctl_led_notify(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #5 {
  %5 = icmp eq i32 %1, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @snd_ctl_led_remove(ptr noundef %2, i32 noundef %3, i32 noundef 0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %6
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %0, i32 noundef %7, ptr noundef null, i32 noundef 0)
  br label %32

10:                                               ; preds = %4
  %11 = and i32 %1, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr %struct.snd_kcontrol, ptr %2, i32 0, i32 10, i32 %3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 234881024
  %17 = tail call fastcc i32 @snd_ctl_led_remove(ptr noundef %2, i32 noundef %3, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %0, i32 noundef %17, ptr noundef null, i32 noundef 0)
  br label %20

20:                                               ; preds = %19, %13
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %20
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %0, i32 noundef %16, ptr noundef %2, i32 noundef %3)
  br label %32

23:                                               ; preds = %10
  %24 = and i32 %1, 5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr %struct.snd_kcontrol, ptr %2, i32 0, i32 10, i32 %3, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 234881024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %0, i32 noundef %29, ptr noundef %2, i32 noundef %3)
  br label %32

32:                                               ; preds = %31, %26, %23, %22, %20, %9, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_ctl_led_card_release(ptr noundef %0) #5 {
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @attach_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #5 {
  %5 = tail call fastcc i32 @set_led_id(ptr noundef %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_led_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #5 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [256 x i8], align 1
  %10 = alloca %struct.snd_ctl_elem_id, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %9, i8 0, i32 256, i1 false), !annotation !9
  %11 = tail call i32 @llvm.umax.i32(i32 %2, i32 3)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #16
  %12 = call ptr @strncpy(ptr noundef nonnull %9, ptr noundef %1, i32 noundef %11)
  %13 = getelementptr [256 x i8], ptr %9, i32 0, i32 %11
  store i8 0, ptr %13, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %10, i8 0, i32 64, i1 false)
  %14 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %10, i32 0, i32 1
  store i32 2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %10, i32 0, i32 5
  %16 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %10, i32 0, i32 4
  %17 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %10, i32 0, i32 3
  %18 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %10, i32 0, i32 2
  br label %19

19:                                               ; preds = %194, %4
  %20 = phi ptr [ %9, %4 ], [ %199, %194 ]
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %201, label %23

23:                                               ; preds = %19
  %24 = call i32 @strncasecmp(ptr noundef %20, ptr noundef nonnull @.str.24, i32 noundef 6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %20, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store i64 0, ptr %8, align 8, !annotation !9
  %28 = call i32 @kstrtoull(ptr noundef %27, i32 noundef 10, ptr noundef nonnull %8) #16
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = select i1 %29, i32 %31, i32 0
  store i32 %32, ptr %10, align 4
  br label %33

33:                                               ; preds = %36, %26
  %34 = phi ptr [ %27, %26 ], [ %37, %36 ]
  %35 = load i8, ptr %34, align 1
  switch i8 %35, label %36 [
    i8 0, label %38
    i8 44, label %38
  ]

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %34, i32 1
  br label %33

38:                                               ; preds = %33, %33
  %39 = icmp ne i8 %35, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr i8, ptr %34, i32 %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %194

42:                                               ; preds = %23
  %43 = call i32 @strncasecmp(ptr noundef %20, ptr noundef nonnull @.str.25, i32 noundef 6)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %20, i32 6
  %47 = call i32 @strncasecmp(ptr noundef %46, ptr noundef nonnull @.str.20, i32 noundef 4) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = call i32 @strncasecmp(ptr noundef %46, ptr noundef nonnull @.str.30, i32 noundef 5) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %45
  %53 = phi i32 [ 0, %45 ], [ 2, %49 ]
  store i32 %53, ptr %14, align 4
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %58, %54
  %56 = phi ptr [ %59, %58 ], [ %46, %54 ]
  %57 = load i8, ptr %56, align 1
  switch i8 %57, label %58 [
    i8 0, label %60
    i8 44, label %60
  ]

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %56, i32 1
  br label %55

60:                                               ; preds = %55, %55
  %61 = icmp ne i8 %57, 0
  %62 = zext i1 %61 to i32
  %63 = getelementptr i8, ptr %56, i32 %62
  br label %194

64:                                               ; preds = %42
  %65 = call i32 @strncasecmp(ptr noundef %20, ptr noundef nonnull @.str.26, i32 noundef 7)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = getelementptr i8, ptr %20, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store i64 0, ptr %7, align 8, !annotation !9
  %69 = call i32 @kstrtoull(ptr noundef %68, i32 noundef 10, ptr noundef nonnull %7) #16
  %70 = icmp eq i32 %69, 0
  %71 = load i64, ptr %7, align 8
  %72 = trunc i64 %71 to i32
  %73 = select i1 %70, i32 %72, i32 0
  store i32 %73, ptr %18, align 4
  br label %74

74:                                               ; preds = %77, %67
  %75 = phi ptr [ %68, %67 ], [ %78, %77 ]
  %76 = load i8, ptr %75, align 1
  switch i8 %76, label %77 [
    i8 0, label %79
    i8 44, label %79
  ]

77:                                               ; preds = %74
  %78 = getelementptr i8, ptr %75, i32 1
  br label %74

79:                                               ; preds = %74, %74
  %80 = icmp ne i8 %76, 0
  %81 = zext i1 %80 to i32
  %82 = getelementptr i8, ptr %75, i32 %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %194

83:                                               ; preds = %64
  %84 = call i32 @strncasecmp(ptr noundef %20, ptr noundef nonnull @.str.27, i32 noundef 10)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = getelementptr i8, ptr %20, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 0, ptr %6, align 8, !annotation !9
  %88 = call i32 @kstrtoull(ptr noundef %87, i32 noundef 10, ptr noundef nonnull %6) #16
  %89 = icmp eq i32 %88, 0
  %90 = load i64, ptr %6, align 8
  %91 = trunc i64 %90 to i32
  %92 = select i1 %89, i32 %91, i32 0
  store i32 %92, ptr %17, align 4
  br label %93

93:                                               ; preds = %96, %86
  %94 = phi ptr [ %87, %86 ], [ %97, %96 ]
  %95 = load i8, ptr %94, align 1
  switch i8 %95, label %96 [
    i8 0, label %98
    i8 44, label %98
  ]

96:                                               ; preds = %93
  %97 = getelementptr i8, ptr %94, i32 1
  br label %93

98:                                               ; preds = %93, %93
  %99 = icmp ne i8 %95, 0
  %100 = zext i1 %99 to i32
  %101 = getelementptr i8, ptr %94, i32 %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %194

102:                                              ; preds = %83
  %103 = call i32 @strncasecmp(ptr noundef %20, ptr noundef nonnull @.str.28, i32 noundef 5)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %153

105:                                              ; preds = %102
  %106 = getelementptr i8, ptr %20, i32 5
  %107 = load i8, ptr %106, align 1
  switch i8 %107, label %131 [
    i8 34, label %108
    i8 39, label %108
  ]

108:                                              ; preds = %105, %105
  %109 = getelementptr i8, ptr %20, i32 6
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, 0
  %112 = icmp eq i8 %110, %107
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %146, label %114

114:                                              ; preds = %123, %108
  %115 = phi i8 [ %127, %123 ], [ %110, %108 ]
  %116 = phi ptr [ %126, %123 ], [ %109, %108 ]
  %117 = phi i32 [ %125, %123 ], [ 44, %108 ]
  %118 = phi ptr [ %124, %123 ], [ %16, %108 ]
  %119 = icmp ugt i32 %117, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = getelementptr i8, ptr %118, i32 1
  store i8 %115, ptr %118, align 1
  %122 = add i32 %117, -1
  br label %123

123:                                              ; preds = %120, %114
  %124 = phi ptr [ %121, %120 ], [ %118, %114 ]
  %125 = phi i32 [ %122, %120 ], [ %117, %114 ]
  %126 = getelementptr i8, ptr %116, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = icmp eq i8 %127, 0
  %129 = icmp eq i8 %127, %107
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %146, label %114

131:                                              ; preds = %141, %105
  %132 = phi i8 [ %145, %141 ], [ %107, %105 ]
  %133 = phi ptr [ %144, %141 ], [ %106, %105 ]
  %134 = phi ptr [ %142, %141 ], [ %16, %105 ]
  %135 = phi i32 [ %143, %141 ], [ 44, %105 ]
  switch i8 %132, label %136 [
    i8 0, label %146
    i8 44, label %146
  ]

136:                                              ; preds = %131
  %137 = icmp ugt i32 %135, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = getelementptr i8, ptr %134, i32 1
  store i8 %132, ptr %134, align 1
  %140 = add i32 %135, -1
  br label %141

141:                                              ; preds = %138, %136
  %142 = phi ptr [ %139, %138 ], [ %134, %136 ]
  %143 = phi i32 [ %140, %138 ], [ %135, %136 ]
  %144 = getelementptr i8, ptr %133, i32 1
  %145 = load i8, ptr %144, align 1
  br label %131

146:                                              ; preds = %131, %131, %123, %108
  %147 = phi ptr [ %109, %108 ], [ %133, %131 ], [ %133, %131 ], [ %126, %123 ]
  %148 = phi ptr [ %16, %108 ], [ %134, %131 ], [ %134, %131 ], [ %124, %123 ]
  store i8 0, ptr %148, align 1
  %149 = load i8, ptr %147, align 1
  %150 = icmp ne i8 %149, 0
  %151 = zext i1 %150 to i32
  %152 = getelementptr i8, ptr %147, i32 %151
  br label %194

153:                                              ; preds = %102
  %154 = call i32 @strncasecmp(ptr noundef %20, ptr noundef nonnull @.str.29, i32 noundef 6)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = getelementptr i8, ptr %20, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !9
  %158 = call i32 @kstrtoull(ptr noundef %157, i32 noundef 10, ptr noundef nonnull %5) #16
  %159 = icmp eq i32 %158, 0
  %160 = load i64, ptr %5, align 8
  %161 = trunc i64 %160 to i32
  %162 = select i1 %159, i32 %161, i32 0
  store i32 %162, ptr %15, align 4
  br label %163

163:                                              ; preds = %166, %156
  %164 = phi ptr [ %157, %156 ], [ %167, %166 ]
  %165 = load i8, ptr %164, align 1
  switch i8 %165, label %166 [
    i8 0, label %168
    i8 44, label %168
  ]

166:                                              ; preds = %163
  %167 = getelementptr i8, ptr %164, i32 1
  br label %163

168:                                              ; preds = %163, %163
  %169 = icmp ne i8 %165, 0
  %170 = zext i1 %169 to i32
  %171 = getelementptr i8, ptr %164, i32 %170
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %194

172:                                              ; preds = %153
  %173 = icmp eq ptr %20, %9
  br i1 %173, label %174, label %194

174:                                              ; preds = %174, %172
  %175 = phi ptr [ %179, %174 ], [ %9, %172 ]
  %176 = load i8, ptr %175, align 1
  %177 = add i8 %176, -58
  %178 = icmp ult i8 %177, -10
  %179 = getelementptr i8, ptr %175, i32 1
  br i1 %178, label %180, label %174

180:                                              ; preds = %174
  %181 = icmp eq i8 %176, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %180
  %183 = icmp ugt i8 %176, 31
  br i1 %183, label %186, label %191

184:                                              ; preds = %180
  %185 = call fastcc ptr @parse_uint(ptr noundef nonnull %9, ptr noundef nonnull %10)
  br label %201

186:                                              ; preds = %186, %182
  %187 = phi ptr [ %188, %186 ], [ %175, %182 ]
  %188 = getelementptr i8, ptr %187, i32 1
  %189 = load i8, ptr %188, align 1
  %190 = icmp ugt i8 %189, 31
  br i1 %190, label %186, label %191

191:                                              ; preds = %186, %182
  %192 = phi ptr [ %175, %182 ], [ %188, %186 ]
  store i8 0, ptr %192, align 1
  %193 = call i32 @strscpy(ptr noundef %16, ptr noundef nonnull %9, i32 noundef 44) #16
  br label %201

194:                                              ; preds = %172, %168, %146, %98, %79, %60, %38
  %195 = phi ptr [ %20, %172 ], [ %171, %168 ], [ %152, %146 ], [ %101, %98 ], [ %82, %79 ], [ %63, %60 ], [ %41, %38 ]
  %196 = load i8, ptr %195, align 1
  %197 = icmp eq i8 %196, 44
  %198 = zext i1 %197 to i32
  %199 = getelementptr i8, ptr %195, i32 %198
  %200 = icmp eq ptr %199, %20
  br i1 %200, label %201, label %19

201:                                              ; preds = %194, %191, %184, %19
  %202 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %0, i32 0, i32 1
  %203 = load i32, ptr %202, align 8
  %204 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %0, i32 0, i32 2
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.snd_ctl_led, ptr %205, i32 0, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = call ptr @snd_card_ref(i32 noundef %203) #16
  %209 = icmp eq ptr %208, null
  br i1 %209, label %261, label %210

210:                                              ; preds = %201
  %211 = getelementptr inbounds %struct.snd_card, ptr %208, i32 0, i32 14
  call void @down_write(ptr noundef %211) #16
  %212 = call ptr @snd_ctl_find_id(ptr noundef nonnull %208, ptr noundef nonnull %10) #16
  %213 = icmp eq ptr %212, null
  br i1 %213, label %257, label %214

214:                                              ; preds = %210
  %215 = load i32, ptr %10, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.snd_kcontrol, ptr %212, i32 0, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = sub i32 %215, %219
  %221 = getelementptr inbounds %struct.snd_kcontrol, ptr %212, i32 0, i32 2
  %222 = load i32, ptr %221, align 4
  %223 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %220, i32 %222) #16, !srcloc !11
  %224 = and i32 %223, %220
  br label %234

225:                                              ; preds = %214
  %226 = load i32, ptr %15, align 4
  %227 = getelementptr inbounds %struct.snd_kcontrol, ptr %212, i32 0, i32 1, i32 5
  %228 = load i32, ptr %227, align 4
  %229 = sub i32 %226, %228
  %230 = getelementptr inbounds %struct.snd_kcontrol, ptr %212, i32 0, i32 2
  %231 = load i32, ptr %230, align 4
  %232 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %229, i32 %231) #16, !srcloc !11
  %233 = and i32 %232, %229
  br label %234

234:                                              ; preds = %225, %217
  %235 = phi i32 [ %224, %217 ], [ %233, %225 ]
  %236 = getelementptr %struct.snd_kcontrol, ptr %212, i32 0, i32 10, i32 %235, i32 1
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, 234881024
  %239 = icmp eq i32 %238, 0
  %240 = shl i32 %207, 25
  %241 = add i32 %240, 33554432
  %242 = icmp eq i32 %238, %241
  %243 = or i1 %239, %242
  br i1 %243, label %244, label %257

244:                                              ; preds = %234
  %245 = and i32 %237, -234881025
  %246 = select i1 %3, i32 %241, i32 0
  %247 = or i32 %245, %246
  %248 = icmp eq i32 %247, %237
  br i1 %248, label %257, label %249

249:                                              ; preds = %244
  store i32 %247, ptr %236, align 4
  %250 = and i32 %246, 234881024
  %251 = call fastcc i32 @snd_ctl_led_remove(ptr noundef nonnull %212, i32 noundef %235, i32 noundef %250) #16
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %249
  call fastcc void @snd_ctl_led_set_state(ptr noundef nonnull %208, i32 noundef %251, ptr noundef null, i32 noundef 0) #16
  br label %254

254:                                              ; preds = %253, %249
  %255 = icmp eq i32 %250, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %254
  call fastcc void @snd_ctl_led_set_state(ptr noundef nonnull %208, i32 noundef %250, ptr noundef nonnull %212, i32 noundef %235) #16
  br label %257

257:                                              ; preds = %256, %254, %244, %234, %210
  %258 = phi i1 [ true, %210 ], [ true, %234 ], [ false, %244 ], [ false, %254 ], [ false, %256 ]
  %259 = phi i32 [ -2, %210 ], [ -18, %234 ], [ 0, %244 ], [ 0, %254 ], [ 0, %256 ]
  call void @up_write(ptr noundef %211) #16
  %260 = getelementptr inbounds %struct.snd_card, ptr %208, i32 0, i32 28
  call void @put_device(ptr noundef %260) #16
  br i1 %258, label %261, label %263

261:                                              ; preds = %257, %201
  %262 = phi i32 [ %259, %257 ], [ -6, %201 ]
  br label %263

263:                                              ; preds = %261, %257
  %264 = phi i32 [ %262, %261 ], [ %2, %257 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #16
  ret i32 %264
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @parse_uint(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = call i32 @kstrtoull(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %3) #16
  %5 = icmp eq i32 %4, 0
  %6 = load i64, ptr %3, align 8
  %7 = trunc i64 %6 to i32
  %8 = select i1 %5, i32 %7, i32 0
  store i32 %8, ptr %1, align 4
  br label %9

9:                                                ; preds = %12, %2
  %10 = phi ptr [ %0, %2 ], [ %13, %12 ]
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %12 [
    i8 0, label %14
    i8 44, label %14
  ]

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %10, i32 1
  br label %9

14:                                               ; preds = %9, %9
  %15 = icmp ne i8 %11, 0
  %16 = zext i1 %15 to i32
  %17 = getelementptr i8, ptr %10, i32 %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_card_ref(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @detach_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #5 {
  %5 = tail call fastcc i32 @set_led_id(ptr noundef %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #5 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %56, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1
  %8 = icmp eq i8 %7, 49
  br i1 %8, label %9, label %56

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_ctl_led, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @snd_card_ref(i32 noundef %11) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %19 = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %11
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %18
  %23 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %15, i32 1
  %24 = mul i32 %15, -33554432
  %25 = add i32 %24, -33554433
  br label %26

26:                                               ; preds = %36, %22
  %27 = phi i1 [ true, %36 ], [ false, %22 ]
  br label %28

28:                                               ; preds = %32, %26
  %29 = phi ptr [ %23, %26 ], [ %30, %32 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %23
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %16
  br i1 %35, label %36, label %28

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %30, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %30, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.snd_kcontrol, ptr %38, i32 0, i32 10, i32 %40, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %25
  store i32 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %30, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %45, ptr %47, align 4
  store volatile ptr %46, ptr %45, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %44, align 4
  tail call void @kfree(ptr noundef %30) #16
  br label %26

48:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  br i1 %27, label %49, label %53

49:                                               ; preds = %48
  %50 = shl i32 %15, 25
  %51 = add i32 %50, 33554432
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef %51, ptr noundef null, i32 noundef 0) #16
  br label %53

52:                                               ; preds = %18
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  br label %53

53:                                               ; preds = %52, %49, %48
  %54 = phi i32 [ -6, %52 ], [ %3, %49 ], [ %3, %48 ]
  %55 = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 28
  tail call void @put_device(ptr noundef %55) #16
  br label %56

56:                                               ; preds = %53, %9, %6, %4
  %57 = phi i32 [ %3, %6 ], [ 0, %4 ], [ -6, %9 ], [ %54, %53 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @list_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = tail call ptr @snd_card_ref(i32 noundef %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 14
  tail call void @down_read(ptr noundef %9) #16
  tail call void @mutex_lock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %10 = load i32, ptr %4, align 8
  %11 = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %57, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.snd_ctl_led_card, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_ctl_led, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %57, label %20

20:                                               ; preds = %14
  %21 = ptrtoint ptr %2 to i32
  br label %22

22:                                               ; preds = %51, %20
  %23 = phi ptr [ %16, %20 ], [ %52, %51 ]
  %24 = phi ptr [ %18, %20 ], [ %54, %51 ]
  %25 = phi ptr [ %2, %20 ], [ %53, %51 ]
  %26 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %6
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = ptrtoint ptr %25 to i32
  %31 = sub i32 %30, %21
  %32 = icmp ugt i32 %31, 4080
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = icmp eq ptr %25, %2
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = getelementptr i8, ptr %25, i32 1
  store i8 32, ptr %25, align 1
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %36, %35 ], [ %2, %33 ]
  %39 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %24, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.snd_kcontrol, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %24, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %38, i32 noundef 15, ptr noundef nonnull @.str.34, i32 noundef %45) #16
  %47 = getelementptr i8, ptr %38, i32 %46
  store i8 0, ptr %47, align 1
  %48 = add i32 %46, 1
  %49 = getelementptr i8, ptr %38, i32 %48
  %50 = load ptr, ptr %15, align 4
  br label %51

51:                                               ; preds = %37, %22
  %52 = phi ptr [ %50, %37 ], [ %23, %22 ]
  %53 = phi ptr [ %49, %37 ], [ %25, %22 ]
  %54 = load ptr, ptr %24, align 4
  %55 = getelementptr inbounds %struct.snd_ctl_led, ptr %52, i32 0, i32 1
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %22

57:                                               ; preds = %51, %29, %14, %8
  %58 = phi ptr [ %2, %8 ], [ %2, %14 ], [ %25, %29 ], [ %53, %51 ]
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  tail call void @up_read(ptr noundef %9) #16
  %59 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 28
  tail call void @put_device(ptr noundef %59) #16
  %60 = ptrtoint ptr %58 to i32
  %61 = ptrtoint ptr %2 to i32
  %62 = sub i32 %60, %61
  br label %63

63:                                               ; preds = %57, %3
  %64 = phi i32 [ %62, %57 ], [ -6, %3 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_ctl_led_sysfs_remove(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %0, align 8
  %5 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 6, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 2), align 8
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef %9)
  call void @sysfs_remove_link(ptr noundef %3, ptr noundef nonnull %2) #16
  call void @sysfs_remove_link(ptr noundef nonnull %6, ptr noundef nonnull @.str.20) #16
  call void @device_unregister(ptr noundef nonnull %6) #16
  %11 = load i32, ptr %0, align 8
  %12 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 6, i32 %11
  store ptr null, ptr %12, align 4
  %13 = load i32, ptr %0, align 8
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i32 [ %4, %1 ], [ %13, %8 ]
  %16 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 6, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 2), align 8
  %21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef %20)
  call void @sysfs_remove_link(ptr noundef %3, ptr noundef nonnull %2) #16
  call void @sysfs_remove_link(ptr noundef nonnull %17, ptr noundef nonnull @.str.20) #16
  call void @device_unregister(ptr noundef nonnull %17) #16
  %22 = load i32, ptr %0, align 8
  %23 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 6, i32 %22
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_ctl_led_remove(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  tail call void @mutex_lock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  %4 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1), align 8
  %5 = icmp eq ptr %4, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1)
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %3
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %7, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %33, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1)
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %3
  %19 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1), align 8
  %20 = icmp eq ptr %19, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1)
  br i1 %20, label %47, label %21

21:                                               ; preds = %30, %18
  %22 = phi ptr [ %31, %30 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %22, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1)
  br i1 %32, label %47, label %21

33:                                               ; preds = %26, %11
  %34 = phi ptr [ %22, %26 ], [ %7, %11 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = icmp ne i32 %2, 0
  %38 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %34, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %2
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %34, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  tail call void @kfree(ptr noundef nonnull %34) #16
  br label %47

47:                                               ; preds = %42, %36, %33, %30, %18
  %48 = phi i32 [ %39, %42 ], [ 0, %33 ], [ 0, %18 ], [ 0, %36 ], [ 0, %30 ]
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #16
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_disconnect_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 538771, i64 538788, i64 2148022858}
