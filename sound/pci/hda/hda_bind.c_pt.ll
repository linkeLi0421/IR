; ModuleID = '/llk/IR/sound/pci/hda/hda_bind.c_pt.bc'
source_filename = "../sound/pci/hda/hda_bind.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_codec_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_codec_set_name\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_codec_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hda_codec_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__hda_codec_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___hda_codec_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hda_codec_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22hda_codec_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_hda_codec_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_codec_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_codec_configure\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_codec_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hdac_ext_bus_ops = type { ptr, ptr }
%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@__kstrtab_snd_hda_codec_set_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_codec_set_name = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_codec_set_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_codec_set_name to i32), ptr @__kstrtab_snd_hda_codec_set_name, ptr @__kstrtabns_snd_hda_codec_set_name }, section "___ksymtab_gpl+snd_hda_codec_set_name", align 4
@snd_hda_bus_type = external dso_local global %struct.bus_type, align 4
@hda_codec_driver_pm = external dso_local constant %struct.dev_pm_ops, align 4
@__kstrtab___hda_codec_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___hda_codec_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___hda_codec_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hda_codec_driver_register to i32), ptr @__kstrtab___hda_codec_driver_register, ptr @__kstrtabns___hda_codec_driver_register }, section "___ksymtab_gpl+__hda_codec_driver_register", align 4
@__kstrtab_hda_codec_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_hda_codec_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_hda_codec_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hda_codec_driver_unregister to i32), ptr @__kstrtab_hda_codec_driver_unregister, ptr @__kstrtabns_hda_codec_driver_unregister }, section "___ksymtab_gpl+hda_codec_driver_unregister", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@__kstrtab_snd_hda_codec_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_codec_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_codec_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_codec_configure to i32), ptr @__kstrtab_snd_hda_codec_configure, ptr @__kstrtabns_snd_hda_codec_configure }, section "___ksymtab_gpl+snd_hda_codec_configure", align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"sound/pci/hda/hda_bind.c\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"snd-hda-codec-hdmi\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"snd-hda-codec-generic\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab___hda_codec_driver_register, ptr @__ksymtab_hda_codec_driver_unregister, ptr @__ksymtab_snd_hda_codec_configure, ptr @__ksymtab_snd_hda_codec_set_name], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_codec_set_name(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @snd_hdac_device_set_chip_name(ptr noundef %0, ptr noundef nonnull %1) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 6
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.hda_bus, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %13, %7
  %22 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 14
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %10, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %23, ptr noundef %25)
  %27 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.hda_bus, ptr %30, i32 0, i32 8
  store i32 %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %21, %13, %4, %2
  %33 = phi i32 [ 0, %2 ], [ %5, %4 ], [ 0, %21 ], [ 0, %13 ]
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_device_set_chip_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hda_codec_driver_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store ptr %1, ptr %0, align 4
  %4 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @snd_hda_bus_type, ptr %5, align 4
  %6 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 8
  store ptr @hda_codec_driver_probe, ptr %6, align 4
  %7 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 10
  store ptr @hda_codec_driver_remove, ptr %7, align 4
  %8 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 11
  store ptr @hda_codec_driver_shutdown, ptr %8, align 4
  %9 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 16
  store ptr @hda_codec_driver_pm, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hdac_driver, ptr %0, i32 0, i32 1
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hdac_driver, ptr %0, i32 0, i32 3
  store ptr @hda_codec_match, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hdac_driver, ptr %0, i32 0, i32 4
  store ptr @hda_codec_unsol_event, ptr %12, align 4
  %13 = tail call i32 @driver_register(ptr noundef %0) #7
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_codec_driver_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdac_bus, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 95, i32 noundef 9, ptr noundef null) #7
  br label %102

15:                                               ; preds = %11
  %16 = tail call i32 %12(ptr noundef %0) #7
  br label %102

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %102

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hda_device_id, ptr %19, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @snd_hdac_device_set_chip_name(ptr noundef %0, ptr noundef nonnull %24) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %100, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 6
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.hda_bus, ptr %36, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 3
  %40 = load i32, ptr %39, align 8
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %35, %29
  %43 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 14
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 15
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %32, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %44, ptr noundef %46) #7
  %48 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.hda_bus, ptr %50, i32 0, i32 8
  store i32 %49, ptr %51, align 4
  br label %52

52:                                               ; preds = %42, %35, %22
  %53 = tail call i32 @snd_hdac_regmap_init(ptr noundef %0) #7
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %52
  %56 = tail call zeroext i1 @try_module_get(ptr noundef %5) #7
  br i1 %56, label %57, label %100

57:                                               ; preds = %55
  %58 = load ptr, ptr %18, align 8
  %59 = getelementptr inbounds %struct.hda_device_id, ptr %58, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = inttoptr i32 %60 to ptr
  %64 = tail call i32 %63(ptr noundef %0) #7
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %98, label %66

66:                                               ; preds = %62, %57
  %67 = tail call i32 @snd_hda_codec_build_pcms(ptr noundef %0) #7
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @snd_hda_codec_build_controls(ptr noundef %0) #7
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.hda_bus, ptr %73, i32 0, i32 6
  %75 = load i8, ptr %74, align 4
  %76 = and i8 %75, 32
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.snd_card, ptr %80, i32 0, i32 30
  %82 = load i8, ptr %81, align 8, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = tail call i32 @snd_card_register(ptr noundef %80) #7
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  tail call void @snd_hda_codec_register(ptr noundef %0) #7
  br label %88

88:                                               ; preds = %87, %78, %72
  %89 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 26
  %90 = load i8, ptr %89, align 8
  %91 = or i8 %90, 1
  store i8 %91, ptr %89, align 8
  br label %102

92:                                               ; preds = %84, %69, %66
  %93 = phi i32 [ %67, %66 ], [ %70, %69 ], [ %85, %84 ]
  %94 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  tail call void %95(ptr noundef %0) #7
  br label %98

98:                                               ; preds = %97, %92, %62
  %99 = phi i32 [ %64, %62 ], [ %93, %97 ], [ %93, %92 ]
  tail call void @module_put(ptr noundef %5) #7
  br label %100

100:                                              ; preds = %98, %55, %52, %26
  %101 = phi i32 [ %53, %52 ], [ %99, %98 ], [ -22, %55 ], [ %27, %26 ]
  tail call void @snd_hda_codec_cleanup_for_unbind(ptr noundef %0) #7
  br label %102

102:                                              ; preds = %100, %88, %21, %15, %14
  %103 = phi i32 [ -22, %14 ], [ %16, %15 ], [ -22, %21 ], [ %101, %100 ], [ 0, %88 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_codec_driver_remove(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hdac_ext_bus_ops, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #7
  br label %62

14:                                               ; preds = %9
  %15 = tail call i32 %11(ptr noundef %0) #7
  br label %62

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #7, !srcloc !11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #7, !srcloc !12
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 4) #7
  br label %22

22:                                               ; preds = %21, %16
  tail call void @snd_hda_codec_disconnect_pcms(ptr noundef %0) #7
  tail call void @snd_hda_jack_tbl_disconnect(ptr noundef %0) #7
  %23 = load volatile i32, ptr %17, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #7
  %26 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 10
  %27 = call i32 @prepare_to_wait_event(ptr noundef %26, ptr noundef nonnull %3, i32 noundef 2) #7
  %28 = load volatile i32, ptr %17, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %30, %25
  call void @schedule() #7
  %31 = call i32 @prepare_to_wait_event(ptr noundef %26, ptr noundef nonnull %3, i32 noundef 2) #7
  %32 = load volatile i32, ptr %17, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30, %25
  call void @finish_wait(ptr noundef %26, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  br label %35

35:                                               ; preds = %34, %22
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.hda_bus, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 38
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #7, !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #7
  %43 = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 40
  %44 = call i32 @prepare_to_wait_event(ptr noundef %43, ptr noundef nonnull %2, i32 noundef 2) #7
  %45 = load volatile i32, ptr %39, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %47, %42
  call void @schedule() #7
  %48 = call i32 @prepare_to_wait_event(ptr noundef %43, ptr noundef nonnull %2, i32 noundef 2) #7
  %49 = load volatile i32, ptr %39, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %47

51:                                               ; preds = %47, %42
  call void @finish_wait(ptr noundef %43, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  br label %52

52:                                               ; preds = %51, %35
  %53 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  call void %54(ptr noundef %0) #7
  br label %57

57:                                               ; preds = %56, %52
  call void @snd_hda_codec_cleanup_for_unbind(ptr noundef %0) #7
  %58 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.device_driver, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  call void @module_put(ptr noundef %61) #7
  br label %62

62:                                               ; preds = %57, %14, %13
  %63 = phi i32 [ -22, %13 ], [ %15, %14 ], [ 0, %57 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hda_codec_driver_shutdown(ptr noundef %0) #0 {
  tail call void @snd_hda_codec_shutdown(ptr noundef %0) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_codec_match(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.hda_codec_driver, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %29, %9
  %18 = phi i32 [ %31, %29 ], [ %15, %9 ]
  %19 = phi ptr [ %30, %29 ], [ %14, %9 ]
  %20 = icmp eq i32 %18, %10
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hda_device_id, ptr %19, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i32 %23, %12
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 5
  store ptr %19, ptr %28, align 8
  br label %33

29:                                               ; preds = %21, %17
  %30 = getelementptr %struct.hda_device_id, ptr %19, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %17

33:                                               ; preds = %29, %27, %9
  %34 = phi i32 [ 1, %27 ], [ 0, %9 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hda_codec_unsol_event(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hda_bus, ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef %0, i32 noundef %1) #7
  br label %18

18:                                               ; preds = %17, %13, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hda_codec_driver_unregister(ptr noundef %0) #0 {
  tail call void @driver_unregister(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_codec_configure(ptr noundef %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %99

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @strcmp(ptr noundef nonnull %9, ptr noundef nonnull dereferenceable(8) @.str.1)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %7
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 0, %14 ], [ 513, %11 ]
  %17 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = tail call i32 @snd_hdac_device_register(ptr noundef %0) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %99, label %25

25:                                               ; preds = %22, %15
  %26 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %96

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #7, !annotation !13
  %30 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %33 [
    i32 257, label %35
    i32 513, label %32
  ]

32:                                               ; preds = %29
  br label %35

33:                                               ; preds = %29
  %34 = call i32 @snd_hdac_codec_modalias(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 32) #7
  br label %35

35:                                               ; preds = %33, %32, %29
  %36 = phi ptr [ %2, %33 ], [ @.str.4, %32 ], [ @.str.3, %29 ]
  %37 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %36) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  %38 = call i32 @device_attach(ptr noundef %0) #7
  %39 = load ptr, ptr %26, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %96

41:                                               ; preds = %35
  %42 = load i32, ptr %30, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %99

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %46 = load i16, ptr %45, align 4
  %47 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 19
  %48 = load i16, ptr %47, align 2
  %49 = icmp ult i16 %46, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %44
  %51 = zext i16 %46 to i32
  %52 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %53 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %54 = zext i16 %48 to i32
  br label %55

55:                                               ; preds = %75, %50
  %56 = phi i32 [ %51, %50 ], [ %76, %75 ]
  %57 = phi i1 [ true, %50 ], [ %77, %75 ]
  %58 = icmp ult i32 %56, %51
  br i1 %58, label %75, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %52, align 8
  %61 = add i32 %60, %51
  %62 = icmp ugt i32 %61, %56
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load ptr, ptr %53, align 4
  %65 = sub nuw nsw i32 %56, %51
  %66 = getelementptr i32, ptr %64, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = lshr i32 %67, 20
  %71 = and i32 %70, 15
  switch i32 %71, label %75 [
    i32 1, label %80
    i32 0, label %72
  ]

72:                                               ; preds = %69
  %73 = and i32 %67, 512
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72, %69, %63, %59, %55
  %76 = add nuw nsw i32 %56, 1
  %77 = icmp ult i32 %76, %54
  %78 = trunc i32 %76 to i16
  %79 = icmp eq i16 %48, %78
  br i1 %79, label %80, label %55

80:                                               ; preds = %75, %72, %69
  %81 = phi i1 [ %77, %75 ], [ %57, %69 ], [ %57, %72 ]
  br i1 %81, label %89, label %82

82:                                               ; preds = %80, %44
  store i32 257, ptr %30, align 4
  %83 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3) #7
  %84 = call i32 @device_attach(ptr noundef %0) #7
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load ptr, ptr %26, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86, %82, %80
  store i32 513, ptr %30, align 4
  %90 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4) #7
  %91 = call i32 @device_attach(ptr noundef %0) #7
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load ptr, ptr %26, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93, %86, %35, %25
  %97 = load i32, ptr %3, align 8
  %98 = or i32 %97, 1
  store i32 %98, ptr %3, align 8
  br label %99

99:                                               ; preds = %96, %93, %89, %41, %22, %1
  %100 = phi i32 [ 0, %96 ], [ 0, %1 ], [ %23, %22 ], [ -19, %41 ], [ -19, %89 ], [ -19, %93 ]
  ret i32 %100
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_build_pcms(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_cleanup_for_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_disconnect_pcms(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_tbl_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2148364505}
!11 = !{i64 761439, i64 2148251410, i64 2148251436, i64 2148251483, i64 2148251505, i64 2148251533, i64 2148251553}
!12 = !{i64 2148266640, i64 2148266672, i64 2148266701, i64 2148266735, i64 2148266766, i64 2148266789}
!13 = !{!"auto-init"}
