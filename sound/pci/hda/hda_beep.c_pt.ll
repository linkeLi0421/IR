; ModuleID = '/llk/IR/sound/pci/hda/hda_beep.c_pt.bc'
source_filename = "../sound/pci/hda/hda_beep.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_enable_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_enable_beep_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_enable_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_attach_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_attach_beep_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_attach_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_detach_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_detach_beep_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_detach_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_mixer_amp_switch_get_beep:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_mixer_amp_switch_get_beep\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_mixer_amp_switch_get_beep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_mixer_amp_switch_put_beep:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_mixer_amp_switch_put_beep\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_mixer_amp_switch_put_beep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_beep = type { ptr, ptr, [32 x i8], i32, i16, i8, %struct.work_struct, %struct.mutex, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.73, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.73 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.74, [128 x i8] }
%union.anon.74 = type { %union.anon.76 }
%union.anon.76 = type { [64 x i64] }

@__kstrtab_snd_hda_enable_beep_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_enable_beep_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_enable_beep_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_enable_beep_device to i32), ptr @__kstrtab_snd_hda_enable_beep_device, ptr @__kstrtabns_snd_hda_enable_beep_device }, section "___ksymtab_gpl+snd_hda_enable_beep_device", align 4
@snd_hda_attach_beep_device.ops = internal constant %struct.snd_device_ops { ptr @beep_dev_free, ptr @beep_dev_register, ptr @beep_dev_disconnect }, align 4
@.str = private unnamed_addr constant [5 x i8] c"beep\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"card%d/codec#%d/beep0\00", align 1
@snd_hda_attach_beep_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"&beep->mutex\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"HDA Digital PCBeep\00", align 1
@__kstrtab_snd_hda_attach_beep_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_attach_beep_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_attach_beep_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_attach_beep_device to i32), ptr @__kstrtab_snd_hda_attach_beep_device, ptr @__kstrtabns_snd_hda_attach_beep_device }, section "___ksymtab_gpl+snd_hda_attach_beep_device", align 4
@__kstrtab_snd_hda_detach_beep_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_detach_beep_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_detach_beep_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_detach_beep_device to i32), ptr @__kstrtab_snd_hda_detach_beep_device, ptr @__kstrtabns_snd_hda_detach_beep_device }, section "___ksymtab_gpl+snd_hda_detach_beep_device", align 4
@__kstrtab_snd_hda_mixer_amp_switch_get_beep = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_mixer_amp_switch_get_beep = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_mixer_amp_switch_get_beep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_mixer_amp_switch_get_beep to i32), ptr @__kstrtab_snd_hda_mixer_amp_switch_get_beep, ptr @__kstrtabns_snd_hda_mixer_amp_switch_get_beep }, section "___ksymtab_gpl+snd_hda_mixer_amp_switch_get_beep", align 4
@__kstrtab_snd_hda_mixer_amp_switch_put_beep = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_mixer_amp_switch_put_beep = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_mixer_amp_switch_put_beep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_mixer_amp_switch_put_beep to i32), ptr @__kstrtab_snd_hda_mixer_amp_switch_put_beep, ptr @__kstrtabns_snd_hda_mixer_amp_switch_put_beep }, section "___ksymtab_gpl+snd_hda_mixer_amp_switch_put_beep", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_snd_hda_attach_beep_device, ptr @__ksymtab_snd_hda_detach_beep_device, ptr @__ksymtab_snd_hda_enable_beep_device, ptr @__ksymtab_snd_hda_mixer_amp_switch_get_beep, ptr @__ksymtab_snd_hda_mixer_amp_switch_put_beep], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_enable_beep_device(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.hda_beep, ptr %4, i32 0, i32 5
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  %12 = xor i1 %7, %11
  br i1 %12, label %40, label %13

13:                                               ; preds = %6
  %14 = select i1 %7, i8 2, i8 0
  %15 = and i8 %9, -3
  %16 = or i8 %15, %14
  store i8 %16, ptr %8, align 2
  br i1 %7, label %40, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hda_beep, ptr %4, i32 0, i32 6
  %19 = tail call zeroext i1 @cancel_work_sync(ptr noundef %18) #4
  %20 = load i8, ptr %8, align 2
  %21 = and i8 %20, 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.hda_beep, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.hda_beep, ptr %4, i32 0, i32 4
  %27 = load i16, ptr %26, align 4
  %28 = tail call i32 @snd_hdac_codec_write(ptr noundef %25, i16 noundef zeroext %27, i32 noundef 0, i32 noundef 1802, i32 noundef 0) #4
  %29 = load i8, ptr %8, align 2
  %30 = and i8 %29, 8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = and i8 %29, -9
  store i8 %33, ptr %8, align 2
  %34 = getelementptr inbounds %struct.hda_beep, ptr %4, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void %35(ptr noundef nonnull %4, i1 noundef zeroext false) #4
  br label %38

38:                                               ; preds = %37, %32
  %39 = tail call i32 @snd_hdac_power_down(ptr noundef %25) #4
  br label %40

40:                                               ; preds = %38, %23, %17, %13, %6, %2
  %41 = phi i32 [ 0, %2 ], [ 1, %13 ], [ 0, %6 ], [ 1, %17 ], [ 1, %23 ], [ 1, %38 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_attach_beep_device(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @snd_hda_get_bool_hint(ptr noundef %0, ptr noundef nonnull @.str) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %61, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %61, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 88) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %61, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hda_beep, ptr %11, i32 0, i32 2
  %15 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %17, i32 noundef %19)
  %21 = trunc i32 %1 to i16
  %22 = shl i32 %1, 20
  %23 = or i32 %22, 986624
  %24 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %23, i32 noundef 1) #4
  %25 = getelementptr inbounds %struct.hda_beep, ptr %11, i32 0, i32 4
  store i16 %21, ptr %25, align 4
  %26 = getelementptr inbounds %struct.hda_beep, ptr %11, i32 0, i32 1
  store ptr %0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 12
  store ptr %11, ptr %27, align 4
  %28 = getelementptr inbounds %struct.hda_beep, ptr %11, i32 0, i32 6
  store i32 -32, ptr %28, align 8
  %29 = getelementptr inbounds %struct.hda_beep, ptr %11, i32 0, i32 6, i32 1
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.hda_beep, ptr %11, i32 0, i32 6, i32 1, i32 1
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.hda_beep, ptr %11, i32 0, i32 6, i32 2
  store ptr @snd_hda_generate_beep, ptr %31, align 4
  %32 = getelementptr inbounds %struct.hda_beep, ptr %11, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %32, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_hda_attach_beep_device.__key) #4
  %33 = tail call ptr @input_allocate_device() #4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %13
  store ptr @.str.3, ptr %33, align 8
  %36 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 1
  store ptr %14, ptr %36, align 4
  %37 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3
  store i16 1, ptr %37, align 4
  %38 = load ptr, ptr %15, align 4
  %39 = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 28
  %40 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 40, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 16
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3, i32 1
  store i16 %44, ptr %45, align 2
  %46 = load i32, ptr %41, align 8
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3, i32 2
  store i16 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3, i32 3
  store i16 1, ptr %49, align 2
  %50 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 5
  store i32 262144, ptr %50, align 8
  %51 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 11
  store i32 6, ptr %51, align 8
  %52 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 34
  store ptr @snd_hda_beep_event, ptr %52, align 8
  %53 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 40, i32 8
  store ptr %11, ptr %53, align 8
  store ptr %33, ptr %11, align 8
  %54 = load ptr, ptr %15, align 4
  %55 = tail call i32 @snd_device_new(ptr noundef %54, i32 noundef 10, ptr noundef nonnull %11, ptr noundef nonnull @snd_hda_attach_beep_device.ops) #4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %35
  %58 = load ptr, ptr %11, align 8
  tail call void @input_free_device(ptr noundef %58) #4
  br label %59

59:                                               ; preds = %57, %13
  %60 = phi i32 [ %55, %57 ], [ -12, %13 ]
  tail call void @kfree(ptr noundef nonnull %11) #4
  store ptr null, ptr %27, align 4
  br label %61

61:                                               ; preds = %59, %35, %9, %5, %2
  %62 = phi i32 [ %60, %59 ], [ 0, %2 ], [ 0, %5 ], [ -12, %9 ], [ 0, %35 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @beep_dev_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hda_beep, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 12
  store ptr null, ptr %6, align 4
  tail call void @kfree(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @beep_dev_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @input_register_device(ptr noundef %4) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hda_beep, ptr %3, i32 0, i32 5
  %9 = load i8, ptr %8, align 2
  %10 = or i8 %9, 1
  store i8 %10, ptr %8, align 2
  br label %11

11:                                               ; preds = %7, %1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @beep_dev_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hda_beep, ptr %3, i32 0, i32 5
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  %8 = load ptr, ptr %3, align 4
  br i1 %7, label %10, label %9

9:                                                ; preds = %1
  tail call void @input_unregister_device(ptr noundef %8) #4
  br label %11

10:                                               ; preds = %1
  tail call void @input_free_device(ptr noundef %8) #4
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.hda_beep, ptr %3, i32 0, i32 6
  %13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %12) #4
  %14 = load i8, ptr %4, align 2
  %15 = and i8 %14, 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.hda_beep, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.hda_beep, ptr %3, i32 0, i32 4
  %21 = load i16, ptr %20, align 4
  %22 = tail call i32 @snd_hdac_codec_write(ptr noundef %19, i16 noundef zeroext %21, i32 noundef 0, i32 noundef 1802, i32 noundef 0) #4
  %23 = load i8, ptr %4, align 2
  %24 = and i8 %23, 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %17
  %27 = and i8 %23, -9
  store i8 %27, ptr %4, align 2
  %28 = getelementptr inbounds %struct.hda_beep, ptr %3, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void %29(ptr noundef %3, i1 noundef zeroext false) #4
  br label %32

32:                                               ; preds = %31, %26
  %33 = tail call i32 @snd_hdac_power_down(ptr noundef %19) #4
  br label %34

34:                                               ; preds = %32, %17, %11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_bool_hint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_hda_generate_beep(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -2
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -48
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -44
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %6
  %14 = and i8 %3, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = tail call i32 @snd_hdac_power_up(ptr noundef %11) #4
  %18 = getelementptr i8, ptr %0, i32 36
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void %19(ptr noundef %7, i1 noundef zeroext true) #4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i8, ptr %2, align 2
  %24 = or i8 %23, 8
  store i8 %24, ptr %2, align 2
  %25 = getelementptr i8, ptr %0, i32 -4
  %26 = load i16, ptr %25, align 4
  %27 = tail call i32 @snd_hdac_codec_write(ptr noundef %11, i16 noundef zeroext %26, i32 noundef 0, i32 noundef 1802, i32 noundef %9) #4
  br label %47

28:                                               ; preds = %6
  %29 = getelementptr i8, ptr %0, i32 -4
  %30 = load i16, ptr %29, align 4
  %31 = tail call i32 @snd_hdac_codec_write(ptr noundef %11, i16 noundef zeroext %30, i32 noundef 0, i32 noundef 1802, i32 noundef 0) #4
  %32 = load i8, ptr %2, align 2
  %33 = and i8 %32, 8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %28
  %36 = and i8 %32, -9
  store i8 %36, ptr %2, align 2
  %37 = getelementptr i8, ptr %0, i32 36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void %38(ptr noundef %7, i1 noundef zeroext false) #4
  br label %41

41:                                               ; preds = %40, %35
  %42 = tail call i32 @snd_hdac_power_down(ptr noundef %11) #4
  br label %47

43:                                               ; preds = %13
  %44 = getelementptr i8, ptr %0, i32 -4
  %45 = load i16, ptr %44, align 4
  %46 = tail call i32 @snd_hdac_codec_write(ptr noundef %11, i16 noundef zeroext %45, i32 noundef 0, i32 noundef 1802, i32 noundef %9) #4
  br label %47

47:                                               ; preds = %43, %41, %28, %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hda_beep_event(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %6 = load ptr, ptr %5, align 8
  switch i32 %2, label %40 [
    i32 1, label %7
    i32 2, label %10
  ]

7:                                                ; preds = %4
  %8 = icmp eq i32 %3, 0
  %9 = select i1 %8, i32 0, i32 1000
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %3, %4 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.hda_beep, ptr %6, i32 0, i32 5
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  %16 = icmp slt i32 %11, 1
  br i1 %15, label %27, label %17

17:                                               ; preds = %10
  br i1 %16, label %34, label %18

18:                                               ; preds = %17
  %19 = mul i32 %11, 1000
  %20 = add i32 %19, -70313
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = icmp ugt i32 %20, 11906249
  br i1 %23, label %34, label %24

24:                                               ; preds = %22
  %25 = udiv i32 %20, 46875
  %26 = sub nuw nsw i32 255, %25
  br label %34

27:                                               ; preds = %10
  br i1 %16, label %34, label %28

28:                                               ; preds = %27
  %29 = icmp ult i32 %11, 47
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = udiv i32 12000, %11
  %32 = icmp ugt i32 %11, 12000
  %33 = select i1 %32, i32 1, i32 %31
  br label %34

34:                                               ; preds = %30, %28, %27, %24, %22, %18, %17
  %35 = phi i32 [ 0, %17 ], [ %26, %24 ], [ 0, %18 ], [ 1, %22 ], [ 0, %27 ], [ 255, %28 ], [ %33, %30 ]
  %36 = getelementptr inbounds %struct.hda_beep, ptr %6, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.hda_beep, ptr %6, i32 0, i32 6
  %38 = load ptr, ptr @system_wq, align 4
  %39 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %37) #4
  br label %40

40:                                               ; preds = %34, %4
  %41 = phi i32 [ 0, %34 ], [ -1, %4 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_detach_beep_device(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_bus, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @snd_device_free(ptr noundef %14, ptr noundef nonnull %10) #4
  br label %15

15:                                               ; preds = %12, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_mixer_amp_switch_get_beep(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hda_codec, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hda_beep, ptr %6, i32 0, i32 5
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = trunc i32 %8 to i16
  %17 = lshr i32 %8, 18
  %18 = and i32 %17, 1
  %19 = tail call i32 @query_amp_caps(ptr noundef %4, i16 noundef zeroext %16, i32 noundef %18) #4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %15, %10
  %22 = and i32 %8, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr %11, align 2
  %26 = lshr i8 %25, 1
  %27 = and i8 %26, 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %28, ptr %29, align 8
  br label %30

30:                                               ; preds = %24, %21
  %31 = and i32 %8, 131072
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr %11, align 2
  %35 = lshr i8 %34, 1
  %36 = and i8 %35, 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %39 = getelementptr [128 x i32], ptr %38, i32 0, i32 1
  store i32 %37, ptr %39, align 4
  br label %42

40:                                               ; preds = %15, %2
  %41 = tail call i32 @snd_hda_mixer_amp_switch_get(ptr noundef %0, ptr noundef %1) #4
  br label %42

42:                                               ; preds = %40, %33, %30
  %43 = phi i32 [ %41, %40 ], [ 0, %33 ], [ 0, %30 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_mixer_amp_switch_put_beep(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hda_codec, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = and i32 %10, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %11, align 4
  %16 = getelementptr i32, ptr %11, i32 1
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %19 = phi ptr [ %16, %14 ], [ %11, %8 ]
  %20 = and i32 %10, 131072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %19, align 4
  %24 = or i32 %23, %18
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %24, %22 ], [ %18, %17 ]
  %27 = tail call i32 @snd_hda_enable_beep_device(ptr noundef %4, i32 noundef %26)
  %28 = load ptr, ptr %3, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi ptr [ %28, %25 ], [ %4, %2 ]
  %31 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i16
  %34 = lshr i32 %32, 18
  %35 = and i32 %34, 1
  %36 = tail call i32 @query_amp_caps(ptr noundef %30, i16 noundef zeroext %33, i32 noundef %35) #4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = tail call i32 @snd_hda_mixer_amp_switch_put(ptr noundef %0, ptr noundef %1) #4
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi i32 [ %39, %38 ], [ 0, %29 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @query_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
